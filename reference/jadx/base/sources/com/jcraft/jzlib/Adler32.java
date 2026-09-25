package com.jcraft.jzlib;

import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes2.dex */
public final class Adler32 implements Checksum {
    private static final int BASE = 65521;
    private static final int NMAX = 5552;
    private long s1 = 1;
    private long s2 = 0;

    @Override // com.jcraft.jzlib.Checksum
    public void reset(long j) {
        this.s1 = j & WebSocketProtocol.PAYLOAD_SHORT_MAX;
        this.s2 = (j >> 16) & WebSocketProtocol.PAYLOAD_SHORT_MAX;
    }

    @Override // com.jcraft.jzlib.Checksum
    public void reset() {
        this.s1 = 1L;
        this.s2 = 0L;
    }

    @Override // com.jcraft.jzlib.Checksum
    public long getValue() {
        return (this.s2 << 16) | this.s1;
    }

    @Override // com.jcraft.jzlib.Checksum
    public void update(byte[] bArr, int i, int i2) {
        if (i2 == 1) {
            long j = this.s1 + ((long) (bArr[i] & 255));
            this.s1 = j;
            long j2 = this.s2 + j;
            this.s2 = j2;
            this.s1 = j % 65521;
            this.s2 = j2 % 65521;
            return;
        }
        int i3 = i2 / NMAX;
        int i4 = i2 % NMAX;
        while (true) {
            int i5 = i3 - 1;
            if (i3 <= 0) {
                break;
            }
            int i6 = NMAX;
            while (true) {
                int i7 = i6 - 1;
                if (i6 > 0) {
                    long j3 = this.s1 + ((long) (bArr[i] & 255));
                    this.s1 = j3;
                    this.s2 += j3;
                    i++;
                    i6 = i7;
                }
            }
            this.s1 %= 65521;
            this.s2 %= 65521;
            i3 = i5;
        }
        while (true) {
            int i8 = i4 - 1;
            if (i4 > 0) {
                long j4 = this.s1 + ((long) (bArr[i] & 255));
                this.s1 = j4;
                this.s2 += j4;
                i++;
                i4 = i8;
            } else {
                this.s1 %= 65521;
                this.s2 %= 65521;
                return;
            }
        }
    }

    @Override // com.jcraft.jzlib.Checksum
    public Adler32 copy() {
        Adler32 adler32 = new Adler32();
        adler32.s1 = this.s1;
        adler32.s2 = this.s2;
        return adler32;
    }

    static long combine(long j, long j2, long j3) {
        long j4 = j3 % 65521;
        long j5 = j & WebSocketProtocol.PAYLOAD_SHORT_MAX;
        long j6 = (j4 * j5) % 65521;
        long j7 = j5 + (j2 & WebSocketProtocol.PAYLOAD_SHORT_MAX) + 65520;
        long j8 = j6 + (((((j >> 16) & WebSocketProtocol.PAYLOAD_SHORT_MAX) + (WebSocketProtocol.PAYLOAD_SHORT_MAX & (j2 >> 16))) + 65521) - j4);
        if (j7 >= 65521) {
            j7 -= 65521;
        }
        if (j7 >= 65521) {
            j7 -= 65521;
        }
        if (j8 >= 131042) {
            j8 -= 131042;
        }
        if (j8 >= 65521) {
            j8 -= 65521;
        }
        return (j8 << 16) | j7;
    }
}
