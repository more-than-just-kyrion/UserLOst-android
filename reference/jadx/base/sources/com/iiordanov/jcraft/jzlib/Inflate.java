package com.iiordanov.jcraft.jzlib;

import com.google.common.base.Ascii;

/* JADX INFO: loaded from: classes2.dex */
final class Inflate {
    private static final int BAD = 13;
    private static final int BLOCKS = 7;
    private static final int CHECK1 = 11;
    private static final int CHECK2 = 10;
    private static final int CHECK3 = 9;
    private static final int CHECK4 = 8;
    private static final int DICT0 = 6;
    private static final int DICT1 = 5;
    private static final int DICT2 = 4;
    private static final int DICT3 = 3;
    private static final int DICT4 = 2;
    private static final int DONE = 12;
    private static final int FLAG = 1;
    private static final int MAX_WBITS = 15;
    private static final int METHOD = 0;
    private static final int PRESET_DICT = 32;
    private static final int Z_BUF_ERROR = -5;
    private static final int Z_DATA_ERROR = -3;
    private static final int Z_DEFLATED = 8;
    private static final int Z_ERRNO = -1;
    static final int Z_FINISH = 4;
    static final int Z_FULL_FLUSH = 3;
    private static final int Z_MEM_ERROR = -4;
    private static final int Z_NEED_DICT = 2;
    static final int Z_NO_FLUSH = 0;
    private static final int Z_OK = 0;
    static final int Z_PARTIAL_FLUSH = 1;
    private static final int Z_STREAM_END = 1;
    private static final int Z_STREAM_ERROR = -2;
    static final int Z_SYNC_FLUSH = 2;
    private static final int Z_VERSION_ERROR = -6;
    private static byte[] mark = {0, 0, -1, -1};
    InfBlocks blocks;
    int marker;
    int method;
    int mode;
    long need;
    int nowrap;
    long[] was = new long[1];
    int wbits;

    Inflate() {
    }

    int inflateReset(ZStream zStream) {
        if (zStream == null || zStream.istate == null) {
            return -2;
        }
        zStream.total_out = 0L;
        zStream.total_in = 0L;
        zStream.msg = null;
        zStream.istate.mode = zStream.istate.nowrap != 0 ? 7 : 0;
        zStream.istate.blocks.reset(zStream, null);
        return 0;
    }

    int inflateEnd(ZStream zStream) {
        InfBlocks infBlocks = this.blocks;
        if (infBlocks != null) {
            infBlocks.free(zStream);
        }
        this.blocks = null;
        return 0;
    }

