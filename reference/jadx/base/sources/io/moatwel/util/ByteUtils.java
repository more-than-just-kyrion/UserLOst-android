package io.moatwel.util;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
public class ByteUtils {
    public static byte[][] split(byte[] bArr, int i) {
        if (bArr.length < i) {
            throw new ArrayIndexOutOfBoundsException("Specified index over input length");
        }
        byte[] bArr2 = new byte[i];
        byte[] bArr3 = new byte[bArr.length - i];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        System.arraycopy(bArr, i, bArr3, 0, bArr.length - i);
        return new byte[][]{bArr2, bArr3};
    }

    public static byte[] reverse(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        int i = 0;
        for (byte b : bArr) {
            bArr2[(bArr.length - i) - 1] = b;
            i++;
        }
        return bArr2;
    }

    public static byte[] join(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    public static byte[] join(byte[]... bArr) {
        byte[] bArrJoin = new byte[0];
        for (byte[] bArr2 : bArr) {
            bArrJoin = join(bArrJoin, bArr2);
        }
        return bArrJoin;
    }

    public static byte[] paddingZeroOnHead(byte[] bArr, int i) {
        if (bArr.length > i) {
            throw new IllegalArgumentException("input byte array must have length which is less than byteLength you want to be.");
        }
        return join(new byte[i - bArr.length], bArr);
    }

    public static byte[] paddingZeroOnTail(byte[] bArr, int i) {
        if (bArr.length > i) {
            throw new IllegalArgumentException("input byte array must have length which is less than byteLength you want to be.");
        }
        return join(bArr, new byte[i - bArr.length]);
    }

    public static int readBit(byte b, int i) {
        if (i > 7 || i < 0) {
            throw new ArrayIndexOutOfBoundsException("position must be 0 - 7.");
        }
        return new BigInteger(new byte[]{0, b}).intValue() >>> i;
    }
}
