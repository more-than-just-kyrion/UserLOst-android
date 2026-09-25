package com.iiordanov.bVNC;

import android.R;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.text.Html;
import android.util.Log;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import android.widget.ScrollView;
import com.antlersoft.android.contentxml.SqliteElement;
import com.undatech.opaque.ConnectionSetupActivity;
import com.undatech.opaque.MessageDialogs;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.Field;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.UUID;
import net.sqlcipher.database.SQLiteDatabase;
import org.apache.commons.lang3.StringUtils;
import org.apache.http.HttpHost;
import org.xml.sax.SAXException;
import tech.ula.customlibrary.BuildConfig;

/* JADX INFO: loaded from: classes2.dex */
public class Utils {
    private static final String TAG = "Utils";
    private static AlertDialog alertDialog;
    private static final Intent docIntent = new Intent("android.intent.action.VIEW", Uri.parse("http://code.google.com/p/android-vnc-viewer/wiki/Documentation"));
    private static int nextNoticeID = 0;
    public static String[] standardPackageNames = {"com.iiordanov.bVNC", "com.iiordanov.freebVNC", "com.iiordanov.aRDP", "com.iiordanov.freeaRDP", "com.iiordanov.aSPICE", "com.iiordanov.freeaSPICE"};

    public static boolean isVnc(String str) {
        return true;
    }

    public static void showYesNoPrompt(Context context, String str, String str2, DialogInterface.OnClickListener onClickListener, DialogInterface.OnClickListener onClickListener2) {
        try {
            AlertDialog alertDialog2 = alertDialog;
            if (alertDialog2 != null && alertDialog2.isShowing() && !isContextActivityThatIsFinishing(context)) {
                alertDialog.dismiss();
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(context);
            builder.setTitle(str);
            builder.setIcon(R.drawable.ic_dialog_info);
            builder.setMessage(str2);
            builder.setCancelable(false);
            builder.setPositiveButton(context.getString(R.string.yes), onClickListener);
            builder.setNegativeButton(context.getString(R.string.no), onClickListener2);
            AlertDialog alertDialog3 = alertDialog;
            if ((alertDialog3 == null || !alertDialog3.isShowing()) && !isContextActivityThatIsFinishing(context)) {
                AlertDialog alertDialogCreate = builder.create();
                alertDialog = alertDialogCreate;
                alertDialogCreate.show();
            }
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
        }
    }

    public static ActivityManager getActivityManager(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager != null) {
            return activityManager;
        }
        throw new UnsupportedOperationException("Could not retrieve ActivityManager");
    }

    public static ActivityManager.MemoryInfo getMemoryInfo(Context context) {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        getActivityManager(context).getMemoryInfo(memoryInfo);
        return memoryInfo;
    }

    public static void showDocumentation(Context context) {
        context.startActivity(docIntent);
    }

    public static int nextNoticeID() {
        int i = nextNoticeID + 1;
        nextNoticeID = i;
        return i;
    }

