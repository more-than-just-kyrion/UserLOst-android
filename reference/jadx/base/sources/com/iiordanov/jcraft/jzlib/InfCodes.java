package com.iiordanov.jcraft.jzlib;

import org.apache.commons.compress.archivers.zip.UnixStat;

/* JADX INFO: loaded from: classes2.dex */
final class InfCodes {
    private static final int BADCODE = 9;
    private static final int COPY = 5;
    private static final int DIST = 3;
    private static final int DISTEXT = 4;
    private static final int END = 8;
    private static final int LEN = 1;
    private static final int LENEXT = 2;
    private static final int LIT = 6;
    private static final int START = 0;
    private static final int WASH = 7;
    private static final int Z_BUF_ERROR = -5;
    private static final int Z_DATA_ERROR = -3;
    private static final int Z_ERRNO = -1;
    private static final int Z_MEM_ERROR = -4;
    private static final int Z_NEED_DICT = 2;
    private static final int Z_OK = 0;
    private static final int Z_STREAM_END = 1;
    private static final int Z_STREAM_ERROR = -2;
    private static final int Z_VERSION_ERROR = -6;
    private static final int[] inflate_mask = {0, 1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, UnixStat.PERM_MASK, 8191, 16383, 32767, 65535};
    byte dbits;
    int dist;
    int[] dtree;
    int dtree_index;
    int get;
    byte lbits;
    int len;
    int lit;
    int[] ltree;
    int ltree_index;
    int mode;
    int need;
    int[] tree;
    int tree_index = 0;

    void free(ZStream zStream) {
    }

    InfCodes() {
    }

    void init(int i, int i2, int[] iArr, int i3, int[] iArr2, int i4, ZStream zStream) {
        this.mode = 0;
        this.lbits = (byte) i;
        this.dbits = (byte) i2;
        this.ltree = iArr;
        this.ltree_index = i3;
        this.dtree = iArr2;
        this.dtree_index = i4;
        this.tree = null;
    }

