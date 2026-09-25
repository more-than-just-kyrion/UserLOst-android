package com.undatech.opaque;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Base64;
import android.util.Log;
import android.widget.Toast;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.iiordanov.bVNC.Constants;
import com.iiordanov.bVNC.RemoteCanvas;
import com.iiordanov.bVNC.RemoteCanvasActivity;
import com.iiordanov.bVNC.Utils;
import com.iiordanov.bVNC.dialogs.GetTextFragment;
import com.undatech.opaque.dialogs.ChoiceFragment;
import com.undatech.opaque.dialogs.MessageFragment;
import com.undatech.opaque.dialogs.SelectTextElementFragment;
import com.undatech.opaque.util.GooglePlayUtils;
import com.undatech.opaque.util.SslUtils;
import com.undatech.remoteClientUi.R;
import io.sentry.marshaller.json.JsonMarshaller;
import java.security.NoSuchAlgorithmException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;

/* JADX INFO: loaded from: classes2.dex */
public class OpaqueHandler extends Handler {
    private static String TAG = "OpaqueHandler";
    private RemoteCanvas c;
    private Context context;
    private FragmentManager fm;
    private Connection settings;

    public OpaqueHandler(Context context, RemoteCanvas remoteCanvas, Connection connection) {
        this.context = context;
        this.c = remoteCanvas;
        this.settings = connection;
        this.fm = ((FragmentActivity) context).getSupportFragmentManager();
    }

    private void showGetTextFragmentRemoteCanvas(String str, String str2, String str3, GetTextFragment.OnFragmentDismissedListener onFragmentDismissedListener, int i, int i2, int i3, String str4, String str5, String str6, boolean z) {
        if (this.c.pd != null && this.c.pd.isShowing()) {
            this.c.pd.dismiss();
        }
        GetTextFragment getTextFragmentNewInstance = GetTextFragment.newInstance(str2, str3, onFragmentDismissedListener, i, i2, i3, str4, str5, str6, z);
        getTextFragmentNewInstance.setCancelable(false);
        getTextFragmentNewInstance.show(this.fm, str);
    }

