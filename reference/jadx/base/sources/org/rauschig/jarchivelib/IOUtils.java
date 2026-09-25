package org.rauschig.jarchivelib;

import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class IOUtils {
    private static final int DEFAULT_BUFFER_SIZE = 8024;

    private IOUtils() {
    }

    public static void copy(InputStream inputStream, File file) throws Throwable {
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                copy(inputStream, fileOutputStream2);
                closeQuietly(fileOutputStream2);
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                closeQuietly(fileOutputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static long copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        return copy(inputStream, outputStream, DEFAULT_BUFFER_SIZE);
    }

    public static long copy(InputStream inputStream, OutputStream outputStream, int i) throws IOException {
        byte[] bArr = new byte[i];
        long j = 0;
        while (true) {
            int i2 = inputStream.read(bArr);
            if (-1 == i2) {
                return j;
            }
            outputStream.write(bArr, 0, i2);
            j += (long) i2;
        }
    }

    public static String relativePath(File file, File file2) throws IOException {
        return file2.getCanonicalPath().substring(file.getCanonicalPath().length() + 1);
    }

    public static void requireDirectory(File file) throws IOException, IllegalArgumentException {
        if (file.isFile()) {
            throw new IllegalArgumentException(file + " exists and is a file, directory or path expected.");
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        if (!file.canWrite()) {
            throw new IllegalArgumentException("Can not write to destination " + file);
        }
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static File[] filesContainedIn(File file) {
        if (file.isDirectory()) {
            return file.listFiles();
        }
        return new File[]{file};
    }
}
