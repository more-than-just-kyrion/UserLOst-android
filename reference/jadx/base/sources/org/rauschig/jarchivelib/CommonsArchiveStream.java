package org.rauschig.jarchivelib;

import java.io.IOException;
import org.apache.commons.compress.archivers.ArchiveInputStream;

/* JADX INFO: loaded from: classes3.dex */
class CommonsArchiveStream extends ArchiveStream {
    private ArchiveInputStream stream;

    CommonsArchiveStream(ArchiveInputStream archiveInputStream) {
        this.stream = archiveInputStream;
    }

    @Override // org.rauschig.jarchivelib.ArchiveStream
    protected ArchiveEntry createNextEntry() throws IOException {
        org.apache.commons.compress.archivers.ArchiveEntry nextEntry = this.stream.getNextEntry();
        if (nextEntry == null) {
            return null;
        }
        return new CommonsArchiveEntry(this, nextEntry);
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        return this.stream.read();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return this.stream.read(bArr);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        return this.stream.read(bArr, i, i2);
    }

    @Override // org.rauschig.jarchivelib.ArchiveStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.stream.close();
    }
}
