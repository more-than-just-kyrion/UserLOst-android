package org.rauschig.jarchivelib;

import java.io.File;
import java.io.IOException;
import org.apache.commons.compress.archivers.ArchiveInputStream;
import org.apache.commons.compress.archivers.ArchiveOutputStream;
import org.apache.commons.compress.archivers.sevenz.SevenZFile;
import org.apache.commons.compress.archivers.sevenz.SevenZOutputFile;

/* JADX INFO: loaded from: classes3.dex */
class SevenZArchiver extends CommonsArchiver {
    public SevenZArchiver() {
        super(ArchiveFormat.SEVEN_Z);
    }

    @Override // org.rauschig.jarchivelib.CommonsArchiver
    protected ArchiveOutputStream createArchiveOutputStream(File file) throws IOException {
        return new SevenZOutputStream(new SevenZOutputFile(file));
    }

    @Override // org.rauschig.jarchivelib.CommonsArchiver
    protected ArchiveInputStream createArchiveInputStream(File file) throws IOException {
        return new SevenZInputStream(new SevenZFile(file));
    }

    static class SevenZInputStream extends ArchiveInputStream {
        private SevenZFile file;

        public SevenZInputStream(SevenZFile sevenZFile) {
            this.file = sevenZFile;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            return this.file.read(bArr, i, i2);
        }

        @Override // org.apache.commons.compress.archivers.ArchiveInputStream
        public org.apache.commons.compress.archivers.ArchiveEntry getNextEntry() throws IOException {
            return this.file.getNextEntry();
        }

        @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.file.close();
        }
    }

    static class SevenZOutputStream extends ArchiveOutputStream {
        private SevenZOutputFile file;

        public SevenZOutputStream(SevenZOutputFile sevenZOutputFile) {
            this.file = sevenZOutputFile;
        }

        @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
        public void putArchiveEntry(org.apache.commons.compress.archivers.ArchiveEntry archiveEntry) throws IOException {
            this.file.putArchiveEntry(archiveEntry);
        }

        @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
        public void closeArchiveEntry() throws IOException {
            this.file.closeArchiveEntry();
        }

        @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
        public void finish() throws IOException {
            this.file.finish();
        }

        @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
        public org.apache.commons.compress.archivers.ArchiveEntry createArchiveEntry(File file, String str) throws IOException {
            return this.file.createArchiveEntry(file, str);
        }

        @Override // org.apache.commons.compress.archivers.ArchiveOutputStream, java.io.OutputStream
        public void write(int i) throws IOException {
            this.file.write(i);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            this.file.write(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            this.file.write(bArr, i, i2);
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.file.close();
        }

        public SevenZOutputFile getSevenZOutputFile() {
            return this.file;
        }
    }
}
