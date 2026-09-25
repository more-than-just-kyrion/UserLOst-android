package org.freedesktop.gstreamer;

import android.content.Context;
import android.content.res.AssetManager;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public class GStreamer {
    private static native void nativeInit(Context context) throws Exception;

    public static void init(Context context) throws Exception {
        copyCaCertificates(context);
        copyFonts(context);
        nativeInit(context);
    }

    private static void copyFonts(Context context) throws Throwable {
        AssetManager assets = context.getAssets();
        File file = new File(context.getFilesDir(), "fontconfig");
        File file2 = new File(file, "fonts");
        File file3 = new File(file, "fonts.conf");
        file2.mkdirs();
        try {
            copyFile(assets, "fontconfig/fonts.conf", file3);
            for (String str : assets.list("fontconfig/fonts/truetype")) {
                copyFile(assets, "fontconfig/fonts/truetype/" + str, new File(file2, str));
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private static void copyCaCertificates(Context context) throws Throwable {
        AssetManager assets = context.getAssets();
        File file = new File(new File(context.getFilesDir(), "ssl"), "certs");
        File file2 = new File(file, "ca-certificates.crt");
        file.mkdirs();
        try {
            copyFile(assets, "ssl/certs/ca-certificates.crt", file2);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private static void copyFile(AssetManager assetManager, String str, File file) throws Throwable {
        InputStream inputStreamOpen;
        FileOutputStream fileOutputStream;
        if (file.exists()) {
            file.delete();
        }
        InputStream inputStream = null;
        e = null;
        e = null;
        e = null;
        e = null;
        try {
            inputStreamOpen = assetManager.open(str);
            try {
                fileOutputStream = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i = inputStreamOpen.read(bArr);
                        if (i == -1) {
                            break;
                        } else {
                            fileOutputStream.write(bArr, 0, i);
                        }
                    }
                    fileOutputStream.flush();
                    if (inputStreamOpen != null) {
                        try {
                            inputStreamOpen.close();
                        } catch (IOException e) {
                            e = e;
                        }
                    }
                    try {
                        fileOutputStream.close();
                    } catch (IOException e2) {
                        if (e == null) {
                            e = e2;
                        }
                    }
                    if (e != null) {
                        throw e;
                    }
                } catch (IOException e3) {
                    e = e3;
                    inputStream = inputStreamOpen;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused) {
                        }
                    }
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                            throw e;
                        } catch (IOException unused2) {
                            throw e;
                        }
                    }
                    throw e;
                } catch (Throwable th) {
                    th = th;
                    if (inputStreamOpen != null) {
                        try {
                            inputStreamOpen.close();
                        } catch (IOException e4) {
                            e = e4;
                        }
                    }
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e5) {
                            if (e == null) {
                                e = e5;
                            }
                        }
                    }
                    if (e != null) {
                        throw e;
                    }
                    throw th;
                }
            } catch (IOException e6) {
                e = e6;
                fileOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
            }
        } catch (IOException e7) {
            e = e7;
            fileOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            inputStreamOpen = null;
            fileOutputStream = null;
        }
    }
}
