package com.github.luben.zstd.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.SystemProperties;
import org.apache.http.message.TokenParser;

/* JADX INFO: loaded from: classes.dex */
public enum Native {
    ;

    private static final String libname = "libzstd-jni-1.5.7-7";
    private static final String libnameShort = "zstd-jni-1.5.7-7";
    private static final String nativePathOverride = "ZstdNativePath";
    private static final String tempFolderOverride = "ZstdTempFolder";
    private static final String errorMsg = "Unsupported OS/arch, cannot find " + resourceName() + " or load zstd-jni-1.5.7-7 from system libraries. Please try building from source the jar or providing libzstd-jni-1.5.7-7 in your system.";
    private static AtomicBoolean loaded = new AtomicBoolean(false);

    private static String osName() {
        String strReplace = System.getProperty(SystemProperties.OS_NAME).toLowerCase().replace(TokenParser.SP, '_');
        if (strReplace.startsWith("win")) {
            return "win";
        }
        return strReplace.startsWith("mac") ? "darwin" : strReplace;
    }

    private static String libExtension() {
        if (osName().contains("os_x") || osName().contains("darwin")) {
            return "dylib";
        }
        if (osName().contains("win")) {
            return "dll";
        }
        return "so";
    }

    private static String resourceName() {
        String strOsName = osName();
        String property = System.getProperty(SystemProperties.OS_ARCH);
        if (strOsName.equals("darwin") && property.equals("amd64")) {
            property = "x86_64";
        }
        return "/" + strOsName + "/" + property + "/libzstd-jni-1.5.7-7." + libExtension();
    }

    public static synchronized void assumeLoaded() {
        loaded.set(true);
    }

    public static synchronized boolean isLoaded() {
        return loaded.get();
    }

    private static void loadLibrary(final String str) {
        AccessController.doPrivileged(new PrivilegedAction<Void>() { // from class: com.github.luben.zstd.util.Native.1
            @Override // java.security.PrivilegedAction
            public Void run() {
                System.loadLibrary(str);
                return null;
            }
        });
    }

    private static void loadLibraryFile(final String str) {
        AccessController.doPrivileged(new PrivilegedAction<Void>() { // from class: com.github.luben.zstd.util.Native.2
            @Override // java.security.PrivilegedAction
            public Void run() {
                System.load(str);
                return null;
            }
        });
    }

    public static synchronized void load() {
        String property = System.getProperty(tempFolderOverride);
        if (property == null) {
            load(null);
        } else {
            load(new File(property));
        }
    }

