package com.termux.app;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Field;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class BackgroundJob {
    private static final String LOG_TAG = "termux-task";
    final Process mProcess;

    public BackgroundJob(String str, String str2, String[] strArr, TermuxService termuxService) {
        this(str, str2, strArr, termuxService, null);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.termux.app.BackgroundJob$2] */
    public BackgroundJob(String str, String str2, String[] strArr, final TermuxService termuxService, final PendingIntent pendingIntent) {
        String[] strArrBuildEnvironment = buildEnvironment(false, str, TermuxService.filesPath, TermuxService.homePath, TermuxService.prefixPath, "");
        String str3 = str == null ? TermuxService.homePath : str;
        String[] strArr2 = setupProcessArgs(str2, strArr, TermuxService.prefixPath);
        final String string = Arrays.toString(strArr2);
        try {
            Process processExec = Runtime.getRuntime().exec(strArr2, strArrBuildEnvironment, new File(str3));
            this.mProcess = processExec;
            final int pid = getPid(processExec);
            final Bundle bundle = new Bundle();
            final StringBuilder sb = new StringBuilder();
            final StringBuilder sb2 = new StringBuilder();
            final Thread thread = new Thread() { // from class: com.termux.app.BackgroundJob.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(BackgroundJob.this.mProcess.getErrorStream(), StandardCharsets.UTF_8));
                    while (true) {
                        try {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                return;
                            }
                            sb2.append(line).append('\n');
                            Log.i(BackgroundJob.LOG_TAG, "[" + pid + "] stderr: " + line);
                        } catch (IOException unused) {
                            return;
                        }
                    }
                }
            };
            thread.start();
            new Thread() { // from class: com.termux.app.BackgroundJob.2
                /* JADX WARN: Code duplicated, block: B:11:0x007f A[Catch: CanceledException | InterruptedException -> 0x00fc, TryCatch #1 {CanceledException | InterruptedException -> 0x00fc, blocks: (B:9:0x006e, B:11:0x007f, B:13:0x00bc, B:15:0x00f2, B:12:0x009c), top: B:20:0x006e }] */
                /* JADX WARN: Code duplicated, block: B:12:0x009c A[Catch: CanceledException | InterruptedException -> 0x00fc, TryCatch #1 {CanceledException | InterruptedException -> 0x00fc, blocks: (B:9:0x006e, B:11:0x007f, B:13:0x00bc, B:15:0x00f2, B:12:0x009c), top: B:20:0x006e }] */
                /* JADX WARN: Code duplicated, block: B:15:0x00f2 A[Catch: CanceledException | InterruptedException -> 0x00fc, TRY_ENTER, TRY_LEAVE, TryCatch #1 {CanceledException | InterruptedException -> 0x00fc, blocks: (B:9:0x006e, B:11:0x007f, B:13:0x00bc, B:15:0x00f2, B:12:0x009c), top: B:20:0x006e }] */
                /* JADX WARN: Code duplicated, block: B:23:? A[RETURN, SYNTHETIC] */
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    Log.i(BackgroundJob.LOG_TAG, "[" + pid + "] starting: " + string);
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(BackgroundJob.this.mProcess.getInputStream(), StandardCharsets.UTF_8));
                    while (true) {
                        try {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            }
                            Log.i(BackgroundJob.LOG_TAG, "[" + pid + "] stdout: " + line);
                            sb.append(line).append('\n');
                        } catch (IOException e) {
                            Log.e(BackgroundJob.LOG_TAG, "Error reading output", e);
                        }
                    }
                    int iWaitFor = BackgroundJob.this.mProcess.waitFor();
                    termuxService.onBackgroundJobExited(BackgroundJob.this);
                    if (iWaitFor == 0) {
                        Log.i(BackgroundJob.LOG_TAG, "[" + pid + "] exited normally");
                    } else {
                        Log.w(BackgroundJob.LOG_TAG, "[" + pid + "] exited with code: " + iWaitFor);
                    }
                    bundle.putString("stdout", sb.toString());
                    bundle.putInt("exitCode", iWaitFor);
                    thread.join();
                    bundle.putString("stderr", sb2.toString());
                    Intent intent = new Intent();
                    intent.putExtra("result", bundle);
                    PendingIntent pendingIntent2 = pendingIntent;
                    if (pendingIntent2 != null) {
                        pendingIntent2.send(termuxService.getApplicationContext(), -1, intent);
                    }
                    try {
                        int iWaitFor2 = BackgroundJob.this.mProcess.waitFor();
                        termuxService.onBackgroundJobExited(BackgroundJob.this);
                        if (iWaitFor2 == 0) {
                            Log.i(BackgroundJob.LOG_TAG, "[" + pid + "] exited normally");
                        } else {
                            Log.w(BackgroundJob.LOG_TAG, "[" + pid + "] exited with code: " + iWaitFor2);
                        }
                        bundle.putString("stdout", sb.toString());
                        bundle.putInt("exitCode", iWaitFor2);
                        thread.join();
                        bundle.putString("stderr", sb2.toString());
                        Intent intent2 = new Intent();
                        intent2.putExtra("result", bundle);
                        PendingIntent pendingIntent3 = pendingIntent;
                        if (pendingIntent3 != null) {
                            pendingIntent3.send(termuxService.getApplicationContext(), -1, intent2);
                        }
                    } catch (PendingIntent.CanceledException | InterruptedException unused) {
                    }
                }
            }.start();
        } catch (IOException e) {
            this.mProcess = null;
            Log.e(LOG_TAG, "Failed running background job: " + string, e);
        }
    }

    private static void addToEnvIfPresent(List<String> list, String str) {
        String str2 = System.getenv(str);
        if (str2 != null) {
            list.add(str + "=" + str2);
        }
    }

    public static String[] buildEnvironment(boolean z, String str, String str2, String str3, String str4, String str5) {
        new File(str3).mkdirs();
        if (str == null) {
            str = str3;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add("TERM=xterm-256color");
        arrayList.add("COLORTERM=truecolor");
        arrayList.add("HOME=" + str3);
        arrayList.add("PREFIX=" + str4);
        arrayList.add("BOOTCLASSPATH=" + System.getenv("BOOTCLASSPATH"));
        arrayList.add("ANDROID_ROOT=" + System.getenv("ANDROID_ROOT"));
        arrayList.add("ANDROID_DATA=" + System.getenv("ANDROID_DATA"));
        arrayList.add("EXTERNAL_STORAGE=" + System.getenv("EXTERNAL_STORAGE"));
        addToEnvIfPresent(arrayList, "ANDROID_ART_ROOT");
        addToEnvIfPresent(arrayList, "DEX2OATBOOTCLASSPATH");
        addToEnvIfPresent(arrayList, "ANDROID_I18N_ROOT");
        addToEnvIfPresent(arrayList, "ANDROID_RUNTIME_ROOT");
        addToEnvIfPresent(arrayList, "ANDROID_TZDATA_ROOT");
        if (z) {
            arrayList.add("PATH= " + System.getenv("PATH"));
        } else {
            arrayList.add("LD_LIBRARY_PATH=" + str2 + "/support");
            arrayList.add("LANG=en_US.UTF-8");
            arrayList.add("PATH=" + str4 + "/bin");
            arrayList.add("PWD=" + str);
            arrayList.add("TMPDIR=" + str4 + "/tmp");
            arrayList.add("DROPBEAR_PASSWORD=" + str5);
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static int getPid(Process process) {
        try {
            Field declaredField = process.getClass().getDeclaredField("pid");
            declaredField.setAccessible(true);
            try {
                return declaredField.getInt(process);
            } finally {
                declaredField.setAccessible(false);
            }
        } catch (Throwable unused) {
            return -1;
        }
    }

    static String[] setupProcessArgs(String str, String[] strArr, String str2) {
        String str3 = null;
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(str));
            try {
                byte[] bArr = new byte[256];
                int i = fileInputStream.read(bArr);
                if (i > 4) {
                    byte b = bArr[0];
                    if (b != 127 || bArr[1] != 69 || bArr[2] != 76 || bArr[3] != 70) {
                        if (b == 35 && bArr[1] == 33) {
                            StringBuilder sb = new StringBuilder();
                            for (int i2 = 2; i2 < i; i2++) {
                                char c = (char) bArr[i2];
                                if (c == ' ' || c == '\n') {
                                    if (sb.length() != 0) {
                                        String string = sb.toString();
                                        if (!string.startsWith("/usr") && !string.startsWith("/bin")) {
                                            break;
                                        }
                                        String[] strArrSplit = string.split("/");
                                        str3 = str2 + "/bin/" + strArrSplit[strArrSplit.length - 1];
                                        break;
                                    }
                                } else {
                                    sb.append(c);
                                }
                            }
                        } else {
                            str3 = str2 + "/bin/sh";
                        }
                    }
                }
                fileInputStream.close();
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException unused) {
        }
        ArrayList arrayList = new ArrayList();
        if (str3 != null) {
            arrayList.add(str3);
        }
        arrayList.add(str);
        if (strArr != null) {
            Collections.addAll(arrayList, strArr);
        }
        return (String[]) arrayList.toArray(new String[0]);
    }
}
