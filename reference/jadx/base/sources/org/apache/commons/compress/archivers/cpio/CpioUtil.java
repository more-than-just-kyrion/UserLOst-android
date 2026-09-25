package org.apache.commons.compress.archivers.cpio;

import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
final class CpioUtil {
    static final String DEFAULT_CHARSET_NAME = StandardCharsets.US_ASCII.name();

    static long fileType(long j) {
        return j & 61440;
    }

    CpioUtil() {
    }

    static long byteArray2long(byte[] bArr, boolean z) {
        if (bArr.length % 2 != 0) {
            throw new UnsupportedOperationException();
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        if (!z) {
            for (int i = 0; i < bArrCopyOf.length; i += 2) {
                byte b = bArrCopyOf[i];
                int i2 = i + 1;
                bArrCopyOf[i] = bArrCopyOf[i2];
                bArrCopyOf[i2] = b;
            }
        }
        long j = bArrCopyOf[0] & 255;
        for (int i3 = 1; i3 < bArrCopyOf.length; i3++) {
            j = (j << 8) | ((long) (bArrCopyOf[i3] & 255));
        }
        return j;
    }

    static byte[] long2byteArray(long j, int i, boolean z) {
        byte[] bArr = new byte[i];
        if (i % 2 != 0 || i < 2) {
            throw new UnsupportedOperationException();
        }
        for (int i2 = i - 1; i2 >= 0; i2--) {
            bArr[i2] = (byte) (255 & j);
            j >>= 8;
        }
        if (!z) {
            for (int i3 = 0; i3 < i; i3 += 2) {
                byte b = bArr[i3];
                int i4 = i3 + 1;
                bArr[i3] = bArr[i4];
                bArr[i4] = b;
            }
        }
        return bArr;
    }
}
