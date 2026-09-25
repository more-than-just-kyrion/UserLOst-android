package com.iiordanov.bVNC.input;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.widget.Toast;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.iiordanov.bVNC.RemoteCanvas;
import com.iiordanov.bVNC.Utils;
import com.iiordanov.bVNC.dialogs.GetTextFragment;
import com.undatech.opaque.Connection;
import com.undatech.opaque.MessageDialogs;
import com.undatech.remoteClientUi.R;
import io.sentry.marshaller.json.JsonMarshaller;
import java.security.cert.X509Certificate;
import org.spongycastle.i18n.TextBundle;

/* JADX INFO: loaded from: classes2.dex */
public class RemoteCanvasHandler extends Handler {
    private static String TAG = "RemoteCanvasHandler";
    private RemoteCanvas c;
    private Context context;
    private FragmentManager fm;
    private Connection settings;

    public RemoteCanvasHandler(Context context, RemoteCanvas remoteCanvas, Connection connection) {
        this.context = context;
        this.c = remoteCanvas;
        this.settings = connection;
        if (Utils.getActivity(context) instanceof FragmentActivity) {
            this.fm = ((FragmentActivity) Utils.getActivity(context)).getSupportFragmentManager();
        }
    }

    public RemoteCanvasHandler(Context context) {
    }

    public Connection getConnection() {
        return this.settings;
    }

    public void setConnection(Connection connection) {
        this.settings = connection;
    }

