package com.iiordanov.jcraft.jzlib;

import kotlin.UShort;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes2.dex */
public final class Deflate {
    private static final int BL_CODES = 19;
    private static final int BUSY_STATE = 113;
    private static final int BlockDone = 1;
    private static final int Buf_size = 16;
    private static final int DEF_MEM_LEVEL = 8;
    private static final int DYN_TREES = 2;
    private static final int D_CODES = 30;
    private static final int END_BLOCK = 256;
    private static final int FAST = 1;
    private static final int FINISH_STATE = 666;
    private static final int FinishDone = 3;
    private static final int FinishStarted = 2;
    private static final int HEAP_SIZE = 573;
    private static final int INIT_STATE = 42;
    private static final int LENGTH_CODES = 29;
    private static final int LITERALS = 256;
    private static final int L_CODES = 286;
    private static final int MAX_BITS = 15;
    private static final int MAX_MATCH = 258;
    private static final int MAX_MEM_LEVEL = 9;
    private static final int MAX_WBITS = 15;
    private static final int MIN_LOOKAHEAD = 262;
    private static final int MIN_MATCH = 3;
    private static final int NeedMore = 0;
    private static final int PRESET_DICT = 32;
    private static final int REPZ_11_138 = 18;
    private static final int REPZ_3_10 = 17;
    private static final int REP_3_6 = 16;
    private static final int SLOW = 2;
    private static final int STATIC_TREES = 1;
    private static final int STORED = 0;
    private static final int STORED_BLOCK = 0;
    private static final int Z_ASCII = 1;
    private static final int Z_BINARY = 0;
    private static final int Z_BUF_ERROR = -5;
    private static final int Z_DATA_ERROR = -3;
    private static final int Z_DEFAULT_COMPRESSION = -1;
    private static final int Z_DEFAULT_STRATEGY = 0;
    private static final int Z_DEFLATED = 8;
    private static final int Z_ERRNO = -1;
    private static final int Z_FILTERED = 1;
    private static final int Z_FINISH = 4;
    private static final int Z_FULL_FLUSH = 3;
    private static final int Z_HUFFMAN_ONLY = 2;
    private static final int Z_MEM_ERROR = -4;
    private static final int Z_NEED_DICT = 2;
    private static final int Z_NO_FLUSH = 0;
    private static final int Z_OK = 0;
    private static final int Z_PARTIAL_FLUSH = 1;
    private static final int Z_STREAM_END = 1;
    private static final int Z_STREAM_ERROR = -2;
    private static final int Z_SYNC_FLUSH = 2;
    private static final int Z_UNKNOWN = 2;
    private static final int Z_VERSION_ERROR = -6;
    private static final Config[] config_table = {new Config(0, 0, 0, 0, 0), new Config(4, 4, 8, 4, 1), new Config(4, 5, 16, 8, 1), new Config(4, 6, 32, 32, 1), new Config(4, 4, 16, 16, 2), new Config(8, 16, 32, 32, 2), new Config(8, 16, 128, 128, 2), new Config(8, 32, 128, 256, 2), new Config(32, 128, 258, 1024, 2), new Config(32, 258, 258, 4096, 2)};
    private static final String[] z_errmsg = {"need dictionary", "stream end", "", "file error", "stream error", "data error", "insufficient memory", "buffer error", "incompatible version", ""};
    short bi_buf;
    int bi_valid;
    int block_start;
    int d_buf;
    byte data_type;
    int good_match;
    int hash_bits;
    int hash_mask;
    int hash_shift;
    int hash_size;
    short[] head;
    int heap_len;
    int heap_max;
    int ins_h;
    int l_buf;
    int last_eob_len;
    int last_flush;
    int last_lit;
    int level;
    int lit_bufsize;
    int lookahead;
    int match_available;
    int match_length;
    int match_start;
    int matches;
    int max_chain_length;
    int max_lazy_match;
    byte method;
    int nice_match;
    int noheader;
    int opt_len;
    int pending;
    byte[] pending_buf;
    int pending_buf_size;
    int pending_out;
    short[] prev;
    int prev_length;
    int prev_match;
    int static_len;
    int status;
    int strategy;
    ZStream strm;
    int strstart;
    int w_bits;
    int w_mask;
    int w_size;
    byte[] window;
    int window_size;
    Tree l_desc = new Tree();
    Tree d_desc = new Tree();
    Tree bl_desc = new Tree();
    short[] bl_count = new short[16];
    int[] heap = new int[HEAP_SIZE];
    byte[] depth = new byte[HEAP_SIZE];
    short[] dyn_ltree = new short[1146];
    short[] dyn_dtree = new short[122];
    short[] bl_tree = new short[78];

    static class Config {
        int func;
        int good_length;
        int max_chain;
        int max_lazy;
        int nice_length;

        Config(int i, int i2, int i3, int i4, int i5) {
            this.good_length = i;
            this.max_lazy = i2;
            this.nice_length = i3;
            this.max_chain = i4;
            this.func = i5;
        }
    }

    Deflate() {
    }

