package org.apache.commons.compress.compressors.brotli;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.utils.InputStreamStatistics;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.input.CountingInputStream;
import org.brotli.dec.BrotliInputStream;

/* JADX INFO: loaded from: classes3.dex */
public class BrotliCompressorInputStream extends CompressorInputStream implements InputStreamStatistics {
    private final BrotliInputStream brotliInputStream;
    private final CountingInputStream countingInputStream;

    public BrotliCompressorInputStream(InputStream inputStream) throws IOException {
        CountingInputStream countingInputStream = new CountingInputStream(inputStream);
        this.countingInputStream = countingInputStream;
        this.brotliInputStream = new BrotliInputStream(countingInputStream);
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.brotliInputStream.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.brotliInputStream.close();
    }

    @Override // org.apache.commons.compress.utils.InputStreamStatistics
    public long getCompressedCount() {
        return this.countingInputStream.getByteCount();
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i) {
        this.brotliInputStream.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.brotliInputStream.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i = this.brotliInputStream.read();
        count(i == -1 ? 0 : 1);
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return this.brotliInputStream.read(bArr);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.brotliInputStream.read(bArr, i, i2);
        count(i3);
        return i3;
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.brotliInputStream.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        return IOUtils.skip((InputStream) this.brotliInputStream, j);
    }

    public String toString() {
        return this.brotliInputStream.toString();
    }
}
