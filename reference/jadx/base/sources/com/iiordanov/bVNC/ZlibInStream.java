package com.iiordanov.bVNC;

import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes2.dex */
public class ZlibInStream extends InStream {
    static final int defaultBufSize = 16384;
    private int bufSize;
    private int bytesIn;
    private Inflater inflater;
    private int ptrOffset;
    private InStream underlying;

    public ZlibInStream(int i) {
        this.bufSize = i;
        this.b = new byte[i];
        this.ptrOffset = 0;
        this.end = 0;
        this.ptr = 0;
        this.inflater = new Inflater();
    }

    public ZlibInStream() {
        this(16384);
    }

    public void setUnderlying(InStream inStream, int i) {
        this.underlying = inStream;
        this.bytesIn = i;
        this.end = 0;
        this.ptr = 0;
    }

    public void reset() throws Exception {
        this.end = 0;
        this.ptr = 0;
        if (this.underlying == null) {
            return;
        }
        while (this.bytesIn > 0) {
            decompress();
            this.end = 0;
        }
        this.underlying = null;
    }

    @Override // com.iiordanov.bVNC.InStream
    public int pos() {
        return this.ptrOffset + this.ptr;
    }

    @Override // com.iiordanov.bVNC.InStream
    protected int overrun(int i, int i2) throws Exception {
        if (i > this.bufSize) {
            throw new Exception("ZlibInStream overrun: max itemSize exceeded");
        }
        if (this.underlying == null) {
            throw new Exception("ZlibInStream overrun: no underlying stream");
        }
        if (this.end - this.ptr != 0) {
            System.arraycopy(this.b, this.ptr, this.b, 0, this.end - this.ptr);
        }
        this.ptrOffset += this.ptr;
        this.end -= this.ptr;
        this.ptr = 0;
        while (this.end < i) {
            decompress();
        }
        return i * i2 > this.end ? this.end / i : i2;
    }

    private void decompress() throws Exception {
        try {
            this.underlying.check(1);
            int i = this.underlying.getend() - this.underlying.getptr();
            int i2 = this.bytesIn;
            if (i > i2) {
                i = i2;
            }
            if (this.inflater.needsInput()) {
                this.inflater.setInput(this.underlying.getbuf(), this.underlying.getptr(), i);
            }
            this.end += this.inflater.inflate(this.b, this.end, this.bufSize - this.end);
            if (this.inflater.needsInput()) {
                this.bytesIn -= i;
                InStream inStream = this.underlying;
                inStream.setptr(inStream.getptr() + i);
            }
        } catch (DataFormatException unused) {
            throw new Exception("ZlibInStream: inflate failed");
        }
    }
}
