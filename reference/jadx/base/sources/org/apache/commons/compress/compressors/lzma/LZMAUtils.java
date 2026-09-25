package org.apache.commons.compress.compressors.lzma;

import java.util.HashMap;
import org.apache.commons.compress.compressors.FileNameUtil;
import org.apache.commons.compress.utils.OsgiUtils;

/* JADX INFO: loaded from: classes3.dex */
public class LZMAUtils {
    private static final byte[] HEADER_MAGIC = {93, 0, 0};
    private static volatile CachedAvailability cachedLZMAAvailability;
    private static final FileNameUtil fileNameUtil;

    enum CachedAvailability {
        DONT_CACHE,
        CACHED_AVAILABLE,
        CACHED_UNAVAILABLE
    }

    static {
        HashMap map = new HashMap();
        map.put(".lzma", "");
        map.put("-lzma", "");
        fileNameUtil = new FileNameUtil(map, ".lzma");
        cachedLZMAAvailability = CachedAvailability.DONT_CACHE;
        setCacheLZMAAvailablity(!OsgiUtils.isRunningInOsgiEnvironment());
    }

    static CachedAvailability getCachedLZMAAvailability() {
        return cachedLZMAAvailability;
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

    private static boolean internalIsLZMACompressionAvailable() {
        try {
            LZMACompressorInputStream.matches(null, 0);
            return true;
        } catch (NoClassDefFoundError unused) {
            return false;
        }
    }

    @Deprecated
    public static boolean isCompressedFilename(String str) {
        return fileNameUtil.isCompressedFileName(str);
    }

    public static boolean isCompressedFileName(String str) {
        return fileNameUtil.isCompressedFileName(str);
    }

    public static boolean isLZMACompressionAvailable() {
        CachedAvailability cachedAvailability = cachedLZMAAvailability;
        if (cachedAvailability != CachedAvailability.DONT_CACHE) {
            return cachedAvailability == CachedAvailability.CACHED_AVAILABLE;
        }
        return internalIsLZMACompressionAvailable();
    }

    public static boolean matches(byte[] bArr, int i) {
        if (i < HEADER_MAGIC.length) {
            return false;
        }
        int i2 = 0;
        while (true) {
            byte[] bArr2 = HEADER_MAGIC;
            if (i2 >= bArr2.length) {
                return true;
            }
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
            i2++;
        }
    }

    public static void setCacheLZMAAvailablity(boolean z) {
        CachedAvailability cachedAvailability;
        if (!z) {
            cachedLZMAAvailability = CachedAvailability.DONT_CACHE;
        } else if (cachedLZMAAvailability == CachedAvailability.DONT_CACHE) {
            if (internalIsLZMACompressionAvailable()) {
                cachedAvailability = CachedAvailability.CACHED_AVAILABLE;
            } else {
                cachedAvailability = CachedAvailability.CACHED_UNAVAILABLE;
            }
            cachedLZMAAvailability = cachedAvailability;
        }
    }

    private LZMAUtils() {
    }
}