    void lm_init() {
        this.window_size = this.w_size * 2;
        this.head[this.hash_size - 1] = 0;
        for (int i = 0; i < this.hash_size - 1; i++) {
            this.head[i] = 0;
        }
        Config[] configArr = config_table;
        this.max_lazy_match = configArr[this.level].max_lazy;
        this.good_match = configArr[this.level].good_length;
        this.nice_match = configArr[this.level].nice_length;
        this.max_chain_length = configArr[this.level].max_chain;
        this.strstart = 0;
        this.block_start = 0;
        this.lookahead = 0;
        this.prev_length = 2;
        this.match_length = 2;
        this.match_available = 0;
        this.ins_h = 0;
    }

    void tr_init() {
        this.l_desc.dyn_tree = this.dyn_ltree;
        this.l_desc.stat_desc = StaticTree.static_l_desc;
        this.d_desc.dyn_tree = this.dyn_dtree;
        this.d_desc.stat_desc = StaticTree.static_d_desc;
        this.bl_desc.dyn_tree = this.bl_tree;
        this.bl_desc.stat_desc = StaticTree.static_bl_desc;
        this.bi_buf = (short) 0;
        this.bi_valid = 0;
        this.last_eob_len = 8;
        init_block();
    }

    void init_block() {
        for (int i = 0; i < L_CODES; i++) {
            this.dyn_ltree[i * 2] = 0;
        }
        for (int i2 = 0; i2 < 30; i2++) {
            this.dyn_dtree[i2 * 2] = 0;
        }
        for (int i3 = 0; i3 < 19; i3++) {
            this.bl_tree[i3 * 2] = 0;
        }
        this.dyn_ltree[512] = 1;
        this.static_len = 0;
        this.opt_len = 0;
        this.matches = 0;
        this.last_lit = 0;
    }

    void pqdownheap(short[] sArr, int i) {
        int i2 = this.heap[i];
        int i3 = i << 1;
        while (true) {
            int i4 = this.heap_len;
            if (i3 > i4) {
                break;
            }
            if (i3 < i4) {
                int[] iArr = this.heap;
                int i5 = i3 + 1;
                if (smaller(sArr, iArr[i5], iArr[i3], this.depth)) {
                    i3 = i5;
                }
            }
            if (smaller(sArr, i2, this.heap[i3], this.depth)) {
                break;
            }
            int[] iArr2 = this.heap;
            iArr2[i] = iArr2[i3];
            int i6 = i3;
            i3 <<= 1;
            i = i6;
        }
        this.heap[i] = i2;
    }

    static boolean smaller(short[] sArr, int i, int i2, byte[] bArr) {
        short s = sArr[i * 2];
        short s2 = sArr[i2 * 2];
        return s < s2 || (s == s2 && bArr[i] <= bArr[i2]);
    }

    void scan_tree(short[] sArr, int i) {
        int i2;
        int i3;
        short s = sArr[1];
        if (s == 0) {
            i2 = 138;
            i3 = 3;
        } else {
            i2 = 7;
            i3 = 4;
        }
        s = -1;
        sArr[((i + 1) * 2) + 1] = -1;
        int i4 = 0;
        int i5 = 0;
        while (i4 <= i) {
            i4++;
            short s2 = sArr[(i4 * 2) + 1];
            i5++;
            if (i5 >= i2 || s != s2) {
                if (i5 < i3) {
                    short[] sArr2 = this.bl_tree;
                    int i6 = s * 2;
                    sArr2[i6] = (short) (sArr2[i6] + i5);
                } else if (s != 0) {
                    if (s != s) {
                        short[] sArr3 = this.bl_tree;
                        int i7 = s * 2;
                        sArr3[i7] = (short) (sArr3[i7] + 1);
                    }
                    short[] sArr4 = this.bl_tree;
                    sArr4[32] = (short) (sArr4[32] + 1);
                } else if (i5 <= 10) {
                    short[] sArr5 = this.bl_tree;
                    sArr5[34] = (short) (sArr5[34] + 1);
                } else {
                    short[] sArr6 = this.bl_tree;
                    sArr6[36] = (short) (sArr6[36] + 1);
                }
                if (s2 == 0) {
                    i2 = 138;
                } else {
                    if (s == s2) {
                        i2 = 6;
                    } else {
                        s = s;
                        i2 = 7;
                        i3 = 4;
                    }
                    i5 = 0;
                }
                i3 = 3;
                i5 = 0;
            }
            s = s2;
        }
    }

    int build_bl_tree() {
        scan_tree(this.dyn_ltree, this.l_desc.max_code);
        scan_tree(this.dyn_dtree, this.d_desc.max_code);
        this.bl_desc.build_tree(this);
        int i = 18;
        while (i >= 3 && this.bl_tree[(Tree.bl_order[i] * 2) + 1] == 0) {
            i--;
        }
        this.opt_len += ((i + 1) * 3) + 14;
        return i;
    }

