package com.termux.app;

import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.webkit.MimeTypeMap;
import com.termux.terminal.EmulatorDebug;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import net.sqlcipher.database.SQLiteDatabase;

/* JADX INFO: loaded from: classes2.dex */
public class TermuxOpenReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if (data == null) {
            Log.e(EmulatorDebug.LOG_TAG, "termux-open: Called without intent data");
            return;
        }
        String path = data.getPath();
        String stringExtra = intent.getStringExtra("content-type");
        boolean booleanExtra = intent.getBooleanExtra("chooser", false);
        String action = intent.getAction() == null ? "android.intent.action.VIEW" : intent.getAction();
        action.hashCode();
        if (!action.equals("android.intent.action.SEND") && !action.equals("android.intent.action.VIEW")) {
            Log.e(EmulatorDebug.LOG_TAG, "Invalid action '" + action + "', using 'view'");
        }
        if (data.getScheme() != null && !data.getScheme().equals("file")) {
            Intent intent2 = new Intent(action, data);
            if (action.equals("android.intent.action.SEND")) {
                intent2.putExtra("android.intent.extra.TEXT", data.toString());
                intent2.setData(null);
            } else if (stringExtra != null) {
                intent2.setDataAndType(data, stringExtra);
            }
            intent2.addFlags(SQLiteDatabase.CREATE_IF_NECESSARY);
            try {
                context.startActivity(intent2);
                return;
            } catch (ActivityNotFoundException unused) {
                Log.e(EmulatorDebug.LOG_TAG, "termux-open: No app handles the url " + data);
                return;
            }
        }
        File file = new File(path);
        if (!file.isFile() || !file.canRead()) {
            Log.e(EmulatorDebug.LOG_TAG, "termux-open: Not a readable file: '" + file.getAbsolutePath() + "'");
            return;
        }
        Intent intent3 = new Intent();
        intent3.setAction(action);
        intent3.addFlags(268435457);
        if (stringExtra == null) {
            String name = file.getName();
            stringExtra = MimeTypeMap.getSingleton().getMimeTypeFromExtension(name.substring(name.lastIndexOf(46) + 1).toLowerCase());
            if (stringExtra == null) {
                stringExtra = "application/octet-stream";
            }
        }
        Uri uri = Uri.parse("content://com.termux.files" + file.getAbsolutePath());
        if ("android.intent.action.SEND".equals(action)) {
            intent3.putExtra("android.intent.extra.STREAM", uri);
            intent3.setType(stringExtra);
        } else {
            intent3.setDataAndType(uri, stringExtra);
        }
        if (booleanExtra) {
            intent3 = Intent.createChooser(intent3, null).addFlags(SQLiteDatabase.CREATE_IF_NECESSARY);
        }
        try {
            context.startActivity(intent3);
        } catch (ActivityNotFoundException unused2) {
            Log.e(EmulatorDebug.LOG_TAG, "termux-open: No app handles the url " + data);
        }
    }

    public static class ContentProvider extends android.content.ContentProvider {
        @Override // android.content.ContentProvider
        public int delete(Uri uri, String str, String[] strArr) {
            return 0;
        }

        @Override // android.content.ContentProvider
        public String getType(Uri uri) {
            return null;
        }

        @Override // android.content.ContentProvider
        public Uri insert(Uri uri, ContentValues contentValues) {
            return null;
        }

        @Override // android.content.ContentProvider
        public boolean onCreate() {
            return true;
        }

        @Override // android.content.ContentProvider
        public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
            return 0;
        }

        @Override // android.content.ContentProvider
        public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
            Object name;
            File file = new File(uri.getPath());
            if (strArr == null) {
                strArr = new String[]{"_display_name", "_size", "_id"};
            }
            Object[] objArr = new Object[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                String str3 = strArr[i];
                str3.hashCode();
                switch (str3) {
                    case "_display_name":
                        name = file.getName();
                        break;
                    case "_id":
                        name = 1;
                        break;
                    case "_size":
                        name = Integer.valueOf((int) file.length());
                        break;
                    default:
                        name = null;
                        break;
                }
                objArr[i] = name;
            }
            MatrixCursor matrixCursor = new MatrixCursor(strArr);
            matrixCursor.addRow(objArr);
            return matrixCursor;
        }

        @Override // android.content.ContentProvider
        public ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
            File file = new File(uri.getPath());
            try {
                String canonicalPath = file.getCanonicalPath();
                String canonicalPath2 = Environment.getExternalStorageDirectory().getCanonicalPath();
                if (!canonicalPath.startsWith(TermuxService.filesPath) && !canonicalPath.startsWith(canonicalPath2)) {
                    throw new IllegalArgumentException("Invalid path: " + canonicalPath);
                }
                return ParcelFileDescriptor.open(file, SQLiteDatabase.CREATE_IF_NECESSARY);
            } catch (IOException e) {
                throw new IllegalArgumentException(e);
            }
        }
    }
}
