package com.undatech.opaque.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes2.dex */
public class SslUtils {
    public static String signature(String str, byte[] bArr) throws NoSuchAlgorithmException {
        return toHexString(MessageDigest.getInstance(str).digest(bArr)).trim();
    }

    public static String toHexString(byte[] bArr) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        char[] cArr2 = new char[bArr.length * 3];
        int i = 0;
        while (i < bArr.length - 1) {
            int i2 = bArr[i] & 255;
            int i3 = i * 3;
            cArr2[i3] = cArr[i2 / 16];
            cArr2[i3 + 1] = cArr[i2 % 16];
            cArr2[i3 + 2] = ":".charAt(0);
            i++;
        }
        int i4 = bArr[i] & 255;
        int i5 = i * 3;
        cArr2[i5] = cArr[i4 / 16];
        cArr2[i5 + 1] = cArr[i4 % 16];
        return new String(cArr2);
    }
}
