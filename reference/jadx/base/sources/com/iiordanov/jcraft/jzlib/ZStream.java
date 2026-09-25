package com.iiordanov.jcraft.jzlib;

/* JADX INFO: loaded from: classes2.dex */
public final class ZStream {
    private static final int DEF_WBITS = 15;
    private static final int MAX_MEM_LEVEL = 9;
    private static final int MAX_WBITS = 15;
    private static final int Z_BUF_ERROR = -5;
    private static final int Z_DATA_ERROR = -3;
    private static final int Z_ERRNO = -1;
    private static final int Z_FINISH = 4;
    private static final int Z_FULL_FLUSH = 3;
    private static final int Z_MEM_ERROR = -4;
    private static final int Z_NEED_DICT = 2;
    private static final int Z_NO_FLUSH = 0;
    private static final int Z_OK = 0;
    private static final int Z_PARTIAL_FLUSH = 1;
    private static final int Z_STREAM_END = 1;
    private static final int Z_STREAM_ERROR = -2;
    private static final int Z_SYNC_FLUSH = 2;
    private static final int Z_VERSION_ERROR = -6;
    Adler32 _adler = new Adler32();
    public long adler;
    public int avail_in;
    public int avail_out;
    int data_type;
    Deflate dstate;
    Inflate istate;
    public String msg;
    public byte[] next_in;
    public int next_in_index;
    public byte[] next_out;
    public int next_out_index;
    public long total_in;
    public long total_out;

    public int inflateInit() {
        return inflateInit(15);
    }

    public int inflateInit(boolean z) {
        return inflateInit(15, z);
    }

    public int inflateInit(int i) {
        return inflateInit(i, false);
    }

    public int inflateInit(int i, boolean z) {
        Inflate inflate = new Inflate();
        this.istate = inflate;
        if (z) {
            i = -i;
        }
        return inflate.inflateInit(this, i);
    }

    public int inflate(int i) {
        Inflate inflate = this.istate;
        if (inflate == null) {
            return -2;
        }
        return inflate.inflate(this, i);
    }

    public int inflateEnd() {
        Inflate inflate = this.istate;
        if (inflate == null) {
            return -2;
        }
        int iInflateEnd = inflate.inflateEnd(this);
        this.istate = null;
        return iInflateEnd;
    }

    public int inflateSync() {
        Inflate inflate = this.istate;
        if (inflate == null) {
            return -2;
        }
        return inflate.inflateSync(this);
    }

    public int inflateSetDictionary(byte[] bArr, int i) {
        Inflate inflate = this.istate;
        if (inflate == null) {
            return -2;
        }
        return inflate.inflateSetDictionary(this, bArr, i);
    }

    public int deflateInit(int i) {
        return deflateInit(i, 15);
    }

    public int deflateInit(int i, boolean z) {
        return deflateInit(i, 15, z);
    }

    public int deflateInit(int i, int i2) {
        return deflateInit(i, i2, false);
    }

    public int deflateInit(int i, int i2, boolean z) {
        Deflate deflate = new Deflate();
        this.dstate = deflate;
        if (z) {
            i2 = -i2;
        }
        return deflate.deflateInit(this, i, i2);
    }

    public int deflate(int i) {
        Deflate deflate = this.dstate;
        if (deflate == null) {
            return -2;
        }
        return deflate.deflate(this, i);
    }

    public int deflateEnd() {
        Deflate deflate = this.dstate;
        if (deflate == null) {
            return -2;
        }
        int iDeflateEnd = deflate.deflateEnd();
        this.dstate = null;
        return iDeflateEnd;
    }

    public int deflateParams(int i, int i2) {
        Deflate deflate = this.dstate;
        if (deflate == null) {
            return -2;
        }
        return deflate.deflateParams(this, i, i2);
    }

    public int deflateSetDictionary(byte[] bArr, int i) {
        Deflate deflate = this.dstate;
        if (deflate == null) {
            return -2;
        }
        return deflate.deflateSetDictionary(this, bArr, i);
    }

    void flush_pending() {
        int i = this.dstate.pending;
        int i2 = this.avail_out;
        if (i > i2) {
            i = i2;
        }
        if (i == 0) {
            return;
        }
        if (this.dstate.pending_buf.length <= this.dstate.pending_out || this.next_out.length <= this.next_out_index || this.dstate.pending_buf.length < this.dstate.pending_out + i || this.next_out.length < this.next_out_index + i) {
            System.out.println(this.dstate.pending_buf.length + ", " + this.dstate.pending_out + ", " + this.next_out.length + ", " + this.next_out_index + ", " + i);
            System.out.println("avail_out=" + this.avail_out);
        }
        System.arraycopy(this.dstate.pending_buf, this.dstate.pending_out, this.next_out, this.next_out_index, i);
        this.next_out_index += i;
        this.dstate.pending_out += i;
        this.total_out += (long) i;
        this.avail_out -= i;
        this.dstate.pending -= i;
        if (this.dstate.pending == 0) {
            this.dstate.pending_out = 0;
        }
    }

    int read_buf(byte[] bArr, int i, int i2) {
        int i3 = this.avail_in;
        if (i3 <= i2) {
            i2 = i3;
        }
        if (i2 == 0) {
            return 0;
        }
        this.avail_in = i3 - i2;
        if (this.dstate.noheader == 0) {
            this.adler = this._adler.adler32(this.adler, this.next_in, this.next_in_index, i2);
        }
        System.arraycopy(this.next_in, this.next_in_index, bArr, i, i2);
        this.next_in_index += i2;
        this.total_in += (long) i2;
        return i2;
    }

    public void free() {
        this.next_in = null;
        this.next_out = null;
        this.msg = null;
        this._adler = null;
    }
}