    private void showGetTextFragment(String str, String str2, String str3, GetTextFragment.OnFragmentDismissedListener onFragmentDismissedListener, int i, int i2, int i3, String str4, String str5, String str6, boolean z) {
        if (this.c.pd != null && this.c.pd.isShowing()) {
            this.c.pd.dismiss();
        }
        GetTextFragment getTextFragmentNewInstance = GetTextFragment.newInstance(str2, str3, onFragmentDismissedListener, i, i2, i3, str4, str5, str6, z);
        getTextFragmentNewInstance.setCancelable(false);
        getTextFragmentNewInstance.show(this.fm, str);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Log.d(TAG, "Handling message, msg.what: " + message.what);
        final String stringFromMessage = Utils.getStringFromMessage(message, JsonMarshaller.MESSAGE);
        int i = message.what;
        if (i == 1) {
            Log.d(TAG, "DIALOG_X509_CERT");
            this.c.validateX509Cert((X509Certificate) message.obj);
        }
        if (i == 2) {
            Log.d(TAG, "DIALOG_SSH_CERT");
            this.c.initializeSshHostKey();
            return;
        }
        if (i == 3) {
            Log.d(TAG, "DIALOG_RDP_CERT");
            Bundle bundle = (Bundle) message.obj;
            this.c.validateRdpCert(bundle.getString("subject"), bundle.getString("issuer"), bundle.getString(JsonMarshaller.FINGERPRINT));
            return;
        }
        if (i == 4) {
            if (this.c.pd == null || !this.c.pd.isShowing()) {
                return;
            }
            this.c.pd.dismiss();
            return;
        }
        if (i == 5) {
            if (this.c.maintainConnection) {
                this.c.maintainConnection = false;
                if (this.c.pd != null && this.c.pd.isShowing()) {
                    this.c.pd.dismiss();
                }
                if (!this.c.spiceUpdateReceived) {
                    this.c.showFatalMessageAndQuit(this.context.getString(R.string.error_spice_unable_to_connect));
                    return;
                } else {
                    this.c.showFatalMessageAndQuit(this.context.getString(R.string.error_connection_interrupted));
                    return;
                }
            }
            return;
        }
        if (i == 7) {
            if (this.c.maintainConnection) {
                this.c.showFatalMessageAndQuit(this.context.getString(R.string.error_rdp_connection_failed));
                return;
            }
            return;
        }
        if (i == 8) {
            if (this.c.maintainConnection) {
                this.c.showFatalMessageAndQuit(this.context.getString(R.string.error_rdp_unable_to_connect));
                return;
            }
            return;
        }
        if (i == 9) {
            if (this.c.maintainConnection) {
                this.c.showFatalMessageAndQuit(this.context.getString(R.string.error_rdp_authentication_failed));
                return;
            }
            return;
        }
        if (i == 43) {
            Bundle bundle2 = (Bundle) message.obj;
            this.c.serverJustCutText = true;
            this.c.setClipboardText(bundle2.getString(TextBundle.TEXT_ENTRY));
            return;
        }
        if (i == 99) {
            if (this.c.pd != null && this.c.pd.isShowing()) {
                this.c.pd.dismiss();
            }
            this.c.showFatalMessageAndQuit(this.context.getString(R.string.pro_feature_mfa));
            return;
        }
        switch (i) {
            case 11:
                showGetTextFragment(this.context.getString(R.string.verification_code), GetTextFragment.DIALOG_ID_GET_VERIFICATIONCODE, this.context.getString(R.string.verification_code), this.c.sshConnection, 1, R.string.verification_code_message, R.string.verification_code, null, null, null, false);
                break;
            case 12:
                showGetTextFragment(this.context.getString(R.string.enter_ssh_credentials), GetTextFragment.DIALOG_ID_GET_SSH_CREDENTIALS, this.context.getString(R.string.enter_ssh_credentials), this.c.sshConnection, 6, R.string.enter_ssh_credentials, R.string.enter_ssh_credentials, this.settings.getSshUser(), this.settings.getSshPassword(), null, this.settings.getKeepSshPassword());
                break;
            case 13:
                showGetTextFragment(this.context.getString(R.string.ssh_passphrase_hint), GetTextFragment.DIALOG_ID_GET_SSH_PASSPHRASE, this.context.getString(R.string.enter_passphrase_title), this.c.sshConnection, 2, R.string.enter_passphrase, R.string.ssh_passphrase_hint, null, null, null, this.settings.getKeepSshPassword());
                break;
            case 14:
                showGetTextFragment(this.context.getString(R.string.enter_vnc_credentials), GetTextFragment.DIALOG_ID_GET_VNC_CREDENTIALS, this.context.getString(R.string.enter_vnc_credentials), this.c, 4, R.string.enter_vnc_credentials, R.string.enter_vnc_credentials, this.settings.getUserName(), this.settings.getPassword(), null, this.settings.getKeepPassword());
                break;
            case 15:
                showGetTextFragment(this.context.getString(R.string.enter_vnc_password), GetTextFragment.DIALOG_ID_GET_VNC_PASSWORD, this.context.getString(R.string.enter_vnc_password), this.c, 2, R.string.enter_vnc_password, R.string.enter_vnc_password, this.settings.getPassword(), null, null, this.settings.getKeepPassword());
                break;
            case 16:
                this.c.reinitializeCanvas();
                break;
            case 17:
                this.c.closeConnection();
                MessageDialogs.justFinish(this.context);
                break;
            case 18:
                this.c.showFatalMessageAndQuit(stringFromMessage);
                break;
            case 19:
                showGetTextFragment(this.context.getString(R.string.enter_rdp_credentials), GetTextFragment.DIALOG_ID_GET_RDP_CREDENTIALS, this.context.getString(R.string.enter_rdp_credentials), this.c, 5, R.string.enter_rdp_credentials, R.string.enter_rdp_credentials, this.settings.getUserName(), this.settings.getRdpDomain(), this.settings.getPassword(), this.settings.getKeepPassword());
                break;
            case 20:
                showGetTextFragment(this.context.getString(R.string.enter_spice_password), GetTextFragment.DIALOG_ID_GET_SPICE_PASSWORD, this.context.getString(R.string.enter_spice_password), this.c, 2, R.string.enter_spice_password, R.string.enter_spice_password, this.settings.getPassword(), null, null, this.settings.getKeepPassword());
                break;
            case 21:
                Log.d(TAG, "Handling message, REPORT_TOOLBAR_POSITION");
                if (this.settings.getUseLastPositionToolbar()) {
                    int intFromMessage = Utils.getIntFromMessage(message, "useLastPositionToolbarX");
                    int intFromMessage2 = Utils.getIntFromMessage(message, "useLastPositionToolbarY");
                    boolean booleanFromMessage = Utils.getBooleanFromMessage(message, "useLastPositionToolbarMoved");
                    Log.d(TAG, "Handling message, REPORT_TOOLBAR_POSITION, X Coordinate" + intFromMessage);
                    Log.d(TAG, "Handling message, REPORT_TOOLBAR_POSITION, Y Coordinate" + intFromMessage2);
                    this.settings.setUseLastPositionToolbarX(intFromMessage);
                    this.settings.setUseLastPositionToolbarY(intFromMessage2);
                    this.settings.setUseLastPositionToolbarMoved(booleanFromMessage);
                }
                break;
            default:
                switch (i) {
                    case 45:
                        this.c.showFatalMessageAndQuit(this.context.getString(R.string.error_ovirt_ssl_handshake_failure));
                        break;
                    case 46:
                        if (this.c.maintainConnection) {
                            this.c.showFatalMessageAndQuit(stringFromMessage);
                        }
                        break;
                    case 47:
                        post(new Runnable() { // from class: com.iiordanov.bVNC.input.RemoteCanvasHandler.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Toast.makeText(RemoteCanvasHandler.this.context, Utils.getStringResourceByName(RemoteCanvasHandler.this.context, stringFromMessage), 1).show();
                            }
                        });
                        break;
                    default:
                        Log.e(TAG, "Not handling unknown messageId: " + message.what);
                        break;
                }
                break;
        }
    }
}
