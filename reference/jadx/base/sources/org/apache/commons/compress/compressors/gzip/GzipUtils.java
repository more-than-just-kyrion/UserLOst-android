package org.apache.commons.compress.compressors.gzip;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.LinkedHashMap;
import org.apache.commons.compress.compressors.FileNameUtil;

/* JADX INFO: loaded from: classes3.dex */
public class GzipUtils {
    static final Charset GZIP_ENCODING;
    private static final FileNameUtil fileNameUtil;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(".tgz", ".tar");
        linkedHashMap.put(".taz", ".tar");
        linkedHashMap.put(".svgz", ".svg");
        linkedHashMap.put(".cpgz", ".cpio");
        linkedHashMap.put(".wmz", ".wmf");
        linkedHashMap.put(".emz", ".emf");
        linkedHashMap.put(".gz", "");
        linkedHashMap.put(".z", "");
        linkedHashMap.put("-gz", "");
        linkedHashMap.put("-z", "");
        linkedHashMap.put("_z", "");
        fileNameUtil = new FileNameUtil(linkedHashMap, ".gz");
        GZIP_ENCODING = StandardCharsets.ISO_8859_1;
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

    private GzipUtils() {
    }
}