    public static void showErrorMessage(Context context, String str) {
        showMessage(context, context.getString(com.undatech.remoteClientUi.R.string.error) + "!", str, R.drawable.ic_dialog_alert, new DialogInterface.OnClickListener() { // from class: com.iiordanov.bVNC.Utils.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
    }

    public static void showFatalErrorMessage(final Context context, String str) {
        showMessage(context, context.getString(com.undatech.remoteClientUi.R.string.error) + "!", str, R.drawable.ic_dialog_alert, new DialogInterface.OnClickListener() { // from class: com.iiordanov.bVNC.Utils.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                Activity activity = Utils.getActivity(context);
                if (activity != null) {
                    MessageDialogs.justFinish(activity);
                }
            }
        });
    }

    public static void showMessage(Context context, String str, String str2, int i, DialogInterface.OnClickListener onClickListener) {
        try {
            AlertDialog alertDialog2 = alertDialog;
            if (alertDialog2 != null && alertDialog2.isShowing() && !isContextActivityThatIsFinishing(context)) {
                alertDialog.dismiss();
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(context);
            builder.setTitle(str);
            builder.setMessage(Html.fromHtml(str2));
            builder.setCancelable(false);
            builder.setPositiveButton(context.getString(R.string.ok), onClickListener);
            builder.setIcon(i);
            AlertDialog alertDialog3 = alertDialog;
            if ((alertDialog3 == null || !alertDialog3.isShowing()) && !isContextActivityThatIsFinishing(context)) {
                AlertDialog alertDialogCreate = builder.create();
                alertDialog = alertDialogCreate;
                alertDialogCreate.show();
            }
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
        }
    }

    public static boolean isNullOrEmptry(String str) {
        return str == null || str.equals("");
    }

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

    public static void showMenu(Context context) {
        try {
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            Field declaredField = ViewConfiguration.class.getDeclaredField("sHasPermanentMenuKey");
            if (declaredField != null) {
                declaredField.setAccessible(true);
                declaredField.setBoolean(viewConfiguration, false);
            }
        } catch (Exception unused) {
        }
    }

    public static boolean isFree(Context context) {
        return context.getPackageName().contains("free");
    }

    public static String getConnectionString(Context context) {
        return context.getPackageName() + ".CONNECTION";
    }

    public static boolean isCustom(String str) {
        for (String str2 : standardPackageNames) {
            if (str.equals(str2)) {
                return false;
            }
        }
        return true;
    }

    public static boolean isRdp(String str) {
        return str.toLowerCase().contains("rdp");
    }

    public static boolean isSpice(String str) {
        return str.toLowerCase().contains("spice");
    }

    public static boolean isOpaque(String str) {
        return str.toLowerCase().contains("opaque");
    }

    public static Class getConnectionSetupClass(String str) {
        boolean zIsCustom = isCustom(str);
        if (isOpaque(str)) {
            return ConnectionSetupActivity.class;
        }
        if (isVnc(str)) {
            if (zIsCustom) {
                return CustomVnc.class;
            }
            return bVNC.class;
        }
        if (isRdp(str)) {
            return aRDP.class;
        }
        if (isSpice(str)) {
            return aSPICE.class;
        }
        throw new IllegalArgumentException("Could not find appropriate connection setup activity class for package " + str);
    }

    public static String getConnectionScheme(Context context) {
        String packageName = context.getPackageName();
        if (isVnc(packageName)) {
            return BuildConfig.DEFAULT_LAUNCH_TYPE;
        }
        if (isRdp(packageName)) {
            return "rdp";
        }
        if (!isSpice(packageName)) {
            return "unsupported";
        }
        return "spice";
    }

    public static int getDefaultPort(Context context) {
        int i = Constants.DEFAULT_PROTOCOL_PORT;
        if (context != null) {
            return isRdp(context.getPackageName()) ? Constants.DEFAULT_RDP_PORT : Constants.DEFAULT_VNC_PORT;
        }
        return i;
    }

    public static String getDonationPackageName(Context context) {
        return context.getPackageName().replace("free", "");
    }

    public static boolean isBlackBerry() {
        return Build.MODEL.contains("BlackBerry") || Build.BRAND.contains("BlackBerry") || Build.MANUFACTURER.contains("BlackBerry");
    }

    public static void exportSettingsToXml(String str, SQLiteDatabase sQLiteDatabase) throws SAXException, IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(new File(str), false));
        SqliteElement.exportDbAsXmlToStream(sQLiteDatabase, outputStreamWriter);
        outputStreamWriter.close();
    }

    public static String getExportFileName(String str) {
        if (isVnc(str)) {
            return "vnc_settings.xml";
        }
        if (isRdp(str)) {
            return "rdp_settings.xml";
        }
        if (isSpice(str)) {
            return "spice_settings.xml";
        }
        if (!isOpaque(str)) {
            return "settings.xml";
        }
        return "opaque_settings.json";
    }

    public static void importSettingsFromXml(String str, SQLiteDatabase sQLiteDatabase) throws SAXException, IOException {
        SqliteElement.importXmlStreamToDb(sQLiteDatabase, new InputStreamReader(new FileInputStream(str)), SqliteElement.ReplaceStrategy.REPLACE_EXISTING);
    }

    public static boolean isValidIpv6Address(String str) {
        try {
            return InetAddress.getByName(str) instanceof Inet6Address;
        } catch (UnknownHostException unused) {
            return false;
        }
    }

    public static String messageAndStackTraceAsString(Exception exc) {
        StringWriter stringWriter = new StringWriter();
        exc.printStackTrace(new PrintWriter(stringWriter));
        String localizedMessage = exc.getLocalizedMessage();
        if (localizedMessage == null) {
            localizedMessage = "";
        }
        return StringUtils.LF + localizedMessage + StringUtils.LF + stringWriter.toString();
    }

    public static boolean querySharedPreferenceBoolean(Context context, String str) {
        if (context != null) {
            return context.getSharedPreferences(Constants.generalSettingsTag, 0).getBoolean(str, false);
        }
        return false;
    }

    public static String querySharedPreferenceString(Context context, String str, String str2) {
        return context != null ? context.getSharedPreferences(Constants.generalSettingsTag, 0).getString(str, str2) : str2;
    }

    public static void setSharedPreferenceString(Context context, String str, String str2) {
        if (context != null) {
            SharedPreferences.Editor editorEdit = context.getSharedPreferences(Constants.generalSettingsTag, 0).edit();
            editorEdit.putString(str, str2);
            editorEdit.apply();
            Log.i(TAG, "Set: " + str + " to value: " + str2);
        }
    }

