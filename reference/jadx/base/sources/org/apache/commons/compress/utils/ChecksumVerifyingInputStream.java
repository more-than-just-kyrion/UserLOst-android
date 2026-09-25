package org.apache.commons.compress.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.zip.CheckedInputStream;
import java.util.zip.Checksum;

/* JADX INFO: loaded from: classes3.dex */
public class ChecksumVerifyingInputStream extends CheckedInputStream {
    private final long expected;
    private long remaining;

    public ChecksumVerifyingInputStream(Checksum checksum, InputStream inputStream, long j, long j2) {
        super(inputStream, checksum);
        this.expected = j2;
        this.remaining = j;
    }

    public long getBytesRemaining() {
        return this.remaining;
    }

    @Override // java.util.zip.CheckedInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (this.remaining <= 0) {
            return -1;
        }
        int i = super.read();
        if (i >= 0) {
            this.remaining--;
        }
        verify();
        return i;
    }

    @Override // java.util.zip.CheckedInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        int i3 = super.read(bArr, i, i2);
        if (i3 >= 0) {
            this.remaining -= (long) i3;
        }
        verify();
        return i3;
    }

    private void verify() throws IOException {
        if (this.remaining <= 0 && this.expected != getChecksum().getValue()) {
            throw new IOException("Checksum verification failed");
        }
    }
}
