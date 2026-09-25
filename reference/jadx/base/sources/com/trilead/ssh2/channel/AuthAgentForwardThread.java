package com.trilead.ssh2.channel;

import com.iiordanov.bVNC.Constants;
import com.iiordanov.pubkeygenerator.PubkeyDatabase;
import com.trilead.ssh2.AuthAgentCallback;
import com.trilead.ssh2.crypto.keys.Ed25519PrivateKey;
import com.trilead.ssh2.log.Logger;
import com.trilead.ssh2.packets.TypesReader;
import com.trilead.ssh2.packets.TypesWriter;
import com.trilead.ssh2.signature.DSASHA1Verify;
import com.trilead.ssh2.signature.ECDSASHA2Verify;
import com.trilead.ssh2.signature.Ed25519Verify;
import com.trilead.ssh2.signature.RSASHA1Verify;
import com.trilead.ssh2.signature.RSASHA256Verify;
import com.trilead.ssh2.signature.RSASHA512Verify;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.SecureRandom;
import java.security.interfaces.DSAPrivateKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.spec.DSAPrivateKeySpec;
import java.security.spec.DSAPublicKeySpec;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPrivateKeySpec;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.RSAPrivateCrtKeySpec;
import java.security.spec.RSAPublicKeySpec;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class AuthAgentForwardThread extends Thread implements IChannelWorkerThread {
    private static final int SSH2_AGENTC_ADD_IDENTITY = 17;
    private static final int SSH2_AGENTC_ADD_ID_CONSTRAINED = 25;
    private static final int SSH2_AGENTC_REMOVE_ALL_IDENTITIES = 19;
    private static final int SSH2_AGENTC_REMOVE_IDENTITY = 18;
    private static final int SSH2_AGENTC_REQUEST_IDENTITIES = 11;
    private static final int SSH2_AGENTC_SIGN_REQUEST = 13;
    private static final int SSH2_AGENT_IDENTITIES_ANSWER = 12;
    private static final int SSH2_AGENT_SIGN_RESPONSE = 14;
    private static final int SSH_AGENTC_LOCK = 22;
    private static final int SSH_AGENTC_UNLOCK = 23;
    private static final int SSH_AGENT_CONSTRAIN_CONFIRM = 2;
    private static final int SSH_AGENT_CONSTRAIN_LIFETIME = 1;
    private static final int SSH_AGENT_RSA_SHA2_256 = 2;
    private static final int SSH_AGENT_RSA_SHA2_512 = 4;
    AuthAgentCallback authAgent;
    byte[] buffer = new byte[Constants.SOCKET_CONN_TIMEOUT];
    Channel c;
    InputStream is;
    OutputStream os;
    private static final byte[] SSH_AGENT_FAILURE = {0, 0, 0, 1, 5};
    private static final byte[] SSH_AGENT_SUCCESS = {0, 0, 0, 1, 6};
    private static final Logger log = Logger.getLogger(RemoteAcceptThread.class);

    public AuthAgentForwardThread(Channel channel, AuthAgentCallback authAgentCallback) {
        this.c = channel;
        this.authAgent = authAgentCallback;
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(20, "AuthAgentForwardThread started");
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            this.c.cm.registerThread(this);
            try {
                this.c.cm.sendOpenConfirmation(this.c);
                this.is = this.c.getStdoutStream();
                this.os = this.c.getStdinStream();
                int i = 0;
                int uint32 = 4;
                while (true) {
                    try {
                        InputStream inputStream = this.is;
                        byte[] bArr = this.buffer;
                        int i2 = inputStream.read(bArr, i, bArr.length - i);
                        if (i2 <= 0) {
                            this.c.cm.closeChannel(this.c, "EOF on both streams reached.", true);
                            return;
                        }
                        i += i2;
                        if (i >= 4) {
                            uint32 = new TypesReader(this.buffer, 0, 4).readUINT32() + 4;
                        }
                        if (uint32 == i) {
                            TypesReader typesReader = new TypesReader(this.buffer, 4, i - 4);
                            int i3 = typesReader.readByte();
                            if (i3 == 11) {
                                sendIdentities();
                            } else if (i3 == 13) {
                                processSignRequest(typesReader);
                            } else if (i3 == 25) {
                                addIdentity(typesReader, true);
                            } else if (i3 == 22) {
                                processLockRequest(typesReader);
                            } else if (i3 != 23) {
                                switch (i3) {
                                    case 17:
                                        addIdentity(typesReader, false);
                                        break;
                                    case 18:
                                        removeIdentity(typesReader);
                                        break;
                                    case 19:
                                        removeAllIdentities(typesReader);
                                        break;
                                    default:
                                        this.os.write(SSH_AGENT_FAILURE);
                                        break;
                                }
                            } else {
                                processUnlockRequest(typesReader);
                            }
                            i = 0;
                        }
                    } catch (IOException unused) {
                        stopWorking();
                        return;
                    }
                }
            } catch (IOException e) {
                log.log(50, "IOException in agent forwarder: " + e.getMessage());
                try {
                    this.is.close();
                } catch (IOException unused2) {
                }
                try {
                    this.os.close();
                } catch (IOException unused3) {
                }
                try {
                    this.c.cm.closeChannel(this.c, "IOException in agent forwarder (" + e.getMessage() + ")", true);
                } catch (IOException unused4) {
                }
            }
        } catch (IOException unused5) {
            stopWorking();
        }
    }

    @Override // com.trilead.ssh2.channel.IChannelWorkerThread
    public void stopWorking() {
        try {
            this.is.close();
        } catch (IOException unused) {
        }
    }

    private boolean failWhenLocked() throws IOException {
        if (!this.authAgent.isAgentLocked()) {
            return false;
        }
        this.os.write(SSH_AGENT_FAILURE);
        return true;
    }

    private void sendIdentities() throws IOException {
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeByte(12);
        Map<String, byte[]> mapRetrieveIdentities = !this.authAgent.isAgentLocked() ? this.authAgent.retrieveIdentities() : null;
        typesWriter.writeUINT32(mapRetrieveIdentities != null ? mapRetrieveIdentities.size() : 0);
        if (mapRetrieveIdentities != null) {
            for (Map.Entry<String, byte[]> entry : mapRetrieveIdentities.entrySet()) {
                byte[] value = entry.getValue();
                typesWriter.writeString(value, 0, value.length);
                typesWriter.writeString(entry.getKey());
            }
        }
        sendPacket(typesWriter.getBytes());
    }

    private void addIdentity(TypesReader typesReader, boolean z) {
        String str;
        KeySpec rSAPublicKeySpec;
        KeySpec dSAPrivateKeySpec;
        String string;
        try {
            try {
                if (failWhenLocked()) {
                    return;
                }
                String string2 = typesReader.readString();
                if (string2.equals(RSASHA1Verify.ID_SSH_RSA)) {
                    str = PubkeyDatabase.KEY_TYPE_RSA;
                    BigInteger mpint = typesReader.readMPINT();
                    BigInteger mpint2 = typesReader.readMPINT();
                    BigInteger mpint3 = typesReader.readMPINT();
                    BigInteger mpint4 = typesReader.readMPINT();
                    BigInteger mpint5 = typesReader.readMPINT();
                    BigInteger mpint6 = typesReader.readMPINT();
                    string = typesReader.readString();
                    BigInteger bigIntegerMod = mpint3.mod(mpint5.subtract(BigInteger.ONE));
                    BigInteger bigIntegerMod2 = mpint3.mod(mpint6.subtract(BigInteger.ONE));
                    rSAPublicKeySpec = new RSAPublicKeySpec(mpint, mpint2);
                    dSAPrivateKeySpec = new RSAPrivateCrtKeySpec(mpint, mpint2, mpint3, mpint5, mpint6, bigIntegerMod, bigIntegerMod2, mpint4);
                } else if (string2.equals(DSASHA1Verify.ID_SSH_DSS)) {
                    str = PubkeyDatabase.KEY_TYPE_DSA;
                    BigInteger mpint7 = typesReader.readMPINT();
                    BigInteger mpint8 = typesReader.readMPINT();
                    BigInteger mpint9 = typesReader.readMPINT();
                    BigInteger mpint10 = typesReader.readMPINT();
                    BigInteger mpint11 = typesReader.readMPINT();
                    String string3 = typesReader.readString();
                    DSAPublicKeySpec dSAPublicKeySpec = new DSAPublicKeySpec(mpint10, mpint7, mpint8, mpint9);
                    dSAPrivateKeySpec = new DSAPrivateKeySpec(mpint11, mpint7, mpint8, mpint9);
                    string = string3;
                    rSAPublicKeySpec = dSAPublicKeySpec;
                } else if (string2.equals(ECDSASHA2Verify.ECDSASHA2NISTP256Verify.get().getKeyFormat())) {
                    ECDSASHA2Verify.ECDSASHA2NISTP256Verify eCDSASHA2NISTP256Verify = ECDSASHA2Verify.ECDSASHA2NISTP256Verify.get();
                    String string4 = typesReader.readString();
                    byte[] byteString = typesReader.readByteString();
                    BigInteger mpint12 = typesReader.readMPINT();
                    String string5 = typesReader.readString();
                    if (!"nistp256".equals(string4)) {
                        log.log(2, "Invalid curve name for ecdsa-sha2-nistp256: " + string4);
                        this.os.write(SSH_AGENT_FAILURE);
                        return;
                    }
                    ECParameterSpec parameterSpec = eCDSASHA2NISTP256Verify.getParameterSpec();
                    ECPoint eCPointDecodeECPoint = eCDSASHA2NISTP256Verify.decodeECPoint(byteString);
                    if (eCPointDecodeECPoint == null) {
                        this.os.write(SSH_AGENT_FAILURE);
                        return;
                    }
                    ECPublicKeySpec eCPublicKeySpec = new ECPublicKeySpec(eCPointDecodeECPoint, parameterSpec);
                    ECPrivateKeySpec eCPrivateKeySpec = new ECPrivateKeySpec(mpint12, parameterSpec);
                    str = "EC";
                    rSAPublicKeySpec = eCPublicKeySpec;
                    dSAPrivateKeySpec = eCPrivateKeySpec;
                    string = string5;
                } else {
                    log.log(2, "Unknown key type: " + string2);
                    this.os.write(SSH_AGENT_FAILURE);
                    return;
                }
                try {
                    KeyFactory keyFactory = KeyFactory.getInstance(str);
                    KeyPair keyPair = new KeyPair(keyFactory.generatePublic(rSAPublicKeySpec), keyFactory.generatePrivate(dSAPrivateKeySpec));
                    boolean z2 = false;
                    int uint32 = 0;
                    if (z) {
                        while (typesReader.remain() > 0) {
                            int i = typesReader.readByte();
                            if (i == 2) {
                                z2 = true;
                            } else if (i == 1) {
                                uint32 = typesReader.readUINT32();
                            } else {
                                this.os.write(SSH_AGENT_FAILURE);
                                return;
                            }
                        }
                    }
                    if (this.authAgent.addIdentity(keyPair, string, z2, uint32)) {
                        this.os.write(SSH_AGENT_SUCCESS);
                    } else {
                        this.os.write(SSH_AGENT_FAILURE);
                    }
                } catch (NoSuchAlgorithmException unused) {
                    this.os.write(SSH_AGENT_FAILURE);
                } catch (InvalidKeySpecException unused2) {
                    this.os.write(SSH_AGENT_FAILURE);
                }
            } catch (IOException unused3) {
            }
        } catch (IOException unused4) {
            this.os.write(SSH_AGENT_FAILURE);
        }
    }

    private void removeIdentity(TypesReader typesReader) {
        try {
            try {
                if (failWhenLocked()) {
                    return;
                }
                if (this.authAgent.removeIdentity(typesReader.readByteString())) {
                    this.os.write(SSH_AGENT_SUCCESS);
                } else {
                    this.os.write(SSH_AGENT_FAILURE);
                }
            } catch (IOException unused) {
            }
        } catch (IOException unused2) {
            this.os.write(SSH_AGENT_FAILURE);
        }
    }

    private void removeAllIdentities(TypesReader typesReader) {
        try {
            try {
                if (failWhenLocked()) {
                    return;
                }
                if (this.authAgent.removeAllIdentities()) {
                    this.os.write(SSH_AGENT_SUCCESS);
                } else {
                    this.os.write(SSH_AGENT_FAILURE);
                }
            } catch (IOException unused) {
            }
        } catch (IOException unused2) {
            this.os.write(SSH_AGENT_FAILURE);
        }
    }

    private void processSignRequest(TypesReader typesReader) {
        byte[] bArrGenerateSignature;
        try {
            try {
                if (failWhenLocked()) {
                    return;
                }
                byte[] byteString = typesReader.readByteString();
                byte[] byteString2 = typesReader.readByteString();
                int uint32 = typesReader.readUINT32();
                if ((uint32 & (-7)) != 0) {
                    log.log(2, "Unrecognized ssh-agent flags: " + uint32);
                    this.os.write(SSH_AGENT_FAILURE);
                    return;
                }
                KeyPair keyPair = this.authAgent.getKeyPair(byteString);
                if (keyPair == null) {
                    this.os.write(SSH_AGENT_FAILURE);
                    return;
                }
                PrivateKey privateKey = keyPair.getPrivate();
                if (privateKey instanceof RSAPrivateKey) {
                    RSAPrivateKey rSAPrivateKey = (RSAPrivateKey) privateKey;
                    if ((uint32 & 4) != 0) {
                        bArrGenerateSignature = RSASHA512Verify.get().generateSignature(byteString2, rSAPrivateKey, new SecureRandom());
                    } else if ((uint32 & 2) != 0) {
                        bArrGenerateSignature = RSASHA256Verify.get().generateSignature(byteString2, rSAPrivateKey, new SecureRandom());
                    } else {
                        bArrGenerateSignature = RSASHA1Verify.get().generateSignature(byteString2, rSAPrivateKey, new SecureRandom());
                    }
                } else if (privateKey instanceof DSAPrivateKey) {
                    bArrGenerateSignature = DSASHA1Verify.get().generateSignature(byteString2, privateKey, new SecureRandom());
                } else if (privateKey instanceof Ed25519PrivateKey) {
                    bArrGenerateSignature = Ed25519Verify.get().generateSignature(byteString2, privateKey, new SecureRandom());
                } else {
                    this.os.write(SSH_AGENT_FAILURE);
                    return;
                }
                TypesWriter typesWriter = new TypesWriter();
                typesWriter.writeByte(14);
                typesWriter.writeString(bArrGenerateSignature, 0, bArrGenerateSignature.length);
                sendPacket(typesWriter.getBytes());
            } catch (IOException unused) {
            }
        } catch (IOException unused2) {
            this.os.write(SSH_AGENT_FAILURE);
        }
    }

    private void processLockRequest(TypesReader typesReader) {
        try {
            try {
                if (failWhenLocked()) {
                    return;
                }
                if (!this.authAgent.setAgentLock(typesReader.readString())) {
                    this.os.write(SSH_AGENT_FAILURE);
                } else {
                    this.os.write(SSH_AGENT_SUCCESS);
                }
            } catch (IOException unused) {
            }
        } catch (IOException unused2) {
            this.os.write(SSH_AGENT_FAILURE);
        }
    }

    private void processUnlockRequest(TypesReader typesReader) {
        try {
            try {
                if (this.authAgent.requestAgentUnlock(typesReader.readString())) {
                    this.os.write(SSH_AGENT_SUCCESS);
                } else {
                    this.os.write(SSH_AGENT_FAILURE);
                }
            } catch (IOException unused) {
            }
        } catch (IOException unused2) {
            this.os.write(SSH_AGENT_FAILURE);
        }
    }

    private void sendPacket(byte[] bArr) throws IOException {
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeUINT32(bArr.length);
        typesWriter.writeBytes(bArr);
        this.os.write(typesWriter.getBytes());
    }
}
