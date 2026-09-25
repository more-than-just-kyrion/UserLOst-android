package io.moatwel.util;

import org.spongycastle.util.encoders.Hex;

/* JADX INFO: loaded from: classes2.dex */
public class HexEncoder {
    public static byte[] getBytes(String str) {
        if (str.length() % 2 != 0) {
            throw new IllegalHexStringException("The length of your hex string is " + str.length() + ". Odd-length is not allowed.");
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) Integer.parseInt(str.substring(i2, i2 + 2), 16);
        }
        return bArr;
    }

    public static String getString(byte[] bArr) {
        return Hex.toHexString(bArr);
    }
}
