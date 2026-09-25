package org.rauschig.jarchivelib;

import java.io.File;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class FileType {
    private static final Map<String, FileType> MAP = new LinkedHashMap();
    public static final FileType UNKNOWN = new FileType("", null, null);
    private final ArchiveFormat archiveFormat;
    private final CompressionType compression;
    private final String suffix;

    static {
        add(".tar.gz", ArchiveFormat.TAR, CompressionType.GZIP);
        add(".tgz", ArchiveFormat.TAR, CompressionType.GZIP);
        add(".tar.bz2", ArchiveFormat.TAR, CompressionType.BZIP2);
        add(".tbz2", ArchiveFormat.TAR, CompressionType.BZIP2);
        add(".7z", ArchiveFormat.SEVEN_Z);
        add(".a", ArchiveFormat.AR);
        add(".ar", ArchiveFormat.AR);
        add(".cpio", ArchiveFormat.CPIO);
        add(".dump", ArchiveFormat.DUMP);
        add(".jar", ArchiveFormat.JAR);
        add(".tar", ArchiveFormat.TAR);
        add(".zip", ArchiveFormat.ZIP);
        add(".zipx", ArchiveFormat.ZIP);
        add(".bz2", CompressionType.BZIP2);
        add(".xz", CompressionType.XZ);
        add(".gzip", CompressionType.GZIP);
        add(".gz", CompressionType.GZIP);
        add(".pack", CompressionType.PACK200);
    }

    private FileType(String str, ArchiveFormat archiveFormat) {
        this(str, archiveFormat, null);
    }

    private FileType(String str, CompressionType compressionType) {
        this(str, null, compressionType);
    }

    private FileType(String str, ArchiveFormat archiveFormat, CompressionType compressionType) {
        this.suffix = str;
        this.compression = compressionType;
        this.archiveFormat = archiveFormat;
    }

    public boolean isArchive() {
        return this.archiveFormat != null;
    }

    public boolean isCompressed() {
        return this.compression != null;
    }

    public String getSuffix() {
        return this.suffix;
    }

    public ArchiveFormat getArchiveFormat() {
        return this.archiveFormat;
    }

    public CompressionType getCompressionType() {
        return this.compression;
    }

    public String toString() {
        return getSuffix();
    }

    public static FileType get(String str) {
        for (Map.Entry<String, FileType> entry : MAP.entrySet()) {
            if (str.toLowerCase().endsWith(entry.getKey())) {
                return entry.getValue();
            }
        }
        return UNKNOWN;
    }

    public static FileType get(File file) {
        return get(file.getName());
    }

    private static void add(String str, ArchiveFormat archiveFormat) {
        MAP.put(str, new FileType(str, archiveFormat));
    }

    private static void add(String str, CompressionType compressionType) {
        MAP.put(str, new FileType(str, compressionType));
    }

    private static void add(String str, ArchiveFormat archiveFormat, CompressionType compressionType) {
        MAP.put(str, new FileType(str, archiveFormat, compressionType));
    }
}