    void send_all_trees(int i, int i2, int i3) {
        send_bits(i - 257, 5);
        int i4 = i2 - 1;
        send_bits(i4, 5);
        send_bits(i3 - 4, 4);
        for (int i5 = 0; i5 < i3; i5++) {
            send_bits(this.bl_tree[(Tree.bl_order[i5] * 2) + 1], 3);
        }
        send_tree(this.dyn_ltree, i - 1);
        send_tree(this.dyn_dtree, i4);
    }

    void send_tree(short[] sArr, int i) {
        int i2;
        int i3;
        int i4 = 1;
        short s = sArr[1];
        if (s == 0) {
            i2 = 138;
            i3 = 3;
        } else {
            i2 = 7;
            i3 = 4;
        }
        s = -1;
        int i5 = 0;
        int i6 = 0;
        while (i5 <= i) {
            i5++;
            short s2 = sArr[(i5 * 2) + i4];
            int i7 = i6 + 1;
            if (i7 >= i2 || s != s2) {
                if (i7 < i3) {
                    do {
                        send_code(s, this.bl_tree);
                        i7--;
                    } while (i7 != 0);
                } else if (s != 0) {
                    if (s != s) {
                        send_code(s, this.bl_tree);
                    } else {
                        i6 = i7;
                    }
                    send_code(16, this.bl_tree);
                    send_bits(i6 - 3, 2);
                } else if (i7 <= 10) {
                    send_code(17, this.bl_tree);
                    send_bits(i6 - 2, 3);
                } else {
                    send_code(18, this.bl_tree);
                    send_bits(i6 - 10, 7);
                }
                if (s2 == 0) {
                    i2 = 138;
                } else {
                    if (s == s2) {
                        i2 = 6;
                    } else {
                        s = s;
                        i2 = 7;
                        i3 = 4;
                    }
                    i6 = 0;
                }
                i3 = 3;
                i6 = 0;
            } else {
                i6 = i7;
            }
            s = s2;
            i4 = 1;
        }
    }

    final void put_byte(byte[] bArr, int i, int i2) {
        System.arraycopy(bArr, i, this.pending_buf, this.pending, i2);
        this.pending += i2;
    }

    final void put_byte(byte b) {
        byte[] bArr = this.pending_buf;
        int i = this.pending;
        this.pending = i + 1;
        bArr[i] = b;
    }

    final void put_short(int i) {
        put_byte((byte) i);
        put_byte((byte) (i >>> 8));
    }

    final void putShortMSB(int i) {
        put_byte((byte) (i >> 8));
        put_byte((byte) i);
    }

    final void send_code(int i, short[] sArr) {
        int i2 = i * 2;
        send_bits(sArr[i2] & UShort.MAX_VALUE, sArr[i2 + 1] & UShort.MAX_VALUE);
    }

    void send_bits(int i, int i2) {
        int i3 = this.bi_valid;
        if (i3 > 16 - i2) {
            short s = (short) (((i << i3) & 65535) | this.bi_buf);
            this.bi_buf = s;
            put_short(s);
            int i4 = this.bi_valid;
            this.bi_buf = (short) (i >>> (16 - i4));
            this.bi_valid = i4 + (i2 - 16);
            return;
        }
        this.bi_buf = (short) (((i << i3) & 65535) | this.bi_buf);
        this.bi_valid = i3 + i2;
    }

    void _tr_align() {
        send_bits(2, 3);
        send_code(256, StaticTree.static_ltree);
        bi_flush();
        if ((this.last_eob_len + 11) - this.bi_valid < 9) {
            send_bits(2, 3);
            send_code(256, StaticTree.static_ltree);
            bi_flush();
        }
        this.last_eob_len = 7;
    }

    boolean _tr_tally(int i, int i2) {
        byte[] bArr = this.pending_buf;
        int i3 = this.d_buf;
        int i4 = this.last_lit;
        bArr[(i4 * 2) + i3] = (byte) (i >>> 8);
        bArr[i3 + (i4 * 2) + 1] = (byte) i;
        bArr[this.l_buf + i4] = (byte) i2;
        this.last_lit = i4 + 1;
        if (i == 0) {
            short[] sArr = this.dyn_ltree;
            int i5 = i2 * 2;
            sArr[i5] = (short) (sArr[i5] + 1);
        } else {
            this.matches++;
            short[] sArr2 = this.dyn_ltree;
            int i6 = (Tree._length_code[i2] + 257) * 2;
            sArr2[i6] = (short) (sArr2[i6] + 1);
            short[] sArr3 = this.dyn_dtree;
            int iD_code = Tree.d_code(i - 1) * 2;
            sArr3[iD_code] = (short) (sArr3[iD_code] + 1);
        }
        int i7 = this.last_lit;
        if ((i7 & 8191) == 0 && this.level > 2) {
            int i8 = i7 * 8;
            int i9 = this.strstart - this.block_start;
            for (int i10 = 0; i10 < 30; i10++) {
                i8 = (int) (((long) i8) + (((long) this.dyn_dtree[i10 * 2]) * (((long) Tree.extra_dbits[i10]) + 5)));
            }
            int i11 = i8 >>> 3;
            if (this.matches < this.last_lit / 2 && i11 < i9 / 2) {
                return true;
            }
        }
        return this.last_lit == this.lit_bufsize - 1;
    }