    public static void setSharedPreferenceBoolean(Context context, String str, boolean z) {
        if (context != null) {
            SharedPreferences.Editor editorEdit = context.getSharedPreferences(Constants.generalSettingsTag, 0).edit();
            editorEdit.putBoolean(str, z);
            editorEdit.apply();
            Log.i(TAG, "Set: " + str + " to value: " + z);
        }
    }

    public static void toggleSharedPreferenceBoolean(Context context, String str) {
        if (context != null) {
            SharedPreferences sharedPreferences = context.getSharedPreferences(Constants.generalSettingsTag, 0);
            boolean z = sharedPreferences.getBoolean(str, false);
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putBoolean(str, !z);
            editorEdit.apply();
            Log.i(TAG, "Toggled " + str + " " + String.valueOf(z));
        }
    }

    static boolean isContextActivityThatIsFinishing(Context context) {
        return (context instanceof Activity) && ((Activity) context).isFinishing();
    }

    static void writeScreenshotToFile(Context context, AbstractBitmapData abstractBitmapData, String str, int i, int i2) {
        if (abstractBitmapData != null) {
            try {
                if (abstractBitmapData.mbitmap != null) {
                    FileOutputStream fileOutputStream = new FileOutputStream(str);
                    Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(abstractBitmapData.mbitmap, i, i2, true);
                    abstractBitmapData.mbitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                    fileOutputStream.close();
                    bitmapCreateScaledBitmap.recycle();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    static String getUuid(String str) {
        try {
            UUID.fromString(str);
            return str;
        } catch (IllegalArgumentException unused) {
            return UUID.randomUUID().toString();
        }
    }

    public static Dialog createMainScreenDialog(Context context) {
        return createDialog(context, com.undatech.remoteClientUi.R.string.main_screen_help_text);
    }

    public static Dialog createConnectionScreenDialog(Context context) {
        int i = com.undatech.remoteClientUi.R.string.vnc_connection_screen_help_text;
        if (isRdp(context.getPackageName())) {
            i = com.undatech.remoteClientUi.R.string.rdp_connection_screen_help_text;
        } else if (isSpice(context.getPackageName())) {
            i = com.undatech.remoteClientUi.R.string.spice_connection_screen_help_text;
        } else if (isOpaque(context.getPackageName())) {
            i = com.undatech.remoteClientUi.R.string.opaque_connection_screen_help_text;
        }
        return createDialog(context, i);
    }

    public static Dialog createDialog(Context context, int i) {
        AlertDialog alertDialogCreate = new AlertDialog.Builder(context).setMessage(i).setPositiveButton(com.undatech.remoteClientUi.R.string.close, new DialogInterface.OnClickListener() { // from class: com.iiordanov.bVNC.Utils.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
            }
        }).setView(new ScrollView(context)).create();
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.copyFrom(alertDialogCreate.getWindow().getAttributes());
        layoutParams.width = -1;
        layoutParams.height = -2;
        alertDialogCreate.show();
        alertDialogCreate.getWindow().setAttributes(layoutParams);
        return alertDialogCreate;
    }

    public static String newScreenshotFileName() {
        return UUID.randomUUID().toString() + ".png";
    }

    public static String getHostFromUriString(String str) {
        if (!str.startsWith(HttpHost.DEFAULT_SCHEME_NAME)) {
            str = "https://" + str;
        }
        return Uri.parse(str).getHost();
    }

    public static Activity getActivity(Context context) {
        while (context instanceof ContextWrapper) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return null;
    }

    public static String getVersionAndCode(Context context) {
        String str = "";
        try {
            String packageName = context.getPackageName();
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
            str = packageInfo.versionName + "_" + packageInfo.versionCode;
            Log.d(TAG, "Version of " + packageName + " is " + str);
            return str;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return str;
        }
    }

    public static String getStringFromMessage(Message message, String str) {
        Bundle data = message.getData();
        if (data == null) {
            return "";
        }
        return data.getString(str);
    }

    public static int getIntFromMessage(Message message, String str) {
        Bundle data = message.getData();
        if (data != null) {
            return data.getInt(str);
        }
        return 0;
    }

    public static boolean getBooleanFromMessage(Message message, String str) {
        Bundle data = message.getData();
        if (data != null) {
            return data.getBoolean(str);
        }
        return false;
    }

    public static String getStringResourceByName(Context context, String str) {
        int identifier = context.getResources().getIdentifier(str, "string", context.getPackageName());
        if (identifier <= 0) {
            return "";
        }
        return context.getString(identifier);
    }
}
