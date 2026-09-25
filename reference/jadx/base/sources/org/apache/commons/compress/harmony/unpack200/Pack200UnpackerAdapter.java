package org.apache.commons.compress.harmony.unpack200;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.jar.JarOutputStream;
import org.apache.commons.compress.harmony.pack200.Pack200Adapter;
import org.apache.commons.compress.harmony.pack200.Pack200Exception;
import org.apache.commons.compress.java.util.jar.Pack200;
import org.apache.commons.io.input.BoundedInputStream;
import org.apache.commons.lang3.reflect.FieldUtils;

/* JADX INFO: loaded from: classes3.dex */
public class Pack200UnpackerAdapter extends Pack200Adapter implements Pack200.Unpacker {
    static BoundedInputStream newBoundedInputStream(File file) throws IOException {
        return newBoundedInputStream(file.toPath());
    }

    private static BoundedInputStream newBoundedInputStream(FileInputStream fileInputStream) throws IOException {
        return newBoundedInputStream(readPath(fileInputStream), new String[0]);
    }

    static BoundedInputStream newBoundedInputStream(InputStream inputStream) throws IOException {
        if (inputStream instanceof BoundedInputStream) {
            return (BoundedInputStream) inputStream;
        }
        if (inputStream instanceof FilterInputStream) {
            return newBoundedInputStream(unwrap((FilterInputStream) inputStream));
        }
        if (inputStream instanceof FileInputStream) {
            return newBoundedInputStream((FileInputStream) inputStream);
        }
        return new BoundedInputStream(inputStream);
    }

    static BoundedInputStream newBoundedInputStream(Path path) throws IOException {
        return new BoundedInputStream(new BufferedInputStream(Files.newInputStream(path, new OpenOption[0])), Files.size(path));
    }

    static BoundedInputStream newBoundedInputStream(String str, String... strArr) throws IOException {
        return newBoundedInputStream(Paths.get(str, strArr));
    }

    static BoundedInputStream newBoundedInputStream(URL url) throws URISyntaxException, IOException {
        return newBoundedInputStream(Paths.get(url.toURI()));
    }

    private static <T> T readField(Object obj, String str) {
        try {
            return (T) FieldUtils.readField(obj, str, true);
        } catch (IllegalAccessException unused) {
            return null;
        }
    }

    static String readPath(FileInputStream fileInputStream) {
        return (String) readField(fileInputStream, "path");
    }

    static InputStream unwrap(FilterInputStream filterInputStream) {
        return (InputStream) readField(filterInputStream, "in");
    }

    static InputStream unwrap(InputStream inputStream) {
        return inputStream instanceof FilterInputStream ? unwrap((FilterInputStream) inputStream) : inputStream;
    }

    @Override // org.apache.commons.compress.java.util.jar.Pack200.Unpacker
    public void unpack(File file, JarOutputStream jarOutputStream) throws IOException {
        if (file == null || jarOutputStream == null) {
            throw new IllegalArgumentException("Must specify both input and output streams");
        }
        long length = file.length();
        BufferedInputStream bufferedInputStream = new BufferedInputStream(Files.newInputStream(file.toPath(), new OpenOption[0]), (length <= 0 || length >= PlaybackStateCompat.ACTION_PLAY_FROM_URI) ? 8192 : (int) length);
        try {
            unpack(bufferedInputStream, jarOutputStream);
            bufferedInputStream.close();
        } catch (Throwable th) {
            try {
                bufferedInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // org.apache.commons.compress.java.util.jar.Pack200.Unpacker
    public void unpack(InputStream inputStream, JarOutputStream jarOutputStream) throws IOException {
        if (inputStream == null || jarOutputStream == null) {
            throw new IllegalArgumentException("Must specify both input and output streams");
        }
        completed(0.0d);
        try {
            new Archive(inputStream, jarOutputStream).unpack();
            completed(1.0d);
        } catch (Pack200Exception e) {
            throw new IOException("Failed to unpack Jar:" + e);
        }
    }
}
