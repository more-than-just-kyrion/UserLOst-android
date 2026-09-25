package org.apache.commons.compress.archivers.zip;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
class FileRandomAccessOutputStream extends RandomAccessOutputStream {
    private final FileChannel channel;
    private long position;

    FileRandomAccessOutputStream(FileChannel fileChannel) {
        this.channel = (FileChannel) Objects.requireNonNull(fileChannel, "channel");
    }

    FileRandomAccessOutputStream(Path path) throws IOException {
        this(path, StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING, StandardOpenOption.WRITE);
    }

    FileRandomAccessOutputStream(Path path, OpenOption... openOptionArr) throws IOException {
        this(FileChannel.open(path, openOptionArr));
    }

    FileChannel channel() {
        return this.channel;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.channel.close();
    }

    @Override // org.apache.commons.compress.archivers.zip.RandomAccessOutputStream
    public synchronized long position() {
        return this.position;
    }

    @Override // java.io.OutputStream
    public synchronized void write(byte[] bArr, int i, int i2) throws IOException {
        ZipIoUtil.writeFully(this.channel, ByteBuffer.wrap(bArr, i, i2));
        this.position += (long) i2;
    }

    @Override // org.apache.commons.compress.archivers.zip.RandomAccessOutputStream
    public void writeFully(byte[] bArr, int i, int i2, long j) throws IOException {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, i, i2);
        while (byteBufferWrap.hasRemaining()) {
            int iWrite = this.channel.write(byteBufferWrap, j);
            if (iWrite <= 0) {
                throw new IOException("Failed to fully write to file: written=" + iWrite);
            }
            j += (long) iWrite;
        }
    }
}