    /* JADX WARN: Code duplicated, block: B:108:0x023b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:109:0x023d A[LOOP:5: B:107:0x0239->B:109:0x023d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:117:0x0291  */
    /* JADX WARN: Code duplicated, block: B:138:0x032c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:139:0x032e A[LOOP:6: B:137:0x032a->B:139:0x032e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:153:0x03a1  */
    /* JADX WARN: Code duplicated, block: B:168:0x01b1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:171:0x024e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:172:0x028d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:173:0x027e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:174:0x029e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:176:0x033f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:177:0x0379 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:178:0x036e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:179:0x038c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:180:0x037d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:181:0x039d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:182:0x0390 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:183:0x03a5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x0167 A[LOOP:2: B:62:0x0165->B:63:0x0167, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:66:0x016f  */
    /* JADX WARN: Code duplicated, block: B:67:0x0171  */
    /* JADX WARN: Code duplicated, block: B:73:0x017d  */
    /* JADX WARN: Code duplicated, block: B:74:0x0181  */
    /* JADX WARN: Code duplicated, block: B:77:0x0187  */
    /* JADX WARN: Code duplicated, block: B:79:0x0193  */
    /* JADX WARN: Code duplicated, block: B:80:0x0198  */
    /* JADX WARN: Code duplicated, block: B:87:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:88:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:95:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:96:0x01de  */
    int proc(InfBlocks infBlocks, ZStream zStream, int i) {
        int i2;
        int i3;
        int[] iArr;
        int i4;
        int i5;
        int i6;
        int[] iArr2;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12 = zStream.next_in_index;
        int i13 = zStream.avail_in;
        int i14 = infBlocks.bitb;
        int i15 = infBlocks.bitk;
        int i16 = infBlocks.write;
        int i17 = i16 < infBlocks.read ? (infBlocks.read - i16) - 1 : infBlocks.end - i16;
        int i18 = i16;
        int i19 = i15;
        int i20 = i14;
        int i21 = i13;
        int i22 = i12;
        int iInflate_fast = i;
        while (true) {
            int i23 = 0;
            switch (this.mode) {
                case 0:
                    if (i17 >= 258 && i21 >= 10) {
                        infBlocks.bitb = i20;
                        infBlocks.bitk = i19;
                        zStream.avail_in = i21;
                        zStream.total_in += (long) (i22 - zStream.next_in_index);
                        zStream.next_in_index = i22;
                        infBlocks.write = i18;
                        iInflate_fast = inflate_fast(this.lbits, this.dbits, this.ltree, this.ltree_index, this.dtree, this.dtree_index, infBlocks, zStream);
                        i22 = zStream.next_in_index;
                        i21 = zStream.avail_in;
                        i20 = infBlocks.bitb;
                        i19 = infBlocks.bitk;
                        i18 = infBlocks.write;
                        i17 = i18 < infBlocks.read ? (infBlocks.read - i18) - 1 : infBlocks.end - i18;
                        if (iInflate_fast != 0) {
                            this.mode = iInflate_fast == 1 ? 7 : 9;
                        } else {
                            this.need = this.lbits;
                            this.tree = this.ltree;
                            this.tree_index = this.ltree_index;
                            this.mode = 1;
                            i2 = this.need;
                            while (i19 < i2) {
                                if (i21 == 0) {
                                    infBlocks.bitb = i20;
                                    infBlocks.bitk = i19;
                                    zStream.avail_in = i21;
                                    zStream.total_in += (long) (i22 - zStream.next_in_index);
                                    zStream.next_in_index = i22;
                                    infBlocks.write = i18;
                                    return infBlocks.inflate_flush(zStream, iInflate_fast);
                                }
                                i21--;
                                i20 |= (zStream.next_in[i22] & 255) << i19;
                                i19 += 8;
                                i22++;
                                iInflate_fast = 0;
                            }
                            i3 = (this.tree_index + (inflate_mask[i2] & i20)) * 3;
                            iArr = this.tree;
                            int i24 = iArr[i3 + 1];
                            i20 >>>= i24;
                            i19 -= i24;
                            i4 = iArr[i3];
                            if (i4 == 0) {
                                this.lit = iArr[i3 + 2];
                                this.mode = 6;
                            } else if ((i4 & 16) != 0) {
                                this.get = i4 & 15;
                                this.len = iArr[i3 + 2];
                                this.mode = 2;
                            } else if ((i4 & 64) == 0) {
                                this.need = i4;
                                this.tree_index = (i3 / 3) + iArr[i3 + 2];
                            } else if ((i4 & 32) != 0) {
                                this.mode = 7;
                            } else {
                                this.mode = 9;
                                zStream.msg = "invalid literal/length code";
                                infBlocks.bitb = i20;
                                infBlocks.bitk = i19;
                                zStream.avail_in = i21;
                                zStream.total_in += (long) (i22 - zStream.next_in_index);
                                zStream.next_in_index = i22;
                                infBlocks.write = i18;
                                return infBlocks.inflate_flush(zStream, -3);
                            }
                        }
                    } else {
                        this.need = this.lbits;
                        this.tree = this.ltree;
                        this.tree_index = this.ltree_index;
                        this.mode = 1;
                        i2 = this.need;
                        while (i19 < i2) {
                            if (i21 == 0) {
                                infBlocks.bitb = i20;
                                infBlocks.bitk = i19;
                                zStream.avail_in = i21;
                                zStream.total_in += (long) (i22 - zStream.next_in_index);
                                zStream.next_in_index = i22;
                                infBlocks.write = i18;
                                return infBlocks.inflate_flush(zStream, iInflate_fast);
                            }
                            i21--;
                            i20 |= (zStream.next_in[i22] & 255) << i19;
                            i19 += 8;
                            i22++;
                            iInflate_fast = 0;
                        }
                        i3 = (this.tree_index + (inflate_mask[i2] & i20)) * 3;
                        iArr = this.tree;
                        int i25 = iArr[i3 + 1];
                        i20 >>>= i25;
                        i19 -= i25;
                        i4 = iArr[i3];
                        if (i4 == 0) {
                            this.lit = iArr[i3 + 2];
                            this.mode = 6;
                        } else if ((i4 & 16) != 0) {
                            this.get = i4 & 15;
                            this.len = iArr[i3 + 2];
                            this.mode = 2;
                        } else if ((i4 & 64) == 0) {
                            this.need = i4;
                            this.tree_index = (i3 / 3) + iArr[i3 + 2];
                        } else if ((i4 & 32) != 0) {
                            this.mode = 7;
                        } else {
                            this.mode = 9;
                            zStream.msg = "invalid literal/length code";
                            infBlocks.bitb = i20;
                            infBlocks.bitk = i19;
                            zStream.avail_in = i21;
                            zStream.total_in += (long) (i22 - zStream.next_in_index);
                            zStream.next_in_index = i22;
                            infBlocks.write = i18;
                            return infBlocks.inflate_flush(zStream, -3);
                        }
                    }
                    break;
                case 1:
                    i2 = this.need;
                    while (i19 < i2) {
                        if (i21 == 0) {
                            infBlocks.bitb = i20;
                            infBlocks.bitk = i19;
                            zStream.avail_in = i21;
                            zStream.total_in += (long) (i22 - zStream.next_in_index);
                            zStream.next_in_index = i22;
                            infBlocks.write = i18;
                            return infBlocks.inflate_flush(zStream, iInflate_fast);
                        }
                        i21--;
                        i20 |= (zStream.next_in[i22] & 255) << i19;
                        i19 += 8;
                        i22++;
                        iInflate_fast = 0;
                    }
                    i3 = (this.tree_index + (inflate_mask[i2] & i20)) * 3;
                    iArr = this.tree;
                    int i26 = iArr[i3 + 1];
                    i20 >>>= i26;
                    i19 -= i26;
                    i4 = iArr[i3];
                    if (i4 == 0) {
                        this.lit = iArr[i3 + 2];
                        this.mode = 6;
                    } else if ((i4 & 16) != 0) {
                        this.get = i4 & 15;
                        this.len = iArr[i3 + 2];
                        this.mode = 2;
                    } else if ((i4 & 64) == 0) {
                        this.need = i4;
                        this.tree_index = (i3 / 3) + iArr[i3 + 2];
                    } else if ((i4 & 32) != 0) {
                        this.mode = 7;
                    } else {
                        this.mode = 9;
                        zStream.msg = "invalid literal/length code";
                        infBlocks.bitb = i20;
                        infBlocks.bitk = i19;
                        zStream.avail_in = i21;
                        zStream.total_in += (long) (i22 - zStream.next_in_index);
                        zStream.next_in_index = i22;
                        infBlocks.write = i18;
                        return infBlocks.inflate_flush(zStream, -3);
                    }
                    break;
                case 2:
                    int i27 = this.get;
                    while (i19 < i27) {
                        if (i21 == 0) {
                            infBlocks.bitb = i20;
                            infBlocks.bitk = i19;
                            zStream.avail_in = i21;
                            zStream.total_in += (long) (i22 - zStream.next_in_index);
                            zStream.next_in_index = i22;
                            infBlocks.write = i18;
                            return infBlocks.inflate_flush(zStream, iInflate_fast);
                        }
                        i21--;
                        i20 |= (zStream.next_in[i22] & 255) << i19;
                        i19 += 8;
                        iInflate_fast = 0;
                        i22++;
                    }
                    this.len += i20 & inflate_mask[i27];
                    i20 >>= i27;
                    i19 -= i27;
                    this.need = this.dbits;
                    this.tree = this.dtree;
                    this.tree_index = this.dtree_index;
                    this.mode = 3;
                    i5 = this.need;
                    while (i19 < i5) {
                        if (i21 != 0) {
                            infBlocks.bitb = i20;
                            infBlocks.bitk = i19;
                            zStream.avail_in = i21;
                            zStream.total_in += (long) (i22 - zStream.next_in_index);
                            zStream.next_in_index = i22;
                            infBlocks.write = i18;
                            return infBlocks.inflate_flush(zStream, iInflate_fast);
                        }
                        i21--;
                        i20 |= (zStream.next_in[i22] & 255) << i19;
                        i19 += 8;
                        iInflate_fast = 0;
                        i22++;
                    }
                    i6 = (this.tree_index + (inflate_mask[i5] & i20)) * 3;
                    iArr2 = this.tree;
                    int i28 = iArr2[i6 + 1];
                    i20 >>= i28;
                    i19 -= i28;
                    i7 = iArr2[i6];
                    if ((i7 & 16) != 0) {
                        this.get = i7 & 15;
                        this.dist = iArr2[i6 + 2];
                        this.mode = 4;
                    } else if ((i7 & 64) == 0) {
                        this.need = i7;
                        this.tree_index = (i6 / 3) + iArr2[i6 + 2];
                    } else {
                        this.mode = 9;
                        zStream.msg = "invalid distance code";
                        infBlocks.bitb = i20;
                        infBlocks.bitk = i19;
                        zStream.avail_in = i21;
                        zStream.total_in += (long) (i22 - zStream.next_in_index);
                        zStream.next_in_index = i22;
                        infBlocks.write = i18;
                        return infBlocks.inflate_flush(zStream, -3);
                    }
                    break;
                case 3:
                    i5 = this.need;
                    while (i19 < i5) {
                        if (i21 != 0) {
                            infBlocks.bitb = i20;
                            infBlocks.bitk = i19;
                            zStream.avail_in = i21;
                            zStream.total_in += (long) (i22 - zStream.next_in_index);
                            zStream.next_in_index = i22;
                            infBlocks.write = i18;
                            return infBlocks.inflate_flush(zStream, iInflate_fast);
                        }
                        i21--;
                        i20 |= (zStream.next_in[i22] & 255) << i19;
                        i19 += 8;
                        iInflate_fast = 0;
                        i22++;
                    }
                    i6 = (this.tree_index + (inflate_mask[i5] & i20)) * 3;
                    iArr2 = this.tree;
                    int i29 = iArr2[i6 + 1];
                    i20 >>= i29;
                    i19 -= i29;
                    i7 = iArr2[i6];
                    if ((i7 & 16) != 0) {
                        this.get = i7 & 15;
                        this.dist = iArr2[i6 + 2];
                        this.mode = 4;
                    } else if ((i7 & 64) == 0) {
                        this.need = i7;
                        this.tree_index = (i6 / 3) + iArr2[i6 + 2];
                    } else {
                        this.mode = 9;
                        zStream.msg = "invalid distance code";
                        infBlocks.bitb = i20;
                        infBlocks.bitk = i19;
                        zStream.avail_in = i21;
                        zStream.total_in += (long) (i22 - zStream.next_in_index);
                        zStream.next_in_index = i22;
                        infBlocks.write = i18;
                        return infBlocks.inflate_flush(zStream, -3);
                    }
                    break;
                case 4:
                    int i30 = this.get;
                    while (i19 < i30) {
                        if (i21 == 0) {
                            infBlocks.bitb = i20;
                            infBlocks.bitk = i19;
                            zStream.avail_in = i21;
                            zStream.total_in += (long) (i22 - zStream.next_in_index);
                            zStream.next_in_index = i22;
                            infBlocks.write = i18;
                            return infBlocks.inflate_flush(zStream, iInflate_fast);
                        }
                        i21--;
                        i20 |= (zStream.next_in[i22] & 255) << i19;
                        i19 += 8;
                        i22++;
                        iInflate_fast = 0;
                    }
                    this.dist += inflate_mask[i30] & i20;
                    i20 >>= i30;
                    i19 -= i30;
                    this.mode = 5;
                    i8 = i18 - this.dist;
                    while (i8 < 0) {
                        i8 += infBlocks.end;
                    }
                    while (this.len != 0) {
                        if (i17 == 0) {
                            if (i18 == infBlocks.end && infBlocks.read != 0) {
                                if (infBlocks.read > 0) {
                                    i11 = infBlocks.read - 1;
                                } else {
                                    i11 = infBlocks.end;
                                }
                                i17 = i11;
                                i18 = i23;
                            }
                            if (i17 == 0) {
                                infBlocks.write = i18;
                                iInflate_fast = infBlocks.inflate_flush(zStream, iInflate_fast);
                                i18 = infBlocks.write;
                                if (i18 < infBlocks.read) {
                                    i17 = (infBlocks.read - i18) - 1;
                                } else {
                                    i17 = infBlocks.end - i18;
                                }
                                if (i18 == infBlocks.end && infBlocks.read != 0) {
                                    if (infBlocks.read > 0) {
                                        i10 = infBlocks.read - 1;
                                    } else {
                                        i10 = infBlocks.end;
                                    }
                                    i17 = i10;
                                    i18 = i23;
                                }
                                if (i17 == 0) {
                                    infBlocks.bitb = i20;
                                    infBlocks.bitk = i19;
                                    zStream.avail_in = i21;
                                    zStream.total_in += (long) (i22 - zStream.next_in_index);
                                    zStream.next_in_index = i22;
                                    infBlocks.write = i18;
                                    return infBlocks.inflate_flush(zStream, iInflate_fast);
                                }
                            }
                        }
                        int i31 = i18 + 1;
                        i9 = i8 + 1;
                        infBlocks.window[i18] = infBlocks.window[i8];
                        i17--;
                        if (i9 == infBlocks.end) {
                            i8 = 0;
                        } else {
                            i8 = i9;
                        }
                        this.len--;
                        i18 = i31;
                        i23 = 0;
                    }
                    this.mode = i23;
                    break;
                case 5:
                    i8 = i18 - this.dist;
                    while (i8 < 0) {
                        i8 += infBlocks.end;
                    }
                    while (this.len != 0) {
                        if (i17 == 0) {
                            if (i18 == infBlocks.end) {
                                if (infBlocks.read > 0) {
                                    i11 = infBlocks.read - 1;
                                } else {
                                    i11 = infBlocks.end;
                                }
                                i17 = i11;
                                i18 = i23;
                            }
                            if (i17 == 0) {
                                infBlocks.write = i18;
                                iInflate_fast = infBlocks.inflate_flush(zStream, iInflate_fast);
                                i18 = infBlocks.write;
                                if (i18 < infBlocks.read) {
                                    i17 = (infBlocks.read - i18) - 1;
                                } else {
                                    i17 = infBlocks.end - i18;
                                }
                                if (i18 == infBlocks.end) {
                                    if (infBlocks.read > 0) {
                                        i10 = infBlocks.read - 1;
                                    } else {
                                        i10 = infBlocks.end;
                                    }
                                    i17 = i10;
                                    i18 = i23;
                                }
                                if (i17 == 0) {
                                    infBlocks.bitb = i20;
                                    infBlocks.bitk = i19;
                                    zStream.avail_in = i21;
                                    zStream.total_in += (long) (i22 - zStream.next_in_index);
                                    zStream.next_in_index = i22;
                                    infBlocks.write = i18;
                                    return infBlocks.inflate_flush(zStream, iInflate_fast);
                                }
                            }
                        }
                        int i32 = i18 + 1;
                        i9 = i8 + 1;
                        infBlocks.window[i18] = infBlocks.window[i8];
                        i17--;
                        if (i9 == infBlocks.end) {
                            i8 = 0;
                        } else {
                            i8 = i9;
                        }
                        this.len--;
                        i18 = i32;
                        i23 = 0;
                    }
                    this.mode = i23;
                    break;
                case 6:
                    if (i17 == 0) {
                        if (i18 == infBlocks.end && infBlocks.read != 0) {
                            i17 = infBlocks.read > 0 ? infBlocks.read - 1 : infBlocks.end;
                            i18 = 0;
                        }
                        if (i17 == 0) {
                            infBlocks.write = i18;
                            int iInflate_flush = infBlocks.inflate_flush(zStream, iInflate_fast);
                            i18 = infBlocks.write;
                            i17 = i18 < infBlocks.read ? (infBlocks.read - i18) - 1 : infBlocks.end - i18;
                            if (i18 == infBlocks.end && infBlocks.read != 0) {
                                i17 = infBlocks.read > 0 ? infBlocks.read - 1 : infBlocks.end;
                                i18 = 0;
                            }
                            if (i17 == 0) {
                                infBlocks.bitb = i20;
                                infBlocks.bitk = i19;
                                zStream.avail_in = i21;
                                zStream.total_in += (long) (i22 - zStream.next_in_index);
                                zStream.next_in_index = i22;
                                infBlocks.write = i18;
                                return infBlocks.inflate_flush(zStream, iInflate_flush);
                            }
                        }
                    }
                    infBlocks.window[i18] = (byte) this.lit;
                    i17--;
                    this.mode = 0;
                    i18++;
                    iInflate_fast = 0;
                    break;
                case 7:
                    if (i19 > 7) {
                        i19 -= 8;
                        i21++;
                        i22--;
                    }
                    infBlocks.write = i18;
                    int iInflate_flush2 = infBlocks.inflate_flush(zStream, iInflate_fast);
                    i18 = infBlocks.write;
                    if (i18 < infBlocks.read) {
                        int i33 = infBlocks.read;
                    } else {
                        int i34 = infBlocks.end;
                    }
                    if (infBlocks.read != infBlocks.write) {
                        infBlocks.bitb = i20;
                        infBlocks.bitk = i19;
                        zStream.avail_in = i21;
                        zStream.total_in += (long) (i22 - zStream.next_in_index);
                        zStream.next_in_index = i22;
                        infBlocks.write = i18;
                        return infBlocks.inflate_flush(zStream, iInflate_flush2);
                    }
                    this.mode = 8;
                    infBlocks.bitb = i20;
                    infBlocks.bitk = i19;
                    zStream.avail_in = i21;
                    zStream.total_in += (long) (i22 - zStream.next_in_index);
                    zStream.next_in_index = i22;
                    infBlocks.write = i18;
                    return infBlocks.inflate_flush(zStream, 1);
                case 8:
                    infBlocks.bitb = i20;
                    infBlocks.bitk = i19;
                    zStream.avail_in = i21;
                    zStream.total_in += (long) (i22 - zStream.next_in_index);
                    zStream.next_in_index = i22;
                    infBlocks.write = i18;
                    return infBlocks.inflate_flush(zStream, 1);
                case 9:
                    infBlocks.bitb = i20;
                    infBlocks.bitk = i19;
                    zStream.avail_in = i21;
                    zStream.total_in += (long) (i22 - zStream.next_in_index);
                    zStream.next_in_index = i22;
                    infBlocks.write = i18;
                    return infBlocks.inflate_flush(zStream, -3);
                default:
                    infBlocks.bitb = i20;
                    infBlocks.bitk = i19;
                    zStream.avail_in = i21;
                    zStream.total_in += (long) (i22 - zStream.next_in_index);
                    zStream.next_in_index = i22;
                    infBlocks.write = i18;
                    return infBlocks.inflate_flush(zStream, -2);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:76:0x01c6  */
    int inflate_fast(int i, int i2, int[] iArr, int i3, int[] iArr2, int i4, InfBlocks infBlocks, ZStream zStream) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9 = zStream.next_in_index;
        int i10 = zStream.avail_in;
        int i11 = infBlocks.bitb;
        int i12 = infBlocks.bitk;
        int i13 = infBlocks.write;
        int i14 = i13 < infBlocks.read ? (infBlocks.read - i13) - 1 : infBlocks.end - i13;
        int[] iArr3 = inflate_mask;
        int i15 = iArr3[i];
        int i16 = iArr3[i2];
        while (true) {
            if (i12 < 20) {
                i10--;
                i11 |= (zStream.next_in[i9] & 255) << i12;
                i12 += 8;
                i9++;
            } else {
                int i17 = i11 & i15;
                int i18 = (i3 + i17) * 3;
                int i19 = iArr[i18];
                if (i19 == 0) {
                    int i20 = iArr[i18 + 1];
                    i11 >>= i20;
                    i12 -= i20;
                    i6 = i13 + 1;
                    infBlocks.window[i13] = (byte) iArr[i18 + 2];
                } else {
                    while (true) {
                        int i21 = iArr[i18 + 1];
                        i11 >>= i21;
                        i12 -= i21;
                        if ((i19 & 16) != 0) {
                            int i22 = i19 & 15;
                            int i23 = iArr[i18 + 2] + (inflate_mask[i22] & i11);
                            int i24 = i11 >> i22;
                            int i25 = i12 - i22;
                            while (i25 < 15) {
                                i10--;
                                i24 |= (zStream.next_in[i9] & 255) << i25;
                                i25 += 8;
                                i9++;
                            }
                            int i26 = i24 & i16;
                            int i27 = (i4 + i26) * 3;
                            int i28 = iArr2[i27];
                            while (true) {
                                int i29 = iArr2[i27 + 1];
                                i24 >>= i29;
                                i25 -= i29;
                                if ((i28 & 16) != 0) {
                                    int i30 = i28 & 15;
                                    int i31 = i9;
                                    int i32 = i10;
                                    while (i25 < i30) {
                                        i32--;
                                        i24 |= (zStream.next_in[i31] & 255) << i25;
                                        i25 += 8;
                                        i31++;
                                    }
                                    int i33 = iArr2[i27 + 2] + (inflate_mask[i30] & i24);
                                    int i34 = i24 >> i30;
                                    int i35 = i25 - i30;
                                    int i36 = i14 - i23;
                                    if (i13 >= i33) {
                                        int i37 = i13 - i33;
                                        int i38 = i13 - i37;
                                        if (i38 > 0 && 2 > i38) {
                                            int i39 = i13 + 1;
                                            int i40 = i37 + 1;
                                            infBlocks.window[i13] = infBlocks.window[i37];
                                            i13 += 2;
                                            i5 = i37 + 2;
                                            infBlocks.window[i39] = infBlocks.window[i40];
                                        } else {
                                            System.arraycopy(infBlocks.window, i37, infBlocks.window, i13, 2);
                                            i13 += 2;
                                            i5 = i37 + 2;
                                        }
                                        i23 -= 2;
                                    } else {
                                        i5 = i13 - i33;
                                        do {
                                            i5 += infBlocks.end;
                                        } while (i5 < 0);
                                        int i41 = infBlocks.end - i5;
                                        if (i23 > i41) {
                                            i23 -= i41;
                                            int i42 = i13 - i5;
                                            if (i42 <= 0 || i41 <= i42) {
                                                System.arraycopy(infBlocks.window, i5, infBlocks.window, i13, i41);
                                                i13 += i41;
                                            } else {
                                                while (true) {
                                                    int i43 = i5 + 1;
                                                    infBlocks.window[i13] = infBlocks.window[i5];
                                                    i41--;
                                                    i13++;
                                                    if (i41 == 0) {
                                                        break;
                                                    }
                                                    i5 = i43;
                                                }
                                            }
                                            i5 = 0;
                                        }
                                    }
                                    int i44 = i13 - i5;
                                    if (i44 <= 0 || i23 <= i44) {
                                        System.arraycopy(infBlocks.window, i5, infBlocks.window, i13, i23);
                                        i13 += i23;
                                    } else {
                                        while (true) {
                                            int i45 = i5 + 1;
                                            infBlocks.window[i13] = infBlocks.window[i5];
                                            i23--;
                                            i13++;
                                            if (i23 == 0) {
                                                break;
                                            }
                                            i5 = i45;
                                        }
                                    }
                                    i10 = i32;
                                    i9 = i31;
                                    i11 = i34;
                                    i12 = i35;
                                    i14 = i36;
                                    break;
                                }
                                if ((i28 & 64) == 0) {
                                    i26 = i26 + iArr2[i27 + 2] + (inflate_mask[i28] & i24);
                                    i27 = (i4 + i26) * 3;
                                    i28 = iArr2[i27];
                                } else {
                                    zStream.msg = "invalid distance code";
                                    int i46 = zStream.avail_in - i10;
                                    int i47 = i25 >> 3;
                                    if (i47 < i46) {
                                        i46 = i47;
                                    }
                                    int i48 = i9 - i46;
                                    infBlocks.bitb = i24;
                                    infBlocks.bitk = i25 - (i46 << 3);
                                    zStream.avail_in = i10 + i46;
                                    zStream.total_in += (long) (i48 - zStream.next_in_index);
                                    zStream.next_in_index = i48;
                                    infBlocks.write = i13;
                                    return -3;
                                }
                            }
                        } else {
                            if ((i19 & 64) != 0) {
                                if ((i19 & 32) != 0) {
                                    int i49 = zStream.avail_in - i10;
                                    int i50 = i12 >> 3;
                                    if (i50 < i49) {
                                        i49 = i50;
                                    }
                                    int i51 = i9 - i49;
                                    infBlocks.bitb = i11;
                                    infBlocks.bitk = i12 - (i49 << 3);
                                    zStream.avail_in = i10 + i49;
                                    zStream.total_in += (long) (i51 - zStream.next_in_index);
                                    zStream.next_in_index = i51;
                                    infBlocks.write = i13;
                                    return 1;
                                }
                                zStream.msg = "invalid literal/length code";
                                int i52 = zStream.avail_in - i10;
                                int i53 = i12 >> 3;
                                if (i53 < i52) {
                                    i52 = i53;
                                }
                                int i54 = i9 - i52;
                                infBlocks.bitb = i11;
                                infBlocks.bitk = i12 - (i52 << 3);
                                zStream.avail_in = i10 + i52;
                                zStream.total_in += (long) (i54 - zStream.next_in_index);
                                zStream.next_in_index = i54;
                                infBlocks.write = i13;
                                return -3;
                            }
                            i17 = i17 + iArr[i18 + 2] + (inflate_mask[i19] & i11);
                            i18 = (i3 + i17) * 3;
                            i19 = iArr[i18];
                            if (i19 == 0) {
                                int i55 = iArr[i18 + 1];
                                i11 >>= i55;
                                i12 -= i55;
                                i6 = i13 + 1;
                                infBlocks.window[i13] = (byte) iArr[i18 + 2];
                            }
                        }
                    }
                    if (i14 >= 258 || i10 < 10) {
                        i7 = zStream.avail_in - i10;
                        i8 = i12 >> 3;
                        if (i8 < i7) {
                            i7 = i8;
                        }
                        int i56 = i9 - i7;
                        infBlocks.bitb = i11;
                        infBlocks.bitk = i12 - (i7 << 3);
                        zStream.avail_in = i10 + i7;
                        zStream.total_in += (long) (i56 - zStream.next_in_index);
                        zStream.next_in_index = i56;
                        infBlocks.write = i13;
                        return 0;
                    }
                }
                i14--;
                i13 = i6;
                if (i14 >= 258) {
                }
                i7 = zStream.avail_in - i10;
                i8 = i12 >> 3;
                if (i8 < i7) {
                    i7 = i8;
                }
                int i57 = i9 - i7;
                infBlocks.bitb = i11;
                infBlocks.bitk = i12 - (i7 << 3);
                zStream.avail_in = i10 + i7;
                zStream.total_in += (long) (i57 - zStream.next_in_index);
                zStream.next_in_index = i57;
                infBlocks.write = i13;
                return 0;
            }
        }
    }
}
