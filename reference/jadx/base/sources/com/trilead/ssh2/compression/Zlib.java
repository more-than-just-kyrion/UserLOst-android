package com.trilead.ssh2.compression;

import com.jcraft.jzlib.ZStream;

/* JADX INFO: loaded from: classes2.dex */
public class Zlib implements ICompressor {
    private static final int DEFAULT_BUF_SIZE = 4096;
    private static final int LEVEL = 5;
    private byte[] deflate_tmpbuf;
    private byte[] inflate_tmpbuf;
    private byte[] inflated_buf;
    private ZStream deflate = new ZStream();
    private ZStream inflate = new ZStream();

    @Override // com.trilead.ssh2.compression.ICompressor
    public boolean canCompressPreauth() {
        return true;
    }

    @Override // com.trilead.ssh2.compression.ICompressor
    public int getBufferSize() {
        return 4096;
    }

    public Zlib() {
        this.deflate.deflateInit(5);
        this.inflate.inflateInit();
        this.deflate_tmpbuf = new byte[4096];
        this.inflate_tmpbuf = new byte[4096];
        this.inflated_buf = new byte[4096];
    }

    @Override // com.trilead.ssh2.compression.ICompressor
    public int compress(byte[] bArr, int i, int i2, byte[] bArr2) {
        this.deflate.next_in = bArr;
        this.deflate.next_in_index = i;
        this.deflate.avail_in = i2 - i;
        if (bArr.length + 1024 > this.deflate_tmpbuf.length) {
            this.deflate_tmpbuf = new byte[bArr.length + 1024];
        }
        this.deflate.next_out = this.deflate_tmpbuf;
        this.deflate.next_out_index = 0;
        this.deflate.avail_out = bArr2.length;
        if (this.deflate.deflate(1) != 0) {
            System.err.println("compress: compression failure");
        }
        if (this.deflate.avail_in > 0) {
            System.err.println("compress: deflated data too large");
        }
        int length = bArr2.length - this.deflate.avail_out;
        System.arraycopy(this.deflate_tmpbuf, 0, bArr2, 0, length);
        return length;
    }

    @Override // com.trilead.ssh2.compression.ICompressor
    public byte[] uncompress(byte[] bArr, int i, int[] iArr) {
        this.inflate.next_in = bArr;
        this.inflate.next_in_index = i;
        this.inflate.avail_in = iArr[0];
        int i2 = 0;
        while (true) {
            this.inflate.next_out = this.inflate_tmpbuf;
            this.inflate.next_out_index = 0;
            this.inflate.avail_out = 4096;
            int iInflate = this.inflate.inflate(1);
            if (iInflate == -5) {
                if (i2 > bArr.length - i) {
                    byte[] bArr2 = new byte[i2 + i];
                    System.arraycopy(bArr, 0, bArr2, 0, i);
                    System.arraycopy(this.inflated_buf, 0, bArr2, i, i2);
                    bArr = bArr2;
                } else {
                    System.arraycopy(this.inflated_buf, 0, bArr, i, i2);
                }
                iArr[0] = i2;
                return bArr;
            }
            if (iInflate == 0) {
                int i3 = i2 + 4096;
                if (this.inflated_buf.length < i3 - this.inflate.avail_out) {
                    byte[] bArr3 = new byte[i3 - this.inflate.avail_out];
                    System.arraycopy(this.inflated_buf, 0, bArr3, 0, i2);
                    this.inflated_buf = bArr3;
                }
                System.arraycopy(this.inflate_tmpbuf, 0, this.inflated_buf, i2, 4096 - this.inflate.avail_out);
                i2 += 4096 - this.inflate.avail_out;
                iArr[0] = i2;
            } else {
                System.err.println("uncompress: inflate returnd " + iInflate);
                return null;
            }
        }
    }
}
