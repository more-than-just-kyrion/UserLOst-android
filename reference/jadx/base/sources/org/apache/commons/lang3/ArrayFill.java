package org.apache.commons.lang3;

import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class ArrayFill {
    public static byte[] fill(byte[] bArr, byte b) {
        Arrays.fill(bArr, b);
        return bArr;
    }

    public static char[] fill(char[] cArr, char c) {
        Arrays.fill(cArr, c);
        return cArr;
    }

    public static double[] fill(double[] dArr, double d) {
        Arrays.fill(dArr, d);
        return dArr;
    }

    public static float[] fill(float[] fArr, float f) {
        Arrays.fill(fArr, f);
        return fArr;
    }

    public static int[] fill(int[] iArr, int i) {
        Arrays.fill(iArr, i);
        return iArr;
    }

    public static long[] fill(long[] jArr, long j) {
        Arrays.fill(jArr, j);
        return jArr;
    }

    public static short[] fill(short[] sArr, short s) {
        Arrays.fill(sArr, s);
        return sArr;
    }

    public static <T> T[] fill(T[] tArr, T t) {
        Arrays.fill(tArr, t);
        return tArr;
    }

    private ArrayFill() {
    }
}
