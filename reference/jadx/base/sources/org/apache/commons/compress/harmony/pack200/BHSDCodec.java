package org.apache.commons.compress.harmony.pack200;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.function.IntToLongFunction;
import org.apache.commons.compress.utils.ExactMath;

/* JADX INFO: loaded from: classes3.dex */
public final class BHSDCodec extends Codec {
    private final int b;
    private long cardinality;
    private final int d;
    private final int h;
    private final int l;
    private final long largest;
    private final long[] powers;
    private final int s;
    private final long smallest;

    public BHSDCodec(int i, int i2) {
        this(i, i2, 0, 0);
    }

    public BHSDCodec(int i, int i2, int i3) {
        this(i, i2, i3, 0);
    }

    public BHSDCodec(int i, final int i2, int i3, int i4) {
        if (i < 1 || i > 5) {
            throw new IllegalArgumentException("1<=b<=5");
        }
        if (i2 < 1 || i2 > 256) {
            throw new IllegalArgumentException("1<=h<=256");
        }
        if (i3 < 0 || i3 > 2) {
            throw new IllegalArgumentException("0<=s<=2");
        }
        if (i4 < 0 || i4 > 1) {
            throw new IllegalArgumentException("0<=d<=1");
        }
        if (i == 1 && i2 != 256) {
            throw new IllegalArgumentException("b=1 -> h=256");
        }
        if (i2 == 256 && i == 5) {
            throw new IllegalArgumentException("h=256 -> b!=5");
        }
        this.b = i;
        this.h = i2;
        this.s = i3;
        this.d = i4;
        int i5 = 256 - i2;
        this.l = i5;
        if (i2 == 1) {
            this.cardinality = (i * 255) + 1;
        } else {
            double d = i2;
            double d2 = i;
            this.cardinality = (long) (((long) ((((double) i5) * (1.0d - Math.pow(d, d2))) / ((double) (1 - i2)))) + Math.pow(d, d2));
        }
        this.smallest = calculateSmallest();
        this.largest = calculateLargest();
        long[] jArr = new long[i];
        this.powers = jArr;
        Arrays.setAll(jArr, new IntToLongFunction() { // from class: org.apache.commons.compress.harmony.pack200.BHSDCodec$$ExternalSyntheticLambda0
            @Override // java.util.function.IntToLongFunction
            public final long applyAsLong(int i6) {
                return BHSDCodec.lambda$new$0(i2, i6);
            }
        });
    }

