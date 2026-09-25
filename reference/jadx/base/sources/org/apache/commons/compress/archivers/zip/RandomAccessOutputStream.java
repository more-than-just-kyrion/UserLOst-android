package org.apache.commons.compress.archivers.zip;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
abstract class RandomAccessOutputStream extends OutputStream {
    public abstract long position() throws IOException;

    abstract void writeFully(byte[] bArr, int i, int i2, long j) throws IOException;

    RandomAccessOutputStream() {
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        write(new byte[]{(byte) i});
    }

    public void writeFully(byte[] bArr, long j) throws IOException {
        writeFully(bArr, 0, bArr.length, j);
    }
}
