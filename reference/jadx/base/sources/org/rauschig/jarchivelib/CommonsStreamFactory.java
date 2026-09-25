package org.rauschig.jarchivelib;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.commons.compress.archivers.ArchiveException;
import org.apache.commons.compress.archivers.ArchiveInputStream;
import org.apache.commons.compress.archivers.ArchiveOutputStream;
import org.apache.commons.compress.archivers.ArchiveStreamFactory;
import org.apache.commons.compress.compressors.CompressorException;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.compressors.CompressorOutputStream;
import org.apache.commons.compress.compressors.CompressorStreamFactory;

/* JADX INFO: loaded from: classes3.dex */
final class CommonsStreamFactory {
    private static ArchiveStreamFactory archiveStreamFactory = new ArchiveStreamFactory();
    private static CompressorStreamFactory compressorStreamFactory = new CompressorStreamFactory();

    private CommonsStreamFactory() {
    }

    static ArchiveInputStream createArchiveInputStream(String str, InputStream inputStream) throws ArchiveException {
        return archiveStreamFactory.createArchiveInputStream(str, inputStream);
    }

    static ArchiveInputStream createArchiveInputStream(ArchiveFormat archiveFormat, InputStream inputStream) throws ArchiveException {
        return createArchiveInputStream(archiveFormat.getName(), inputStream);
    }

    static ArchiveInputStream createArchiveInputStream(CommonsArchiver commonsArchiver, InputStream inputStream) throws ArchiveException {
        return createArchiveInputStream(commonsArchiver.getArchiveFormat(), inputStream);
    }

    static ArchiveInputStream createArchiveInputStream(InputStream inputStream) throws ArchiveException {
        return archiveStreamFactory.createArchiveInputStream(new BufferedInputStream(inputStream));
    }

    static ArchiveInputStream createArchiveInputStream(File file) throws ArchiveException, IOException {
        return createArchiveInputStream(new BufferedInputStream(new FileInputStream(file)));
    }

    static ArchiveOutputStream createArchiveOutputStream(String str, OutputStream outputStream) throws ArchiveException {
        return archiveStreamFactory.createArchiveOutputStream(str, outputStream);
    }

    static ArchiveOutputStream createArchiveOutputStream(ArchiveFormat archiveFormat, File file) throws ArchiveException, IOException {
        return createArchiveOutputStream(archiveFormat.getName(), new FileOutputStream(file));
    }

    static ArchiveOutputStream createArchiveOutputStream(CommonsArchiver commonsArchiver, File file) throws ArchiveException, IOException {
        return createArchiveOutputStream(commonsArchiver.getArchiveFormat(), file);
    }

    static CompressorInputStream createCompressorInputStream(File file) throws CompressorException, IOException {
        return createCompressorInputStream(new BufferedInputStream(new FileInputStream(file)));
    }

    static CompressorInputStream createCompressorInputStream(CompressionType compressionType, File file) throws CompressorException, IOException {
        return createCompressorInputStream(compressionType, new BufferedInputStream(new FileInputStream(file)));
    }

    static CompressorInputStream createCompressorInputStream(CompressionType compressionType, InputStream inputStream) throws CompressorException {
        return compressorStreamFactory.createCompressorInputStream(compressionType.getName(), inputStream);
    }

    static CompressorInputStream createCompressorInputStream(InputStream inputStream) throws CompressorException {
        return compressorStreamFactory.createCompressorInputStream(inputStream);
    }

    static CompressorOutputStream createCompressorOutputStream(CompressionType compressionType, File file) throws CompressorException, IOException {
        return createCompressorOutputStream(compressionType.getName(), new FileOutputStream(file));
    }

    static CompressorOutputStream createCompressorOutputStream(CommonsCompressor commonsCompressor, File file) throws CompressorException, IOException {
        return createCompressorOutputStream(commonsCompressor.getCompressionType(), file);
    }

    static CompressorOutputStream createCompressorOutputStream(String str, OutputStream outputStream) throws CompressorException {
        return compressorStreamFactory.createCompressorOutputStream(str, outputStream);
    }
}
