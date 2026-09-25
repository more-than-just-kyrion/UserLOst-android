package org.apache.commons.compress.utils;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.util.function.Supplier;
import org.apache.commons.io.FileUtils;

/* JADX INFO: loaded from: classes3.dex */
public final class IOUtils {
    public static final LinkOption[] EMPTY_LINK_OPTIONS = new LinkOption[0];

    @Deprecated
    public static void closeQuietly(Closeable closeable) {
        org.apache.commons.io.IOUtils.closeQuietly(closeable);
    }

    @Deprecated
    public static void copy(File file, OutputStream outputStream) throws IOException {
        FileUtils.copyFile(file, outputStream);
    }

    @Deprecated
    public static long copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        return org.apache.commons.io.IOUtils.copy(inputStream, outputStream);
    }

    @Deprecated
    public static long copy(InputStream inputStream, OutputStream outputStream, int i) throws IOException {
        return org.apache.commons.io.IOUtils.copy(inputStream, outputStream, i);
    }

    @Deprecated
    public static long copyRange(InputStream inputStream, long j, OutputStream outputStream) throws IOException {
        return org.apache.commons.io.IOUtils.copyLarge(inputStream, outputStream, 0L, j);
    }

    @Deprecated
    public static long copyRange(InputStream inputStream, long j, OutputStream outputStream, int i) throws IOException {
        int i2;
        if (i < 1) {
            throw new IllegalArgumentException("bufferSize must be bigger than 0");
        }
        long j2 = 0;
        int iMin = (int) Math.min(i, Math.max(0L, j));
        byte[] bArr = new byte[iMin];
        while (j2 < j && -1 != (i2 = inputStream.read(bArr, 0, (int) Math.min(j - j2, iMin)))) {
            if (outputStream != null) {
                outputStream.write(bArr, 0, i2);
            }
            j2 += (long) i2;
        }
        return j2;
    }

    @Deprecated
    public static int read(File file, byte[] bArr) throws IOException {
        InputStream inputStreamNewInputStream = Files.newInputStream(file.toPath(), new OpenOption[0]);
        try {
            int fully = readFully(inputStreamNewInputStream, bArr, 0, bArr.length);
            if (inputStreamNewInputStream != null) {
                inputStreamNewInputStream.close();
            }
            return fully;
        } catch (Throwable th) {
            if (inputStreamNewInputStream != null) {
                try {
                    inputStreamNewInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static int readFully(InputStream inputStream, byte[] bArr) throws IOException {
        return readFully(inputStream, bArr, 0, bArr.length);
    }

    public static int readFully(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        int i3;
        if (i2 < 0 || i < 0 || (i3 = i2 + i) > bArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException();
        }
        return org.apache.commons.io.IOUtils.read(inputStream, bArr, i, i2);
    }

    public static void readFully(ReadableByteChannel readableByteChannel, ByteBuffer byteBuffer) throws IOException {
        if (org.apache.commons.io.IOUtils.read(readableByteChannel, byteBuffer) < byteBuffer.remaining()) {
            throw new EOFException();
        }
    }

    public static byte[] readRange(InputStream inputStream, int i) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        org.apache.commons.io.IOUtils.copyLarge(inputStream, byteArrayOutputStream, 0L, i);
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] readRange(ReadableByteChannel readableByteChannel, int i) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(Math.min(i, 8192));
        int i2 = 0;
        while (i2 < i) {
            byteBufferAllocate.limit(Math.min(i - i2, byteBufferAllocate.capacity()));
            int i3 = readableByteChannel.read(byteBufferAllocate);
            if (i3 <= 0) {
                break;
            }
            byteArrayOutputStream.write(byteBufferAllocate.array(), 0, i3);
            byteBufferAllocate.rewind();
            i2 += i3;
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static long skip(InputStream inputStream, long j) throws IOException {
        return org.apache.commons.io.IOUtils.skip(inputStream, j, new Supplier() { // from class: org.apache.commons.compress.utils.IOUtils$$ExternalSyntheticLambda0
            @Override // java.util.function.Supplier
            public final Object get() {
                return org.apache.commons.io.IOUtils.byteArray();
            }
        });
    }

    @Deprecated
    public static byte[] toByteArray(InputStream inputStream) throws IOException {
        return org.apache.commons.io.IOUtils.toByteArray(inputStream);
    }

    private IOUtils() {
    }
}
