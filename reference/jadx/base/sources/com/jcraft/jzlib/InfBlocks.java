package com.jcraft.jzlib;

import org.apache.commons.compress.archivers.zip.UnixStat;

/* JADX INFO: loaded from: classes2.dex */
final class InfBlocks {
    private static final int BAD = 9;
    private static final int BTREE = 4;
    private static final int CODES = 6;
    private static final int DONE = 8;
    private static final int DRY = 7;
    private static final int DTREE = 5;
    private static final int LENS = 1;
    private static final int MANY = 1440;
    private static final int STORED = 2;
    private static final int TABLE = 3;
    private static final int TYPE = 0;
    private static final int Z_BUF_ERROR = -5;
    private static final int Z_DATA_ERROR = -3;
    private static final int Z_ERRNO = -1;
    private static final int Z_MEM_ERROR = -4;
    private static final int Z_NEED_DICT = 2;
    private static final int Z_OK = 0;
    private static final int Z_STREAM_END = 1;
    private static final int Z_STREAM_ERROR = -2;
    private static final int Z_VERSION_ERROR = -6;
    int bitb;
    int bitk;
    int[] blens;
    private boolean check;
    private final InfCodes codes;
    int end;
    int index;
    int last;
    int left;
    int mode;
    int read;
    int table;
    byte[] window;
    int write;
    private final ZStream z;
    private static final int[] inflate_mask = {0, 1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, UnixStat.PERM_MASK, 8191, 16383, 32767, 65535};
    static final int[] border = {16, 17, 18, 0, 8, 7, 9, 6, 10, 5, 11, 4, 12, 3, 13, 2, 14, 1, 15};
    int[] bb = new int[1];
    int[] tb = new int[1];
    int[] bl = new int[1];
    int[] bd = new int[1];
    int[][] tl = new int[1][];
    int[][] td = new int[1][];
    int[] tli = new int[1];
    int[] tdi = new int[1];
    private final InfTree inftree = new InfTree();
    int[] hufts = new int[4320];

    InfBlocks(ZStream zStream, int i) {
        this.z = zStream;
        this.codes = new InfCodes(zStream, this);
        this.window = new byte[i];
        this.end = i;
        this.check = zStream.istate.wrap != 0;
        this.mode = 0;
        reset();
    }