    void compress_block(short[] sArr, short[] sArr2) {
        if (this.last_lit != 0) {
            int i = 0;
            do {
                byte[] bArr = this.pending_buf;
                int i2 = this.d_buf;
                int i3 = i * 2;
                int i4 = (bArr[i2 + i3 + 1] & 255) | ((bArr[i2 + i3] << 8) & 65280);
                int i5 = bArr[this.l_buf + i] & 255;
                i++;
                if (i4 == 0) {
                    send_code(i5, sArr);
                } else {
                    byte b = Tree._length_code[i5];
                    send_code(b + 257, sArr);
                    int i6 = Tree.extra_lbits[b];
                    if (i6 != 0) {
                        send_bits(i5 - Tree.base_length[b], i6);
                    }
                    int i7 = i4 - 1;
                    int iD_code = Tree.d_code(i7);
                    send_code(iD_code, sArr2);
                    int i8 = Tree.extra_dbits[iD_code];
                    if (i8 != 0) {
                        send_bits(i7 - Tree.base_dist[iD_code], i8);
                    }
                }
            } while (i < this.last_lit);
        }
        send_code(256, sArr);
        this.last_eob_len = sArr[513];
    }

    void set_data_type() {
        int i = 0;
        int i2 = 0;
        while (i < 7) {
            i2 += this.dyn_ltree[i * 2];
            i++;
        }
        int i3 = 0;
        while (i < 128) {
            i3 += this.dyn_ltree[i * 2];
            i++;
        }
        while (i < 256) {
            i2 += this.dyn_ltree[i * 2];
            i++;
        }
        this.data_type = (byte) (i2 <= (i3 >>> 2) ? 1 : 0);
    }

    void bi_flush() {
        int i = this.bi_valid;
        if (i == 16) {
            put_short(this.bi_buf);
            this.bi_buf = (short) 0;
            this.bi_valid = 0;
        } else if (i >= 8) {
            put_byte((byte) this.bi_buf);
            this.bi_buf = (short) (this.bi_buf >>> 8);
            this.bi_valid -= 8;
        }
    }

    void bi_windup() {
        int i = this.bi_valid;
        if (i > 8) {
            put_short(this.bi_buf);
        } else if (i > 0) {
            put_byte((byte) this.bi_buf);
        }
        this.bi_buf = (short) 0;
        this.bi_valid = 0;
    }

    void copy_block(int i, int i2, boolean z) {
        bi_windup();
        this.last_eob_len = 8;
        if (z) {
            put_short((short) i2);
            put_short((short) (~i2));
        }
        put_byte(this.window, i, i2);
    }

    void flush_block_only(boolean z) {
        int i = this.block_start;
        _tr_flush_block(i >= 0 ? i : -1, this.strstart - i, z);
        this.block_start = this.strstart;
        this.strm.flush_pending();
    }

    int deflate_stored(int i) {
        int i2 = this.pending_buf_size;
        int i3 = 65535 > i2 + (-5) ? i2 - 5 : 65535;
        while (true) {
            if (this.lookahead <= 1) {
                fill_window();
                int i4 = this.lookahead;
                if (i4 == 0 && i == 0) {
                    return 0;
                }
                if (i4 == 0) {
                    flush_block_only(i == 4);
                    if (this.strm.avail_out == 0) {
                        return i == 4 ? 2 : 0;
                    }
                    return i == 4 ? 3 : 1;
                }
            }
            int i5 = this.strstart + this.lookahead;
            this.strstart = i5;
            this.lookahead = 0;
            int i6 = this.block_start + i3;
            if (i5 == 0 || i5 >= i6) {
                this.lookahead = i5 - i6;
                this.strstart = i6;
                flush_block_only(false);
                if (this.strm.avail_out == 0) {
                    return 0;
                }
            }
            if (this.strstart - this.block_start >= this.w_size - 262) {
                flush_block_only(false);
                if (this.strm.avail_out == 0) {
                    return 0;
                }
            }
        }
    }

    void _tr_stored_block(int i, int i2, boolean z) {
        send_bits(z ? 1 : 0, 3);
        copy_block(i, i2, true);
    }

    void _tr_flush_block(int i, int i2, boolean z) {
        int i3;
        int iBuild_bl_tree;
        int i4;
        if (this.level > 0) {
            if (this.data_type == 2) {
                set_data_type();
            }
            this.l_desc.build_tree(this);
            this.d_desc.build_tree(this);
            iBuild_bl_tree = build_bl_tree();
            i3 = (this.opt_len + 10) >>> 3;
            i4 = (this.static_len + 10) >>> 3;
            if (i4 <= i3) {
                i3 = i4;
            }
        } else {
            i3 = i2 + 5;
            iBuild_bl_tree = 0;
            i4 = i3;
        }
        if (i2 + 4 <= i3 && i != -1) {
            _tr_stored_block(i, i2, z);
        } else if (i4 == i3) {
            send_bits((z ? 1 : 0) + 2, 3);
            compress_block(StaticTree.static_ltree, StaticTree.static_dtree);
        } else {
            send_bits((z ? 1 : 0) + 4, 3);
            send_all_trees(this.l_desc.max_code + 1, this.d_desc.max_code + 1, iBuild_bl_tree + 1);
            compress_block(this.dyn_ltree, this.dyn_dtree);
        }
        init_block();
        if (z) {
            bi_windup();
        }
    }

