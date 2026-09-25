package org.rauschig.jarchivelib;

import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public final class CompressorFactory {
    private CompressorFactory() {
    }

    public static Compressor createCompressor(File file) throws IllegalArgumentException {
        FileType fileType = FileType.get(file);
        if (fileType == FileType.UNKNOWN) {
            throw new IllegalArgumentException("Unknown file extension " + file.getName());
        }
        return createCompressor(fileType);
    }

    public static Compressor createCompressor(FileType fileType) throws IllegalArgumentException {
        if (fileType == FileType.UNKNOWN) {
            throw new IllegalArgumentException("Unknown file type");
        }
        if (fileType.isCompressed()) {
            return createCompressor(fileType.getCompressionType());
        }
        throw new IllegalArgumentException("Unknown compressed file type " + fileType);
    }

    public static Compressor createCompressor(String str) throws IllegalArgumentException {
        if (!CompressionType.isValidCompressionType(str)) {
            throw new IllegalArgumentException("Unkonwn compression type " + str);
        }
        return createCompressor(CompressionType.fromString(str));
    }

    public static Compressor createCompressor(CompressionType compressionType) {
        return new CommonsCompressor(compressionType);
    }
}
