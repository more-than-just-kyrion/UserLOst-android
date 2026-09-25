package io.moatwel.crypto.eddsa.ed25519;

import io.moatwel.crypto.PrivateKey;
import io.moatwel.crypto.eddsa.HashDelegate;
import io.moatwel.util.ByteUtils;
import io.moatwel.util.HexEncoder;
import java.math.BigInteger;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes2.dex */
public class PrivateKeyEd25519 extends PrivateKey {
    private PrivateKeyEd25519(byte[] bArr) {
        super(bArr);
        if (bArr.length != 32) {
            throw new IllegalArgumentException("PrivateKey on ed25519 curve must have 32 byte length");
        }
    }

    public static PrivateKey fromHexString(String str) {
        return new PrivateKeyEd25519(HexEncoder.getBytes(str));
    }

    public static PrivateKey fromBytes(byte[] bArr) {
        return new PrivateKeyEd25519(bArr);
    }

    public static PrivateKey random() {
        byte[] bArr = new byte[32];
        new SecureRandom().nextBytes(bArr);
        return new PrivateKeyEd25519(bArr);
    }

    @Override // io.moatwel.crypto.PrivateKey
    public BigInteger getScalarSeed(HashDelegate hashDelegate) {
        byte[] bArr = ByteUtils.split(hashDelegate.hashPrivateKey(this), 32)[0];
        bArr[0] = (byte) (bArr[0] & 248);
        byte b = (byte) (bArr[31] & 127);
        bArr[31] = b;
        bArr[31] = (byte) (b | 64);
        return new BigInteger(ByteUtils.reverse(bArr));
    }
}
