package org.rauschig.jarchivelib;

import org.apache.commons.compress.archivers.ArchiveStreamFactory;

/* JADX INFO: loaded from: classes3.dex */
public enum ArchiveFormat {
    AR(ArchiveStreamFactory.AR, ".ar"),
    CPIO(ArchiveStreamFactory.CPIO, ".cpio"),
    DUMP(ArchiveStreamFactory.DUMP, ".dump"),
    JAR(ArchiveStreamFactory.JAR, ".jar"),
    SEVEN_Z(ArchiveStreamFactory.SEVEN_Z, ".7z"),
    TAR(ArchiveStreamFactory.TAR, ".tar"),
    ZIP(ArchiveStreamFactory.ZIP, ".zip");

    private final String defaultFileExtension;
    private final String name;

    ArchiveFormat(String str, String str2) {
        this.name = str;
        this.defaultFileExtension = str2;
    }

    public String getName() {
        return this.name;
    }

    public String getDefaultFileExtension() {
        return this.defaultFileExtension;
    }

    public static boolean isValidArchiveFormat(String str) {
        for (ArchiveFormat archiveFormat : values()) {
            if (str.trim().equalsIgnoreCase(archiveFormat.getName())) {
                return true;
            }
        }
        return false;
    }

    public static ArchiveFormat fromString(String str) {
        for (ArchiveFormat archiveFormat : values()) {
            if (str.trim().equalsIgnoreCase(archiveFormat.getName())) {
                return archiveFormat;
            }
        }
        throw new IllegalArgumentException("Unknown archive format " + str);
    }
}
