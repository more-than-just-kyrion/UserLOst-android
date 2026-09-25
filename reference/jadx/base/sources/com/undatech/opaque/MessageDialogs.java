package com.undatech.opaque;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;
import android.text.Html;
import android.text.Spanned;
import android.text.method.LinkMovementMethod;
import android.util.Log;
import android.widget.TextView;
import android.widget.Toast;

/* JADX INFO: loaded from: classes2.dex */
public class MessageDialogs {
    private static final String TAG = "MessageDialogs";
    private static AlertDialog alertDialog;
    private static Runnable showMessageRunnable;

    public static String toHexString(byte[] bArr) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        char[] cArr2 = new char[bArr.length * 3];
        int i = 0;
        while (i < bArr.length - 1) {
            int i2 = bArr[i] & 255;
            int i3 = i * 3;
            cArr2[i3] = cArr[i2 / 16];
            cArr2[i3 + 1] = cArr[i2 % 16];
            cArr2[i3 + 2] = ":".charAt(0);
            i++;
        }
        int i4 = bArr[i] & 255;
        int i5 = i * 3;
        cArr2[i5] = cArr[i4 / 16];
        cArr2[i5 + 1] = cArr[i4 % 16];
        return new String(cArr2);
    }

    private static void displayDialog(Context context, int i, int i2, String str, DialogInterface.OnClickListener onClickListener) {
        try {
            AlertDialog alertDialog2 = alertDialog;
            if (alertDialog2 != null && alertDialog2.isShowing()) {
                alertDialog.dismiss();
            }
            if ((context instanceof Activity) && ((Activity) context).isFinishing()) {
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder((Activity) context);
            builder.setCancelable(false);
            builder.setTitle(i);
            String string = context.getString(i2);
            if (str != null) {
                string = string + " " + str;
            }
            Spanned spannedFromHtml = Html.fromHtml(string);
            TextView textView = new TextView(context);
            textView.setText(spannedFromHtml);
            textView.setMovementMethod(LinkMovementMethod.getInstance());
            textView.setPaddingRelative(50, 50, 50, 50);
            builder.setView(textView);
            builder.setPositiveButton("OK", onClickListener);
            AlertDialog alertDialogCreate = builder.create();
            alertDialog = alertDialogCreate;
            alertDialogCreate.show();
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
        }
    }

    public static void displayMessage(Handler handler, final Context context, final int i, final int i2) {
        Log.d(TAG, "displayMessage");
        if (showMessageRunnable == null) {
            showMessageRunnable = new Runnable() { // from class: com.undatech.opaque.MessageDialogs.1
                @Override // java.lang.Runnable
                public void run() {
                    MessageDialogs.displayMessage(context, i, i2);
                }
            };
        }
        handler.removeCallbacks(showMessageRunnable);
        handler.post(showMessageRunnable);
    }

    public static void displayMessage(Context context, int i, int i2) {
        displayDialog(context, i2, i, null, new DialogInterface.OnClickListener() { // from class: com.undatech.opaque.MessageDialogs.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i3) {
                dialogInterface.dismiss();
            }
        });
    }

    public static void displayMessageAndFinish(final Context context, int i, int i2) {
        displayDialog(context, i2, i, null, new DialogInterface.OnClickListener() { // from class: com.undatech.opaque.MessageDialogs.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i3) {
                MessageDialogs.justFinish(context);
            }
        });
    }

    public static void displayMessageAndFinish(final Context context, int i, int i2, String str) {
        displayDialog(context, i2, i, str, new DialogInterface.OnClickListener() { // from class: com.undatech.opaque.MessageDialogs.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i3) {
                MessageDialogs.justFinish(context);
            }
        });
    }

    public static void justFinish(Context context) {
        ((Activity) context).finish();
    }

    public static void displayToast(final Context context, Handler handler, final CharSequence charSequence, final int i) {
        Runnable runnable = new Runnable() { // from class: com.undatech.opaque.MessageDialogs.5
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(context, charSequence, i).show();
            }
        };
        handler.removeCallbacks(runnable);
        handler.post(runnable);
    }

    public static void displayToast2(Context context, CharSequence charSequence, int i) {
        Toast.makeText(context, charSequence, i).show();
    }
}