    static /* synthetic */ long lambda$new$0(int i, int i2) {
        return (long) Math.pow(i, i2);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0044  */
    /* JADX WARN: Code duplicated, block: B:20:0x004a  */
    private long calculateLargest() {
        long jCardinality;
        long jCardinality2;
        long j;
        if (this.d == 1) {
            return new BHSDCodec(this.b, this.h).largest();
        }
        int i = this.s;
        if (i == 0) {
            jCardinality = cardinality();
        } else {
            if (i == 1) {
                jCardinality = cardinality() / 2;
            } else if (i == 2) {
                jCardinality2 = ((cardinality() * 3) / 4) - 1;
            } else {
                throw new Error("Unknown s value");
            }
            if (this.s == 0) {
                j = 4294967294L;
            } else {
                j = 2147483647L;
            }
            return Math.min(j - 1, jCardinality2);
        }
        jCardinality2 = jCardinality - 1;
        if (this.s == 0) {
            j = 4294967294L;
        } else {
            j = 2147483647L;
        }
        return Math.min(j - 1, jCardinality2);
    }

    private long calculateSmallest() {
        if (this.d == 1 || !isSigned()) {
            return this.cardinality >= 4294967296L ? -2147483648L : 0L;
        }
        return Math.max(-2147483648L, (-cardinality()) / ((long) (1 << this.s)));
    }

    public long cardinality() {
        return this.cardinality;
    }

    @Override // org.apache.commons.compress.harmony.pack200.Codec
    public int decode(InputStream inputStream) throws IOException {
        if (this.d != 0) {
            throw new Pack200Exception("Delta encoding used without passing in last value; this is a coding error");
        }
        return decode(inputStream, 0L);
    }

    @Override // org.apache.commons.compress.harmony.pack200.Codec
    public int decode(InputStream inputStream, long j) throws IOException {
        long j2;
        int i = 0;
        long j3 = 0;
        do {
            j2 = inputStream.read();
            this.lastBandLength++;
            j3 += this.powers[i] * j2;
            i++;
            if (j2 < this.l) {
                break;
            }
        } while (i < this.b);
        if (j2 == -1) {
            throw new EOFException("End of stream reached whilst decoding");
        }
        if (isSigned()) {
            int i2 = this.s;
            long j4 = (1 << i2) - 1;
            j3 = (j3 & j4) == j4 ? ~(j3 >>> i2) : j3 - (j3 >>> i2);
        }
        if (isDelta()) {
            j3 += j;
        }
        return (int) j3;
    }

    @Override // org.apache.commons.compress.harmony.pack200.Codec
    public int[] decodeInts(int i, InputStream inputStream) throws IOException {
        int[] iArrDecodeInts = super.decodeInts(i, inputStream);
        if (isDelta()) {
            for (int i2 = 0; i2 < iArrDecodeInts.length; i2++) {
                while (true) {
                    int i3 = iArrDecodeInts[i2];
                    if (i3 <= this.largest) {
                        break;
                    }
                    iArrDecodeInts[i2] = (int) (((long) i3) - this.cardinality);
                }
                while (true) {
                    int i4 = iArrDecodeInts[i2];
                    if (i4 < this.smallest) {
                        iArrDecodeInts[i2] = ExactMath.add(i4, this.cardinality);
                    }
                }
            }
        }
        return iArrDecodeInts;
    }

    @Override // org.apache.commons.compress.harmony.pack200.Codec
    public int[] decodeInts(int i, InputStream inputStream, int i2) throws IOException {
        int[] iArrDecodeInts = super.decodeInts(i, inputStream, i2);
        if (isDelta()) {
            for (int i3 = 0; i3 < iArrDecodeInts.length; i3++) {
                while (true) {
                    int i4 = iArrDecodeInts[i3];
                    if (i4 <= this.largest) {
                        break;
                    }
                    iArrDecodeInts[i3] = (int) (((long) i4) - this.cardinality);
                }
                while (true) {
                    int i5 = iArrDecodeInts[i3];
                    if (i5 < this.smallest) {
                        iArrDecodeInts[i3] = ExactMath.add(i5, this.cardinality);
                    }
                }
            }
        }
        return iArrDecodeInts;
    }

    @Override // org.apache.commons.compress.harmony.pack200.Codec
    public byte[] encode(int i) throws Pack200Exception {
        return encode(i, 0);
    }

    @Override // org.apache.commons.compress.harmony.pack200.Codec
    public byte[] encode(int i, int i2) throws Pack200Exception {
        long j;
        long jMin = i;
        if (!encodes(jMin)) {
            throw new Pack200Exception("The codec " + this + " does not encode the value " + i);
        }
        if (isDelta()) {
            jMin -= (long) i2;
        }
        if (isSigned()) {
            if (jMin < -2147483648L) {
                jMin += 4294967296L;
            } else if (jMin > 2147483647L) {
                jMin -= 4294967296L;
            }
            if (jMin < 0) {
                jMin = ((-jMin) << this.s) - 1;
            } else {
                int i3 = this.s;
                jMin = i3 == 1 ? jMin << i3 : jMin + ((jMin - (jMin % 3)) / 3);
            }
        } else if (jMin < 0) {
            jMin += Math.min(this.cardinality, 4294967296L);
        }
        if (jMin < 0) {
            throw new Pack200Exception("unable to encode");
        }
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < this.b; i4++) {
            if (jMin < this.l) {
                j = jMin;
            } else {
                j = jMin % ((long) this.h);
                while (j < this.l) {
                    j += (long) this.h;
                }
            }
            arrayList.add(Byte.valueOf((byte) j));
            if (j < this.l) {
                break;
            }
            jMin = (jMin - j) / ((long) this.h);
        }
        int size = arrayList.size();
        byte[] bArr = new byte[size];
        for (int i5 = 0; i5 < size; i5++) {
            bArr[i5] = ((Byte) arrayList.get(i5)).byteValue();
        }
        return bArr;
    }

    public boolean encodes(long j) {
        return j >= this.smallest && j <= this.largest;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BHSDCodec)) {
            return false;
        }
        BHSDCodec bHSDCodec = (BHSDCodec) obj;
        return bHSDCodec.b == this.b && bHSDCodec.h == this.h && bHSDCodec.s == this.s && bHSDCodec.d == this.d;
    }

    public int getB() {
        return this.b;
    }

    public int getH() {
        return this.h;
    }

    public int getL() {
        return this.l;
    }

    public int getS() {
        return this.s;
    }

    public int hashCode() {
        return (((((this.b * 37) + this.h) * 37) + this.s) * 37) + this.d;
    }

    public boolean isDelta() {
        return this.d != 0;
    }

    public boolean isSigned() {
        return this.s != 0;
    }

    public long largest() {
        return this.largest;
    }

    public long smallest() {
        return this.smallest;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(11);
        sb.append('(');
        sb.append(this.b);
        sb.append(',');
        sb.append(this.h);
        if (this.s != 0 || this.d != 0) {
            sb.append(',');
            sb.append(this.s);
        }
        if (this.d != 0) {
            sb.append(',');
            sb.append(this.d);
        }
        sb.append(')');
        return sb.toString();
    }
}
