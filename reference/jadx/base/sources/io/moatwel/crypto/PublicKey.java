package io.moatwel.crypto;

import io.moatwel.util.HexEncoder;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
public class PublicKey {
    private final byte[] value;

    public PublicKey(BigInteger bigInteger) {
        this(bigInteger.toByteArray());
    }

    public PublicKey(byte[] bArr) {
        this.value = bArr;
    }

    public static PublicKey fromHexString(String str) {
        try {
            return new PublicKey(HexEncoder.getBytes(str));
        } catch (NumberFormatException e) {
            throw new RuntimeException(e);
        }
    }

    public byte[] getRaw() {
        return (byte[]) this.value.clone();
    }

    public String getHexString() {
        return HexEncoder.getString(this.value);
    }
}