    void fill_window() {
        int i;
        int i2;
        do {
            int i3 = this.window_size;
            int i4 = this.lookahead;
            int i5 = this.strstart;
            int i6 = (i3 - i4) - i5;
            if (i6 == 0 && i5 == 0 && i4 == 0) {
                i6 = this.w_size;
            } else if (i6 == -1) {
                i6--;
            } else {
                int i7 = this.w_size;
                if (i5 >= (i7 + i7) - 262) {
                    byte[] bArr = this.window;
                    System.arraycopy(bArr, i7, bArr, 0, i7);
                    int i8 = this.match_start;
                    int i9 = this.w_size;
                    this.match_start = i8 - i9;
                    this.strstart -= i9;
                    this.block_start -= i9;
                    int i10 = this.hash_size;
                    int i11 = i10;
                    do {
                        short[] sArr = this.head;
                        i10--;
                        int i12 = sArr[i10] & UShort.MAX_VALUE;
                        i = this.w_size;
                        sArr[i10] = i12 >= i ? (short) (i12 - i) : (short) 0;
                        i11--;
                    } while (i11 != 0);
                    int i13 = i;
                    do {
                        short[] sArr2 = this.prev;
                        i--;
                        int i14 = sArr2[i] & UShort.MAX_VALUE;
                        i2 = this.w_size;
                        sArr2[i] = i14 >= i2 ? (short) (i14 - i2) : (short) 0;
                        i13--;
                    } while (i13 != 0);
                    i6 += i2;
                }
            }
            if (this.strm.avail_in == 0) {
                return;
            }
            int i15 = this.lookahead + this.strm.read_buf(this.window, this.strstart + this.lookahead, i6);
            this.lookahead = i15;
            if (i15 >= 3) {
                byte[] bArr2 = this.window;
                int i16 = this.strstart;
                int i17 = bArr2[i16] & 255;
                this.ins_h = i17;
                this.ins_h = ((bArr2[i16 + 1] & 255) ^ (i17 << this.hash_shift)) & this.hash_mask;
            }
            if (i15 >= 262) {
                return;
            }
        } while (this.strm.avail_in != 0);
    }

    int deflate_fast(int i) {
        boolean z_tr_tally;
        int i2;
        int i3;
        int i4;
        int i5 = 0;
        while (true) {
            if (this.lookahead < 262) {
                fill_window();
                int i6 = this.lookahead;
                if (i6 < 262 && i == 0) {
                    return 0;
                }
                if (i6 == 0) {
                    flush_block_only(i == 4);
                    if (this.strm.avail_out == 0) {
                        return i == 4 ? 2 : 0;
                    }
                    return i == 4 ? 3 : 1;
                }
            }
            if (this.lookahead >= 3) {
                int i7 = this.ins_h << this.hash_shift;
                byte[] bArr = this.window;
                int i8 = this.strstart;
                int i9 = (i7 ^ (bArr[i8 + 2] & 255)) & this.hash_mask;
                this.ins_h = i9;
                short[] sArr = this.head;
                short s = sArr[i9];
                int i10 = s & UShort.MAX_VALUE;
                this.prev[this.w_mask & i8] = s;
                sArr[i9] = (short) i8;
                i5 = i10;
            }
            if (i5 != 0 && ((this.strstart - i5) & 65535) <= this.w_size - 262 && this.strategy != 2) {
                this.match_length = longest_match(i5);
            }
            int i11 = this.match_length;
            if (i11 >= 3) {
                z_tr_tally = _tr_tally(this.strstart - this.match_start, i11 - 3);
                int i12 = this.lookahead;
                int i13 = this.match_length;
                int i14 = i12 - i13;
                this.lookahead = i14;
                if (i13 <= this.max_lazy_match && i14 >= 3) {
                    this.match_length = i13 - 1;
                    do {
                        i2 = this.strstart;
                        int i15 = i2 + 1;
                        this.strstart = i15;
                        int i16 = ((this.ins_h << this.hash_shift) ^ (this.window[i2 + 3] & 255)) & this.hash_mask;
                        this.ins_h = i16;
                        short[] sArr2 = this.head;
                        short s2 = sArr2[i16];
                        i3 = s2 & UShort.MAX_VALUE;
                        this.prev[this.w_mask & i15] = s2;
                        sArr2[i16] = (short) i15;
                        i4 = this.match_length - 1;
                        this.match_length = i4;
                    } while (i4 != 0);
                    this.strstart = i2 + 2;
                    i5 = i3;
                } else {
                    int i17 = this.strstart + i13;
                    this.strstart = i17;
                    this.match_length = 0;
                    byte[] bArr2 = this.window;
                    int i18 = bArr2[i17] & 255;
                    this.ins_h = i18;
                    this.ins_h = ((bArr2[i17 + 1] & 255) ^ (i18 << this.hash_shift)) & this.hash_mask;
                }
            } else {
                z_tr_tally = _tr_tally(0, this.window[this.strstart] & 255);
                this.lookahead--;
                this.strstart++;
            }
            if (z_tr_tally) {
                flush_block_only(false);
                if (this.strm.avail_out == 0) {
                    return 0;
                }
            }
        }
    }

