package com.iiordanov.jcraft.jzlib;

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
    long check;
    Object checkfn;
    int end;
    int index;
    int last;
    int left;
    int read;
    int table;
    byte[] window;
    int write;
    private static final int[] inflate_mask = {0, 1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, UnixStat.PERM_MASK, 8191, 16383, 32767, 65535};
    static final int[] border = {16, 17, 18, 0, 8, 7, 9, 6, 10, 5, 11, 4, 12, 3, 13, 2, 14, 1, 15};
    int[] bb = new int[1];
    int[] tb = new int[1];
    InfCodes codes = new InfCodes();
    InfTree inftree = new InfTree();
    int[] hufts = new int[4320];
    int mode = 0;

    InfBlocks(ZStream zStream, Object obj, int i) {
        this.window = new byte[i];
        this.end = i;
        this.checkfn = obj;
        reset(zStream, null);
    }

    void reset(ZStream zStream, long[] jArr) {
        if (jArr != null) {
            jArr[0] = this.check;
        }
        if (this.mode == 6) {
            this.codes.free(zStream);
        }
        this.mode = 0;
        this.bitk = 0;
        this.bitb = 0;
        this.write = 0;
        this.read = 0;
        if (this.checkfn != null) {
            long jAdler32 = zStream._adler.adler32(0L, null, 0, 0);
            this.check = jAdler32;
            zStream.adler = jAdler32;
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x033a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:103:0x033c A[LOOP:4: B:100:0x0336->B:103:0x033c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:108:0x0384  */
    /* JADX WARN: Code duplicated, block: B:218:0x00f4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:219:0x014f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:220:0x01db A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:221:0x0240 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:222:0x026a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:223:0x02db A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:224:0x034d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:225:0x03aa A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:243:0x018d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:254:0x0136 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x00df A[ADDED_TO_REGION, LOOP:7: B:39:0x00df->B:41:0x00e3, LOOP_START, PHI: r4 r5 r6 r9 r14
  0x00df: PHI (r4v17 int) = (r4v12 int), (r4v19 int) binds: [B:38:0x00dd, B:41:0x00e3] A[DONT_GENERATE, DONT_INLINE]
  0x00df: PHI (r5v27 int) = (r5v25 int), (r5v29 int) binds: [B:38:0x00dd, B:41:0x00e3] A[DONT_GENERATE, DONT_INLINE]
  0x00df: PHI (r6v30 int) = (r6v28 int), (r6v31 int) binds: [B:38:0x00dd, B:41:0x00e3] A[DONT_GENERATE, DONT_INLINE]
  0x00df: PHI (r9v20 int) = (r9v18 int), (r9v21 int) binds: [B:38:0x00dd, B:41:0x00e3] A[DONT_GENERATE, DONT_INLINE]
  0x00df: PHI (r14v6 int) = (r14v5 int), (r14v7 int) binds: [B:38:0x00dd, B:41:0x00e3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:40:0x00e1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x00e3 A[LOOP:7: B:39:0x00df->B:41:0x00e3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:47:0x0129 A[LOOP:8: B:45:0x0123->B:47:0x0129, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:51:0x0151  */
    /* JADX WARN: Code duplicated, block: B:54:0x0171  */
    /* JADX WARN: Code duplicated, block: B:60:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:63:0x0201  */
    /* JADX WARN: Code duplicated, block: B:68:0x0245  */
    /* JADX WARN: Code duplicated, block: B:70:0x0258  */
    /* JADX WARN: Code duplicated, block: B:71:0x025c  */
    /* JADX WARN: Code duplicated, block: B:74:0x0264  */
    /* JADX WARN: Code duplicated, block: B:84:0x02b1  */
    /* JADX WARN: Code duplicated, block: B:86:0x02c8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:87:0x02ca A[LOOP:3: B:85:0x02c6->B:87:0x02ca, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:92:0x0316  */
    /* JADX WARN: Code duplicated, block: B:93:0x0328  */
    /* JADX WARN: Code duplicated, block: B:95:0x032c  */
    /* JADX WARN: Code duplicated, block: B:96:0x032e  */
    /* JADX WARN: Code duplicated, block: B:98:0x0332  */
    /* JADX WARN: Code duplicated, block: B:99:0x0335  */
    int proc(ZStream zStream, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int iInflate_trees_bits;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int iInflate_trees_dynamic;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        int i34;
        int i35;
        int i36;
        int i37;
        int i38;
        int i39;
        int iProc;
        int i40;
        int i41;
        boolean z;
        int i42;
        int i43;
        int i44 = zStream.next_in_index;
        int i45 = zStream.avail_in;
        int i46 = this.bitb;
        int i47 = this.bitk;
        int i48 = this.write;
        int i49 = this.read;
        int i50 = i48;
        int i51 = i48 < i49 ? (i49 - i48) - 1 : this.end - i48;
        int i52 = i47;
        int i53 = i46;
        int i54 = i45;
        int i55 = i44;
        int i56 = i;
        while (true) {
            int i57 = -3;
            char c = 0;
            switch (this.mode) {
                case 0:
                    int i58 = i50;
                    int i59 = i56;
                    int i60 = i55;
                    int i61 = i54;
                    int i62 = i52;
                    int i63 = 3;
                    int i64 = i53;
                    while (i62 < i63) {
                        if (i61 == 0) {
                            this.bitb = i64;
                            this.bitk = i62;
                            zStream.avail_in = i61;
                            zStream.total_in += (long) (i60 - zStream.next_in_index);
                            zStream.next_in_index = i60;
                            this.write = i58;
                            return inflate_flush(zStream, i59);
                        }
                        i61--;
                        i64 |= (zStream.next_in[i60] & 255) << i62;
                        i62 += 8;
                        i60++;
                        i63 = 3;
                        i59 = 0;
                    }
                    this.last = i64 & 1;
                    int i65 = (i64 & 7) >>> 1;
                    if (i65 != 0) {
                        if (i65 != 1) {
                            if (i65 == 2) {
                                i42 = i64 >>> 3;
                                i43 = i62 - 3;
                                this.mode = 3;
                            } else {
                                if (i65 == 3) {
                                    this.mode = 9;
                                    zStream.msg = "invalid block type";
                                    this.bitb = i64 >>> 3;
                                    this.bitk = i62 - 3;
                                    zStream.avail_in = i61;
                                    zStream.total_in += (long) (i60 - zStream.next_in_index);
                                    zStream.next_in_index = i60;
                                    this.write = i58;
                                    return inflate_flush(zStream, -3);
                                }
                                i52 = i62;
                                i53 = i64;
                            }
                            z = true;
                        } else {
                            int[] iArr5 = new int[1];
                            int[] iArr6 = new int[1];
                            int[][] iArr7 = new int[1][];
                            int[][] iArr8 = new int[1][];
                            InfTree.inflate_trees_fixed(iArr5, iArr6, iArr7, iArr8, zStream);
                            this.codes.init(iArr5[0], iArr6[0], iArr7[0], 0, iArr8[0], 0, zStream);
                            i42 = i64 >>> 3;
                            i43 = i62 - 3;
                            this.mode = 6;
                        }
                        i53 = i42;
                        i52 = i43;
                        z = true;
                    } else {
                        int i66 = i62 - 3;
                        int i67 = i66 & 7;
                        z = true;
                        this.mode = 1;
                        i53 = (i64 >>> 3) >>> i67;
                        i52 = i66 - i67;
                    }
                    i56 = i59;
                    i55 = i60;
                    i54 = i61;
                    i50 = i58;
                    break;
                case 1:
                    int i68 = i50;
                    while (i52 < 32) {
                        if (i54 == 0) {
                            this.bitb = i53;
                            this.bitk = i52;
                            zStream.avail_in = i54;
                            zStream.total_in += (long) (i55 - zStream.next_in_index);
                            zStream.next_in_index = i55;
                            this.write = i68;
                            return inflate_flush(zStream, i56);
                        }
                        i54--;
                        i53 |= (zStream.next_in[i55] & 255) << i52;
                        i52 += 8;
                        i55++;
                        i56 = 0;
                    }
                    int i69 = 65535 & i53;
                    if ((((~i53) >>> 16) & 65535) != i69) {
                        this.mode = 9;
                        zStream.msg = "invalid stored block lengths";
                        this.bitb = i53;
                        this.bitk = i52;
                        zStream.avail_in = i54;
                        zStream.total_in += (long) (i55 - zStream.next_in_index);
                        zStream.next_in_index = i55;
                        this.write = i68;
                        return inflate_flush(zStream, -3);
                    }
                    this.left = i69;
                    if (i69 != 0) {
                        i2 = 2;
                    } else {
                        i2 = this.last != 0 ? 7 : 0;
                    }
                    this.mode = i2;
                    i50 = i68;
                    i53 = 0;
                    i52 = 0;
                    break;
                    break;
                case 2:
                    int i70 = i50;
                    if (i54 == 0) {
                        this.bitb = i53;
                        this.bitk = i52;
                        zStream.avail_in = i54;
                        zStream.total_in += (long) (i55 - zStream.next_in_index);
                        zStream.next_in_index = i55;
                        this.write = i70;
                        return inflate_flush(zStream, i56);
                    }
                    if (i51 == 0) {
                        int i71 = this.end;
                        if (i70 != i71 || (i4 = this.read) == 0) {
                            i3 = i70;
                        } else {
                            i51 = i4 > 0 ? i4 - 1 : i71;
                            i3 = 0;
                        }
                        if (i51 == 0) {
                            this.write = i3;
                            int iInflate_flush = inflate_flush(zStream, i56);
                            int i72 = this.write;
                            int i73 = this.read;
                            int i74 = i72 < i73 ? (i73 - i72) - 1 : this.end - i72;
                            i51 = this.end;
                            if (i72 != i51 || i73 == 0) {
                                i3 = i72;
                                i51 = i74;
                            } else {
                                if (i73 > 0) {
                                    i51 = i73 - 1;
                                }
                                i3 = 0;
                            }
                            if (i51 == 0) {
                                this.bitb = i53;
                                this.bitk = i52;
                                zStream.avail_in = i54;
                                zStream.total_in += (long) (i55 - zStream.next_in_index);
                                zStream.next_in_index = i55;
                                this.write = i3;
                                return inflate_flush(zStream, iInflate_flush);
                            }
                        }
                    } else {
                        i3 = i70;
                    }
                    int i75 = this.left;
                    if (i75 > i54) {
                        i75 = i54;
                    }
                    if (i75 > i51) {
                        i75 = i51;
                    }
                    System.arraycopy(zStream.next_in, i55, this.window, i3, i75);
                    i55 += i75;
                    i54 -= i75;
                    i50 = i3 + i75;
                    i51 -= i75;
                    int i76 = this.left - i75;
                    this.left = i76;
                    if (i76 == 0) {
                        this.mode = this.last != 0 ? 7 : 0;
                    }
                    i56 = 0;
                    break;
                    break;
                case 3:
                    while (i52 < 14) {
                        if (i54 == 0) {
                            this.bitb = i53;
                            this.bitk = i52;
                            zStream.avail_in = i54;
                            zStream.total_in += (long) (i55 - zStream.next_in_index);
                            zStream.next_in_index = i55;
                            this.write = i50;
                            return inflate_flush(zStream, i56);
                        }
                        i54--;
                        i53 |= (zStream.next_in[i55] & 255) << i52;
                        i52 += 8;
                        i55++;
                        i56 = 0;
                    }
                    int i77 = i53 & 16383;
                    this.table = i77;
                    int i78 = i53 & 31;
                    if (i78 > 29 || (i5 = (i77 >> 5) & 31) > 29) {
                        this.mode = 9;
                        zStream.msg = "too many length or distance symbols";
                        this.bitb = i53;
                        this.bitk = i52;
                        zStream.avail_in = i54;
                        zStream.total_in += (long) (i55 - zStream.next_in_index);
                        zStream.next_in_index = i55;
                        this.write = i50;
                        return inflate_flush(zStream, -3);
                    }
                    int i79 = i78 + 258 + i5;
                    int[] iArr9 = this.blens;
                    if (iArr9 == null || iArr9.length < i79) {
                        this.blens = new int[i79];
                    } else {
                        for (int i80 = 0; i80 < i79; i80++) {
                            this.blens[i80] = 0;
                        }
                    }
                    i53 >>>= 14;
                    i52 -= 14;
                    this.index = 0;
                    this.mode = 4;
                    i6 = i56;
                    i7 = i55;
                    i8 = i54;
                    int i81 = i52;
                    i9 = i53;
                    i10 = i81;
                    for (int i82 = 4; this.index < (this.table >>> 10) + i82; i82 = 4) {
                        while (i10 < 3) {
                            if (i8 != 0) {
                                this.bitb = i9;
                                this.bitk = i10;
                                zStream.avail_in = i8;
                                zStream.total_in += (long) (i7 - zStream.next_in_index);
                                zStream.next_in_index = i7;
                                this.write = i50;
                                return inflate_flush(zStream, i6);
                            }
                            i8--;
                            i9 |= (zStream.next_in[i7] & 255) << i10;
                            i10 += 8;
                            i7++;
                            i6 = 0;
                        }
                        int[] iArr10 = this.blens;
                        int[] iArr11 = border;
                        int i83 = this.index;
                        this.index = i83 + 1;
                        iArr10[iArr11[i83]] = i9 & 7;
                        i9 >>>= 3;
                        i10 -= 3;
                    }
                    while (true) {
                        i11 = this.index;
                        if (i11 < 19) {
                            int[] iArr12 = this.blens;
                            int[] iArr13 = border;
                            this.index = i11 + 1;
                            iArr12[iArr13[i11]] = 0;
                        } else {
                            int[] iArr14 = this.bb;
                            iArr14[0] = 7;
                            i12 = i10;
                            i13 = i9;
                            i14 = i8;
                            iInflate_trees_bits = this.inftree.inflate_trees_bits(this.blens, iArr14, this.tb, this.hufts, zStream);
                            if (iInflate_trees_bits != 0) {
                                if (iInflate_trees_bits == -3) {
                                    this.blens = null;
                                    this.mode = 9;
                                }
                                this.bitb = i13;
                                this.bitk = i12;
                                zStream.avail_in = i14;
                                zStream.total_in += (long) (i7 - zStream.next_in_index);
                                zStream.next_in_index = i7;
                                this.write = i50;
                                return inflate_flush(zStream, iInflate_trees_bits);
                            }
                            this.index = 0;
                            this.mode = 5;
                            i15 = i13;
                            i16 = i12;
                            i17 = i6;
                            i18 = i14;
                            while (true) {
                                i19 = this.table;
                                if (this.index < (i19 & 31) + 258 + ((i19 >> 5) & 31)) {
                                    i28 = i50;
                                    int i84 = i18;
                                    int i85 = i7;
                                    i29 = i57;
                                    i30 = this.bb[0];
                                    i31 = i85;
                                    i18 = i84;
                                    i17 = i17;
                                    while (i16 < i30) {
                                        if (i18 == 0) {
                                            this.bitb = i15;
                                            this.bitk = i16;
                                            zStream.avail_in = i18;
                                            zStream.total_in += (long) (i31 - zStream.next_in_index);
                                            zStream.next_in_index = i31;
                                            this.write = i28;
                                            return inflate_flush(zStream, i17);
                                        }
                                        i18--;
                                        i15 |= (zStream.next_in[i31] & 255) << i16;
                                        i16 += 8;
                                        i31++;
                                        i17 = 0;
                                    }
                                    int i86 = this.tb[0];
                                    int[] iArr15 = this.hufts;
                                    int[] iArr16 = inflate_mask;
                                    i32 = iArr15[(((iArr16[i30] & i15) + i86) * 3) + 1];
                                    i33 = iArr15[((i86 + (iArr16[i32] & i15)) * 3) + 2];
                                    if (i33 < 16) {
                                        int i87 = i15 >>> i32;
                                        i16 -= i32;
                                        int[] iArr17 = this.blens;
                                        int i88 = this.index;
                                        this.index = i88 + 1;
                                        iArr17[i88] = i33;
                                        i15 = i87;
                                    } else {
                                        if (i33 == 18) {
                                            i34 = 7;
                                        } else {
                                            i34 = i33 - 14;
                                        }
                                        if (i33 == 18) {
                                            i35 = 11;
                                        } else {
                                            i35 = 3;
                                        }
                                        while (i16 < i32 + i34) {
                                            if (i18 == 0) {
                                                this.bitb = i15;
                                                this.bitk = i16;
                                                zStream.avail_in = i18;
                                                zStream.total_in += (long) (i31 - zStream.next_in_index);
                                                zStream.next_in_index = i31;
                                                this.write = i28;
                                                return inflate_flush(zStream, i17);
                                            }
                                            i18--;
                                            i15 |= (zStream.next_in[i31] & 255) << i16;
                                            i16 += 8;
                                            i31++;
                                            i17 = 0;
                                        }
                                        int i89 = i15 >>> i32;
                                        int i90 = i16 - i32;
                                        i36 = i35 + (inflate_mask[i34] & i89);
                                        i37 = i89 >>> i34;
                                        i16 = i90 - i34;
                                        i38 = this.index;
                                        i39 = this.table;
                                        if (i38 + i36 <= (i39 & 31) + 258 + ((i39 >> 5) & 31) || (i33 == 16 && i38 < 1)) {
                                            this.blens = null;
                                            this.mode = 9;
                                            zStream.msg = "invalid bit length repeat";
                                            this.bitb = i37;
                                            this.bitk = i16;
                                            zStream.avail_in = i18;
                                            zStream.total_in += (long) (i31 - zStream.next_in_index);
                                            zStream.next_in_index = i31;
                                            this.write = i28;
                                            return inflate_flush(zStream, i29);
                                        }
                                        int i91 = i33 == 16 ? this.blens[i38 - 1] : 0;
                                        while (true) {
                                            int i92 = i38 + 1;
                                            this.blens[i38] = i91;
                                            i36--;
                                            if (i36 == 0) {
                                                this.index = i92;
                                                i15 = i37;
                                            } else {
                                                i38 = i92;
                                            }
                                        }
                                    }
                                    i50 = i28;
                                    i57 = i29;
                                    c = 0;
                                    i7 = i31;
                                } else {
                                    this.tb[c] = -1;
                                    iArr = new int[1];
                                    iArr2 = new int[1];
                                    iArr3 = new int[]{9};
                                    iArr4 = new int[]{6};
                                    i20 = i16;
                                    i21 = i17;
                                    i22 = i15;
                                    i23 = i50;
                                    i24 = i18;
                                    i25 = i7;
                                    i26 = i57;
                                    iInflate_trees_dynamic = this.inftree.inflate_trees_dynamic((i19 & 31) + 257, ((i19 >> 5) & 31) + 1, this.blens, iArr3, iArr4, iArr, iArr2, this.hufts, zStream);
                                    if (iInflate_trees_dynamic != 0) {
                                        if (iInflate_trees_dynamic == i26) {
                                            this.blens = null;
                                            this.mode = 9;
                                        }
                                        this.bitb = i22;
                                        this.bitk = i20;
                                        zStream.avail_in = i24;
                                        zStream.total_in += (long) (i25 - zStream.next_in_index);
                                        zStream.next_in_index = i25;
                                        this.write = i23;
                                        return inflate_flush(zStream, iInflate_trees_dynamic);
                                    }
                                    i27 = i23;
                                    InfCodes infCodes = this.codes;
                                    int i93 = iArr3[0];
                                    int i94 = iArr4[0];
                                    int[] iArr18 = this.hufts;
                                    infCodes.init(i93, i94, iArr18, iArr[0], iArr18, iArr2[0], zStream);
                                    this.mode = 6;
                                    i55 = i25;
                                    i53 = i22;
                                    i54 = i24;
                                    i52 = i20;
                                    i56 = i21;
                                }
                            }
                            this.bitb = i53;
                            this.bitk = i52;
                            zStream.avail_in = i54;
                            zStream.total_in += (long) (i55 - zStream.next_in_index);
                            zStream.next_in_index = i55;
                            this.write = i27;
                            iProc = this.codes.proc(this, zStream, i56);
                            if (iProc != 1) {
                                return inflate_flush(zStream, iProc);
                            }
                            this.codes.free(zStream);
                            i55 = zStream.next_in_index;
                            i54 = zStream.avail_in;
                            i53 = this.bitb;
                            i52 = this.bitk;
                            i50 = this.write;
                            i40 = this.read;
                            if (i50 < i40) {
                                i41 = (i40 - i50) - 1;
                            } else {
                                i41 = this.end - i50;
                            }
                            i51 = i41;
                            if (this.last == 0) {
                                this.mode = 0;
                                i56 = 0;
                            } else {
                                this.mode = 7;
                                i56 = 0;
                            }
                        }
                        break;
                    }
                    break;
                case 4:
                    i6 = i56;
                    i7 = i55;
                    i8 = i54;
                    int i810 = i52;
                    i9 = i53;
                    i10 = i810;
                    while (this.index < (this.table >>> 10) + i82) {
                        while (i10 < 3) {
                            if (i8 != 0) {
                                this.bitb = i9;
                                this.bitk = i10;
                                zStream.avail_in = i8;
                                zStream.total_in += (long) (i7 - zStream.next_in_index);
                                zStream.next_in_index = i7;
                                this.write = i50;
                                return inflate_flush(zStream, i6);
                            }
                            i8--;
                            i9 |= (zStream.next_in[i7] & 255) << i10;
                            i10 += 8;
                            i7++;
                            i6 = 0;
                        }
                        int[] iArr19 = this.blens;
                        int[] iArr110 = border;
                        int i811 = this.index;
                        this.index = i811 + 1;
                        iArr19[iArr110[i811]] = i9 & 7;
                        i9 >>>= 3;
                        i10 -= 3;
                    }
                    while (true) {
                        i11 = this.index;
                        if (i11 < 19) {
                            int[] iArr111 = this.blens;
                            int[] iArr112 = border;
                            this.index = i11 + 1;
                            iArr111[iArr112[i11]] = 0;
                        } else {
                            int[] iArr113 = this.bb;
                            iArr113[0] = 7;
                            i12 = i10;
                            i13 = i9;
                            i14 = i8;
                            iInflate_trees_bits = this.inftree.inflate_trees_bits(this.blens, iArr113, this.tb, this.hufts, zStream);
                            if (iInflate_trees_bits != 0) {
                                if (iInflate_trees_bits == -3) {
                                    this.blens = null;
                                    this.mode = 9;
                                }
                                this.bitb = i13;
                                this.bitk = i12;
                                zStream.avail_in = i14;
                                zStream.total_in += (long) (i7 - zStream.next_in_index);
                                zStream.next_in_index = i7;
                                this.write = i50;
                                return inflate_flush(zStream, iInflate_trees_bits);
                            }
                            this.index = 0;
                            this.mode = 5;
                            i15 = i13;
                            i16 = i12;
                            i17 = i6;
                            i18 = i14;
                            while (true) {
                                i19 = this.table;
                                if (this.index < (i19 & 31) + 258 + ((i19 >> 5) & 31)) {
                                    i28 = i50;
                                    int i812 = i18;
                                    int i813 = i7;
                                    i29 = i57;
                                    i30 = this.bb[0];
                                    i31 = i813;
                                    i18 = i812;
                                    i17 = i17;
                                    while (i16 < i30) {
                                        if (i18 == 0) {
                                            this.bitb = i15;
                                            this.bitk = i16;
                                            zStream.avail_in = i18;
                                            zStream.total_in += (long) (i31 - zStream.next_in_index);
                                            zStream.next_in_index = i31;
                                            this.write = i28;
                                            return inflate_flush(zStream, i17);
                                        }
                                        i18--;
                                        i15 |= (zStream.next_in[i31] & 255) << i16;
                                        i16 += 8;
                                        i31++;
                                        i17 = 0;
                                    }
                                    int i814 = this.tb[0];
                                    int[] iArr114 = this.hufts;
                                    int[] iArr115 = inflate_mask;
                                    i32 = iArr114[(((iArr115[i30] & i15) + i814) * 3) + 1];
                                    i33 = iArr114[((i814 + (iArr115[i32] & i15)) * 3) + 2];
                                    if (i33 < 16) {
                                        int i815 = i15 >>> i32;
                                        i16 -= i32;
                                        int[] iArr116 = this.blens;
                                        int i816 = this.index;
                                        this.index = i816 + 1;
                                        iArr116[i816] = i33;
                                        i15 = i815;
                                    } else {
                                        if (i33 == 18) {
                                            i34 = 7;
                                        } else {
                                            i34 = i33 - 14;
                                        }
                                        if (i33 == 18) {
                                            i35 = 11;
                                        } else {
                                            i35 = 3;
                                        }
                                        while (i16 < i32 + i34) {
                                            if (i18 == 0) {
                                                this.bitb = i15;
                                                this.bitk = i16;
                                                zStream.avail_in = i18;
                                                zStream.total_in += (long) (i31 - zStream.next_in_index);
                                                zStream.next_in_index = i31;
                                                this.write = i28;
                                                return inflate_flush(zStream, i17);
                                            }
                                            i18--;
                                            i15 |= (zStream.next_in[i31] & 255) << i16;
                                            i16 += 8;
                                            i31++;
                                            i17 = 0;
                                        }
                                        int i817 = i15 >>> i32;
                                        int i95 = i16 - i32;
                                        i36 = i35 + (inflate_mask[i34] & i817);
                                        i37 = i817 >>> i34;
                                        i16 = i95 - i34;
                                        i38 = this.index;
                                        i39 = this.table;
                                        if (i38 + i36 <= (i39 & 31) + 258 + ((i39 >> 5) & 31)) {
                                        }
                                        this.blens = null;
                                        this.mode = 9;
                                        zStream.msg = "invalid bit length repeat";
                                        this.bitb = i37;
                                        this.bitk = i16;
                                        zStream.avail_in = i18;
                                        zStream.total_in += (long) (i31 - zStream.next_in_index);
                                        zStream.next_in_index = i31;
                                        this.write = i28;
                                        return inflate_flush(zStream, i29);
                                    }
                                    i50 = i28;
                                    i57 = i29;
                                    c = 0;
                                    i7 = i31;
                                } else {
                                    this.tb[c] = -1;
                                    iArr = new int[1];
                                    iArr2 = new int[1];
                                    iArr3 = new int[]{9};
                                    iArr4 = new int[]{6};
                                    i20 = i16;
                                    i21 = i17;
                                    i22 = i15;
                                    i23 = i50;
                                    i24 = i18;
                                    i25 = i7;
                                    i26 = i57;
                                    iInflate_trees_dynamic = this.inftree.inflate_trees_dynamic((i19 & 31) + 257, ((i19 >> 5) & 31) + 1, this.blens, iArr3, iArr4, iArr, iArr2, this.hufts, zStream);
                                    if (iInflate_trees_dynamic != 0) {
                                        if (iInflate_trees_dynamic == i26) {
                                            this.blens = null;
                                            this.mode = 9;
                                        }
                                        this.bitb = i22;
                                        this.bitk = i20;
                                        zStream.avail_in = i24;
                                        zStream.total_in += (long) (i25 - zStream.next_in_index);
                                        zStream.next_in_index = i25;
                                        this.write = i23;
                                        return inflate_flush(zStream, iInflate_trees_dynamic);
                                    }
                                    i27 = i23;
                                    InfCodes infCodes2 = this.codes;
                                    int i96 = iArr3[0];
                                    int i97 = iArr4[0];
                                    int[] iArr117 = this.hufts;
                                    infCodes2.init(i96, i97, iArr117, iArr[0], iArr117, iArr2[0], zStream);
                                    this.mode = 6;
                                    i55 = i25;
                                    i53 = i22;
                                    i54 = i24;
                                    i52 = i20;
                                    i56 = i21;
                                }
                            }
                            this.bitb = i53;
                            this.bitk = i52;
                            zStream.avail_in = i54;
                            zStream.total_in += (long) (i55 - zStream.next_in_index);
                            zStream.next_in_index = i55;
                            this.write = i27;
                            iProc = this.codes.proc(this, zStream, i56);
                            if (iProc != 1) {
                                return inflate_flush(zStream, iProc);
                            }
                            this.codes.free(zStream);
                            i55 = zStream.next_in_index;
                            i54 = zStream.avail_in;
                            i53 = this.bitb;
                            i52 = this.bitk;
                            i50 = this.write;
                            i40 = this.read;
                            if (i50 < i40) {
                                i41 = (i40 - i50) - 1;
                            } else {
                                i41 = this.end - i50;
                            }
                            i51 = i41;
                            if (this.last == 0) {
                                this.mode = 0;
                                i56 = 0;
                            } else {
                                this.mode = 7;
                                i56 = 0;
                            }
                        }
                        break;
                    }
                    break;
                case 5:
                    i17 = i56;
                    i7 = i55;
                    i18 = i54;
                    i15 = i53;
                    i16 = i52;
                    while (true) {
                        i19 = this.table;
                        if (this.index < (i19 & 31) + 258 + ((i19 >> 5) & 31)) {
                            i28 = i50;
                            int i818 = i18;
                            int i819 = i7;
                            i29 = i57;
                            i30 = this.bb[0];
                            i31 = i819;
                            i18 = i818;
                            i17 = i17;
                            while (i16 < i30) {
                                if (i18 == 0) {
                                    this.bitb = i15;
                                    this.bitk = i16;
                                    zStream.avail_in = i18;
                                    zStream.total_in += (long) (i31 - zStream.next_in_index);
                                    zStream.next_in_index = i31;
                                    this.write = i28;
                                    return inflate_flush(zStream, i17);
                                }
                                i18--;
                                i15 |= (zStream.next_in[i31] & 255) << i16;
                                i16 += 8;
                                i31++;
                                i17 = 0;
                            }
                            int i8110 = this.tb[0];
                            int[] iArr118 = this.hufts;
                            int[] iArr119 = inflate_mask;
                            i32 = iArr118[(((iArr119[i30] & i15) + i8110) * 3) + 1];
                            i33 = iArr118[((i8110 + (iArr119[i32] & i15)) * 3) + 2];
                            if (i33 < 16) {
                                int i8111 = i15 >>> i32;
                                i16 -= i32;
                                int[] iArr1110 = this.blens;
                                int i8112 = this.index;
                                this.index = i8112 + 1;
                                iArr1110[i8112] = i33;
                                i15 = i8111;
                            } else {
                                if (i33 == 18) {
                                    i34 = 7;
                                } else {
                                    i34 = i33 - 14;
                                }
                                if (i33 == 18) {
                                    i35 = 11;
                                } else {
                                    i35 = 3;
                                }
                                while (i16 < i32 + i34) {
                                    if (i18 == 0) {
                                        this.bitb = i15;
                                        this.bitk = i16;
                                        zStream.avail_in = i18;
                                        zStream.total_in += (long) (i31 - zStream.next_in_index);
                                        zStream.next_in_index = i31;
                                        this.write = i28;
                                        return inflate_flush(zStream, i17);
                                    }
                                    i18--;
                                    i15 |= (zStream.next_in[i31] & 255) << i16;
                                    i16 += 8;
                                    i31++;
                                    i17 = 0;
                                }
                                int i8113 = i15 >>> i32;
                                int i98 = i16 - i32;
                                i36 = i35 + (inflate_mask[i34] & i8113);
                                i37 = i8113 >>> i34;
                                i16 = i98 - i34;
                                i38 = this.index;
                                i39 = this.table;
                                if (i38 + i36 <= (i39 & 31) + 258 + ((i39 >> 5) & 31)) {
                                }
                                this.blens = null;
                                this.mode = 9;
                                zStream.msg = "invalid bit length repeat";
                                this.bitb = i37;
                                this.bitk = i16;
                                zStream.avail_in = i18;
                                zStream.total_in += (long) (i31 - zStream.next_in_index);
                                zStream.next_in_index = i31;
                                this.write = i28;
                                return inflate_flush(zStream, i29);
                            }
                            i50 = i28;
                            i57 = i29;
                            c = 0;
                            i7 = i31;
                        } else {
                            this.tb[c] = -1;
                            iArr = new int[1];
                            iArr2 = new int[1];
                            iArr3 = new int[]{9};
                            iArr4 = new int[]{6};
                            i20 = i16;
                            i21 = i17;
                            i22 = i15;
                            i23 = i50;
                            i24 = i18;
                            i25 = i7;
                            i26 = i57;
                            iInflate_trees_dynamic = this.inftree.inflate_trees_dynamic((i19 & 31) + 257, ((i19 >> 5) & 31) + 1, this.blens, iArr3, iArr4, iArr, iArr2, this.hufts, zStream);
                            if (iInflate_trees_dynamic != 0) {
                                if (iInflate_trees_dynamic == i26) {
                                    this.blens = null;
                                    this.mode = 9;
                                }
                                this.bitb = i22;
                                this.bitk = i20;
                                zStream.avail_in = i24;
                                zStream.total_in += (long) (i25 - zStream.next_in_index);
                                zStream.next_in_index = i25;
                                this.write = i23;
                                return inflate_flush(zStream, iInflate_trees_dynamic);
                            }
                            i27 = i23;
                            InfCodes infCodes3 = this.codes;
                            int i99 = iArr3[0];
                            int i910 = iArr4[0];
                            int[] iArr1111 = this.hufts;
                            infCodes3.init(i99, i910, iArr1111, iArr[0], iArr1111, iArr2[0], zStream);
                            this.mode = 6;
                            i55 = i25;
                            i53 = i22;
                            i54 = i24;
                            i52 = i20;
                            i56 = i21;
                        }
                    }
                    this.bitb = i53;
                    this.bitk = i52;
                    zStream.avail_in = i54;
                    zStream.total_in += (long) (i55 - zStream.next_in_index);
                    zStream.next_in_index = i55;
                    this.write = i27;
                    iProc = this.codes.proc(this, zStream, i56);
                    if (iProc != 1) {
                        return inflate_flush(zStream, iProc);
                    }
                    this.codes.free(zStream);
                    i55 = zStream.next_in_index;
                    i54 = zStream.avail_in;
                    i53 = this.bitb;
                    i52 = this.bitk;
                    i50 = this.write;
                    i40 = this.read;
                    if (i50 < i40) {
                        i41 = (i40 - i50) - 1;
                    } else {
                        i41 = this.end - i50;
                    }
                    i51 = i41;
                    if (this.last == 0) {
                        this.mode = 0;
                        i56 = 0;
                    } else {
                        this.mode = 7;
                        i56 = 0;
                    }
                    break;
                    break;
                case 6:
                    i27 = i50;
                    this.bitb = i53;
                    this.bitk = i52;
                    zStream.avail_in = i54;
                    zStream.total_in += (long) (i55 - zStream.next_in_index);
                    zStream.next_in_index = i55;
                    this.write = i27;
                    iProc = this.codes.proc(this, zStream, i56);
                    if (iProc != 1) {
                        return inflate_flush(zStream, iProc);
                    }
                    this.codes.free(zStream);
                    i55 = zStream.next_in_index;
                    i54 = zStream.avail_in;
                    i53 = this.bitb;
                    i52 = this.bitk;
                    i50 = this.write;
                    i40 = this.read;
                    if (i50 < i40) {
                        i41 = (i40 - i50) - 1;
                    } else {
                        i41 = this.end - i50;
                    }
                    i51 = i41;
                    if (this.last == 0) {
                        this.mode = 0;
                        i56 = 0;
                    } else {
                        this.mode = 7;
                        i56 = 0;
                    }
                    break;
                    break;
                case 7:
                    break;
                case 8:
                    this.bitb = i53;
                    this.bitk = i52;
                    zStream.avail_in = i54;
                    zStream.total_in += (long) (i55 - zStream.next_in_index);
                    zStream.next_in_index = i55;
                    this.write = i50;
                    return inflate_flush(zStream, 1);
                case 9:
                    this.bitb = i53;
                    this.bitk = i52;
                    zStream.avail_in = i54;
                    zStream.total_in += (long) (i55 - zStream.next_in_index);
                    zStream.next_in_index = i55;
                    this.write = i50;
                    return inflate_flush(zStream, -3);
                default:
                    this.bitb = i53;
                    this.bitk = i52;
                    zStream.avail_in = i54;
                    zStream.total_in += (long) (i55 - zStream.next_in_index);
                    zStream.next_in_index = i55;
                    this.write = i50;
                    return inflate_flush(zStream, -2);
            }
        }
        this.write = i50;
        int iInflate_flush2 = inflate_flush(zStream, i56);
        i50 = this.write;
        if (this.read != i50) {
            this.bitb = i53;
            this.bitk = i52;
            zStream.avail_in = i54;
            zStream.total_in += (long) (i55 - zStream.next_in_index);
            zStream.next_in_index = i55;
            this.write = i50;
            return inflate_flush(zStream, iInflate_flush2);
        }
        this.mode = 8;
        this.bitb = i53;
        this.bitk = i52;
        zStream.avail_in = i54;
        zStream.total_in += (long) (i55 - zStream.next_in_index);
        zStream.next_in_index = i55;
        this.write = i50;
        return inflate_flush(zStream, 1);
    }

    void free(ZStream zStream) {
        reset(zStream, null);
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

    int inflate_flush(ZStream zStream, int i) {
        int i2 = zStream.next_out_index;
        int i3 = this.read;
        int i4 = this.write;
        if (i3 > i4) {
            i4 = this.end;
        }
        int i5 = i4 - i3;
        if (i5 > zStream.avail_out) {
            i5 = zStream.avail_out;
        }
        int i6 = i5;
        if (i6 != 0 && i == -5) {
            i = 0;
        }
        zStream.avail_out -= i6;
        zStream.total_out += (long) i6;
        if (this.checkfn != null) {
            long jAdler32 = zStream._adler.adler32(this.check, this.window, i3, i6);
            this.check = jAdler32;
            zStream.adler = jAdler32;
        }
        System.arraycopy(this.window, i3, zStream.next_out, i2, i6);
        int i7 = i2 + i6;
        int i8 = i3 + i6;
        int i9 = this.end;
        if (i8 == i9) {
            if (this.write == i9) {
                this.write = 0;
            }
            int i10 = this.write;
            if (i10 > zStream.avail_out) {
                i10 = zStream.avail_out;
            }
            int i11 = (i10 == 0 || i != -5) ? i : 0;
            zStream.avail_out -= i10;
            zStream.total_out += (long) i10;
            if (this.checkfn != null) {
                long jAdler33 = zStream._adler.adler32(this.check, this.window, 0, i10);
                this.check = jAdler33;
                zStream.adler = jAdler33;
            }
            System.arraycopy(this.window, 0, zStream.next_out, i7, i10);
            i7 += i10;
            i8 = i10;
            i = i11;
        }
        zStream.next_out_index = i7;
        this.read = i8;
        return i;
    }
}
