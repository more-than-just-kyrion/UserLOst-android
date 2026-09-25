package io.moatwel.crypto.eddsa;

/* JADX INFO: loaded from: classes2.dex */
public abstract class EncodedCoordinate {
    protected final byte[] value;

    public abstract Coordinate decode();

    protected EncodedCoordinate(byte[] bArr) {
        this.value = bArr;
    }

    public byte[] getValue() {
        return this.value;
    }
}
