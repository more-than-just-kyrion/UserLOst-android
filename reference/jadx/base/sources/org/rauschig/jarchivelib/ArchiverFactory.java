package org.rauschig.jarchivelib;

import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public final class ArchiverFactory {
    private ArchiverFactory() {
    }

    public static Archiver createArchiver(File file) throws IllegalArgumentException {
        FileType fileType = FileType.get(file);
        if (fileType == FileType.UNKNOWN) {
            throw new IllegalArgumentException("Unknown file extension " + file.getName());
        }
        return createArchiver(fileType);
    }

    public static Archiver createArchiver(FileType fileType) {
        if (fileType == FileType.UNKNOWN) {
            throw new IllegalArgumentException("Unknown file type");
        }
        if (fileType.isArchive() && fileType.isCompressed()) {
            return createArchiver(fileType.getArchiveFormat(), fileType.getCompressionType());
        }
        if (fileType.isArchive()) {
            return createArchiver(fileType.getArchiveFormat());
        }
        throw new IllegalArgumentException("Unknown archive file extension " + fileType);
    }

    public static Archiver createArchiver(String str, String str2) throws IllegalArgumentException {
        if (!ArchiveFormat.isValidArchiveFormat(str)) {
            throw new IllegalArgumentException("Unknown archive format " + str);
        }
        if (!CompressionType.isValidCompressionType(str2)) {
            throw new IllegalArgumentException("Unknown compression type " + str2);
        }
        return createArchiver(ArchiveFormat.fromString(str), CompressionType.fromString(str2));
    }

    public static Archiver createArchiver(ArchiveFormat archiveFormat, CompressionType compressionType) {
        return new ArchiverCompressorDecorator(new CommonsArchiver(archiveFormat), new CommonsCompressor(compressionType));
    }

    public static Archiver createArchiver(String str) throws IllegalArgumentException {
        if (!ArchiveFormat.isValidArchiveFormat(str)) {
            throw new IllegalArgumentException("Unknown archive format " + str);
        }
        return createArchiver(ArchiveFormat.fromString(str));
    }

    public static Archiver createArchiver(ArchiveFormat archiveFormat) {
        if (archiveFormat == ArchiveFormat.SEVEN_Z) {
            return new SevenZArchiver();
        }
        if (archiveFormat == ArchiveFormat.ZIP) {
            return new ZipFileArchiver();
        }
        return new CommonsArchiver(archiveFormat);
    }
}
