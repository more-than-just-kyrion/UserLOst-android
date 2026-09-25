package org.rauschig.jarchivelib;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.compress.archivers.ArchiveException;
import org.apache.commons.compress.compressors.CompressorException;

/* JADX INFO: loaded from: classes3.dex */
class ArchiverCompressorDecorator implements Archiver {
    private CommonsArchiver archiver;
    private CommonsCompressor compressor;

    ArchiverCompressorDecorator(CommonsArchiver commonsArchiver, CommonsCompressor commonsCompressor) {
        this.archiver = commonsArchiver;
        this.compressor = commonsCompressor;
    }

    @Override // org.rauschig.jarchivelib.Archiver
    public File create(String str, File file, File file2) throws IOException {
        return create(str, file, IOUtils.filesContainedIn(file2));
    }

    @Override // org.rauschig.jarchivelib.Archiver
    public File create(String str, File file, File... fileArr) throws IOException {
        IOUtils.requireDirectory(file);
        File fileCreateTempFile = File.createTempFile(file.getName(), this.archiver.getFilenameExtension(), file);
        try {
            fileCreateTempFile = this.archiver.create(fileCreateTempFile.getName(), fileCreateTempFile.getParentFile(), fileArr);
            File file2 = new File(file, getArchiveFileName(str));
            this.compressor.compress(fileCreateTempFile, file2);
            return file2;
        } finally {
            fileCreateTempFile.delete();
        }
    }

    @Override // org.rauschig.jarchivelib.Archiver
    public void extract(File file, File file2) throws Throwable {
        IOUtils.requireDirectory(file2);
        if (!file.exists()) {
            throw new FileNotFoundException(String.format("Archive %s does not exist.", file.getAbsolutePath()));
        }
        BufferedInputStream bufferedInputStream = null;
        try {
            try {
                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(file));
                try {
                    this.archiver.extract(this.compressor.decompressingStream(bufferedInputStream2), file2);
                    IOUtils.closeQuietly(bufferedInputStream2);
                } catch (FileNotFoundException e) {
                    e = e;
                    throw new IllegalArgumentException(String.format("Access control or other error opening %s", file.getAbsolutePath()), e);
                } catch (Throwable th) {
                    th = th;
                    bufferedInputStream = bufferedInputStream2;
                    IOUtils.closeQuietly(bufferedInputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (FileNotFoundException e2) {
            e = e2;
        }
    }

    @Override // org.rauschig.jarchivelib.Archiver
    public void extract(InputStream inputStream, File file) throws IOException {
        IOUtils.requireDirectory(file);
        this.archiver.extract(this.compressor.decompressingStream(inputStream), file);
    }

    @Override // org.rauschig.jarchivelib.Archiver
    public ArchiveStream stream(File file) throws IOException {
        try {
            return new CommonsArchiveStream(CommonsStreamFactory.createArchiveInputStream(this.archiver, CommonsStreamFactory.createCompressorInputStream(file)));
        } catch (ArchiveException e) {
            throw new IOException(e);
        } catch (CompressorException e2) {
            throw new IOException(e2);
        }
    }

    @Override // org.rauschig.jarchivelib.Archiver
    public String getFilenameExtension() {
        return this.archiver.getFilenameExtension() + this.compressor.getFilenameExtension();
    }

    private String getArchiveFileName(String str) {
        String filenameExtension = getFilenameExtension();
        if (str.endsWith(filenameExtension)) {
            return str;
        }
        if (str.endsWith(this.archiver.getFilenameExtension())) {
            return str + this.compressor.getFilenameExtension();
        }
        return str + filenameExtension;
    }
}
