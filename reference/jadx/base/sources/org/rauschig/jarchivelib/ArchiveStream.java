package org.rauschig.jarchivelib;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ArchiveStream extends InputStream implements Closeable {
    private boolean closed;
    private ArchiveEntry currentEntry;

    protected abstract ArchiveEntry createNextEntry() throws IOException;

    public ArchiveEntry getCurrentEntry() {
        return this.currentEntry;
    }

    public ArchiveEntry getNextEntry() throws IOException {
        ArchiveEntry archiveEntryCreateNextEntry = createNextEntry();
        this.currentEntry = archiveEntryCreateNextEntry;
        return archiveEntryCreateNextEntry;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.closed = true;
    }

    public boolean isClosed() {
        return this.closed;
    }
}
