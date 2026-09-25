package com.iiordanov.bVNC;

/* JADX INFO: loaded from: classes2.dex */
public class MemInStream extends InStream {
    public MemInStream(byte[] bArr, int i, int i2) {
        this.b = bArr;
        this.ptr = i;
        this.end = i + i2;
    }

    @Override // com.iiordanov.bVNC.InStream
    public int pos() {
        return this.ptr;
    }

    @Override // com.iiordanov.bVNC.InStream
    protected int overrun(int i, int i2) throws Exception {
        throw new Exception("MemInStream overrun: end of stream");
    }
}
