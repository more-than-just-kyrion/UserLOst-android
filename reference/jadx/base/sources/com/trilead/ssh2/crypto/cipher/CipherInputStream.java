package com.trilead.ssh2.crypto.cipher;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class CipherInputStream {
    private final BufferedInputStream bi;
    private int blockSize;
    private byte[] buffer;
    private BlockCipher currentCipher;
    private byte[] enc;
    private int pos;

    public CipherInputStream(BlockCipher blockCipher, InputStream inputStream) {
        if (inputStream instanceof BufferedInputStream) {
            this.bi = (BufferedInputStream) inputStream;
        } else {
            this.bi = new BufferedInputStream(inputStream);
        }
        changeCipher(blockCipher);
    }

    public void changeCipher(BlockCipher blockCipher) {
        this.currentCipher = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        this.buffer = new byte[blockSize];
        this.enc = new byte[blockSize];
        this.pos = blockSize;
    }

    private void getBlock() throws IOException {
        int i = 0;
        while (true) {
            int i2 = this.blockSize;
            if (i < i2) {
                int i3 = this.bi.read(this.enc, i, i2 - i);
                if (i3 < 0) {
                    throw new IOException("Cannot read full block, EOF reached.");
                }
                i += i3;
            } else {
                try {
                    this.currentCipher.transformBlock(this.enc, 0, this.buffer, 0);
                    this.pos = 0;
                    return;
                } catch (Exception unused) {
                    throw new IOException("Error while decrypting block.");
                }
            }
        }
    }

    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        while (i2 > 0) {
            if (this.pos >= this.blockSize) {
                getBlock();
            }
            int iMin = Math.min(this.blockSize - this.pos, i2);
            System.arraycopy(this.buffer, this.pos, bArr, i, iMin);
            this.pos += iMin;
            i += iMin;
            i2 -= iMin;
            i3 += iMin;
        }
        return i3;
    }

    public int read() throws IOException {
        if (this.pos >= this.blockSize) {
            getBlock();
        }
        byte[] bArr = this.buffer;
        int i = this.pos;
        this.pos = i + 1;
        return bArr[i] & 255;
    }

    public int readPlain(byte[] bArr, int i, int i2) throws IOException {
        if (this.pos != this.blockSize) {
            throw new IOException("Cannot read plain since crypto buffer is not aligned.");
        }
        int i3 = 0;
        while (i3 < i2) {
            int i4 = this.bi.read(bArr, i + i3, i2 - i3);
            if (i4 < 0) {
                throw new IOException("Cannot fill buffer, EOF reached.");
            }
            i3 += i4;
        }
        return i3;
    }

    public int peekPlain(byte[] bArr, int i, int i2) throws IOException {
        if (this.pos != this.blockSize) {
            throw new IOException("Cannot read plain since crypto buffer is not aligned.");
        }
        this.bi.mark(i2);
        int i3 = 0;
        while (i3 < i2) {
            try {
                int i4 = this.bi.read(bArr, i + i3, i2 - i3);
                if (i4 < 0) {
                    throw new IOException("Cannot fill buffer, EOF reached.");
                }
                i3 += i4;
            } catch (Throwable th) {
                this.bi.reset();
                throw th;
            }
        }
        this.bi.reset();
        return i3;
    }
}
