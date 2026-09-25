package io.moatwel.crypto;

import io.moatwel.util.ByteUtils;
import io.moatwel.util.HexEncoder;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Signature {
    protected final byte[] r;
    protected final byte[] s;

    protected Signature(byte[] bArr, byte[] bArr2) {
        this.r = bArr;
        this.s = bArr2;
    }

    public byte[] getR() {
        return this.r;
    }

    public byte[] getS() {
        return this.s;
    }

    public byte[] getSignature() {
        return ByteUtils.join(this.r, this.s);
    }

    public String asString() {
        return HexEncoder.getString(ByteUtils.join(this.r, this.s));
    }
}