    int deflate_slow(int i) {
        int i2;
        int i3;
        int i4 = 0;
        while (true) {
            if (this.lookahead < 262) {
                fill_window();
                int i5 = this.lookahead;
                if (i5 < 262 && i == 0) {
                    return 0;
                }
                if (i5 == 0) {
                    if (this.match_available != 0) {
                        _tr_tally(0, this.window[this.strstart - 1] & 255);
                        this.match_available = 0;
                    }
                    flush_block_only(i == 4);
                    if (this.strm.avail_out == 0) {
                        return i == 4 ? 2 : 0;
                    }
                    return i == 4 ? 3 : 1;
                }
            }
            if (this.lookahead >= 3) {
                int i6 = this.ins_h << this.hash_shift;
                byte[] bArr = this.window;
                int i7 = this.strstart;
                int i8 = (i6 ^ (bArr[i7 + 2] & 255)) & this.hash_mask;
                this.ins_h = i8;
                short[] sArr = this.head;
                short s = sArr[i8];
                int i9 = s & UShort.MAX_VALUE;
                this.prev[this.w_mask & i7] = s;
                sArr[i8] = (short) i7;
                i4 = i9;
            }
            int i10 = this.match_length;
            this.prev_length = i10;
            this.prev_match = this.match_start;
            this.match_length = 2;
            if (i4 != 0 && i10 < this.max_lazy_match && ((this.strstart - i4) & 65535) <= this.w_size - 262) {
                if (this.strategy != 2) {
                    this.match_length = longest_match(i4);
                }
                int i11 = this.match_length;
                if (i11 <= 5 && (this.strategy == 1 || (i11 == 3 && this.strstart - this.match_start > 4096))) {
                    this.match_length = 2;
                }
            }
            int i12 = this.prev_length;
            if (i12 >= 3 && this.match_length <= i12) {
                int i13 = this.strstart;
                int i14 = (this.lookahead + i13) - 3;
                boolean z_tr_tally = _tr_tally((i13 - 1) - this.prev_match, i12 - 3);
                int i15 = this.lookahead;
                int i16 = this.prev_length;
                this.lookahead = i15 - (i16 - 1);
                this.prev_length = i16 - 2;
                do {
                    i2 = this.strstart;
                    int i17 = i2 + 1;
                    this.strstart = i17;
                    if (i17 <= i14) {
                        int i18 = ((this.ins_h << this.hash_shift) ^ (this.window[i2 + 3] & 255)) & this.hash_mask;
                        this.ins_h = i18;
                        short[] sArr2 = this.head;
                        short s2 = sArr2[i18];
                        int i19 = s2 & UShort.MAX_VALUE;
                        this.prev[this.w_mask & i17] = s2;
                        sArr2[i18] = (short) i17;
                        i4 = i19;
                    }
                    i3 = this.prev_length - 1;
                    this.prev_length = i3;
                } while (i3 != 0);
                this.match_available = 0;
                this.match_length = 2;
                this.strstart = i2 + 2;
                if (z_tr_tally) {
                    flush_block_only(false);
                    if (this.strm.avail_out == 0) {
                        return 0;
                    }
                } else {
                    continue;
                }
            } else if (this.match_available != 0) {
                if (_tr_tally(0, this.window[this.strstart - 1] & 255)) {
                    flush_block_only(false);
                }
                this.strstart++;
                this.lookahead--;
                if (this.strm.avail_out == 0) {
                    return 0;
                }
            } else {
                this.match_available = 1;
                this.strstart++;
                this.lookahead--;
            }
        }
    }