    /* JADX WARN: Code duplicated, block: B:110:? A[ADDED_TO_REGION, Catch: all -> 0x0168, REMOVE, SYNTHETIC, TRY_ENTER, TryCatch #4 {, blocks: (B:4:0x0005, B:8:0x000f, B:10:0x001c, B:16:0x0037, B:18:0x003f, B:40:0x00bc, B:42:0x00c1, B:44:0x00c6, B:46:0x00cc, B:71:0x0154, B:73:0x0159, B:75:0x015e, B:77:0x0164, B:78:0x0167, B:22:0x004c, B:23:0x0075, B:13:0x0026), top: B:90:0x0005, inners: #7, #12 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x0159 A[Catch: IOException -> 0x0167, all -> 0x0168, TryCatch #4 {, blocks: (B:4:0x0005, B:8:0x000f, B:10:0x001c, B:16:0x0037, B:18:0x003f, B:40:0x00bc, B:42:0x00c1, B:44:0x00c6, B:46:0x00cc, B:71:0x0154, B:73:0x0159, B:75:0x015e, B:77:0x0164, B:78:0x0167, B:22:0x004c, B:23:0x0075, B:13:0x0026), top: B:90:0x0005, inners: #7, #12 }] */
    /* JADX WARN: Code duplicated, block: B:75:0x015e A[Catch: IOException -> 0x0167, all -> 0x0168, TryCatch #4 {, blocks: (B:4:0x0005, B:8:0x000f, B:10:0x001c, B:16:0x0037, B:18:0x003f, B:40:0x00bc, B:42:0x00c1, B:44:0x00c6, B:46:0x00cc, B:71:0x0154, B:73:0x0159, B:75:0x015e, B:77:0x0164, B:78:0x0167, B:22:0x004c, B:23:0x0075, B:13:0x0026), top: B:90:0x0005, inners: #7, #12 }] */
    public static synchronized void load(File file) {
        File file2;
        Throwable th;
        FileOutputStream fileOutputStream;
        if (loaded.get()) {
            return;
        }
        String strResourceName = resourceName();
        String property = System.getProperty(nativePathOverride);
        if (property != null) {
            loadLibraryFile(property);
            loaded.set(true);
            return;
        }
        try {
            Class.forName("org.osgi.framework.BundleEvent");
            loadLibrary(libname);
            loaded.set(true);
        } catch (Throwable unused) {
            InputStream resourceAsStream = Native.class.getResourceAsStream(strResourceName);
            if (resourceAsStream == null) {
                try {
                    loadLibrary(libnameShort);
                    loaded.set(true);
                    return;
                } catch (UnsatisfiedLinkError e) {
                    UnsatisfiedLinkError unsatisfiedLinkError = new UnsatisfiedLinkError(e.getMessage() + StringUtils.LF + errorMsg);
                    unsatisfiedLinkError.setStackTrace(e.getStackTrace());
                    throw unsatisfiedLinkError;
                }
            }
            File file3 = null;
            fileOutputStream = null;
            fileOutputStream = null;
            FileOutputStream fileOutputStream2 = null;
            try {
                File fileCreateTempFile = File.createTempFile(libname, "." + libExtension(), file);
                try {
                    fileCreateTempFile.deleteOnExit();
                    FileOutputStream fileOutputStream3 = new FileOutputStream(fileCreateTempFile);
                    try {
                        try {
                            byte[] bArr = new byte[4096];
                            while (true) {
                                int i = resourceAsStream.read(bArr);
                                if (i == -1) {
                                    try {
                                        break;
                                    } catch (IOException unused2) {
                                        fileOutputStream2 = fileOutputStream3;
                                    }
                                } else {
                                    fileOutputStream3.write(bArr, 0, i);
                                }
                            }
                            fileOutputStream3.flush();
                            fileOutputStream3.close();
                            try {
                                loadLibraryFile(fileCreateTempFile.getAbsolutePath());
                            } catch (UnsatisfiedLinkError e2) {
                                try {
                                    loadLibrary(libnameShort);
                                } catch (UnsatisfiedLinkError e3) {
                                    UnsatisfiedLinkError unsatisfiedLinkError2 = new UnsatisfiedLinkError(e2.getMessage() + StringUtils.LF + e3.getMessage() + StringUtils.LF + errorMsg);
                                    unsatisfiedLinkError2.setStackTrace(e3.getStackTrace());
                                    throw unsatisfiedLinkError2;
                                }
                            }
                            loaded.set(true);
                            try {
                                resourceAsStream.close();
                                if (fileOutputStream2 != null) {
                                    fileOutputStream2.close();
                                }
                                if (fileCreateTempFile == null || !fileCreateTempFile.exists()) {
                                    return;
                                }
                                fileCreateTempFile.delete();
                            } catch (IOException unused3) {
                            }
                        } catch (IOException e4) {
                            file3 = fileCreateTempFile;
                            fileOutputStream = fileOutputStream3;
                            e = e4;
                            try {
                                ExceptionInInitializerError exceptionInInitializerError = new ExceptionInInitializerError("Cannot unpack libzstd-jni-1.5.7-7: " + e.getMessage());
                                exceptionInInitializerError.setStackTrace(e.getStackTrace());
                                throw exceptionInInitializerError;
                            } catch (Throwable th2) {
                                File file4 = file3;
                                th = th2;
                                file2 = file4;
                                try {
                                    resourceAsStream.close();
                                    if (fileOutputStream != null) {
                                        fileOutputStream.close();
                                    }
                                    if (file2 == null) {
                                        throw th;
                                    }
                                    throw th;
                                } catch (IOException unused4) {
                                    throw th;
                                }
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        file2 = fileCreateTempFile;
                        fileOutputStream = fileOutputStream3;
                        resourceAsStream.close();
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        if (file2 == null && file2.exists()) {
                            file2.delete();
                            throw th;
                        }
                        throw th;
                    }
                } catch (IOException e5) {
                    e = e5;
                    FileOutputStream fileOutputStream4 = fileOutputStream2;
                    file3 = fileCreateTempFile;
                    fileOutputStream = fileOutputStream4;
                    ExceptionInInitializerError exceptionInInitializerError2 = new ExceptionInInitializerError("Cannot unpack libzstd-jni-1.5.7-7: " + e.getMessage());
                    exceptionInInitializerError2.setStackTrace(e.getStackTrace());
                    throw exceptionInInitializerError2;
                } catch (Throwable th4) {
                    file2 = fileCreateTempFile;
                    fileOutputStream = fileOutputStream2;
                    th = th4;
                    resourceAsStream.close();
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                    if (file2 == null) {
                        throw th;
                    }
                    throw th;
                }
            } catch (IOException e6) {
                e = e6;
                fileOutputStream = null;
            } catch (Throwable th5) {
                file2 = null;
                th = th5;
                fileOutputStream = null;
            }
        }
    }
}
