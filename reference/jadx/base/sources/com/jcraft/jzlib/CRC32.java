package com.jcraft.jzlib;

import org.spongycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes2.dex */
public final class CRC32 implements Checksum {
    private static final int GF2_DIM = 32;
    private static int[] crc_table = new int[256];
    private int v = 0;

    static {
        for (int i = 0; i < 256; i++) {
            int i2 = 8;
            int i3 = i;
            while (true) {
                i2--;
                if (i2 >= 0) {
                    i3 = (i3 & 1) != 0 ? (i3 >>> 1) ^ (-306674912) : i3 >>> 1;
                }
            }
            crc_table[i] = i3;
        }
    }

    @Override // com.jcraft.jzlib.Checksum
    public void update(byte[] bArr, int i, int i2) {
        int i3 = ~this.v;
        while (true) {
            i2--;
            if (i2 >= 0) {
                i3 = (i3 >>> 8) ^ crc_table[(bArr[i] ^ i3) & 255];
                i++;
            } else {
                this.v = ~i3;
                return;
            }
        }
    }

    @Override // com.jcraft.jzlib.Checksum
    public void reset() {
        this.v = 0;
    }

    @Override // com.jcraft.jzlib.Checksum
    public void reset(long j) {
        this.v = (int) (j & BodyPartID.bodyIdMax);
    }

    @Override // com.jcraft.jzlib.Checksum
    public long getValue() {
        return ((long) this.v) & BodyPartID.bodyIdMax;
    }

    static long combine(long j, long j2, long j3) {
        long[] jArr = new long[32];
        long[] jArr2 = new long[32];
        if (j3 <= 0) {
            return j;
        }
        jArr2[0] = 3988292384L;
        long j4 = 1;
        for (int i = 1; i < 32; i++) {
            jArr2[i] = j4;
            j4 <<= 1;
        }
        gf2_matrix_square(jArr, jArr2);
        gf2_matrix_square(jArr2, jArr);
        long jGf2_matrix_times = j;
        long j5 = j3;
        do {
            gf2_matrix_square(jArr, jArr2);
            if ((j5 & 1) != 0) {
                jGf2_matrix_times = gf2_matrix_times(jArr, jGf2_matrix_times);
            }
            long j6 = j5 >> 1;
            if (j6 == 0) {
                break;
            }
            gf2_matrix_square(jArr2, jArr);
            if ((j6 & 1) != 0) {
                jGf2_matrix_times = gf2_matrix_times(jArr2, jGf2_matrix_times);
            }
            j5 >>= 2;
        } while (j5 != 0);
        return jGf2_matrix_times ^ j2;
    }

    private static long gf2_matrix_times(long[] jArr, long j) {
        int i = 0;
        long j2 = 0;
        while (j != 0) {
            if ((1 & j) != 0) {
                j2 ^= jArr[i];
            }
            j >>= 1;
            i++;
        }
        return j2;
    }

    static final void gf2_matrix_square(long[] jArr, long[] jArr2) {
        for (int i = 0; i < 32; i++) {
            jArr[i] = gf2_matrix_times(jArr2, jArr2[i]);
        }
    }

    @Override // com.jcraft.jzlib.Checksum
    public CRC32 copy() {
        CRC32 crc32 = new CRC32();
        crc32.v = this.v;
        return crc32;
    }

    public static int[] getCRC32Table() {
        int[] iArr = crc_table;
        int length = iArr.length;
        int[] iArr2 = new int[length];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        return iArr2;
    }
}
