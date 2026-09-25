package org.apache.commons.compress.compressors;

import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.function.Function;

/* JADX INFO: loaded from: classes3.dex */
public class FileNameUtil {
    private final Map<String, String> compressSuffix = new HashMap();
    private final String defaultExtension;
    private final int longestCompressedSuffix;
    private final int longestUncompressedSuffix;
    private final int shortestCompressedSuffix;
    private final int shortestUncompressedSuffix;
    private final Map<String, String> uncompressSuffix;

    public FileNameUtil(Map<String, String> map, String str) {
        this.uncompressSuffix = Collections.unmodifiableMap(map);
        int i = Integer.MIN_VALUE;
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MAX_VALUE;
        int i4 = Integer.MIN_VALUE;
        for (final Map.Entry<String, String> entry : map.entrySet()) {
            int length = entry.getKey().length();
            i = length > i ? length : i;
            i2 = length < i2 ? length : i2;
            String value = entry.getValue();
            int length2 = value.length();
            if (length2 > 0) {
                this.compressSuffix.computeIfAbsent(value, new Function() { // from class: org.apache.commons.compress.compressors.FileNameUtil$$ExternalSyntheticLambda0
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return FileNameUtil.lambda$new$0(entry, (String) obj);
                    }
                });
                i4 = length2 > i4 ? length2 : i4;
                if (length2 < i3) {
                    i3 = length2;
                }
            }
        }
        this.longestCompressedSuffix = i;
        this.longestUncompressedSuffix = i4;
        this.shortestCompressedSuffix = i2;
        this.shortestUncompressedSuffix = i3;
        this.defaultExtension = str;
    }

    static /* synthetic */ String lambda$new$0(Map.Entry entry, String str) {
        return (String) entry.getKey();
    }

    @Deprecated
    public String getCompressedFilename(String str) {
        return getCompressedFileName(str);
    }

    public String getCompressedFileName(String str) {
        String lowerCase = str.toLowerCase(Locale.ENGLISH);
        int length = lowerCase.length();
        for (int i = this.shortestUncompressedSuffix; i <= this.longestUncompressedSuffix && i < length; i++) {
            int i2 = length - i;
            String str2 = this.compressSuffix.get(lowerCase.substring(i2));
            if (str2 != null) {
                return str.substring(0, i2) + str2;
            }
        }
        return str + this.defaultExtension;
    }

    @Deprecated
    public String getUncompressedFilename(String str) {
        return getUncompressedFileName(str);
    }

    public String getUncompressedFileName(String str) {
        String lowerCase = str.toLowerCase(Locale.ENGLISH);
        int length = lowerCase.length();
        for (int i = this.shortestCompressedSuffix; i <= this.longestCompressedSuffix && i < length; i++) {
            int i2 = length - i;
            String str2 = this.uncompressSuffix.get(lowerCase.substring(i2));
            if (str2 != null) {
                return str.substring(0, i2) + str2;
            }
        }
        return str;
    }

    @Deprecated
    public boolean isCompressedFilename(String str) {
        return isCompressedFileName(str);
    }

    public boolean isCompressedFileName(String str) {
        String lowerCase = str.toLowerCase(Locale.ENGLISH);
        int length = lowerCase.length();
        for (int i = this.shortestCompressedSuffix; i <= this.longestCompressedSuffix && i < length; i++) {
            if (this.uncompressSuffix.containsKey(lowerCase.substring(length - i))) {
                return true;
            }
        }
        return false;
    }
}