    int longest_match(int i) {
        int i2;
        byte[] bArr;
        int i3;
        byte b;
        int i4 = this.max_chain_length;
        int i5 = this.strstart;
        int i6 = this.prev_length;
        int i7 = this.w_size;
        int i8 = i5 > i7 + (-262) ? i5 - (i7 - 262) : 0;
        int i9 = this.nice_match;
        int i10 = this.w_mask;
        int i11 = i5 + 258;
        byte[] bArr2 = this.window;
        int i12 = i5 + i6;
        byte b2 = bArr2[i12 - 1];
        byte b3 = bArr2[i12];
        if (i6 >= this.good_match) {
            i4 >>= 2;
        }
        int i13 = this.lookahead;
        int i14 = i5;
        if (i9 <= i13) {
            i13 = i9;
        }
        int i15 = i6;
        int i16 = i4;
        int i17 = i;
        while (true) {
            byte[] bArr3 = this.window;
            int i18 = i17 + i15;
            if (bArr3[i18] == b3 && bArr3[i18 - 1] == b2 && bArr3[i17] == bArr3[i14] && bArr3[i17 + 1] == bArr3[i14 + 1]) {
                int i19 = i14 + 2;
                int i20 = i17 + 2;
                while (true) {
                    bArr = this.window;
                    i3 = i19 + 1;
                    b = b3;
                    if (bArr[i3] != bArr[i20 + 1]) {
                        break;
                    }
                    i3 = i19 + 2;
                    if (bArr[i3] != bArr[i20 + 2]) {
                        break;
                    }
                    i3 = i19 + 3;
                    if (bArr[i3] != bArr[i20 + 3]) {
                        break;
                    }
                    i3 = i19 + 4;
                    if (bArr[i3] != bArr[i20 + 4]) {
                        break;
                    }
                    i3 = i19 + 5;
                    if (bArr[i3] != bArr[i20 + 5]) {
                        break;
                    }
                    i3 = i19 + 6;
                    if (bArr[i3] != bArr[i20 + 6]) {
                        break;
                    }
                    i3 = i19 + 7;
                    if (bArr[i3] != bArr[i20 + 7]) {
                        break;
                    }
                    i19 += 8;
                    i20 += 8;
                    if (bArr[i19] != bArr[i20] || i19 >= i11) {
                        i3 = i19;
                        break;
                    }
                    b3 = b;
                }
                i2 = 258 - (i11 - i3);
                if (i2 > i15) {
                    this.match_start = i17;
                    if (i2 >= i13) {
                        break;
                    }
                    int i21 = i5 + i2;
                    b2 = bArr[i21 - 1];
                    i14 = i5;
                    b3 = bArr[i21];
                    i15 = i2;
                } else {
                    b3 = b;
                    i14 = i5;
                }
            } else {
                b3 = b3;
            }
            i17 = this.prev[i17 & i10] & UShort.MAX_VALUE;
            if (i17 <= i8 || (i16 = i16 - 1) == 0) {
                i2 = i15;
                break;
            }
        }
        int i22 = this.lookahead;
        return i2 <= i22 ? i2 : i22;
    }

    int deflateInit(ZStream zStream, int i, int i2) {
        return deflateInit2(zStream, i, 8, i2, 8, 0);
    }

    int deflateInit(ZStream zStream, int i) {
        return deflateInit(zStream, i, 15);
    }

    int deflateInit2(ZStream zStream, int i, int i2, int i3, int i4, int i5) {
        int i6;
        zStream.msg = null;
        if (i == -1) {
            i = 6;
        }
        if (i3 < 0) {
            i3 = -i3;
            i6 = 1;
        } else {
            i6 = 0;
        }
        if (i4 < 1 || i4 > 9 || i2 != 8 || i3 < 9 || i3 > 15 || i < 0 || i > 9 || i5 < 0 || i5 > 2) {
            return -2;
        }
        zStream.dstate = this;
        this.noheader = i6;
        this.w_bits = i3;
        int i7 = 1 << i3;
        this.w_size = i7;
        this.w_mask = i7 - 1;
        int i8 = i4 + 7;
        this.hash_bits = i8;
        int i9 = 1 << i8;
        this.hash_size = i9;
        this.hash_mask = i9 - 1;
        this.hash_shift = (i4 + 9) / 3;
        this.window = new byte[i7 * 2];
        this.prev = new short[i7];
        this.head = new short[i9];
        int i10 = 1 << (i4 + 6);
        this.lit_bufsize = i10;
        this.pending_buf = new byte[i10 * 4];
        this.pending_buf_size = i10 * 4;
        this.d_buf = i10 / 2;
        this.l_buf = i10 * 3;
        this.level = i;
        this.strategy = i5;
        this.method = (byte) i2;
        return deflateReset(zStream);
    }

    int deflateReset(ZStream zStream) {
        zStream.total_out = 0L;
        zStream.total_in = 0L;
        zStream.msg = null;
        zStream.data_type = 2;
        this.pending = 0;
        this.pending_out = 0;
        if (this.noheader < 0) {
            this.noheader = 0;
        }
        this.status = this.noheader != 0 ? BUSY_STATE : 42;
        zStream.adler = zStream._adler.adler32(0L, null, 0, 0);
        this.last_flush = 0;
        tr_init();
        lm_init();
        return 0;
    }

    int deflateEnd() {
        int i = this.status;
        if (i != 42 && i != BUSY_STATE && i != FINISH_STATE) {
            return -2;
        }
        this.pending_buf = null;
        this.head = null;
        this.prev = null;
        this.window = null;
        return i == BUSY_STATE ? -3 : 0;
    }

    int deflateParams(ZStream zStream, int i, int i2) {
        if (i == -1) {
            i = 6;
        }
        if (i < 0 || i > 9 || i2 < 0 || i2 > 2) {
            return -2;
        }
        Config[] configArr = config_table;
        int iDeflate = (configArr[this.level].func == configArr[i].func || zStream.total_in == 0) ? 0 : zStream.deflate(1);
        if (this.level != i) {
            this.level = i;
            this.max_lazy_match = configArr[i].max_lazy;
            this.good_match = configArr[this.level].good_length;
            this.nice_match = configArr[this.level].nice_length;
            this.max_chain_length = configArr[this.level].max_chain;
        }
        this.strategy = i2;
        return iDeflate;
    }

