package io.moatwel.crypto.eddsa.ed448;

import io.moatwel.crypto.PrivateKey;
import io.moatwel.crypto.eddsa.HashDelegate;
import io.moatwel.util.ByteUtils;
import java.math.BigInteger;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes2.dex */
public class PrivateKeyEd448 extends PrivateKey {
    private PrivateKeyEd448(byte[] bArr) {
        super(bArr);
        if (bArr.length != 57) {
            throw new IllegalArgumentException("PrivateKey on Ed448 curve must have 57 byte length.");
        }
    }

    public static PrivateKey random() {
        byte[] bArr = new byte[57];
        new SecureRandom().nextBytes(bArr);
        return new PrivateKeyEd448(bArr);
    }

    public static PrivateKey fromBytes(byte[] bArr) {
        return new PrivateKeyEd448(bArr);
    }

    @Override // io.moatwel.crypto.PrivateKey
    public BigInteger getScalarSeed(HashDelegate hashDelegate) {
        byte[] bArr = ByteUtils.split(hashDelegate.hashPrivateKey(this), 57)[0];
        bArr[0] = (byte) (bArr[0] & 252);
        byte b = bArr[56];
        bArr[56] = (byte) 0;
        bArr[55] = (byte) (bArr[55] | 128);
        return new BigInteger(ByteUtils.reverse(bArr));
    }
}
