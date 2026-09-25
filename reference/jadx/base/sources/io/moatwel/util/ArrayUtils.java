package io.moatwel.util;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
public class ArrayUtils {
    public static byte[][] split(byte[] bArr, int i) {
        if (i < 0 || bArr.length < i) {
            throw new IllegalArgumentException("split index is out of range");
        }
        byte[] bArr2 = new byte[i];
        int length = bArr.length - i;
        byte[] bArr3 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        System.arraycopy(bArr, i, bArr3, 0, length);
        return new byte[][]{bArr2, bArr3};
    }

    public static int[] reverse(int[] iArr) {
        int[] iArr2 = new int[iArr.length];
        int i = 0;
        for (int i2 : iArr) {
            iArr2[(iArr.length - i) - 1] = i2;
            i++;
        }
        return iArr2;
    }

    public static byte[] toByteArray(BigInteger bigInteger, int i) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length <= i) {
            return byteArray;
        }
        byte[] bArr = new byte[i];
        System.arraycopy(byteArray, byteArray[0] == 0 ? 1 : 0, bArr, 0, i);
        return bArr;
    }

    public static int[] toBinaryArray(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        int length = byteArray.length * 8;
        int[] iArr = new int[length];
        for (int i = 0; i < byteArray.length; i++) {
            for (int i2 = 0; i2 < 8; i2++) {
                byte b = byteArray[i];
                iArr[(i * 8) + i2] = (b & 128) / 128;
                byteArray[i] = (byte) (b << 1);
            }
        }
        int i3 = 0;
        for (int i4 = 0; i4 < length && iArr[i4] != 1; i4++) {
            i3++;
        }
        int i5 = length - i3;
        int[] iArr2 = new int[i5];
        System.arraycopy(iArr, i3, iArr2, 0, i5);
        return iArr2;
    }

    public static int[] toMutualOppositeForm(BigInteger bigInteger) {
        int[] binaryArray = toBinaryArray(bigInteger);
        int length = binaryArray.length;
        int[] iArr = new int[length + 1];
        iArr[0] = binaryArray[0];
        for (int i = 1; i < length; i++) {
            iArr[i] = binaryArray[i] - binaryArray[i - 1];
        }
        iArr[length] = -binaryArray[length - 1];
        return iArr;
    }
}
