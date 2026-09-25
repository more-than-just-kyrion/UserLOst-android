package org.apache.commons.compress.compressors.xz;

import java.util.HashMap;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.commons.compress.compressors.FileNameUtil;
import org.apache.commons.compress.utils.OsgiUtils;

/* JADX INFO: loaded from: classes3.dex */
public class XZUtils {
    private static final byte[] HEADER_MAGIC = {-3, TarConstants.LF_CONTIG, 122, TarConstants.LF_PAX_EXTENDED_HEADER_UC, 90, 0};
    private static volatile CachedAvailability cachedXZAvailability;
    private static final FileNameUtil fileNameUtil;

    enum CachedAvailability {
        DONT_CACHE,
        CACHED_AVAILABLE,
        CACHED_UNAVAILABLE
    }

    static {
        HashMap map = new HashMap();
        map.put(".txz", ".tar");
        map.put(".xz", "");
        map.put("-xz", "");
        fileNameUtil = new FileNameUtil(map, ".xz");
        cachedXZAvailability = CachedAvailability.DONT_CACHE;
        setCacheXZAvailablity(!OsgiUtils.isRunningInOsgiEnvironment());
    }

    static CachedAvailability getCachedXZAvailability() {
        return cachedXZAvailability;
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

    private static boolean internalIsXZCompressionAvailable() {
        try {
            XZCompressorInputStream.matches(null, 0);
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

    public static boolean isXZCompressionAvailable() {
        CachedAvailability cachedAvailability = cachedXZAvailability;
        if (cachedAvailability != CachedAvailability.DONT_CACHE) {
            return cachedAvailability == CachedAvailability.CACHED_AVAILABLE;
        }
        return internalIsXZCompressionAvailable();
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

    public static void setCacheXZAvailablity(boolean z) {
        CachedAvailability cachedAvailability;
        if (!z) {
            cachedXZAvailability = CachedAvailability.DONT_CACHE;
        } else if (cachedXZAvailability == CachedAvailability.DONT_CACHE) {
            if (internalIsXZCompressionAvailable()) {
                cachedAvailability = CachedAvailability.CACHED_AVAILABLE;
            } else {
                cachedAvailability = CachedAvailability.CACHED_UNAVAILABLE;
            }
            cachedXZAvailability = cachedAvailability;
        }
    }

    private XZUtils() {
    }
}
