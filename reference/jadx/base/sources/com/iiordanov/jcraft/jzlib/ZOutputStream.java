package com.iiordanov.jcraft.jzlib;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class ZOutputStream extends OutputStream {
    protected byte[] buf;
    protected byte[] buf1;
    protected int bufsize;
    protected boolean compress;
    protected int flush;
    protected OutputStream out;
    protected ZStream z;

    public ZOutputStream(OutputStream outputStream) {
        ZStream zStream = new ZStream();
        this.z = zStream;
        this.bufsize = 512;
        this.flush = 0;
        this.buf = new byte[512];
        this.buf1 = new byte[1];
        this.out = outputStream;
        zStream.inflateInit();
        this.compress = false;
    }

    public ZOutputStream(OutputStream outputStream, int i) {
        this(outputStream, i, false);
    }

    public ZOutputStream(OutputStream outputStream, int i, boolean z) {
        ZStream zStream = new ZStream();
        this.z = zStream;
        this.bufsize = 512;
        this.flush = 0;
        this.buf = new byte[512];
        this.buf1 = new byte[1];
        this.out = outputStream;
        zStream.deflateInit(i, z);
        this.compress = true;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        byte[] bArr = this.buf1;
        bArr[0] = (byte) i;
        write(bArr, 0, 1);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        int iInflate;
        if (i2 == 0) {
            return;
        }
        this.z.next_in = bArr;
        this.z.next_in_index = i;
        this.z.avail_in = i2;
        while (true) {
            this.z.next_out = this.buf;
            this.z.next_out_index = 0;
            this.z.avail_out = this.bufsize;
            if (this.compress) {
                iInflate = this.z.deflate(this.flush);
            } else {
                iInflate = this.z.inflate(this.flush);
            }
            if (iInflate != 0) {
                throw new ZStreamException((this.compress ? "de" : "in") + "flating: " + this.z.msg);
            }
            this.out.write(this.buf, 0, this.bufsize - this.z.avail_out);
            if (this.z.avail_in <= 0 && this.z.avail_out != 0) {
                return;
            }
        }
    }

    public int getFlushMode() {
        return this.flush;
    }

    public void setFlushMode(int i) {
        this.flush = i;
    }

    public void finish() throws IOException {
        while (true) {
            this.z.next_out = this.buf;
            this.z.next_out_index = 0;
            this.z.avail_out = this.bufsize;
            int iDeflate = this.compress ? this.z.deflate(4) : this.z.inflate(4);
            if (iDeflate != 1 && iDeflate != 0) {
                throw new ZStreamException((this.compress ? "de" : "in") + "flating: " + this.z.msg);
            }
            if (this.bufsize - this.z.avail_out > 0) {
                this.out.write(this.buf, 0, this.bufsize - this.z.avail_out);
            }
            if (this.z.avail_in <= 0 && this.z.avail_out != 0) {
                flush();
                return;
            }
        }
    }

    public void end() {
        ZStream zStream = this.z;
        if (zStream == null) {
            return;
        }
        if (this.compress) {
            zStream.deflateEnd();
        } else {
            zStream.inflateEnd();
        }
        this.z.free();
        this.z = null;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            finish();
        } catch (IOException unused) {
        } finally {
            end();
            this.out.close();
            this.out = null;
        }
    }

    public long getTotalIn() {
        return this.z.total_in;
    }

    public long getTotalOut() {
        return this.z.total_out;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.out.flush();
    }
}
