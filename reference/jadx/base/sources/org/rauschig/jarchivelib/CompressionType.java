package org.rauschig.jarchivelib;

import org.apache.commons.compress.compressors.CompressorStreamFactory;

/* JADX INFO: loaded from: classes3.dex */
public enum CompressionType {
    BZIP2(CompressorStreamFactory.BZIP2, ".bz2"),
    GZIP(CompressorStreamFactory.GZIP, ".gz"),
    XZ(CompressorStreamFactory.XZ, ".xz"),
    PACK200(CompressorStreamFactory.PACK200, ".pack");

    private final String defaultFileExtension;
    private final String name;

    CompressionType(String str, String str2) {
        this.name = str;
        this.defaultFileExtension = str2;
    }

    public String getName() {
        return this.name;
    }

    public String getDefaultFileExtension() {
        return this.defaultFileExtension;
    }

    public static boolean isValidCompressionType(String str) {
        for (CompressionType compressionType : values()) {
            if (str.equalsIgnoreCase(compressionType.getName())) {
                return true;
            }
        }
        return false;
    }

    public static CompressionType fromString(String str) {
        for (CompressionType compressionType : values()) {
            if (str.equalsIgnoreCase(compressionType.getName())) {
                return compressionType;
            }
        }
        throw new IllegalArgumentException("Unknown compression type " + str);
    }
}
