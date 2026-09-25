package org.rauschig.jarchivelib;

import java.io.File;
import java.util.Date;

/* JADX INFO: loaded from: classes3.dex */
class CommonsArchiveEntry implements ArchiveEntry {
    private org.apache.commons.compress.archivers.ArchiveEntry entry;
    private ArchiveStream stream;

    CommonsArchiveEntry(ArchiveStream archiveStream, org.apache.commons.compress.archivers.ArchiveEntry archiveEntry) {
        this.stream = archiveStream;
        this.entry = archiveEntry;
    }

    @Override // org.rauschig.jarchivelib.ArchiveEntry
    public String getName() {
        assertState();
        return this.entry.getName();
    }

    @Override // org.rauschig.jarchivelib.ArchiveEntry
    public long getSize() {
        assertState();
        return this.entry.getSize();
    }

    @Override // org.rauschig.jarchivelib.ArchiveEntry
    public Date getLastModifiedDate() {
        assertState();
        return this.entry.getLastModifiedDate();
    }

    @Override // org.rauschig.jarchivelib.ArchiveEntry
    public boolean isDirectory() {
        assertState();
        return this.entry.isDirectory();
    }

    @Override // org.rauschig.jarchivelib.ArchiveEntry
    public File extract(File file) throws Throwable {
        assertState();
        IOUtils.requireDirectory(file);
        File file2 = new File(file, this.entry.getName());
        if (this.entry.isDirectory()) {
            file2.mkdirs();
        } else {
            file2.getParentFile().mkdirs();
            IOUtils.copy(this.stream, file2);
        }
        FileModeMapper.map(this.entry, file2);
        return file2;
    }

    private void assertState() {
        if (this.stream.isClosed()) {
            throw new IllegalStateException("Stream has already been closed");
        }
        if (this != this.stream.getCurrentEntry()) {
            throw new IllegalStateException("Illegal stream pointer");
        }
    }
}
