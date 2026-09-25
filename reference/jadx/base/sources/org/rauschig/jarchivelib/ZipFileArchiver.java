package org.rauschig.jarchivelib;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import org.apache.commons.compress.archivers.ArchiveInputStream;
import org.apache.commons.compress.archivers.zip.ZipArchiveEntry;
import org.apache.commons.compress.archivers.zip.ZipFile;

/* JADX INFO: loaded from: classes3.dex */
class ZipFileArchiver extends CommonsArchiver {
    ZipFileArchiver() {
        super(ArchiveFormat.ZIP);
    }

    @Override // org.rauschig.jarchivelib.CommonsArchiver
    protected ArchiveInputStream createArchiveInputStream(File file) throws IOException {
        return new ZipFileArchiveInputStream(new ZipFile(file));
    }

    static class ZipFileArchiveInputStream extends ArchiveInputStream {
        private ZipArchiveEntry currentEntry;
        private InputStream currentEntryStream;
        private Enumeration<ZipArchiveEntry> entries;
        private ZipFile file;

        public ZipFileArchiveInputStream(ZipFile zipFile) {
            this.file = zipFile;
        }

        @Override // org.apache.commons.compress.archivers.ArchiveInputStream
        public ZipArchiveEntry getNextEntry() throws IOException {
            Enumeration<ZipArchiveEntry> entries = getEntries();
            closeCurrentEntryStream();
            ZipArchiveEntry zipArchiveEntryNextElement = entries.hasMoreElements() ? entries.nextElement() : null;
            this.currentEntry = zipArchiveEntryNextElement;
            this.currentEntryStream = zipArchiveEntryNextElement != null ? this.file.getInputStream(zipArchiveEntryNextElement) : null;
            return this.currentEntry;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int i3 = getCurrentEntryStream().read(bArr, i, i2);
            if (i3 == -1) {
                IOUtils.closeQuietly(getCurrentEntryStream());
            }
            count(i3);
            return i3;
        }

        @Override // org.apache.commons.compress.archivers.ArchiveInputStream
        public boolean canReadEntryData(org.apache.commons.compress.archivers.ArchiveEntry archiveEntry) {
            return archiveEntry == getCurrentEntry();
        }

        public ZipArchiveEntry getCurrentEntry() {
            return this.currentEntry;
        }

        public InputStream getCurrentEntryStream() {
            return this.currentEntryStream;
        }

        private Enumeration<ZipArchiveEntry> getEntries() {
            if (this.entries == null) {
                this.entries = this.file.getEntriesInPhysicalOrder();
            }
            return this.entries;
        }

        private void closeCurrentEntryStream() {
            IOUtils.closeQuietly(getCurrentEntryStream());
            this.currentEntryStream = null;
        }

        private void closeFile() {
            try {
                this.file.close();
            } catch (IOException unused) {
            }
        }

        @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            closeCurrentEntryStream();
            closeFile();
            super.close();
        }
    }
}
