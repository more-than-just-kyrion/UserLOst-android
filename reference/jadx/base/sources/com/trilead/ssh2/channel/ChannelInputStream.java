package com.trilead.ssh2.channel;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class ChannelInputStream extends InputStream {
    Channel c;
    boolean extendedFlag;
    boolean isClosed = false;
    boolean isEOF = false;

    ChannelInputStream(Channel channel, boolean z) {
        this.c = channel;
        this.extendedFlag = z;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        int available;
        if (!this.isEOF && (available = this.c.cm.getAvailable(this.c, this.extendedFlag)) > 0) {
            return available;
        }
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.isClosed = true;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        bArr.getClass();
        if (i < 0 || i2 < 0 || (i3 = i + i2) > bArr.length || i3 < 0 || i > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return 0;
        }
        if (this.isEOF) {
            return -1;
        }
        int channelData = this.c.cm.getChannelData(this.c, this.extendedFlag, bArr, i, i2);
        if (channelData == -1) {
            this.isEOF = true;
        }
        return channelData;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        byte[] bArr = new byte[1];
        if (read(bArr, 0, 1) != 1) {
            return -1;
        }
        return bArr[0] & 255;
    }
}
