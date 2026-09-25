package org.apache.commons.compress.harmony.pack200;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.io.input.BoundedInputStream;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Codec {
    public static final BHSDCodec BCI5 = new BHSDCodec(5, 4);
    public static final BHSDCodec BRANCH5 = new BHSDCodec(5, 4, 2);
    public static final BHSDCodec BYTE1 = new BHSDCodec(1, 256);
    public static final BHSDCodec CHAR3 = new BHSDCodec(3, 128);
    public static final BHSDCodec DELTA5 = new BHSDCodec(5, 64, 1, 1);
    public static final BHSDCodec MDELTA5 = new BHSDCodec(5, 64, 2, 1);
    public static final BHSDCodec SIGNED5 = new BHSDCodec(5, 64, 1);
    public static final BHSDCodec UDELTA5 = new BHSDCodec(5, 64, 0, 1);
    public static final BHSDCodec UNSIGNED5 = new BHSDCodec(5, 64);
    public int lastBandLength;

    public abstract int decode(InputStream inputStream) throws IOException;

    public abstract int decode(InputStream inputStream, long j) throws IOException;

    public abstract byte[] encode(int i) throws Pack200Exception;

    public abstract byte[] encode(int i, int i2) throws Pack200Exception;

    int check(int i, InputStream inputStream) throws Pack200Exception {
        if (inputStream instanceof BoundedInputStream) {
            BoundedInputStream boundedInputStream = (BoundedInputStream) inputStream;
            long count = boundedInputStream.getCount();
            long maxLength = boundedInputStream.getMaxLength();
            if (maxLength > -1) {
                long j = maxLength - count;
                if (count < -1) {
                    throw new Pack200Exception(String.format("Can't read beyond end of stream (n = %,d, count = %,d, maxLength = %,d, remaining = %,d)", Integer.valueOf(i), Long.valueOf(count), Long.valueOf(maxLength), Long.valueOf(j)));
                }
                if (i > j) {
                    throw new Pack200Exception(String.format("Can't read beyond end of stream (n = %,d, count = %,d, maxLength = %,d, remaining = %,d)", Integer.valueOf(i), Long.valueOf(count), Long.valueOf(maxLength), Long.valueOf(j)));
                }
            }
        }
        return i;
    }

    public int[] decodeInts(int i, InputStream inputStream) throws IOException {
        this.lastBandLength = 0;
        int[] iArr = new int[check(i, inputStream)];
        int iDecode = 0;
        for (int i2 = 0; i2 < i; i2++) {
            iDecode = decode(inputStream, iDecode);
            iArr[i2] = iDecode;
        }
        return iArr;
    }

    public int[] decodeInts(int i, InputStream inputStream, int i2) throws IOException {
        int[] iArr = new int[check(i, inputStream) + 1];
        iArr[0] = i2;
        for (int i3 = 1; i3 < i + 1; i3++) {
            i2 = decode(inputStream, i2);
            iArr[i3] = i2;
        }
        return iArr;
    }

    public byte[] encode(int[] iArr) throws Pack200Exception {
        int length = iArr.length;
        byte[][] bArr = new byte[length][];
        int i = 0;
        int length2 = 0;
        while (i < iArr.length) {
            byte[] bArrEncode = encode(iArr[i], i > 0 ? iArr[i - 1] : 0);
            bArr[i] = bArrEncode;
            length2 += bArrEncode.length;
            i++;
        }
        byte[] bArr2 = new byte[length2];
        int length3 = 0;
        for (int i2 = 0; i2 < length; i2++) {
            byte[] bArr3 = bArr[i2];
            System.arraycopy(bArr3, 0, bArr2, length3, bArr3.length);
            length3 += bArr3.length;
        }
        return bArr2;
    }
}