    int deflateSetDictionary(ZStream zStream, byte[] bArr, int i) {
        int i2;
        int i3;
        if (bArr == null || this.status != 42) {
            return -2;
        }
        zStream.adler = zStream._adler.adler32(zStream.adler, bArr, 0, i);
        if (i < 3) {
            return 0;
        }
        int i4 = this.w_size;
        if (i > i4 - 262) {
            i2 = i4 - 262;
            i3 = i - i2;
        } else {
            i2 = i;
            i3 = 0;
        }
        System.arraycopy(bArr, i3, this.window, 0, i2);
        this.strstart = i2;
        this.block_start = i2;
        byte[] bArr2 = this.window;
        int i5 = bArr2[0] & 255;
        this.ins_h = i5;
        this.ins_h = ((bArr2[1] & 255) ^ (i5 << this.hash_shift)) & this.hash_mask;
        for (int i6 = 0; i6 <= i2 - 3; i6++) {
            int i7 = ((this.ins_h << this.hash_shift) ^ (this.window[i6 + 2] & 255)) & this.hash_mask;
            this.ins_h = i7;
            short[] sArr = this.prev;
            int i8 = this.w_mask & i6;
            short[] sArr2 = this.head;
            sArr[i8] = sArr2[i7];
            sArr2[i7] = (short) i6;
        }
        return 0;
    }

    int deflate(ZStream zStream, int i) {
        int iDeflate_stored;
        if (i <= 4 && i >= 0) {
            if (zStream.next_out == null || ((zStream.next_in == null && zStream.avail_in != 0) || (this.status == FINISH_STATE && i != 4))) {
                zStream.msg = z_errmsg[4];
            } else {
                if (zStream.avail_out == 0) {
                    zStream.msg = z_errmsg[7];
                    return -5;
                }
                this.strm = zStream;
                int i2 = this.last_flush;
                this.last_flush = i;
                if (this.status == 42) {
                    int i3 = (((this.w_bits - 8) << 4) + 8) << 8;
                    int i4 = ((this.level - 1) & 255) >> 1;
                    if (i4 > 3) {
                        i4 = 3;
                    }
                    int i5 = i3 | (i4 << 6);
                    if (this.strstart != 0) {
                        i5 |= 32;
                    }
                    this.status = BUSY_STATE;
                    putShortMSB(i5 + (31 - (i5 % 31)));
                    if (this.strstart != 0) {
                        putShortMSB((int) (zStream.adler >>> 16));
                        putShortMSB((int) (zStream.adler & WebSocketProtocol.PAYLOAD_SHORT_MAX));
                    }
                    zStream.adler = zStream._adler.adler32(0L, null, 0, 0);
                }
                if (this.pending != 0) {
                    zStream.flush_pending();
                    if (zStream.avail_out == 0) {
                        this.last_flush = -1;
                        return 0;
                    }
                } else if (zStream.avail_in == 0 && i <= i2 && i != 4) {
                    zStream.msg = z_errmsg[7];
                    return -5;
                }
                if (this.status == FINISH_STATE && zStream.avail_in != 0) {
                    zStream.msg = z_errmsg[7];
                    return -5;
                }
                if (zStream.avail_in != 0 || this.lookahead != 0 || (i != 0 && this.status != FINISH_STATE)) {
                    int i6 = config_table[this.level].func;
                    if (i6 == 0) {
                        iDeflate_stored = deflate_stored(i);
                    } else if (i6 == 1) {
                        iDeflate_stored = deflate_fast(i);
                    } else {
                        iDeflate_stored = i6 != 2 ? -1 : deflate_slow(i);
                    }
                    if (iDeflate_stored == 2 || iDeflate_stored == 3) {
                        this.status = FINISH_STATE;
                    }
                    if (iDeflate_stored == 0 || iDeflate_stored == 2) {
                        if (zStream.avail_out == 0) {
                            this.last_flush = -1;
                        }
                        return 0;
                    }
                    if (iDeflate_stored == 1) {
                        if (i == 1) {
                            _tr_align();
                        } else {
                            _tr_stored_block(0, 0, false);
                            if (i == 3) {
                                for (int i7 = 0; i7 < this.hash_size; i7++) {
                                    this.head[i7] = 0;
                                }
                            }
                        }
                        zStream.flush_pending();
                        if (zStream.avail_out == 0) {
                            this.last_flush = -1;
                            return 0;
                        }
                    }
                }
                if (i != 4) {
                    return 0;
                }
                if (this.noheader != 0) {
                    return 1;
                }
                putShortMSB((int) (zStream.adler >>> 16));
                putShortMSB((int) (zStream.adler & WebSocketProtocol.PAYLOAD_SHORT_MAX));
                zStream.flush_pending();
                this.noheader = -1;
                return this.pending != 0 ? 0 : 1;
            }
        }
        return -2;
    }
}
