package com.undatech.opaque.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.util.Log;
import com.iiordanov.bVNC.Constants;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class FileUtils {
    public static String TAG = "FileUtils";

    public static String join(String str, String str2) {
        return new File(new File(str), str2).getPath();
    }

    public static void deleteFile(String str) {
        new File(str).delete();
    }

    public static void outputToFile(InputStream inputStream, File file) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[3000];
        while (true) {
            int i = bufferedInputStream.read(bArr, 0, 3000);
            if (i != -1) {
                byteArrayOutputStream.write(bArr, 0, i);
            } else {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                fileOutputStream.write(byteArrayOutputStream.toByteArray());
                fileOutputStream.close();
                return;
            }
        }
    }

    public static List<String> listFiles(Context context, String str) throws IOException {
        String[] list = context.getResources().getAssets().list(str);
        if (list != null) {
            for (String str2 : list) {
                Log.d("", str2);
            }
        }
        return Arrays.asList(list);
    }

    public static void writeFileOutFromAssetsIfNeeded(Context context, String str, String str2) throws PackageManager.NameNotFoundException, IOException {
        String str3 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        SharedPreferences sharedPreferences = context.getSharedPreferences(Constants.generalSettingsTag, 0);
        String string = sharedPreferences.getString(str2 + "_lastVersion", "");
        Log.e(TAG, "Will output from assets to file named: " + str2);
        if (!new File(context.getFilesDir() + "/" + str2).exists() || !str3.equals(string)) {
            InputStream inputStreamOpen = context.getAssets().open(str);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int i = inputStreamOpen.read(bArr, 0, 1024);
                if (i >= 0) {
                    byteArrayOutputStream.write(bArr, 0, i);
                } else {
                    inputStreamOpen.close();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    FileOutputStream fileOutputStreamOpenFileOutput = context.openFileOutput(str2, 0);
                    fileOutputStreamOpenFileOutput.write(byteArray);
                    fileOutputStreamOpenFileOutput.close();
                    Log.i(TAG, "Updating version of file: " + str2);
                    SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                    editorEdit.putString(str2 + "_lastVersion", str3);
                    editorEdit.apply();
                    return;
                }
            }
        } else {
            Log.i(TAG, "Current version of file already exists: " + str2);
        }
    }

    public static void logFilesInPrivateStorage(Context context) {
        Log.d(TAG, "logFilesInPrivateStorage");
        Iterator<File> it = getListFiles(context.getFilesDir()).iterator();
        while (it.hasNext()) {
            Log.d(TAG, it.next().toString());
        }
    }

    public static List<File> getListFiles(File file) {
        ArrayList arrayList = new ArrayList();
        LinkedList linkedList = new LinkedList(Arrays.asList(file.listFiles()));
        while (!linkedList.isEmpty()) {
            File file2 = (File) linkedList.remove();
            if (file2.isDirectory()) {
                linkedList.addAll(Arrays.asList(file2.listFiles()));
            } else {
                arrayList.add(file2);
            }
        }
        return arrayList;
    }

    public static void deletePrivateFileIfExisting(Context context, String str) {
        try {
            deleteDirectoryRecursively(new File(context.getFilesDir().getPath() + "/" + str));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static boolean deleteDirectoryRecursively(File file) throws IOException {
        File[] fileArrListFiles;
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null && fileArrListFiles.length > 0) {
            return deleteDirectoryRecursively(fileArrListFiles[0]);
        }
        if (!file.delete()) {
            Log.d(TAG, "Failed to delete the file or directory: " + file.toString());
            return false;
        }
        Log.d(TAG, "Successfully deleted the file or directory: " + file.toString());
        return true;
    }
}
