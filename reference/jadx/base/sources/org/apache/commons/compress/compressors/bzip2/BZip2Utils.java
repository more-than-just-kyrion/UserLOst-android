package org.apache.commons.compress.compressors.bzip2;

import java.util.LinkedHashMap;
import org.apache.commons.compress.compressors.FileNameUtil;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BZip2Utils {
    private static final FileNameUtil fileNameUtil;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(".tar.bz2", ".tar");
        linkedHashMap.put(".tbz2", ".tar");
        linkedHashMap.put(".tbz", ".tar");
        linkedHashMap.put(".bz2", "");
        linkedHashMap.put(".bz", "");
        fileNameUtil = new FileNameUtil(linkedHashMap, ".bz2");
    }

    @Deprecated
    public static String getCompressedFilename(String str) {
        return fileNameUtil.getCompressedFileName(str);
    }

    public static String getCompressedFileName(String str) {
        return fileNameUtil.getCompressedFileName(str);
    }

    @Deprecated
    public static String getUncompressedFilename(String str) {
        return fileNameUtil.getUncompressedFileName(str);
    }

    public static String getUncompressedFileName(String str) {
        return fileNameUtil.getUncompressedFileName(str);
    }

    @Deprecated
    public static boolean isCompressedFilename(String str) {
        return fileNameUtil.isCompressedFileName(str);
    }

    public static boolean isCompressedFileName(String str) {
        return fileNameUtil.isCompressedFileName(str);
    }

    private BZip2Utils() {
    }
}
