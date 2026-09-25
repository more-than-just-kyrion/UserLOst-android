package com.iiordanov.jcraft.jzlib;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class ZInputStream extends FilterInputStream {
    protected byte[] buf;
    protected byte[] buf1;
    protected int bufsize;
    protected boolean compress;
    protected int flush;
    protected InputStream in;
    private boolean nomoreinput;
    protected ZStream z;

    public ZInputStream(InputStream inputStream) {
        this(inputStream, false);
    }

    public ZInputStream(InputStream inputStream, boolean z) {
        super(inputStream);
        ZStream zStream = new ZStream();
        this.z = zStream;
        this.bufsize = 512;
        this.flush = 0;
        this.buf = new byte[512];
        this.buf1 = new byte[1];
        this.nomoreinput = false;
        this.in = inputStream;
        zStream.inflateInit(z);
        this.compress = false;
        this.z.next_in = this.buf;
        this.z.next_in_index = 0;
        this.z.avail_in = 0;
    }

    public ZInputStream(InputStream inputStream, int i) {
        super(inputStream);
        ZStream zStream = new ZStream();
        this.z = zStream;
        this.bufsize = 512;
        this.flush = 0;
        this.buf = new byte[512];
        this.buf1 = new byte[1];
        this.nomoreinput = false;
        this.in = inputStream;
        zStream.deflateInit(i);
        this.compress = true;
        this.z.next_in = this.buf;
        this.z.next_in_index = 0;
        this.z.avail_in = 0;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (read(this.buf1, 0, 1) == -1) {
            return -1;
        }
        return this.buf1[0] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int iInflate;
        if (i2 == 0) {
            return 0;
        }
        this.z.next_out = bArr;
        this.z.next_out_index = i;
        this.z.avail_out = i2;
        do {
            if (this.z.avail_in == 0 && !this.nomoreinput) {
                this.z.next_in_index = 0;
                this.z.avail_in = this.in.read(this.buf, 0, this.bufsize);
                if (this.z.avail_in == -1) {
                    this.z.avail_in = 0;
                    this.nomoreinput = true;
                }
            }
            if (this.compress) {
                iInflate = this.z.deflate(this.flush);
            } else {
                iInflate = this.z.inflate(this.flush);
            }
            boolean z = this.nomoreinput;
            if (z && iInflate == -5) {
                return -1;
            }
            if (iInflate != 0 && iInflate != 1) {
                throw new ZStreamException((this.compress ? "de" : "in") + "flating: " + this.z.msg);
            }
            if ((!z && iInflate != 1) || this.z.avail_out != i2) {
                if (this.z.avail_out != i2) {
                    break;
                }
            } else {
                return -1;
            }
        } while (iInflate == 0);
        return i2 - this.z.avail_out;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        return read(new byte[j < ((long) 512) ? (int) j : 512]);
    }

    public int getFlushMode() {
        return this.flush;
    }

    public void setFlushMode(int i) {
        this.flush = i;
    }

    public long getTotalIn() {
        return this.z.total_in;
    }

    public long getTotalOut() {
        return this.z.total_out;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.in.close();
    }
}
