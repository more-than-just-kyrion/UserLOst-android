package com.iiordanov.bVNC;

import android.content.Context;
import android.os.Handler;
import android.util.Base64;
import android.util.Log;
import com.iiordanov.bVNC.dialogs.GetTextFragment;
import com.iiordanov.pubkeygenerator.PubkeyUtils;
import com.trilead.ssh2.ConnectionInfo;
import com.trilead.ssh2.InteractiveCallback;
import com.trilead.ssh2.KnownHosts;
import com.trilead.ssh2.Session;
import com.undatech.opaque.Connection;
import com.undatech.opaque.MessageDialogs;
import com.undatech.remoteClientUi.R;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.security.KeyPair;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.util.Arrays;
import java.util.concurrent.CountDownLatch;
import org.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes2.dex */
public class SSHConnection implements InteractiveCallback, GetTextFragment.OnFragmentDismissedListener {
    private static final int MAXTRIES = 3;
    private static final int MAX_AUTH_RETRIES = 3;
    private static final int MAX_DECRYPTION_ATTEMPTS = 3;
    private static final String TAG = "SSHConnection";
    private String autoXCommand;
    private boolean autoXEnabled;
    private String autoXRandFileNm;
    private int autoXType;
    private boolean autoXUnixpw;
    private Connection conn;
    private com.trilead.ssh2.Connection connection;
    private ConnectionInfo connectionInfo;
    private Context context;
    private Handler handler;
    private String host;
    private String idHash;
    private int idHashAlg;
    private KeyPair kp;
    private String passphrase;
    private String password;
    private PrivateKey privateKey;
    private PublicKey publicKey;
    private BufferedInputStream remoteStderr;
    private BufferedOutputStream remoteStdin;
    private BufferedInputStream remoteStdout;
    private String savedIdHash;
    private String savedServerHostKey;
    private String serverHostKey;
    private Session session;
    private int sshPort;
    private String sshPrivKey;
    private String sshRemoteCommand;
    private int sshRemoteCommandTimeout;
    private int sshRemoteCommandType;
    private String targetAddress;
    private boolean usePubKey;
    private boolean useSshRemoteCommand;
    private String user;
    private String vncpassword;
    private final int numPortTries = 1000;
    private boolean passwordAuth = false;
    private boolean keyboardInteractiveAuth = false;
    private boolean pubKeyAuth = false;
    private int sshPasswordAuthAttempts = 0;
    private int sshKeyDecryptionAttempts = 0;
    private CountDownLatch userInputLatch = new CountDownLatch(1);
    private String verificationCode = new String();

    public SSHConnection(Connection connection, Context context, Handler handler) {
        this.host = connection.getSshServer();
        this.sshPort = connection.getSshPort();
        this.user = connection.getSshUser();
        this.password = connection.getSshPassword();
        this.vncpassword = connection.getPassword();
        this.passphrase = connection.getSshPassPhrase();
        this.savedServerHostKey = connection.getSshHostKey();
        this.idHashAlg = connection.getIdHashAlgorithm();
        this.savedIdHash = connection.getIdHash();
        this.targetAddress = connection.getAddress();
        this.usePubKey = connection.getUseSshPubKey();
        this.sshPrivKey = connection.getSshPrivKey();
        this.useSshRemoteCommand = connection.getUseSshRemoteCommand();
        this.sshRemoteCommandType = connection.getSshRemoteCommandType();
        this.sshRemoteCommand = connection.getSshRemoteCommand();
        this.autoXEnabled = connection.getAutoXEnabled();
        this.autoXType = connection.getAutoXType();
        this.autoXCommand = connection.getAutoXCommand();
        this.autoXUnixpw = connection.getAutoXUnixpw();
        this.connection = new com.trilead.ssh2.Connection(this.host, this.sshPort);
        this.autoXRandFileNm = connection.getAutoXRandFileNm();
        this.context = context;
        this.handler = handler;
        this.conn = connection;
    }

    String getServerHostKey() {
        return this.serverHostKey;
    }

    String getIdHash() {
        return this.idHash;
    }

