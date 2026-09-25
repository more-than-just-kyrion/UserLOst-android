package com.iiordanov.jcraft.jzlib;

import com.google.common.base.Ascii;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.spongycastle.crypto.tls.CipherSuite;

/* JADX INFO: loaded from: classes2.dex */
final class Tree {
    private static final int BL_CODES = 19;
    static final int Buf_size = 16;
    static final int DIST_CODE_LEN = 512;
    private static final int D_CODES = 30;
    static final int END_BLOCK = 256;
    private static final int HEAP_SIZE = 573;
    private static final int LENGTH_CODES = 29;
    private static final int LITERALS = 256;
    private static final int L_CODES = 286;
    private static final int MAX_BITS = 15;
    static final int MAX_BL_BITS = 7;
    static final int REPZ_11_138 = 18;
    static final int REPZ_3_10 = 17;
    static final int REP_3_6 = 16;
    short[] dyn_tree;
    int max_code;
    StaticTree stat_desc;
    static final int[] extra_lbits = {0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 0};
    static final int[] extra_dbits = {0, 0, 0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13};
    static final int[] extra_blbits = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 7};
    static final byte[] bl_order = {16, 17, Ascii.DC2, 0, 8, 7, 9, 6, 10, 5, 11, 4, 12, 3, 13, 2, Ascii.SO, 1, Ascii.SI};
    static final byte[] _dist_code = {0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, 0, 0, 16, 17, Ascii.DC2, Ascii.DC2, 19, 19, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS};
    static final byte[] _length_code = {0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, 16, 16, 16, 16, 16, 16, 16, 16, 17, 17, 17, 17, 17, 17, 17, 17, Ascii.DC2, Ascii.DC2, Ascii.DC2, Ascii.DC2, Ascii.DC2, Ascii.DC2, Ascii.DC2, Ascii.DC2, 19, 19, 19, 19, 19, 19, 19, 19, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.FS};
    static final int[] base_length = {0, 1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 14, 16, 20, 24, 28, 32, 40, 48, 56, 64, 80, 96, 112, 128, CipherSuite.TLS_DH_RSA_WITH_AES_128_GCM_SHA256, 192, 224, 0};
    static final int[] base_dist = {0, 1, 2, 3, 4, 6, 8, 12, 16, 24, 32, 48, 64, 96, 128, 192, 256, 384, 512, 768, 1024, 1536, 2048, 3072, 4096, 6144, 8192, 12288, 16384, CpioConstants.C_ISBLK};

    static int bi_reverse(int i, int i2) {
        int i3 = 0;
        do {
            int i4 = i3 | (i & 1);
            i >>>= 1;
            i3 = i4 << 1;
            i2--;
        } while (i2 > 0);
        return i3 >>> 1;
    }

    Tree() {
    }

    static int d_code(int i) {
        return i < 256 ? _dist_code[i] : _dist_code[(i >>> 7) + 256];
    }

    /* JADX WARN: Multi-variable type inference failed */
    void gen_bitlen(Deflate deflate) {
        short[] sArr = this.dyn_tree;
        short[] sArr2 = this.stat_desc.static_tree;
        int[] iArr = this.stat_desc.extra_bits;
        int i = this.stat_desc.extra_base;
        int i2 = this.stat_desc.max_length;
        for (int i3 = 0; i3 <= 15; i3++) {
            deflate.bl_count[i3] = 0;
        }
        sArr[(deflate.heap[deflate.heap_max] * 2) + 1] = 0;
        int i4 = deflate.heap_max + 1;
        int i5 = 0;
        while (i4 < HEAP_SIZE) {
            int i6 = deflate.heap[i4];
            int i7 = i6 * 2;
            int i8 = i7 + 1;
            int i9 = sArr[(sArr[i8] * 2) + 1] + 1;
            if (i9 > i2) {
                i5++;
                i9 = i2;
            }
            sArr[i8] = (short) i9;
            if (i6 <= this.max_code) {
                short[] sArr3 = deflate.bl_count;
                sArr3[i9] = (short) (sArr3[i9] + 1);
                int i10 = i6 >= i ? iArr[i6 - i] : 0;
                short s = sArr[i7];
                deflate.opt_len += (i9 + i10) * s;
                if (sArr2 != null) {
                    deflate.static_len += s * (sArr2[i8] + i10);
                }
            }
            i4++;
        }
        if (i5 == 0) {
            return;
        }
        do {
            int i11 = i2 - 1;
            while (deflate.bl_count[i11] == 0) {
                i11--;
            }
            short[] sArr4 = deflate.bl_count;
            sArr4[i11] = (short) (sArr4[i11] - 1);
            short[] sArr5 = deflate.bl_count;
            int i12 = i11 + 1;
            sArr5[i12] = (short) (sArr5[i12] + 2);
            short[] sArr6 = deflate.bl_count;
            sArr6[i2] = (short) (sArr6[i2] - 1);
            i5 -= 2;
        } while (i5 > 0);
        while (i2 != 0) {
            short s2 = deflate.bl_count[i2];
            while (s2 != 0) {
                i4--;
                int i13 = deflate.heap[i4];
                if (i13 <= this.max_code) {
                    int i14 = i13 * 2;
                    int i15 = i14 + 1;
                    if (sArr[i15] != i2) {
                        deflate.opt_len = (int) (((long) deflate.opt_len) + ((((long) i2) - ((long) sArr[i15])) * ((long) sArr[i14])));
                        sArr[i15] = (short) i2;
                    }
                    s2--;
                }
            }
            i2--;
        }
    }

    void build_tree(Deflate deflate) {
        int i;
        int i2;
        short[] sArr = this.dyn_tree;
        short[] sArr2 = this.stat_desc.static_tree;
        int i3 = this.stat_desc.elems;
        deflate.heap_len = 0;
        deflate.heap_max = HEAP_SIZE;
        int i4 = -1;
        for (int i5 = 0; i5 < i3; i5++) {
            int i6 = i5 * 2;
            if (sArr[i6] != 0) {
                int[] iArr = deflate.heap;
                int i7 = deflate.heap_len + 1;
                deflate.heap_len = i7;
                iArr[i7] = i5;
                deflate.depth[i5] = 0;
                i4 = i5;
            } else {
                sArr[i6 + 1] = 0;
            }
        }
        while (deflate.heap_len < 2) {
            int[] iArr2 = deflate.heap;
            int i8 = deflate.heap_len + 1;
            deflate.heap_len = i8;
            if (i4 < 2) {
                i2 = i4 + 1;
                i = i2;
            } else {
                i = i4;
                i2 = 0;
            }
            iArr2[i8] = i2;
            int i9 = i2 * 2;
            sArr[i9] = 1;
            deflate.depth[i2] = 0;
            deflate.opt_len--;
            if (sArr2 != null) {
                deflate.static_len -= sArr2[i9 + 1];
            }
            i4 = i;
        }
        this.max_code = i4;
        for (int i10 = deflate.heap_len / 2; i10 >= 1; i10--) {
            deflate.pqdownheap(sArr, i10);
        }
        while (true) {
            int i11 = deflate.heap[1];
            int[] iArr3 = deflate.heap;
            int[] iArr4 = deflate.heap;
            int i12 = deflate.heap_len;
            deflate.heap_len = i12 - 1;
            iArr3[1] = iArr4[i12];
            deflate.pqdownheap(sArr, 1);
            int i13 = deflate.heap[1];
            int[] iArr5 = deflate.heap;
            int i14 = deflate.heap_max - 1;
            deflate.heap_max = i14;
            iArr5[i14] = i11;
            int[] iArr6 = deflate.heap;
            int i15 = deflate.heap_max - 1;
            deflate.heap_max = i15;
            iArr6[i15] = i13;
            int i16 = i11 * 2;
            int i17 = i13 * 2;
            sArr[i3 * 2] = (short) (sArr[i16] + sArr[i17]);
            deflate.depth[i3] = (byte) (Math.max((int) deflate.depth[i11], (int) deflate.depth[i13]) + 1);
            short s = (short) i3;
            sArr[i17 + 1] = s;
            sArr[i16 + 1] = s;
            int i18 = i3 + 1;
            deflate.heap[1] = i3;
            deflate.pqdownheap(sArr, 1);
            if (deflate.heap_len < 2) {
                int[] iArr7 = deflate.heap;
                int i19 = deflate.heap_max - 1;
                deflate.heap_max = i19;
                iArr7[i19] = deflate.heap[1];
                gen_bitlen(deflate);
                gen_codes(sArr, i4, deflate.bl_count);
                return;
            }
            i3 = i18;
        }
    }

    static void gen_codes(short[] sArr, int i, short[] sArr2) {
        short[] sArr3 = new short[16];
        short s = 0;
        for (int i2 = 1; i2 <= 15; i2++) {
            s = (short) ((s + sArr2[i2 - 1]) << 1);
            sArr3[i2] = s;
        }
        for (int i3 = 0; i3 <= i; i3++) {
            int i4 = i3 * 2;
            short s2 = sArr[i4 + 1];
            if (s2 != 0) {
                short s3 = sArr3[s2];
                sArr3[s2] = (short) (s3 + 1);
                sArr[i4] = (short) bi_reverse(s3, s2);
            }
        }
    }
}