    void reset() {
        if (this.mode == 6) {
            this.codes.free(this.z);
        }
        this.mode = 0;
        this.bitk = 0;
        this.bitb = 0;
        this.write = 0;
        this.read = 0;
        if (this.check) {
            this.z.adler.reset();
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0357 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:101:0x0359 A[LOOP:9: B:98:0x0353->B:101:0x0359, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:106:0x03a8  */
    /* JADX WARN: Code duplicated, block: B:210:0x00fe A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:211:0x0168 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:212:0x01e4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:213:0x0251 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:214:0x0281 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:215:0x02f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:216:0x036c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:217:0x03cc A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:242:0x0148 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:243:0x01a6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x00e7 A[ADDED_TO_REGION, LOOP:5: B:36:0x00e7->B:38:0x00eb, LOOP_START, PHI: r1 r2 r3 r4 r5
  0x00e7: PHI (r1v83 int) = (r1v77 int), (r1v90 int) binds: [B:35:0x00e5, B:38:0x00eb] A[DONT_GENERATE, DONT_INLINE]
  0x00e7: PHI (r2v22 int) = (r2v21 int), (r2v23 int) binds: [B:35:0x00e5, B:38:0x00eb] A[DONT_GENERATE, DONT_INLINE]
  0x00e7: PHI (r3v38 int) = (r3v35 int), (r3v41 int) binds: [B:35:0x00e5, B:38:0x00eb] A[DONT_GENERATE, DONT_INLINE]
  0x00e7: PHI (r4v40 int) = (r4v39 int), (r4v45 int) binds: [B:35:0x00e5, B:38:0x00eb] A[DONT_GENERATE, DONT_INLINE]
  0x00e7: PHI (r5v33 int) = (r5v29 int), (r5v35 int) binds: [B:35:0x00e5, B:38:0x00eb] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:37:0x00e9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:38:0x00eb A[LOOP:5: B:36:0x00e7->B:38:0x00eb, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:44:0x013b A[LOOP:6: B:42:0x0135->B:44:0x013b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:48:0x016a  */
    /* JADX WARN: Code duplicated, block: B:51:0x0191  */
    /* JADX WARN: Code duplicated, block: B:58:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:61:0x020f  */
    /* JADX WARN: Code duplicated, block: B:66:0x0256  */
    /* JADX WARN: Code duplicated, block: B:68:0x026f  */
    /* JADX WARN: Code duplicated, block: B:69:0x0273  */
    /* JADX WARN: Code duplicated, block: B:72:0x027b  */
    /* JADX WARN: Code duplicated, block: B:82:0x02d8  */
    /* JADX WARN: Code duplicated, block: B:84:0x02e0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:85:0x02e2 A[LOOP:8: B:83:0x02de->B:85:0x02e2, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:90:0x0336  */
    /* JADX WARN: Code duplicated, block: B:91:0x0345  */
    /* JADX WARN: Code duplicated, block: B:93:0x0349  */
    /* JADX WARN: Code duplicated, block: B:94:0x034b  */
    /* JADX WARN: Code duplicated, block: B:96:0x034f  */
    /* JADX WARN: Code duplicated, block: B:97:0x0352  */
    int proc(int i) {
        int i2;
        int i3;
        int iProc;
        int i4;
        int i5;
        int i6;
        int iInflate_trees_dynamic;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int iInflate_trees_bits;
        int i16;
        int i17 = this.z.next_in_index;
        int i18 = this.z.avail_in;
        int i19 = this.bitb;
        int i20 = this.bitk;
        int i21 = this.write;
        int i22 = this.read;
        int i23 = i21 < i22 ? (i22 - i21) - 1 : this.end - i21;
        int i24 = i21;
        int i25 = i20;
        int i26 = i19;
        int i27 = i18;
        int i28 = i17;
        int i29 = i;
        while (true) {
            char c = 0;
            switch (this.mode) {
                case 0:
                    for (int i30 = 3; i25 < i30; i30 = 3) {
                        if (i27 == 0) {
                            this.bitb = i26;
                            this.bitk = i25;
                            this.z.avail_in = i27;
                            this.z.total_in += (long) (i28 - this.z.next_in_index);
                            this.z.next_in_index = i28;
                            this.write = i24;
                            return inflate_flush(i29);
                        }
                        i27--;
                        i26 |= (this.z.next_in[i28] & 255) << i25;
                        i25 += 8;
                        i28++;
                        i29 = 0;
                    }
                    this.last = i26 & 1;
                    int i31 = (i26 & 7) >>> 1;
                    if (i31 == 0) {
                        int i32 = i25 - 3;
                        int i33 = i32 & 7;
                        i26 = (i26 >>> 3) >>> i33;
                        i25 = i32 - i33;
                        this.mode = 1;
                    } else if (i31 == 1) {
                        InfTree.inflate_trees_fixed(this.bl, this.bd, this.tl, this.td, this.z);
                        this.codes.init(this.bl[0], this.bd[0], this.tl[0], 0, this.td[0], 0);
                        i26 >>>= 3;
                        i25 -= 3;
                        this.mode = 6;
                    } else if (i31 == 2) {
                        i26 >>>= 3;
                        i25 -= 3;
                        this.mode = 3;
                    } else if (i31 == 3) {
                        this.mode = 9;
                        this.z.msg = "invalid block type";
                        this.bitb = i26 >>> 3;
                        this.bitk = i25 - 3;
                        this.z.avail_in = i27;
                        this.z.total_in += (long) (i28 - this.z.next_in_index);
                        this.z.next_in_index = i28;
                        this.write = i24;
                        return inflate_flush(-3);
                    }
                    break;
                case 1:
                    while (i25 < 32) {
                        if (i27 == 0) {
                            this.bitb = i26;
                            this.bitk = i25;
                            this.z.avail_in = i27;
                            this.z.total_in += (long) (i28 - this.z.next_in_index);
                            this.z.next_in_index = i28;
                            this.write = i24;
                            return inflate_flush(i29);
                        }
                        i27--;
                        i26 |= (this.z.next_in[i28] & 255) << i25;
                        i25 += 8;
                        i28++;
                        i29 = 0;
                    }
                    int i34 = 65535 & i26;
                    if ((((~i26) >>> 16) & 65535) != i34) {
                        this.mode = 9;
                        this.z.msg = "invalid stored block lengths";
                        this.bitb = i26;
                        this.bitk = i25;
                        this.z.avail_in = i27;
                        this.z.total_in += (long) (i28 - this.z.next_in_index);
                        this.z.next_in_index = i28;
                        this.write = i24;
                        return inflate_flush(-3);
                    }
                    this.left = i34;
                    if (i34 != 0) {
                        i2 = 2;
                    } else {
                        i2 = this.last != 0 ? 7 : 0;
                    }
                    this.mode = i2;
                    i26 = 0;
                    i25 = 0;
                    break;
                    break;
                case 2:
                    if (i27 == 0) {
                        this.bitb = i26;
                        this.bitk = i25;
                        this.z.avail_in = i27;
                        this.z.total_in += (long) (i28 - this.z.next_in_index);
                        this.z.next_in_index = i28;
                        this.write = i24;
                        return inflate_flush(i29);
                    }
                    if (i23 == 0) {
                        int i35 = this.end;
                        if (i24 == i35 && (i3 = this.read) != 0) {
                            i23 = i3 > 0 ? i3 - 1 : i35;
                            i24 = 0;
                        }
                        if (i23 == 0) {
                            this.write = i24;
                            int iInflate_flush = inflate_flush(i29);
                            i24 = this.write;
                            int i36 = this.read;
                            int i37 = i24 < i36 ? (i36 - i24) - 1 : this.end - i24;
                            int i38 = this.end;
                            if (i24 != i38 || i36 == 0) {
                                i23 = i37;
                            } else {
                                if (i36 > 0) {
                                    i38 = i36 - 1;
                                }
                                i23 = i38;
                                i24 = 0;
                            }
                            if (i23 == 0) {
                                this.bitb = i26;
                                this.bitk = i25;
                                this.z.avail_in = i27;
                                this.z.total_in += (long) (i28 - this.z.next_in_index);
                                this.z.next_in_index = i28;
                                this.write = i24;
                                return inflate_flush(iInflate_flush);
                            }
                        }
                    }
                    int i39 = this.left;
                    if (i39 > i27) {
                        i39 = i27;
                    }
                    if (i39 > i23) {
                        i39 = i23;
                    }
                    System.arraycopy(this.z.next_in, i28, this.window, i24, i39);
                    i28 += i39;
                    i27 -= i39;
                    i24 += i39;
                    i23 -= i39;
                    int i40 = this.left - i39;
                    this.left = i40;
                    if (i40 == 0) {
                        this.mode = this.last != 0 ? 7 : 0;
                    }
                    i29 = 0;
                    break;
                    break;
                case 3:
                    while (i25 < 14) {
                        if (i27 == 0) {
                            this.bitb = i26;
                            this.bitk = i25;
                            this.z.avail_in = i27;
                            this.z.total_in += (long) (i28 - this.z.next_in_index);
                            this.z.next_in_index = i28;
                            this.write = i24;
                            return inflate_flush(i29);
                        }
                        i27--;
                        i26 |= (this.z.next_in[i28] & 255) << i25;
                        i25 += 8;
                        i28++;
                        i29 = 0;
                    }
                    int i41 = i26 & 16383;
                    this.table = i41;
                    int i42 = i26 & 31;
                    if (i42 > 29 || (i16 = (i41 >> 5) & 31) > 29) {
                        this.mode = 9;
                        this.z.msg = "too many length or distance symbols";
                        this.bitb = i26;
                        this.bitk = i25;
                        this.z.avail_in = i27;
                        this.z.total_in += (long) (i28 - this.z.next_in_index);
                        this.z.next_in_index = i28;
                        this.write = i24;
                        return inflate_flush(-3);
                    }
                    int i43 = i42 + 258 + i16;
                    int[] iArr = this.blens;
                    if (iArr == null || iArr.length < i43) {
                        this.blens = new int[i43];
                    } else {
                        for (int i44 = 0; i44 < i43; i44++) {
                            this.blens[i44] = 0;
                        }
                    }
                    i26 >>>= 14;
                    i25 -= 14;
                    this.index = 0;
                    this.mode = 4;
                    for (int i45 = 4; this.index < (this.table >>> 10) + i45; i45 = 4) {
                        while (i25 < 3) {
                            if (i27 != 0) {
                                this.bitb = i26;
                                this.bitk = i25;
                                this.z.avail_in = i27;
                                this.z.total_in += (long) (i28 - this.z.next_in_index);
                                this.z.next_in_index = i28;
                                this.write = i24;
                                return inflate_flush(i29);
                            }
                            i27--;
                            i26 |= (this.z.next_in[i28] & 255) << i25;
                            i25 += 8;
                            i28++;
                            i29 = 0;
                        }
                        int[] iArr2 = this.blens;
                        int[] iArr3 = border;
                        int i46 = this.index;
                        this.index = i46 + 1;
                        iArr2[iArr3[i46]] = i26 & 7;
                        i26 >>>= 3;
                        i25 -= 3;
                    }
                    while (true) {
                        i15 = this.index;
                        if (i15 < 19) {
                            int[] iArr4 = this.blens;
                            int[] iArr5 = border;
                            this.index = i15 + 1;
                            iArr4[iArr5[i15]] = 0;
                        } else {
                            int[] iArr6 = this.bb;
                            iArr6[0] = 7;
                            iInflate_trees_bits = this.inftree.inflate_trees_bits(this.blens, iArr6, this.tb, this.hufts, this.z);
                            if (iInflate_trees_bits != 0) {
                                if (iInflate_trees_bits == -3) {
                                    this.blens = null;
                                    this.mode = 9;
                                }
                                this.bitb = i26;
                                this.bitk = i25;
                                this.z.avail_in = i27;
                                this.z.total_in += (long) (i28 - this.z.next_in_index);
                                this.z.next_in_index = i28;
                                this.write = i24;
                                return inflate_flush(iInflate_trees_bits);
                            }
                            this.index = 0;
                            this.mode = 5;
                            while (true) {
                                i6 = this.table;
                                if (this.index < (i6 & 31) + 258 + ((i6 >> 5) & 31)) {
                                    i7 = this.bb[0];
                                    while (i25 < i7) {
                                        if (i27 == 0) {
                                            this.bitb = i26;
                                            this.bitk = i25;
                                            this.z.avail_in = i27;
                                            this.z.total_in += (long) (i28 - this.z.next_in_index);
                                            this.z.next_in_index = i28;
                                            this.write = i24;
                                            return inflate_flush(i29);
                                        }
                                        i27--;
                                        i26 |= (this.z.next_in[i28] & 255) << i25;
                                        i25 += 8;
                                        i28++;
                                        i29 = 0;
                                    }
                                    int i47 = this.tb[0];
                                    int[] iArr7 = this.hufts;
                                    int[] iArr8 = inflate_mask;
                                    i8 = iArr7[(((iArr8[i7] & i26) + i47) * 3) + 1];
                                    i9 = iArr7[((i47 + (iArr8[i8] & i26)) * 3) + 2];
                                    if (i9 < 16) {
                                        i26 >>>= i8;
                                        i25 -= i8;
                                        int[] iArr9 = this.blens;
                                        int i48 = this.index;
                                        this.index = i48 + 1;
                                        iArr9[i48] = i9;
                                    } else {
                                        if (i9 == 18) {
                                            i10 = 7;
                                        } else {
                                            i10 = i9 - 14;
                                        }
                                        if (i9 == 18) {
                                            i11 = 11;
                                        } else {
                                            i11 = 3;
                                        }
                                        while (i25 < i8 + i10) {
                                            if (i27 == 0) {
                                                this.bitb = i26;
                                                this.bitk = i25;
                                                this.z.avail_in = i27;
                                                this.z.total_in += (long) (i28 - this.z.next_in_index);
                                                this.z.next_in_index = i28;
                                                this.write = i24;
                                                return inflate_flush(i29);
                                            }
                                            i27--;
                                            i26 |= (this.z.next_in[i28] & 255) << i25;
                                            i25 += 8;
                                            i28++;
                                            i29 = 0;
                                        }
                                        int i49 = i26 >>> i8;
                                        i12 = i11 + (inflate_mask[i10] & i49);
                                        i26 = i49 >>> i10;
                                        i25 = (i25 - i8) - i10;
                                        i13 = this.index;
                                        i14 = this.table;
                                        if (i13 + i12 <= (i14 & 31) + 258 + ((i14 >> 5) & 31) || (i9 == 16 && i13 < 1)) {
                                            this.blens = null;
                                            this.mode = 9;
                                            this.z.msg = "invalid bit length repeat";
                                            this.bitb = i26;
                                            this.bitk = i25;
                                            this.z.avail_in = i27;
                                            this.z.total_in += (long) (i28 - this.z.next_in_index);
                                            this.z.next_in_index = i28;
                                            this.write = i24;
                                            return inflate_flush(-3);
                                        }
                                        int i50 = i9 == 16 ? this.blens[i13 - 1] : 0;
                                        while (true) {
                                            int i51 = i13 + 1;
                                            this.blens[i13] = i50;
                                            i12--;
                                            if (i12 == 0) {
                                                this.index = i51;
                                            } else {
                                                i13 = i51;
                                            }
                                        }
                                    }
                                    c = 0;
                                } else {
                                    this.tb[c] = -1;
                                    int[] iArr10 = this.bl;
                                    iArr10[c] = 9;
                                    int[] iArr11 = this.bd;
                                    iArr11[c] = 6;
                                    iInflate_trees_dynamic = this.inftree.inflate_trees_dynamic((i6 & 31) + 257, ((i6 >> 5) & 31) + 1, this.blens, iArr10, iArr11, this.tli, this.tdi, this.hufts, this.z);
                                    if (iInflate_trees_dynamic != 0) {
                                        if (iInflate_trees_dynamic == -3) {
                                            this.blens = null;
                                            this.mode = 9;
                                        }
                                        this.bitb = i26;
                                        this.bitk = i25;
                                        this.z.avail_in = i27;
                                        this.z.total_in += (long) (i28 - this.z.next_in_index);
                                        this.z.next_in_index = i28;
                                        this.write = i24;
                                        return inflate_flush(iInflate_trees_dynamic);
                                    }
                                    InfCodes infCodes = this.codes;
                                    int i52 = this.bl[0];
                                    int i53 = this.bd[0];
                                    int[] iArr12 = this.hufts;
                                    infCodes.init(i52, i53, iArr12, this.tli[0], iArr12, this.tdi[0]);
                                    this.mode = 6;
                                }
                            }
                            this.bitb = i26;
                            this.bitk = i25;
                            this.z.avail_in = i27;
                            this.z.total_in += (long) (i28 - this.z.next_in_index);
                            this.z.next_in_index = i28;
                            this.write = i24;
                            iProc = this.codes.proc(i29);
                            if (iProc != 1) {
                                return inflate_flush(iProc);
                            }
                            this.codes.free(this.z);
                            i28 = this.z.next_in_index;
                            i27 = this.z.avail_in;
                            i26 = this.bitb;
                            i25 = this.bitk;
                            i24 = this.write;
                            i4 = this.read;
                            if (i24 < i4) {
                                i5 = (i4 - i24) - 1;
                            } else {
                                i5 = this.end - i24;
                            }
                            i23 = i5;
                            if (this.last == 0) {
                                this.mode = 0;
                                i29 = 0;
                            } else {
                                this.mode = 7;
                                i29 = 0;
                            }
                        }
                        break;
                    }
                    break;
                case 4:
                    while (this.index < (this.table >>> 10) + i45) {
                        while (i25 < 3) {
                            if (i27 != 0) {
                                this.bitb = i26;
                                this.bitk = i25;
                                this.z.avail_in = i27;
                                this.z.total_in += (long) (i28 - this.z.next_in_index);
                                this.z.next_in_index = i28;
                                this.write = i24;
                                return inflate_flush(i29);
                            }
                            i27--;
                            i26 |= (this.z.next_in[i28] & 255) << i25;
                            i25 += 8;
                            i28++;
                            i29 = 0;
                        }
                        int[] iArr13 = this.blens;
                        int[] iArr14 = border;
                        int i410 = this.index;
                        this.index = i410 + 1;
                        iArr13[iArr14[i410]] = i26 & 7;
                        i26 >>>= 3;
                        i25 -= 3;
                    }
                    while (true) {
                        i15 = this.index;
                        if (i15 < 19) {
                            int[] iArr15 = this.blens;
                            int[] iArr16 = border;
                            this.index = i15 + 1;
                            iArr15[iArr16[i15]] = 0;
                        } else {
                            int[] iArr17 = this.bb;
                            iArr17[0] = 7;
                            iInflate_trees_bits = this.inftree.inflate_trees_bits(this.blens, iArr17, this.tb, this.hufts, this.z);
                            if (iInflate_trees_bits != 0) {
                                if (iInflate_trees_bits == -3) {
                                    this.blens = null;
                                    this.mode = 9;
                                }
                                this.bitb = i26;
                                this.bitk = i25;
                                this.z.avail_in = i27;
                                this.z.total_in += (long) (i28 - this.z.next_in_index);
                                this.z.next_in_index = i28;
                                this.write = i24;
                                return inflate_flush(iInflate_trees_bits);
                            }
                            this.index = 0;
                            this.mode = 5;
                            while (true) {
                                i6 = this.table;
                                if (this.index < (i6 & 31) + 258 + ((i6 >> 5) & 31)) {
                                    i7 = this.bb[0];
                                    while (i25 < i7) {
                                        if (i27 == 0) {
                                            this.bitb = i26;
                                            this.bitk = i25;
                                            this.z.avail_in = i27;
                                            this.z.total_in += (long) (i28 - this.z.next_in_index);
                                            this.z.next_in_index = i28;
                                            this.write = i24;
                                            return inflate_flush(i29);
                                        }
                                        i27--;
                                        i26 |= (this.z.next_in[i28] & 255) << i25;
                                        i25 += 8;
                                        i28++;
                                        i29 = 0;
                                    }
                                    int i411 = this.tb[0];
                                    int[] iArr18 = this.hufts;
                                    int[] iArr19 = inflate_mask;
                                    i8 = iArr18[(((iArr19[i7] & i26) + i411) * 3) + 1];
                                    i9 = iArr18[((i411 + (iArr19[i8] & i26)) * 3) + 2];
                                    if (i9 < 16) {
                                        i26 >>>= i8;
                                        i25 -= i8;
                                        int[] iArr20 = this.blens;
                                        int i412 = this.index;
                                        this.index = i412 + 1;
                                        iArr20[i412] = i9;
                                    } else {
                                        if (i9 == 18) {
                                            i10 = 7;
                                        } else {
                                            i10 = i9 - 14;
                                        }
                                        if (i9 == 18) {
                                            i11 = 11;
                                        } else {
                                            i11 = 3;
                                        }
                                        while (i25 < i8 + i10) {
                                            if (i27 == 0) {
                                                this.bitb = i26;
                                                this.bitk = i25;
                                                this.z.avail_in = i27;
                                                this.z.total_in += (long) (i28 - this.z.next_in_index);
                                                this.z.next_in_index = i28;
                                                this.write = i24;
                                                return inflate_flush(i29);
                                            }
                                            i27--;
                                            i26 |= (this.z.next_in[i28] & 255) << i25;
                                            i25 += 8;
                                            i28++;
                                            i29 = 0;
                                        }
                                        int i413 = i26 >>> i8;
                                        i12 = i11 + (inflate_mask[i10] & i413);
                                        i26 = i413 >>> i10;
                                        i25 = (i25 - i8) - i10;
                                        i13 = this.index;
                                        i14 = this.table;
                                        if (i13 + i12 <= (i14 & 31) + 258 + ((i14 >> 5) & 31)) {
                                        }
                                        this.blens = null;
                                        this.mode = 9;
                                        this.z.msg = "invalid bit length repeat";
                                        this.bitb = i26;
                                        this.bitk = i25;
                                        this.z.avail_in = i27;
                                        this.z.total_in += (long) (i28 - this.z.next_in_index);
                                        this.z.next_in_index = i28;
                                        this.write = i24;
                                        return inflate_flush(-3);
                                    }
                                    c = 0;
                                } else {
                                    this.tb[c] = -1;
                                    int[] iArr110 = this.bl;
                                    iArr110[c] = 9;
                                    int[] iArr111 = this.bd;
                                    iArr111[c] = 6;
                                    iInflate_trees_dynamic = this.inftree.inflate_trees_dynamic((i6 & 31) + 257, ((i6 >> 5) & 31) + 1, this.blens, iArr110, iArr111, this.tli, this.tdi, this.hufts, this.z);
                                    if (iInflate_trees_dynamic != 0) {
                                        if (iInflate_trees_dynamic == -3) {
                                            this.blens = null;
                                            this.mode = 9;
                                        }
                                        this.bitb = i26;
                                        this.bitk = i25;
                                        this.z.avail_in = i27;
                                        this.z.total_in += (long) (i28 - this.z.next_in_index);
                                        this.z.next_in_index = i28;
                                        this.write = i24;
                                        return inflate_flush(iInflate_trees_dynamic);
                                    }
                                    InfCodes infCodes2 = this.codes;
                                    int i54 = this.bl[0];
                                    int i55 = this.bd[0];
                                    int[] iArr112 = this.hufts;
                                    infCodes2.init(i54, i55, iArr112, this.tli[0], iArr112, this.tdi[0]);
                                    this.mode = 6;
                                }
                            }
                            this.bitb = i26;
                            this.bitk = i25;
                            this.z.avail_in = i27;
                            this.z.total_in += (long) (i28 - this.z.next_in_index);
                            this.z.next_in_index = i28;
                            this.write = i24;
                            iProc = this.codes.proc(i29);
                            if (iProc != 1) {
                                return inflate_flush(iProc);
                            }
                            this.codes.free(this.z);
                            i28 = this.z.next_in_index;
                            i27 = this.z.avail_in;
                            i26 = this.bitb;
                            i25 = this.bitk;
                            i24 = this.write;
                            i4 = this.read;
                            if (i24 < i4) {
                                i5 = (i4 - i24) - 1;
                            } else {
                                i5 = this.end - i24;
                            }
                            i23 = i5;
                            if (this.last == 0) {
                                this.mode = 0;
                                i29 = 0;
                            } else {
                                this.mode = 7;
                                i29 = 0;
                            }
                        }
                        break;
                    }
                    break;
                case 5:
                    while (true) {
                        i6 = this.table;
                        if (this.index < (i6 & 31) + 258 + ((i6 >> 5) & 31)) {
                            i7 = this.bb[0];
                            while (i25 < i7) {
                                if (i27 == 0) {
                                    this.bitb = i26;
                                    this.bitk = i25;
                                    this.z.avail_in = i27;
                                    this.z.total_in += (long) (i28 - this.z.next_in_index);
                                    this.z.next_in_index = i28;
                                    this.write = i24;
                                    return inflate_flush(i29);
                                }
                                i27--;
                                i26 |= (this.z.next_in[i28] & 255) << i25;
                                i25 += 8;
                                i28++;
                                i29 = 0;
                            }
                            int i414 = this.tb[0];
                            int[] iArr113 = this.hufts;
                            int[] iArr114 = inflate_mask;
                            i8 = iArr113[(((iArr114[i7] & i26) + i414) * 3) + 1];
                            i9 = iArr113[((i414 + (iArr114[i8] & i26)) * 3) + 2];
                            if (i9 < 16) {
                                i26 >>>= i8;
                                i25 -= i8;
                                int[] iArr21 = this.blens;
                                int i415 = this.index;
                                this.index = i415 + 1;
                                iArr21[i415] = i9;
                            } else {
                                if (i9 == 18) {
                                    i10 = 7;
                                } else {
                                    i10 = i9 - 14;
                                }
                                if (i9 == 18) {
                                    i11 = 11;
                                } else {
                                    i11 = 3;
                                }
                                while (i25 < i8 + i10) {
                                    if (i27 == 0) {
                                        this.bitb = i26;
                                        this.bitk = i25;
                                        this.z.avail_in = i27;
                                        this.z.total_in += (long) (i28 - this.z.next_in_index);
                                        this.z.next_in_index = i28;
                                        this.write = i24;
                                        return inflate_flush(i29);
                                    }
                                    i27--;
                                    i26 |= (this.z.next_in[i28] & 255) << i25;
                                    i25 += 8;
                                    i28++;
                                    i29 = 0;
                                }
                                int i416 = i26 >>> i8;
                                i12 = i11 + (inflate_mask[i10] & i416);
                                i26 = i416 >>> i10;
                                i25 = (i25 - i8) - i10;
                                i13 = this.index;
                                i14 = this.table;
                                if (i13 + i12 <= (i14 & 31) + 258 + ((i14 >> 5) & 31)) {
                                }
                                this.blens = null;
                                this.mode = 9;
                                this.z.msg = "invalid bit length repeat";
                                this.bitb = i26;
                                this.bitk = i25;
                                this.z.avail_in = i27;
                                this.z.total_in += (long) (i28 - this.z.next_in_index);
                                this.z.next_in_index = i28;
                                this.write = i24;
                                return inflate_flush(-3);
                            }
                            c = 0;
                        } else {
                            this.tb[c] = -1;
                            int[] iArr115 = this.bl;
                            iArr115[c] = 9;
                            int[] iArr116 = this.bd;
                            iArr116[c] = 6;
                            iInflate_trees_dynamic = this.inftree.inflate_trees_dynamic((i6 & 31) + 257, ((i6 >> 5) & 31) + 1, this.blens, iArr115, iArr116, this.tli, this.tdi, this.hufts, this.z);
                            if (iInflate_trees_dynamic != 0) {
                                if (iInflate_trees_dynamic == -3) {
                                    this.blens = null;
                                    this.mode = 9;
                                }
                                this.bitb = i26;
                                this.bitk = i25;
                                this.z.avail_in = i27;
                                this.z.total_in += (long) (i28 - this.z.next_in_index);
                                this.z.next_in_index = i28;
                                this.write = i24;
                                return inflate_flush(iInflate_trees_dynamic);
                            }
                            InfCodes infCodes3 = this.codes;
                            int i56 = this.bl[0];
                            int i57 = this.bd[0];
                            int[] iArr117 = this.hufts;
                            infCodes3.init(i56, i57, iArr117, this.tli[0], iArr117, this.tdi[0]);
                            this.mode = 6;
                        }
                    }
                    this.bitb = i26;
                    this.bitk = i25;
                    this.z.avail_in = i27;
                    this.z.total_in += (long) (i28 - this.z.next_in_index);
                    this.z.next_in_index = i28;
                    this.write = i24;
                    iProc = this.codes.proc(i29);
                    if (iProc != 1) {
                        return inflate_flush(iProc);
                    }
                    this.codes.free(this.z);
                    i28 = this.z.next_in_index;
                    i27 = this.z.avail_in;
                    i26 = this.bitb;
                    i25 = this.bitk;
                    i24 = this.write;
                    i4 = this.read;
                    if (i24 < i4) {
                        i5 = (i4 - i24) - 1;
                    } else {
                        i5 = this.end - i24;
                    }
                    i23 = i5;
                    if (this.last == 0) {
                        this.mode = 0;
                        i29 = 0;
                    } else {
                        this.mode = 7;
                        i29 = 0;
                    }
                    break;
                    break;
                case 6:
                    this.bitb = i26;
                    this.bitk = i25;
                    this.z.avail_in = i27;
                    this.z.total_in += (long) (i28 - this.z.next_in_index);
                    this.z.next_in_index = i28;
                    this.write = i24;
                    iProc = this.codes.proc(i29);
                    if (iProc != 1) {
                        return inflate_flush(iProc);
                    }
                    this.codes.free(this.z);
                    i28 = this.z.next_in_index;
                    i27 = this.z.avail_in;
                    i26 = this.bitb;
                    i25 = this.bitk;
                    i24 = this.write;
                    i4 = this.read;
                    if (i24 < i4) {
                        i5 = (i4 - i24) - 1;
                    } else {
                        i5 = this.end - i24;
                    }
                    i23 = i5;
                    if (this.last == 0) {
                        this.mode = 0;
                        i29 = 0;
                    } else {
                        this.mode = 7;
                        i29 = 0;
                    }
                    break;
                    break;
                case 7:
                    break;
                case 8:
                    this.bitb = i26;
                    this.bitk = i25;
                    this.z.avail_in = i27;
                    this.z.total_in += (long) (i28 - this.z.next_in_index);
                    this.z.next_in_index = i28;
                    this.write = i24;
                    return inflate_flush(1);
                case 9:
                    this.bitb = i26;
                    this.bitk = i25;
                    this.z.avail_in = i27;
                    this.z.total_in += (long) (i28 - this.z.next_in_index);
                    this.z.next_in_index = i28;
                    this.write = i24;
                    return inflate_flush(-3);
                default:
                    this.bitb = i26;
                    this.bitk = i25;
                    this.z.avail_in = i27;
                    this.z.total_in += (long) (i28 - this.z.next_in_index);
                    this.z.next_in_index = i28;
                    this.write = i24;
                    return inflate_flush(-2);
            }
        }
        this.write = i24;
        int iInflate_flush2 = inflate_flush(i29);
        i24 = this.write;
        if (this.read != i24) {
            this.bitb = i26;
            this.bitk = i25;
            this.z.avail_in = i27;
            this.z.total_in += (long) (i28 - this.z.next_in_index);
            this.z.next_in_index = i28;
            this.write = i24;
            return inflate_flush(iInflate_flush2);
        }
        this.mode = 8;
        this.bitb = i26;
        this.bitk = i25;
        this.z.avail_in = i27;
        this.z.total_in += (long) (i28 - this.z.next_in_index);
        this.z.next_in_index = i28;
        this.write = i24;
        return inflate_flush(1);
    }

    void free() {
        reset();
        this.window = null;
        this.hufts = null;
    }

    void set_dictionary(byte[] bArr, int i, int i2) {
        System.arraycopy(bArr, i, this.window, 0, i2);
        this.write = i2;
        this.read = i2;
    }

    int sync_point() {
        return this.mode == 1 ? 1 : 0;
    }

    int inflate_flush(int i) {
        int i2 = this.z.next_out_index;
        int i3 = this.read;
        int i4 = this.write;
        if (i3 > i4) {
            i4 = this.end;
        }
        int i5 = i4 - i3;
        if (i5 > this.z.avail_out) {
            i5 = this.z.avail_out;
        }
        if (i5 != 0 && i == -5) {
            i = 0;
        }
        this.z.avail_out -= i5;
        this.z.total_out += (long) i5;
        if (this.check && i5 > 0) {
            this.z.adler.update(this.window, i3, i5);
        }
        System.arraycopy(this.window, i3, this.z.next_out, i2, i5);
        int i6 = i2 + i5;
        int i7 = i3 + i5;
        int i8 = this.end;
        if (i7 == i8) {
            if (this.write == i8) {
                this.write = 0;
            }
            i7 = this.write;
            if (i7 > this.z.avail_out) {
                i7 = this.z.avail_out;
            }
            if (i7 != 0 && i == -5) {
                i = 0;
            }
            this.z.avail_out -= i7;
            this.z.total_out += (long) i7;
            if (this.check && i7 > 0) {
                this.z.adler.update(this.window, 0, i7);
            }
            System.arraycopy(this.window, 0, this.z.next_out, i6, i7);
            i6 += i7;
        }
        this.z.next_out_index = i6;
        this.read = i7;
        return i;
    }
}
