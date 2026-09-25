package com.iiordanov.jcraft.jzlib;

import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes2.dex */
final class Adler32 {
    private static final int BASE = 65521;
    private static final int NMAX = 5552;

    Adler32() {
    }

    long adler32(long j, byte[] bArr, int i, int i2) {
        if (bArr == null) {
            return 1L;
        }
        long j2 = j & WebSocketProtocol.PAYLOAD_SHORT_MAX;
        long j3 = (j >> 16) & WebSocketProtocol.PAYLOAD_SHORT_MAX;
        while (i2 > 0) {
            int i3 = NMAX;
            if (i2 < NMAX) {
                i3 = i2;
            }
            i2 -= i3;
            while (i3 >= 16) {
                long j4 = j2 + ((long) (bArr[i] & 255));
                long j5 = j3 + j4;
                long j6 = j4 + ((long) (bArr[i + 1] & 255));
                long j7 = j5 + j6;
                long j8 = j6 + ((long) (bArr[i + 2] & 255));
                long j9 = j7 + j8;
                long j10 = j8 + ((long) (bArr[i + 3] & 255));
                long j11 = j9 + j10;
                long j12 = j10 + ((long) (bArr[i + 4] & 255));
                long j13 = j11 + j12;
                long j14 = j12 + ((long) (bArr[i + 5] & 255));
                long j15 = j13 + j14;
                long j16 = j14 + ((long) (bArr[i + 6] & 255));
                long j17 = j15 + j16;
                long j18 = j16 + ((long) (bArr[i + 7] & 255));
                long j19 = j17 + j18;
                long j20 = j18 + ((long) (bArr[i + 8] & 255));
                long j21 = j19 + j20;
                long j22 = j20 + ((long) (bArr[i + 9] & 255));
                long j23 = j21 + j22;
                long j24 = j22 + ((long) (bArr[i + 10] & 255));
                long j25 = j23 + j24;
                long j26 = j24 + ((long) (bArr[i + 11] & 255));
                long j27 = j25 + j26;
                long j28 = j26 + ((long) (bArr[i + 12] & 255));
                long j29 = j27 + j28;
                long j30 = j28 + ((long) (bArr[i + 13] & 255));
                long j31 = j29 + j30;
                int i4 = i + 15;
                long j32 = j30 + ((long) (bArr[i + 14] & 255));
                long j33 = j31 + j32;
                i += 16;
                j2 = j32 + ((long) (bArr[i4] & 255));
                j3 = j33 + j2;
                i3 -= 16;
            }
            if (i3 != 0) {
                do {
                    j2 += (long) (bArr[i] & 255);
                    j3 += j2;
                    i3--;
                    i++;
                } while (i3 != 0);
            }
            j2 %= 65521;
            j3 %= 65521;
        }
        return (j3 << 16) | j2;
    }
}