    public void setVerificationCode(String str) {
        this.verificationCode = str;
        this.userInputLatch.countDown();
    }

    public void setUserAndPassword(String str, String str2, boolean z) {
        this.user = str;
        this.password = str2;
        this.conn.setSshUser(str);
        this.conn.setSshPassword(str2);
        this.conn.setKeepSshPassword(z);
        this.userInputLatch.countDown();
    }

    public void setPassphrase(String str, boolean z) {
        this.passphrase = str;
        this.conn.setSshPassPhrase(str);
        this.conn.setKeepSshPassword(z);
        this.userInputLatch.countDown();
    }

    private void attemptSshPasswordAuthentication() throws Exception {
        Log.i(TAG, "attemptSshPasswordAuthentication");
        while (!authenticateWithPassword() && canAuthWithPass()) {
            int i = this.sshPasswordAuthAttempts + 1;
            this.sshPasswordAuthAttempts = i;
            if (i > 3) {
                throw new Exception(this.context.getString(R.string.error_ssh_pwd_auth_fail));
            }
            this.userInputLatch = new CountDownLatch(1);
            Log.i(TAG, "Requesting SSH password from user");
            this.handler.sendEmptyMessage(12);
            while (true) {
                try {
                    this.userInputLatch.await();
                    break;
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private void attemptSshKeyDecryption() throws Exception {
        this.kp = PubkeyUtils.decryptAndRecoverKeyPair(this.sshPrivKey, this.passphrase);
        while (this.kp == null) {
            int i = this.sshKeyDecryptionAttempts + 1;
            this.sshKeyDecryptionAttempts = i;
            if (i > 3) {
                throw new Exception(this.context.getString(R.string.error_ssh_keypair_decryption_failure));
            }
            this.userInputLatch = new CountDownLatch(1);
            Log.i(TAG, "Requesting SSH passphrase from user");
            this.handler.sendEmptyMessage(13);
            while (true) {
                try {
                    this.userInputLatch.await();
                    break;
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            this.kp = PubkeyUtils.decryptAndRecoverKeyPair(this.sshPrivKey, this.passphrase);
        }
    }

    public int initializeSSHTunnel() throws Exception {
        if (!connect()) {
            throw new Exception(this.context.getString(R.string.error_ssh_unable_to_connect));
        }
        if (!verifyHostKey()) {
            throw new Exception(this.context.getString(R.string.error_ssh_hostkey_changed));
        }
        if (!this.usePubKey) {
            Log.i(TAG, "SSH tunnel not configured to use public key, trying password auth");
            if (!canAuthWithPass()) {
                Log.e(TAG, "SSH server does not support password authentication so throw an error");
                throw new Exception(this.context.getString(R.string.error_ssh_kbd_auth_method_unavail) + " " + Arrays.toString(this.connection.getRemainingAuthMethods(this.user)));
            }
            attemptSshPasswordAuthentication();
        } else {
            Log.i(TAG, "SSH tunnel is configured to use public key, will attempt");
            if (canAuthWithPubKey()) {
                Log.i(TAG, "SSH server supports pubkey authentication, continuing");
                if (!authenticateWithPubKey()) {
                    if (!canAuthWithPubKey()) {
                        Log.i(TAG, "SSH server needs more than key auth, trying password auth in addition");
                        Context context = this.context;
                        MessageDialogs.displayToast(context, this.handler, context.getString(R.string.ssh_server_needs_password_in_addition_to_key), 1);
                        attemptSshPasswordAuthentication();
                    } else {
                        Log.e(TAG, "Failed to authenticate to SSH server with key");
                        throw new Exception(this.context.getString(R.string.error_ssh_key_auth_fail));
                    }
                }
            } else if (canAuthWithPass()) {
                Log.i(TAG, "Key auth enabled, but server is asking for password, trying password auth");
                Context context2 = this.context;
                MessageDialogs.displayToast(context2, this.handler, context2.getString(R.string.ssh_server_needs_password_in_addition_to_key), 1);
                attemptSshPasswordAuthentication();
                Log.d(TAG, "isAuthenticationComplete: " + this.connection.isAuthenticationComplete());
                Log.d(TAG, "isAuthenticationPartialSuccess: " + this.connection.isAuthenticationPartialSuccess());
                if (!this.connection.isAuthenticationComplete()) {
                    Log.i(TAG, "Key auth enabled, password authenticated succeeded, and server is asking for key auth");
                    if (!authenticateWithPubKey()) {
                        Log.e(TAG, "Key authentication failed");
                        throw new Exception(this.context.getString(R.string.error_ssh_key_auth_fail));
                    }
                } else if (!this.connection.isAuthenticationComplete()) {
                    Log.e(TAG, "Password authentication failed");
                    throw new Exception(this.context.getString(R.string.error_ssh_pwd_auth_fail));
                }
            } else {
                Log.e(TAG, "SSH server does not support key auth, but SSH tunnel is configured to use it");
                throw new Exception(this.context.getString(R.string.error_ssh_pubkey_auth_method_unavail) + " " + Arrays.toString(this.connection.getRemainingAuthMethods(this.user)));
            }
        }
        int remoteStdoutForPort = -1;
        if (this.autoXEnabled) {
            int i = 0;
            while (remoteStdoutForPort < 0 && i < 3) {
                if (!this.autoXUnixpw) {
                    writeStringToRemoteCommand(this.vncpassword, "umask 0077 && cat > .x11vnc_temp_pwd_" + this.autoXRandFileNm + Constants.AUTO_X_SYNC);
                }
                execRemoteCommand(this.autoXCommand, 1);
                if (this.autoXType == 5) {
                    writeStringToStdin(this.password + StringUtils.LF);
                }
                remoteStdoutForPort = parseRemoteStdoutForPort();
                if (remoteStdoutForPort < 0) {
                    this.session.close();
                    i++;
                    if (i < 3) {
                        try {
                            Thread.sleep(i * 3500);
                        } catch (InterruptedException unused) {
                        }
                    }
                }
            }
            if (remoteStdoutForPort < 0) {
                throw new Exception(this.context.getString(R.string.error_ssh_x11vnc_no_port_failure) + "  \n\n" + this.context.getString(R.string.error) + ":  \n\n" + bufferedInputStreamToString(this.remoteStderr));
            }
        }
        return remoteStdoutForPort;
    }

    int createLocalPortForward(int i) throws Exception {
        int iCreatePortForward = createPortForward(i, this.targetAddress, i);
        if (iCreatePortForward >= 0) {
            return iCreatePortForward;
        }
        throw new Exception(this.context.getString(R.string.error_ssh_port_forwarding_failure));
    }

    public boolean connect() {
        try {
            this.connection.setCompression(false);
            ConnectionInfo connectionInfoConnect = this.connection.connect(null, 6000, 24000);
            this.connectionInfo = connectionInfoConnect;
            this.serverHostKey = Base64.encodeToString(connectionInfoConnect.serverHostKey, 0);
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public String getHostKeySignature() {
        return KnownHosts.createHexFingerprint(this.connectionInfo.serverHostKeyAlgorithm, this.connectionInfo.serverHostKey);
    }

    public void terminateSSHTunnel() {
        this.connection.close();
    }

    private boolean verifyHostKey() {
        try {
            if (SecureTunnel.isSignatureEqual(this.idHashAlg, this.savedIdHash, this.connectionInfo.serverHostKey)) {
                Log.i(TAG, "Validated against provided hash.");
                return true;
            }
        } catch (Exception unused) {
        }
        return this.savedServerHostKey.equals(this.serverHostKey) || this.savedServerHostKey.equals(new String(Base64.decode(this.serverHostKey, 0)));
    }

    private boolean canAuthWithPass() {
        return hasPasswordAuth() || hasKeyboardInteractiveAuth();
    }

    private boolean hasPasswordAuth() {
        try {
            return this.connection.isAuthMethodAvailable(this.user, Constants.testpassword);
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    private boolean hasKeyboardInteractiveAuth() {
        try {
            return this.connection.isAuthMethodAvailable(this.user, "keyboard-interactive");
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    private boolean canAuthWithPubKey() {
        try {
            return this.connection.isAuthMethodAvailable(this.user, "publickey");
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    private boolean authenticateWithPassword() {
        boolean zAuthenticateWithKeyboardInteractive;
        try {
            if (hasKeyboardInteractiveAuth()) {
                Log.i(TAG, "Trying SSH keyboard-interactive authentication.");
                zAuthenticateWithKeyboardInteractive = this.connection.authenticateWithKeyboardInteractive(this.user, this);
            } else {
                zAuthenticateWithKeyboardInteractive = false;
            }
            if (zAuthenticateWithKeyboardInteractive || !hasPasswordAuth()) {
                return zAuthenticateWithKeyboardInteractive;
            }
            Log.i(TAG, "Trying SSH password authentication. " + this.user + " " + this.password);
            return this.connection.authenticateWithPassword(this.user, this.password);
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    private void decryptAndRecoverKey() throws Exception {
        Log.i(TAG, "decryptAndRecoverKey");
        if (this.sshPrivKey.length() == 0) {
            Log.e(TAG, "SSH key not generated yet");
            throw new Exception(this.context.getString(R.string.error_ssh_keypair_missing));
        }
        if (this.passphrase.length() != 0 && !PubkeyUtils.isEncrypted(this.sshPrivKey)) {
            Log.e(TAG, "SSH key not encrypted but passphrase was entered");
            throw new Exception(this.context.getString(R.string.error_ssh_passphrase_but_keypair_unencrypted));
        }
        attemptSshKeyDecryption();
        this.privateKey = this.kp.getPrivate();
        this.publicKey = this.kp.getPublic();
    }

    private boolean authenticateWithPubKey() throws Exception {
        decryptAndRecoverKey();
        Log.i(TAG, "Trying SSH pubkey authentication.");
        return this.connection.authenticateWithPublicKey(this.user, this.kp);
    }

    private int createPortForward(int i, String str, int i2) {
        for (int i3 = 0; i3 < 1000; i3++) {
            try {
                int i4 = i + i3;
                this.connection.createLocalPortForwarder(new InetSocketAddress("127.0.0.1", i4), str, i2);
                return i4;
            } catch (IOException unused) {
            }
        }
        return -1;
    }

    private void execRemoteCommand(String str, int i) throws Exception {
        Log.i(TAG, "Executing remote command: " + str);
        try {
            Session sessionOpenSession = this.connection.openSession();
            this.session = sessionOpenSession;
            sessionOpenSession.execCommand(str);
            this.remoteStdout = new BufferedInputStream(this.session.getStdout());
            this.remoteStderr = new BufferedInputStream(this.session.getStderr());
            this.remoteStdin = new BufferedOutputStream(this.session.getStdin());
            Thread.sleep(i * 1000);
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception(this.context.getString(R.string.error_ssh_could_not_exec_command) + "  \n\n" + this.context.getString(R.string.error) + ":  \n\n" + bufferedInputStreamToString(this.remoteStderr));
        }
    }

    private void writeStringToRemoteCommand(String str, String str2) throws Exception {
        Log.i(TAG, "Writing string to stdin of remote command: " + str2);
        execRemoteCommand(str2, 0);
        this.remoteStdin.write(str.getBytes());
        this.remoteStdin.flush();
        this.remoteStdin.close();
        this.session.close();
    }

    private void writeStringToStdin(String str) throws Exception {
        Log.i(TAG, "Writing string to remote stdin.");
        this.remoteStdin.write(str.getBytes());
        this.remoteStdin.flush();
    }

    private void sendSudoPassword() throws Exception {
        Log.i(TAG, "Sending sudo password.");
        try {
            this.remoteStdin.write(new String(this.password + '\n').getBytes());
        } catch (IOException e) {
            e.printStackTrace();
            throw new Exception(this.context.getString(R.string.error_ssh_could_not_send_sudo_pwd) + "  \n\n" + this.context.getString(R.string.error) + ":  \n\n" + bufferedInputStreamToString(this.remoteStderr));
        }
    }

    private int parseRemoteStdoutForPort() {
        Log.i(TAG, "Parsing remote stdout for PORT=");
        int length = "PORT=".length();
        int i = 0;
        int i2 = 0;
        while (i != -1 && i2 < length) {
            try {
                i = this.remoteStdout.read();
                i2 = i == "PORT=".charAt(i2) ? i2 + 1 : 0;
            } catch (IOException e) {
                Log.e(TAG, "Failed to read from remote stdout.");
                e.printStackTrace();
                return -1;
            } catch (NumberFormatException e2) {
                Log.e(TAG, "Failed to parse integer.");
                e2.printStackTrace();
                return -1;
            }
        }
        if (i2 == length) {
            byte[] bArr = new byte[5];
            this.remoteStdout.read(bArr);
            int i3 = Integer.parseInt(new String(new String(bArr).replaceAll("\\s", "").getBytes()));
            Log.i(TAG, "Found PORT=, set to: " + i3);
            return i3;
        }
        Log.e(TAG, "Failed to find PORT= in remote stdout.");
        return -1;
    }

    String bufferedInputStreamToString(BufferedInputStream bufferedInputStream) {
        byte[] bArr = new byte[1024];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            try {
                int i = bufferedInputStream.read(bArr, 0, 1024);
                if (i != -1) {
                    byteArrayOutputStream.write(bArr, 0, i);
                } else {
                    String string = byteArrayOutputStream.toString("UTF-8");
                    Log.d(TAG, "bufferedInputStreamToString:");
                    Log.d(TAG, string);
                    return string;
                }
            } catch (IOException e) {
                Log.e(TAG, "Failed to read from remote stdout.");
                e.printStackTrace();
                return "";
            }
        }
    }

    @Override // com.trilead.ssh2.InteractiveCallback
    public String[] replyToChallenge(String str, String str2, int i, String[] strArr, boolean[] zArr) throws Exception {
        String[] strArr2 = new String[i];
        for (int i2 = 0; i2 < i; i2++) {
            if (strArr[0].indexOf("Verification code:") != -1) {
                Log.i(TAG, strArr[i2] + "  Will request verification code from user");
                if (Utils.isFree(this.context)) {
                    this.handler.sendEmptyMessage(99);
                    strArr2[i2] = "";
                } else {
                    this.userInputLatch = new CountDownLatch(1);
                    Log.i(TAG, "Requesting verification code from user");
                    this.handler.sendEmptyMessage(11);
                    while (true) {
                        try {
                            this.userInputLatch.await();
                            break;
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                    Log.i(TAG, strArr[0] + "  Sending verification code: " + this.verificationCode);
                    strArr2[i2] = this.verificationCode;
                }
            } else {
                Log.i(TAG, strArr[0] + "  Sending SSH password");
                strArr2[i2] = this.password;
            }
        }
        return strArr2;
    }

    @Override // com.iiordanov.bVNC.dialogs.GetTextFragment.OnFragmentDismissedListener
    public void onTextObtained(String str, String[] strArr, boolean z, boolean z2) {
        if (z) {
            this.handler.sendEmptyMessage(17);
        }
        str.hashCode();
        switch (str) {
            case "DIALOG_ID_GET_SSH_PASSPHRASE":
                Log.i(TAG, "Text obtained from DIALOG_ID_GET_SSH_PASSPHRASE.");
                setPassphrase(strArr[0], z2);
                break;
            case "DIALOG_ID_GET_SSH_CREDENTIALS":
                Log.i(TAG, "Text obtained from DIALOG_ID_GET_SSH_CREDENTIALS.");
                setUserAndPassword(strArr[0], strArr[1], z2);
                break;
            case "DIALOG_ID_GET_VERIFICATIONCODE":
                Log.i(TAG, "Text obtained from DIALOG_ID_GET_VERIFICATIONCODE.");
                setVerificationCode(strArr[0]);
                break;
            default:
                Log.e(TAG, "Unknown dialog type.");
                break;
        }
    }
}
