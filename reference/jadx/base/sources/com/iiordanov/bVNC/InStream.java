package com.iiordanov.bVNC;

import com.google.common.base.Ascii;

/* JADX INFO: loaded from: classes2.dex */
public abstract class InStream {
    protected byte[] b;
    protected int end;
    protected int ptr;

    protected abstract int overrun(int i, int i2) throws Exception;

    public abstract int pos();

    public final int check(int i, int i2) throws Exception {
        int i3 = this.ptr;
        int i4 = (i * i2) + i3;
        int i5 = this.end;
        if (i4 <= i5) {
            return i2;
        }
        if (i3 + i > i5) {
            return overrun(i, i2);
        }
        return (i5 - i3) / i;
    }

    public final void check(int i) throws Exception {
        if (this.ptr + i > this.end) {
            overrun(i, 1);
        }
    }

    public final int readS8() throws Exception {
        check(1);
        byte[] bArr = this.b;
        int i = this.ptr;
        this.ptr = i + 1;
        return bArr[i];
    }

    public final int readS16() throws Exception {
        check(2);
        byte[] bArr = this.b;
        int i = this.ptr;
        int i2 = i + 1;
        this.ptr = i2;
        byte b = bArr[i];
        this.ptr = i + 2;
        return (bArr[i2] & 255) | (b << 8);
    }

    public final int readS32() throws Exception {
        check(4);
        byte[] bArr = this.b;
        int i = this.ptr;
        int i2 = i + 1;
        this.ptr = i2;
        byte b = bArr[i];
        int i3 = i + 2;
        this.ptr = i3;
        int i4 = bArr[i2] & 255;
        int i5 = i + 3;
        this.ptr = i5;
        int i6 = bArr[i3] & 255;
        this.ptr = i + 4;
        return (bArr[i5] & 255) | (b << Ascii.CAN) | (i4 << 16) | (i6 << 8);
    }

    public final int readU8() throws Exception {
        return readS8() & 255;
    }

    public final int readU16() throws Exception {
        return readS16() & 65535;
    }

    public final int readU32() throws Exception {
        return readS32();
    }

    public final void skip(int i) throws Exception {
        while (i > 0) {
            int iCheck = check(1, i);
            this.ptr += iCheck;
            i -= iCheck;
        }
    }

    public void readBytes(byte[] bArr, int i, int i2) throws Exception {
        int i3 = i2 + i;
        while (i < i3) {
            int iCheck = check(1, i3 - i);
            System.arraycopy(this.b, this.ptr, bArr, i, iCheck);
            this.ptr += iCheck;
            i += iCheck;
        }
    }

    public final int readOpaque8() throws Exception {
        return readU8();
    }

    public final int readOpaque16() throws Exception {
        return readU16();
    }

    public final int readOpaque32() throws Exception {
        return readU32();
    }

    public final int readOpaque24A() throws Exception {
        check(3);
        byte[] bArr = this.b;
        int i = this.ptr;
        int i2 = i + 1;
        this.ptr = i2;
        byte b = bArr[i];
        int i3 = i + 2;
        this.ptr = i3;
        byte b2 = bArr[i2];
        this.ptr = i + 3;
        return (bArr[i3] << 8) | (b << Ascii.CAN) | (b2 << 16);
    }

    public final int readOpaque24B() throws Exception {
        check(3);
        byte[] bArr = this.b;
        int i = this.ptr;
        int i2 = i + 1;
        this.ptr = i2;
        byte b = bArr[i];
        int i3 = i + 2;
        this.ptr = i3;
        byte b2 = bArr[i2];
        this.ptr = i + 3;
        return bArr[i3] | (b << 16) | (b2 << 8);
    }

    public boolean bytesAvailable() {
        return this.end != this.ptr;
    }

    public final byte[] getbuf() {
        return this.b;
    }

    public final int getptr() {
        return this.ptr;
    }

    public final int getend() {
        return this.end;
    }

    public final void setptr(int i) {
        this.ptr = i;
    }

    protected InStream() {
    }
}