    private void displayMessageAndFinish(int i, int i2, int i3) {
        MessageFragment.newInstance(this.context.getString(i), this.context.getString(i2), this.context.getString(i3), new MessageFragment.OnFragmentDismissedListener() { // from class: com.undatech.opaque.OpaqueHandler.1
            @Override // com.undatech.opaque.dialogs.MessageFragment.OnFragmentDismissedListener
            public void onDialogDismissed() {
                MessageDialogs.justFinish(OpaqueHandler.this.context);
            }
        }).show(this.fm, "endingDialog");
        this.c.closeConnection();
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Log.d(TAG, "handleMessage: " + message.what);
        if (message.what == 0) {
            Log.d(TAG, "Ignoring message with ID 0");
            return;
        }
        final String stringFromMessage = Utils.getStringFromMessage(message, JsonMarshaller.MESSAGE);
        int i = message.what;
        if (i == 1) {
            validateX509Cert((X509Certificate) message.obj);
            return;
        }
        if (i == 10) {
            showGetTextFragmentRemoteCanvas(this.context.getString(R.string.enter_password), GetTextFragment.DIALOG_ID_GET_OPAQUE_PASSWORD, this.context.getString(R.string.enter_password), this.c, 2, R.string.enter_password, R.string.enter_password, this.settings.getPassword(), null, null, this.settings.getKeepPassword());
            return;
        }
        if (i == 21) {
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
                return;
            }
            return;
        }
        if (i == 44) {
            this.c.pd.dismiss();
            ArrayList<String> stringArrayList = message.getData().getStringArrayList("vms");
            if (stringArrayList.size() > 0) {
                this.fm = ((FragmentActivity) this.context).getSupportFragmentManager();
                SelectTextElementFragment selectTextElementFragmentNewInstance = SelectTextElementFragment.newInstance(this.context.getString(R.string.select_vm_title), stringArrayList, (RemoteCanvasActivity) this.context);
                selectTextElementFragmentNewInstance.setCancelable(false);
                selectTextElementFragmentNewInstance.show(this.fm, "selectVm");
                return;
            }
            return;
        }
        if (i == 47) {
            post(new Runnable() { // from class: com.undatech.opaque.OpaqueHandler.2
                @Override // java.lang.Runnable
                public void run() {
                    Toast.makeText(OpaqueHandler.this.context, Utils.getStringResourceByName(OpaqueHandler.this.context, stringFromMessage), 1).show();
                }
            });
            return;
        }
        if (i == 4) {
            this.c.pd.dismiss();
            synchronized (this.c.spicecomm) {
                this.c.spiceUpdateReceived = true;
                this.c.spicecomm.notifyAll();
            }
            return;
        }
        if (i == 5) {
            String string = message.getData().getString(JsonMarshaller.MESSAGE);
            this.c.pd.dismiss();
            if (this.c.maintainConnection) {
                if (!this.c.spiceUpdateReceived) {
                    this.c.disconnectAndShowMessage(R.string.error_ovirt_unable_to_connect, R.string.error_dialog_title, string);
                    return;
                } else {
                    this.c.disconnectAndShowMessage(R.string.error_connection_interrupted, R.string.error_dialog_title, string);
                    return;
                }
            }
            return;
        }
        if (i == 16) {
            this.c.reinitializeOpaque();
            return;
        }
        if (i != 17) {
            switch (i) {
                case 23:
                    Log.d(TAG, "Trying to launch VNC viewer");
                    if (!GooglePlayUtils.isPackageInstalled(this.context, "com.iiordanov.bVNC") && !GooglePlayUtils.isPackageInstalled(this.context, "com.iiordanov.freebVNC")) {
                        displayMessageAndFinish(R.string.info_dialog_title, R.string.message_please_install_bvnc, R.string.ok);
                        return;
                    }
                    this.context.startActivity(new Intent("android.intent.action.VIEW").setType("application/vnd.vnc").setData(Uri.parse("vnc://" + message.getData().getString("address") + ":" + message.getData().getString("port") + "?VncPassword=" + message.getData().getString(Constants.testpassword))));
                    MessageDialogs.justFinish(this.context);
                    return;
                case 24:
                    this.c.disconnectAndShowMessage(R.string.info_vm_launched_on_stand_by, R.string.info_dialog_title);
                    return;
                case 25:
                    if (this.c.retrievevvFileName() != null) {
                        this.c.disconnectAndShowMessage(R.string.error_ovirt_auth_failure, R.string.error_dialog_title);
                        return;
                    } else {
                        this.c.maintainConnection = false;
                        showGetTextFragmentRemoteCanvas(this.context.getString(R.string.enter_password_auth_failed), GetTextFragment.DIALOG_ID_GET_OPAQUE_CREDENTIALS, this.context.getString(R.string.enter_password_auth_failed), this.c, 4, R.string.enter_password_auth_failed, R.string.enter_password_auth_failed, this.settings.getUserName(), this.settings.getPassword(), null, this.settings.getKeepPassword());
                        return;
                    }
                case 26:
                    this.c.disconnectAndShowMessage(R.string.error_ovirt_ssl_handshake_failure, R.string.error_dialog_title);
                    return;
                case 27:
                    this.c.disconnectAndShowMessage(R.string.error_vm_lookup_failed, R.string.error_dialog_title);
                    return;
                case 28:
                    this.c.disconnectAndShowMessage(R.string.error_no_vm_found_for_user, R.string.error_dialog_title);
                    return;
                case 29:
                    this.c.disconnectAndShowMessage(R.string.vv_file_error, R.string.error_dialog_title);
                    return;
                case 30:
                    this.c.pd.dismiss();
                    this.c.disconnectAndShowMessage(R.string.error_ovirt_timeout, R.string.error_dialog_title);
                    return;
                case 31:
                    MessageDialogs.displayMessageAndFinish(this.context, R.string.error_failed_to_download_vv_http, R.string.error_dialog_title);
                    return;
                case 32:
                    MessageDialogs.displayMessageAndFinish(this.context, R.string.error_failed_to_download_vv_https, R.string.error_dialog_title);
                    MessageDialogs.displayMessageAndFinish(this.context, R.string.error_vv_download_timeout, R.string.error_dialog_title);
                    MessageDialogs.displayMessageAndFinish(this.context, R.string.error_pve_failed_to_parse_json, R.string.error_dialog_title);
                    return;
                case 33:
                    if (this.c.retrievevvFileName() != null) {
                        MessageDialogs.displayMessageAndFinish(this.context, R.string.error_pve_failed_to_authenticate, R.string.error_dialog_title);
                        return;
                    } else {
                        this.c.maintainConnection = false;
                        showGetTextFragmentRemoteCanvas(this.context.getString(R.string.enter_password_auth_failed), GetTextFragment.DIALOG_ID_GET_OPAQUE_CREDENTIALS, this.context.getString(R.string.enter_password_auth_failed), this.c, 4, R.string.enter_password_auth_failed, R.string.enter_password_auth_failed, this.settings.getUserName(), this.settings.getPassword(), null, this.settings.getKeepPassword());
                        return;
                    }
                default:
                    switch (i) {
                        case 35:
                            break;
                        case 36:
                            MessageDialogs.displayMessageAndFinish(this.context, R.string.error_pve_vmid_not_numeric, R.string.error_dialog_title);
                            return;
                        case 37:
                            MessageDialogs.displayMessageAndFinish(this.context, R.string.error_pve_api_unexpected_code, R.string.error_dialog_title, message.getData().getString("error"));
                            return;
                        case 38:
                            MessageDialogs.displayMessageAndFinish(this.context, R.string.error_pve_api_io_error, R.string.error_dialog_title, message.getData().getString("error"));
                            return;
                        case 39:
                            MessageDialogs.displayMessageAndFinish(this.context, R.string.error_pve_timeout_communicating, R.string.error_dialog_title);
                            return;
                        case 40:
                            MessageDialogs.displayMessageAndFinish(this.context, R.string.error_pve_null_data, R.string.error_dialog_title);
                            return;
                        case 41:
                            MessageDialogs.displayMessageAndFinish(this.context, R.string.error_vv_download_timeout, R.string.error_dialog_title);
                            break;
                        case 42:
                            this.c.pd.dismiss();
                            showGetTextFragmentRemoteCanvas(this.context.getString(R.string.enter_otp_code), GetTextFragment.DIALOG_ID_GET_OPAQUE_OTP_CODE, this.context.getString(R.string.enter_otp_code), this.c, 1, R.string.enter_otp_code, R.string.enter_otp_code, null, null, null, false);
                            return;
                        default:
                            Log.e(TAG, "Not handling unknown messageId: " + message.what);
                            return;
                    }
                    MessageDialogs.displayMessageAndFinish(this.context, R.string.error_pve_failed_to_parse_json, R.string.error_dialog_title);
                    return;
            }
        }
        this.c.closeConnection();
        MessageDialogs.justFinish(this.context);
    }

    private void validateX509Cert(X509Certificate x509Certificate) {
        String strSignature;
        String strSignature2;
        String strSignature3 = "";
        try {
            final byte[] encoded = x509Certificate.getEncoded();
            try {
                strSignature = SslUtils.signature(MessageDigestAlgorithms.MD5, encoded);
                try {
                    strSignature2 = SslUtils.signature("SHA-1", encoded);
                    try {
                        strSignature3 = SslUtils.signature("SHA-256", encoded);
                    } catch (NoSuchAlgorithmException e) {
                        e = e;
                        e.printStackTrace();
                    }
                } catch (NoSuchAlgorithmException e2) {
                    e = e2;
                    strSignature2 = "";
                }
            } catch (NoSuchAlgorithmException e3) {
                e = e3;
                strSignature = "";
                strSignature2 = strSignature;
            }
            ChoiceFragment choiceFragmentNewInstance = ChoiceFragment.newInstance(this.context.getString(R.string.ca_new_or_changed), String.format(this.context.getString(R.string.info_cert), strSignature, strSignature2, strSignature3, x509Certificate.getSubjectX500Principal().getName(), x509Certificate.getIssuerX500Principal().getName(), x509Certificate.getNotBefore(), x509Certificate.getNotAfter()), "Accept", "Reject", new ChoiceFragment.OnFragmentDismissedListener() { // from class: com.undatech.opaque.OpaqueHandler.3
                @Override // com.undatech.opaque.dialogs.ChoiceFragment.OnFragmentDismissedListener
                public void onResponseObtained(boolean z) {
                    if (z) {
                        Log.e(OpaqueHandler.TAG, "We were told to continue");
                        OpaqueHandler.this.settings.setOvirtCaData(Base64.encodeToString(encoded, 0));
                        OpaqueHandler.this.settings.save(OpaqueHandler.this.context);
                        synchronized (OpaqueHandler.this) {
                            OpaqueHandler.this.notifyAll();
                        }
                        return;
                    }
                    Log.e(OpaqueHandler.TAG, "We were told not to continue");
                    MessageDialogs.justFinish(OpaqueHandler.this.context);
                }
            });
            FragmentManager supportFragmentManager = ((FragmentActivity) this.context).getSupportFragmentManager();
            choiceFragmentNewInstance.setCancelable(false);
            choiceFragmentNewInstance.show(supportFragmentManager, "certDialog");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static Message getMessageString(int i, String str, String str2) {
        Message message = new Message();
        message.what = i;
        Bundle bundle = new Bundle();
        bundle.putString(str, str2);
        message.setData(bundle);
        return message;
    }

    public static Message getMessageStringList(int i, String str, ArrayList<String> arrayList) {
        Message message = new Message();
        message.what = i;
        Bundle bundle = new Bundle();
        bundle.putStringArrayList(str, arrayList);
        message.setData(bundle);
        return message;
    }
}