    int inflateInit(ZStream zStream, int i) {
        zStream.msg = null;
        this.blocks = null;
        this.nowrap = 0;
        if (i < 0) {
            i = -i;
            this.nowrap = 1;
        }
        if (i < 8 || i > 15) {
            inflateEnd(zStream);
            return -2;
        }
        this.wbits = i;
        zStream.istate.blocks = new InfBlocks(zStream, zStream.istate.nowrap == 0 ? this : null, 1 << i);
        inflateReset(zStream);
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:67:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:69:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:70:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:72:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:77:0x01f9 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:78:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:81:0x0223 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:82:0x0224  */
    /* JADX WARN: Code duplicated, block: B:85:0x0250 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:86:0x0251  */
    /* JADX WARN: Code duplicated, block: B:89:0x027c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:90:0x027d  */
    /* JADX WARN: Code duplicated, block: B:94:0x01b0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:95:0x01ef A[SYNTHETIC] */
    int inflate(ZStream zStream, int i) {
        int i2;
        byte b;
        if (zStream == null || zStream.istate == null || zStream.next_in == null) {
            return -2;
        }
        int iProc = -5;
        int i3 = 0;
        int i4 = i == 4 ? -5 : 0;
        while (true) {
            switch (zStream.istate.mode) {
                case 0:
                    i2 = i3;
                    if (zStream.avail_in == 0) {
                        return iProc;
                    }
                    zStream.avail_in--;
                    zStream.total_in++;
                    Inflate inflate = zStream.istate;
                    byte[] bArr = zStream.next_in;
                    int i5 = zStream.next_in_index;
                    zStream.next_in_index = i5 + 1;
                    byte b2 = bArr[i5];
                    inflate.method = b2;
                    if ((b2 & Ascii.SI) != 8) {
                        zStream.istate.mode = 13;
                        zStream.msg = "unknown compression method";
                        zStream.istate.marker = 5;
                    } else if ((zStream.istate.method >> 4) + 8 > zStream.istate.wbits) {
                        zStream.istate.mode = 13;
                        zStream.msg = "invalid window size";
                        zStream.istate.marker = 5;
                    } else {
                        zStream.istate.mode = 1;
                        iProc = i4;
                        if (zStream.avail_in == 0) {
                            return iProc;
                        }
                        zStream.avail_in--;
                        zStream.total_in++;
                        byte[] bArr2 = zStream.next_in;
                        int i6 = zStream.next_in_index;
                        zStream.next_in_index = i6 + 1;
                        b = bArr2[i6];
                        if (((zStream.istate.method << 8) + (b & 255)) % 31 != 0) {
                            zStream.istate.mode = 13;
                            zStream.msg = "incorrect header check";
                            zStream.istate.marker = 5;
                        } else if ((b & 32) == 0) {
                            zStream.istate.mode = 7;
                        } else {
                            zStream.istate.mode = 2;
                            iProc = i4;
                            if (zStream.avail_in == 0) {
                                return iProc;
                            }
                            zStream.avail_in--;
                            zStream.total_in++;
                            Inflate inflate2 = zStream.istate;
                            byte[] bArr3 = zStream.next_in;
                            int i7 = zStream.next_in_index;
                            zStream.next_in_index = i7 + 1;
                            inflate2.need = ((long) ((bArr3[i7] & 255) << 24)) & 4278190080L;
                            zStream.istate.mode = 3;
                            iProc = i4;
                            if (zStream.avail_in == 0) {
                                return iProc;
                            }
                            zStream.avail_in--;
                            zStream.total_in++;
                            Inflate inflate3 = zStream.istate;
                            long j = inflate3.need;
                            byte[] bArr4 = zStream.next_in;
                            int i8 = zStream.next_in_index;
                            zStream.next_in_index = i8 + 1;
                            inflate3.need = j + (((long) ((bArr4[i8] & 255) << 16)) & 16711680);
                            zStream.istate.mode = 4;
                            iProc = i4;
                            if (zStream.avail_in == 0) {
                                return iProc;
                            }
                            zStream.avail_in--;
                            zStream.total_in++;
                            Inflate inflate4 = zStream.istate;
                            long j2 = inflate4.need;
                            byte[] bArr5 = zStream.next_in;
                            int i9 = zStream.next_in_index;
                            zStream.next_in_index = i9 + 1;
                            inflate4.need = j2 + (((long) ((bArr5[i9] & 255) << 8)) & 65280);
                            zStream.istate.mode = 5;
                            if (zStream.avail_in == 0) {
                                return i4;
                            }
                            zStream.avail_in--;
                            zStream.total_in++;
                            Inflate inflate5 = zStream.istate;
                            long j3 = inflate5.need;
                            byte[] bArr6 = zStream.next_in;
                            int i10 = zStream.next_in_index;
                            zStream.next_in_index = i10 + 1;
                            inflate5.need = j3 + (((long) bArr6[i10]) & 255);
                            zStream.adler = zStream.istate.need;
                            zStream.istate.mode = 6;
                            return 2;
                        }
                    }
                    i3 = i2;
                    iProc = i4;
                    break;
                case 1:
                    i2 = i3;
                    if (zStream.avail_in == 0) {
                        return iProc;
                    }
                    zStream.avail_in--;
                    zStream.total_in++;
                    byte[] bArr7 = zStream.next_in;
                    int i11 = zStream.next_in_index;
                    zStream.next_in_index = i11 + 1;
                    b = bArr7[i11];
                    if (((zStream.istate.method << 8) + (b & 255)) % 31 != 0) {
                        zStream.istate.mode = 13;
                        zStream.msg = "incorrect header check";
                        zStream.istate.marker = 5;
                    } else if ((b & 32) == 0) {
                        zStream.istate.mode = 7;
                    } else {
                        zStream.istate.mode = 2;
                        iProc = i4;
                        if (zStream.avail_in == 0) {
                            return iProc;
                        }
                        zStream.avail_in--;
                        zStream.total_in++;
                        Inflate inflate6 = zStream.istate;
                        byte[] bArr8 = zStream.next_in;
                        int i12 = zStream.next_in_index;
                        zStream.next_in_index = i12 + 1;
                        inflate6.need = ((long) ((bArr8[i12] & 255) << 24)) & 4278190080L;
                        zStream.istate.mode = 3;
                        iProc = i4;
                        if (zStream.avail_in == 0) {
                            return iProc;
                        }
                        zStream.avail_in--;
                        zStream.total_in++;
                        Inflate inflate7 = zStream.istate;
                        long j4 = inflate7.need;
                        byte[] bArr9 = zStream.next_in;
                        int i13 = zStream.next_in_index;
                        zStream.next_in_index = i13 + 1;
                        inflate7.need = j4 + (((long) ((bArr9[i13] & 255) << 16)) & 16711680);
                        zStream.istate.mode = 4;
                        iProc = i4;
                        if (zStream.avail_in == 0) {
                            return iProc;
                        }
                        zStream.avail_in--;
                        zStream.total_in++;
                        Inflate inflate8 = zStream.istate;
                        long j5 = inflate8.need;
                        byte[] bArr10 = zStream.next_in;
                        int i14 = zStream.next_in_index;
                        zStream.next_in_index = i14 + 1;
                        inflate8.need = j5 + (((long) ((bArr10[i14] & 255) << 8)) & 65280);
                        zStream.istate.mode = 5;
                        if (zStream.avail_in == 0) {
                            return i4;
                        }
                        zStream.avail_in--;
                        zStream.total_in++;
                        Inflate inflate9 = zStream.istate;
                        long j6 = inflate9.need;
                        byte[] bArr11 = zStream.next_in;
                        int i15 = zStream.next_in_index;
                        zStream.next_in_index = i15 + 1;
                        inflate9.need = j6 + (((long) bArr11[i15]) & 255);
                        zStream.adler = zStream.istate.need;
                        zStream.istate.mode = 6;
                        return 2;
                    }
                    i3 = i2;
                    iProc = i4;
                    break;
                case 2:
                    if (zStream.avail_in == 0) {
                        return iProc;
                    }
                    zStream.avail_in--;
                    zStream.total_in++;
                    Inflate inflate10 = zStream.istate;
                    byte[] bArr12 = zStream.next_in;
                    int i16 = zStream.next_in_index;
                    zStream.next_in_index = i16 + 1;
                    inflate10.need = ((long) ((bArr12[i16] & 255) << 24)) & 4278190080L;
                    zStream.istate.mode = 3;
                    iProc = i4;
                    if (zStream.avail_in == 0) {
                        return iProc;
                    }
                    zStream.avail_in--;
                    zStream.total_in++;
                    Inflate inflate11 = zStream.istate;
                    long j7 = inflate11.need;
                    byte[] bArr13 = zStream.next_in;
                    int i17 = zStream.next_in_index;
                    zStream.next_in_index = i17 + 1;
                    inflate11.need = j7 + (((long) ((bArr13[i17] & 255) << 16)) & 16711680);
                    zStream.istate.mode = 4;
                    iProc = i4;
                    if (zStream.avail_in == 0) {
                        return iProc;
                    }
                    zStream.avail_in--;
                    zStream.total_in++;
                    Inflate inflate12 = zStream.istate;
                    long j8 = inflate12.need;
                    byte[] bArr14 = zStream.next_in;
                    int i18 = zStream.next_in_index;
                    zStream.next_in_index = i18 + 1;
                    inflate12.need = j8 + (((long) ((bArr14[i18] & 255) << 8)) & 65280);
                    zStream.istate.mode = 5;
                    if (zStream.avail_in == 0) {
                        return i4;
                    }
                    zStream.avail_in--;
                    zStream.total_in++;
                    Inflate inflate13 = zStream.istate;
                    long j9 = inflate13.need;
                    byte[] bArr15 = zStream.next_in;
                    int i19 = zStream.next_in_index;
                    zStream.next_in_index = i19 + 1;
                    inflate13.need = j9 + (((long) bArr15[i19]) & 255);
                    zStream.adler = zStream.istate.need;
                    zStream.istate.mode = 6;
                    return 2;
                case 3:
                    if (zStream.avail_in == 0) {
                        return iProc;
                    }
                    zStream.avail_in--;
                    zStream.total_in++;
                    Inflate inflate14 = zStream.istate;
                    long j10 = inflate14.need;
                    byte[] bArr16 = zStream.next_in;
                    int i110 = zStream.next_in_index;
                    zStream.next_in_index = i110 + 1;
                    inflate14.need = j10 + (((long) ((bArr16[i110] & 255) << 16)) & 16711680);
                    zStream.istate.mode = 4;
                    iProc = i4;
                    if (zStream.avail_in == 0) {
                        return iProc;
                    }
                    zStream.avail_in--;
                    zStream.total_in++;
                    Inflate inflate15 = zStream.istate;
                    long j11 = inflate15.need;
                    byte[] bArr17 = zStream.next_in;
                    int i111 = zStream.next_in_index;
                    zStream.next_in_index = i111 + 1;
                    inflate15.need = j11 + (((long) ((bArr17[i111] & 255) << 8)) & 65280);
                    zStream.istate.mode = 5;
                    if (zStream.avail_in == 0) {
                        return i4;
                    }
                    zStream.avail_in--;
                    zStream.total_in++;
                    Inflate inflate16 = zStream.istate;
                    long j12 = inflate16.need;
                    byte[] bArr18 = zStream.next_in;
                    int i112 = zStream.next_in_index;
                    zStream.next_in_index = i112 + 1;
                    inflate16.need = j12 + (((long) bArr18[i112]) & 255);
                    zStream.adler = zStream.istate.need;
                    zStream.istate.mode = 6;
                    return 2;
                case 4:
                    if (zStream.avail_in == 0) {
                        return iProc;
                    }
                    zStream.avail_in--;
                    zStream.total_in++;
                    Inflate inflate17 = zStream.istate;
                    long j13 = inflate17.need;
                    byte[] bArr19 = zStream.next_in;
                    int i113 = zStream.next_in_index;
                    zStream.next_in_index = i113 + 1;
                    inflate17.need = j13 + (((long) ((bArr19[i113] & 255) << 8)) & 65280);
                    zStream.istate.mode = 5;
                    if (zStream.avail_in == 0) {
                        return i4;
                    }
                    zStream.avail_in--;
                    zStream.total_in++;
                    Inflate inflate18 = zStream.istate;
                    long j14 = inflate18.need;
                    byte[] bArr110 = zStream.next_in;
                    int i114 = zStream.next_in_index;
                    zStream.next_in_index = i114 + 1;
                    inflate18.need = j14 + (((long) bArr110[i114]) & 255);
                    zStream.adler = zStream.istate.need;
                    zStream.istate.mode = 6;
                    return 2;
                case 5:
                    i4 = iProc;
                    if (zStream.avail_in == 0) {
                        return i4;
                    }
                    zStream.avail_in--;
                    zStream.total_in++;
                    Inflate inflate19 = zStream.istate;
                    long j15 = inflate19.need;
                    byte[] bArr111 = zStream.next_in;
                    int i115 = zStream.next_in_index;
                    zStream.next_in_index = i115 + 1;
                    inflate19.need = j15 + (((long) bArr111[i115]) & 255);
                    zStream.adler = zStream.istate.need;
                    zStream.istate.mode = 6;
                    return 2;
                case 6:
                    zStream.istate.mode = 13;
                    zStream.msg = "need dictionary";
                    zStream.istate.marker = 0;
                    return -2;
                case 7:
                    iProc = zStream.istate.blocks.proc(zStream, iProc);
                    if (iProc == -3) {
                        zStream.istate.mode = 13;
                        zStream.istate.marker = i3;
                    } else {
                        if (iProc == 0) {
                            iProc = i4;
                        }
                        if (iProc != 1) {
                            return iProc;
                        }
                        zStream.istate.blocks.reset(zStream, zStream.istate.was);
                        if (zStream.istate.nowrap != 0) {
                            zStream.istate.mode = 12;
                            i2 = i3;
                        } else {
                            zStream.istate.mode = 8;
                            iProc = i4;
                        }
                        i3 = i2;
                        iProc = i4;
                        break;
                    }
                case 8:
                    if (zStream.avail_in == 0) {
                        return iProc;
                    }
                    zStream.avail_in--;
                    zStream.total_in++;
                    Inflate inflate20 = zStream.istate;
                    byte[] bArr20 = zStream.next_in;
                    int i20 = zStream.next_in_index;
                    zStream.next_in_index = i20 + 1;
                    inflate20.need = ((long) ((bArr20[i20] & 255) << 24)) & 4278190080L;
                    zStream.istate.mode = 9;
                    iProc = i4;
                    break;
                case 9:
                    if (zStream.avail_in == 0) {
                        return iProc;
                    }
                    zStream.avail_in--;
                    zStream.total_in++;
                    Inflate inflate21 = zStream.istate;
                    long j16 = inflate21.need;
                    byte[] bArr21 = zStream.next_in;
                    int i21 = zStream.next_in_index;
                    zStream.next_in_index = i21 + 1;
                    inflate21.need = j16 + (((long) ((bArr21[i21] & 255) << 16)) & 16711680);
                    zStream.istate.mode = 10;
                    iProc = i4;
                    break;
                case 10:
                    if (zStream.avail_in == 0) {
                        return iProc;
                    }
                    zStream.avail_in--;
                    zStream.total_in++;
                    Inflate inflate22 = zStream.istate;
                    long j17 = inflate22.need;
                    byte[] bArr22 = zStream.next_in;
                    int i22 = zStream.next_in_index;
                    zStream.next_in_index = i22 + 1;
                    inflate22.need = j17 + (((long) ((bArr22[i22] & 255) << 8)) & 65280);
                    zStream.istate.mode = 11;
                    iProc = i4;
                    break;
                case 11:
                    if (zStream.avail_in == 0) {
                        return iProc;
                    }
                    zStream.avail_in--;
                    zStream.total_in++;
                    Inflate inflate23 = zStream.istate;
                    long j18 = inflate23.need;
                    byte[] bArr23 = zStream.next_in;
                    int i23 = zStream.next_in_index;
                    zStream.next_in_index = i23 + 1;
                    inflate23.need = j18 + (((long) bArr23[i23]) & 255);
                    if (((int) zStream.istate.was[0]) != ((int) zStream.istate.need)) {
                        zStream.istate.mode = 13;
                        zStream.msg = "incorrect data check";
                        zStream.istate.marker = 5;
                        i2 = 0;
                        i3 = i2;
                        iProc = i4;
                    } else {
                        zStream.istate.mode = 12;
                        return 1;
                    }
                    break;
                    break;
                case 12:
                    return 1;
                case 13:
                    return -3;
                default:
                    return -2;
            }
        }
    }

    int inflateSetDictionary(ZStream zStream, byte[] bArr, int i) {
        int i2;
        int i3;
        if (zStream == null || zStream.istate == null || zStream.istate.mode != 6) {
            return -2;
        }
        if (zStream._adler.adler32(1L, bArr, 0, i) != zStream.adler) {
            return -3;
        }
        zStream.adler = zStream._adler.adler32(0L, null, 0, 0);
        if (i >= (1 << zStream.istate.wbits)) {
            i2 = (1 << zStream.istate.wbits) - 1;
            i3 = i - i2;
        } else {
            i2 = i;
            i3 = 0;
        }
        zStream.istate.blocks.set_dictionary(bArr, i3, i2);
        zStream.istate.mode = 7;
        return 0;
    }

    int inflateSync(ZStream zStream) {
        if (zStream == null || zStream.istate == null) {
            return -2;
        }
        if (zStream.istate.mode != 13) {
            zStream.istate.mode = 13;
            zStream.istate.marker = 0;
        }
        int i = zStream.avail_in;
        if (i == 0) {
            return -5;
        }
        int i2 = zStream.next_in_index;
        int i3 = zStream.istate.marker;
        while (i != 0 && i3 < 4) {
            if (zStream.next_in[i2] == mark[i3]) {
                i3++;
            } else {
                i3 = zStream.next_in[i2] != 0 ? 0 : 4 - i3;
            }
            i2++;
            i--;
        }
        zStream.total_in += (long) (i2 - zStream.next_in_index);
        zStream.next_in_index = i2;
        zStream.avail_in = i;
        zStream.istate.marker = i3;
        if (i3 != 4) {
            return -3;
        }
        long j = zStream.total_in;
        long j2 = zStream.total_out;
        inflateReset(zStream);
        zStream.total_in = j;
        zStream.total_out = j2;
        zStream.istate.mode = 7;
        return 0;
    }

    int inflateSyncPoint(ZStream zStream) {
        if (zStream == null || zStream.istate == null || zStream.istate.blocks == null) {
            return -2;
        }
        return zStream.istate.blocks.sync_point();
    }
}
