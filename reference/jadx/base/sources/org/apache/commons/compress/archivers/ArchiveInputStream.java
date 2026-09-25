package org.apache.commons.compress.archivers;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.io.Charsets;
import org.apache.commons.io.input.NullInputStream;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ArchiveInputStream<E extends ArchiveEntry> extends FilterInputStream {
    private static final int BYTE_MASK = 255;
    private long bytesRead;
    private Charset charset;
    private final byte[] single;

    public boolean canReadEntryData(ArchiveEntry archiveEntry) {
        return true;
    }

    public abstract E getNextEntry() throws IOException;

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    public ArchiveInputStream() {
        this(NullInputStream.INSTANCE, Charset.defaultCharset());
    }

    private ArchiveInputStream(InputStream inputStream, Charset charset) {
        super(inputStream);
        this.single = new byte[1];
        this.charset = Charsets.toCharset(charset);
    }

    protected ArchiveInputStream(InputStream inputStream, String str) {
        this(inputStream, Charsets.toCharset(str));
    }

    protected void count(int i) {
        count(i);
    }

    protected void count(long j) {
        if (j != -1) {
            this.bytesRead += j;
        }
    }

    public long getBytesRead() {
        return this.bytesRead;
    }

    public Charset getCharset() {
        return this.charset;
    }

    @Deprecated
    public int getCount() {
        return (int) this.bytesRead;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
    }

    protected void pushedBackBytes(long j) {
        this.bytesRead -= j;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (read(this.single, 0, 1) == -1) {
            return -1;
        }
        return this.single[0] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
    }
}
