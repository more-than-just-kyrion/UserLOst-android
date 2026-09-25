package org.apache.commons.compress.archivers.zip;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.SeekableByteChannel;

/* JADX INFO: loaded from: classes3.dex */
class SeekableChannelRandomAccessOutputStream extends RandomAccessOutputStream {
    private final SeekableByteChannel channel;

    SeekableChannelRandomAccessOutputStream(SeekableByteChannel seekableByteChannel) {
        this.channel = seekableByteChannel;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.channel.close();
    }

    @Override // org.apache.commons.compress.archivers.zip.RandomAccessOutputStream
    public synchronized long position() throws IOException {
        return this.channel.position();
    }

    @Override // java.io.OutputStream
    public synchronized void write(byte[] bArr, int i, int i2) throws IOException {
        ZipIoUtil.writeFully(this.channel, ByteBuffer.wrap(bArr, i, i2));
    }

    @Override // org.apache.commons.compress.archivers.zip.RandomAccessOutputStream
    public synchronized void writeFully(byte[] bArr, int i, int i2, long j) throws IOException {
        long jPosition = this.channel.position();
        try {
            this.channel.position(j);
            ZipIoUtil.writeFully(this.channel, ByteBuffer.wrap(bArr, i, i2));
            this.channel.position(jPosition);
        } catch (Throwable th) {
            this.channel.position(jPosition);
            throw th;
        }
    }
}
