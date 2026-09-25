package io.moatwel.crypto;

import io.moatwel.crypto.eddsa.HashDelegate;
import io.moatwel.crypto.eddsa.ed25519.PrivateKeyEd25519;
import io.moatwel.crypto.eddsa.ed448.PrivateKeyEd448;
import io.moatwel.util.HexEncoder;
import java.math.BigInteger;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public abstract class PrivateKey {
    protected final byte[] value;

    public abstract BigInteger getScalarSeed(HashDelegate hashDelegate);

    protected PrivateKey(byte[] bArr) {
        this.value = bArr;
    }

    public static PrivateKey newInstance(byte[] bArr) {
        int length = bArr.length;
        if (length == 32) {
            return PrivateKeyEd25519.fromBytes(bArr);
        }
        if (length == 57) {
            return PrivateKeyEd448.fromBytes(bArr);
        }
        throw new IllegalArgumentException("PrivateKey byte length " + bArr.length + " is not supported.");
    }

    public static PrivateKey newInstance(String str) {
        return newInstance(HexEncoder.getBytes(str));
    }

    public byte[] getRaw() {
        return (byte[]) this.value.clone();
    }

    public BigInteger getInteger() {
        return new BigInteger(1, this.value);
    }

    public String getHexString() {
        return HexEncoder.getString(this.value);
    }

    public int hashCode() {
        return Arrays.hashCode(this.value);
    }

    public boolean equals(Object obj) {
        if (obj instanceof PrivateKey) {
            return Arrays.equals(this.value, ((PrivateKey) obj).value);
        }
        return false;
    }
}
