package org.rauschig.jarchivelib;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.compress.compressors.CompressorException;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.compressors.CompressorOutputStream;

/* JADX INFO: loaded from: classes3.dex */
class CommonsCompressor implements Compressor {
    private final CompressionType compressionType;

    CommonsCompressor(CompressionType compressionType) {
        this.compressionType = compressionType;
    }

    public CompressionType getCompressionType() {
        return this.compressionType;
    }

    @Override // org.rauschig.jarchivelib.Compressor
    public void compress(File file, File file2) throws Throwable {
        BufferedInputStream bufferedInputStream;
        assertSource(file);
        assertDestination(file2);
        if (file2.isDirectory()) {
            file2 = new File(file2, getCompressedFilename(file));
        }
        CompressorOutputStream compressorOutputStreamCreateCompressorOutputStream = null;
        try {
            bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            try {
                try {
                    compressorOutputStreamCreateCompressorOutputStream = CommonsStreamFactory.createCompressorOutputStream(this, file2);
                    IOUtils.copy(bufferedInputStream, compressorOutputStreamCreateCompressorOutputStream);
                    IOUtils.closeQuietly(compressorOutputStreamCreateCompressorOutputStream);
                    IOUtils.closeQuietly(bufferedInputStream);
                } catch (CompressorException e) {
                    e = e;
                    throw new IOException(e);
                }
            } catch (Throwable th) {
                th = th;
                IOUtils.closeQuietly(compressorOutputStreamCreateCompressorOutputStream);
                IOUtils.closeQuietly(bufferedInputStream);
                throw th;
            }
        } catch (CompressorException e2) {
            e = e2;
            bufferedInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            bufferedInputStream = null;
            IOUtils.closeQuietly(compressorOutputStreamCreateCompressorOutputStream);
            IOUtils.closeQuietly(bufferedInputStream);
            throw th;
        }
    }

    @Override // org.rauschig.jarchivelib.Compressor
    public void decompress(File file, File file2) throws Throwable {
        FileOutputStream fileOutputStream;
        assertSource(file);
        assertDestination(file2);
        if (file2.isDirectory()) {
            file2 = new File(file2, getDecompressedFilename(file));
        }
        CompressorInputStream compressorInputStream = null;
        try {
            CompressorInputStream compressorInputStreamCreateCompressorInputStream = CommonsStreamFactory.createCompressorInputStream(getCompressionType(), file);
            try {
                fileOutputStream = new FileOutputStream(file2);
                try {
                    IOUtils.copy(compressorInputStreamCreateCompressorInputStream, fileOutputStream);
                    IOUtils.closeQuietly(compressorInputStreamCreateCompressorInputStream);
                    IOUtils.closeQuietly(fileOutputStream);
                } catch (CompressorException e) {
                    e = e;
                    compressorInputStream = compressorInputStreamCreateCompressorInputStream;
                    try {
                        throw new IOException(e);
                    } catch (Throwable th) {
                        th = th;
                        IOUtils.closeQuietly(compressorInputStream);
                        IOUtils.closeQuietly(fileOutputStream);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    compressorInputStream = compressorInputStreamCreateCompressorInputStream;
                    IOUtils.closeQuietly(compressorInputStream);
                    IOUtils.closeQuietly(fileOutputStream);
                    throw th;
                }
            } catch (CompressorException e2) {
                e = e2;
                fileOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
            }
        } catch (CompressorException e3) {
            e = e3;
            fileOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
        }
    }

    @Override // org.rauschig.jarchivelib.Compressor
    public InputStream decompressingStream(InputStream inputStream) throws IOException {
        try {
            return CommonsStreamFactory.createCompressorInputStream(getCompressionType(), inputStream);
        } catch (CompressorException e) {
            throw new IOException(e);
        }
    }

    @Override // org.rauschig.jarchivelib.Compressor
    public String getFilenameExtension() {
        return getCompressionType().getDefaultFileExtension();
    }

    private String getCompressedFilename(File file) {
        return file.getName() + getFilenameExtension();
    }

    private String getDecompressedFilename(File file) {
        FileType fileType = FileType.get(file);
        if (this.compressionType != fileType.getCompressionType()) {
            throw new IllegalArgumentException(file + " is not of type " + this.compressionType);
        }
        return file.getName().substring(0, file.getName().length() - fileType.getSuffix().length());
    }

    private void assertSource(File file) throws IllegalArgumentException, FileNotFoundException {
        if (file == null) {
            throw new IllegalArgumentException("Source is null");
        }
        if (file.isDirectory()) {
            throw new IllegalArgumentException("Source " + file + " is a directory.");
        }
        if (!file.exists()) {
            throw new FileNotFoundException(file.getName());
        }
        if (!file.canRead()) {
            throw new IllegalArgumentException("Can not read from source " + file);
        }
    }

    private void assertDestination(File file) {
        if (file == null) {
            throw new IllegalArgumentException("Destination is null");
        }
        if (file.isDirectory()) {
            if (!file.canWrite()) {
                throw new IllegalArgumentException("Can not write to destination " + file);
            }
        } else if (file.exists() && !file.canWrite()) {
            throw new IllegalArgumentException("Can not write to destination " + file);
        }
    }
}
