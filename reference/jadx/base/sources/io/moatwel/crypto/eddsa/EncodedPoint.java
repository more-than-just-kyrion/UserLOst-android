package io.moatwel.crypto.eddsa;

import io.moatwel.crypto.eddsa.ed25519.EncodedPointEd25519;
import io.moatwel.crypto.eddsa.ed448.EncodedPointEd448;

/* JADX INFO: loaded from: classes2.dex */
public abstract class EncodedPoint {
    protected final byte[] value;

    public abstract Point decode() throws DecodeException;

    protected EncodedPoint(byte[] bArr) {
        this.value = bArr;
    }

    public static EncodedPoint from(byte[] bArr) {
        int length = bArr.length;
        if (length == 32) {
            return new EncodedPointEd25519(bArr);
        }
        if (length == 57) {
            return new EncodedPointEd448(bArr);
        }
        throw new IllegalArgumentException("Length(" + bArr.length + ") is not supported.");
    }

    public byte[] getValue() {
        return this.value;
    }
}
