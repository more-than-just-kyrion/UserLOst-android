package io.moatwel.crypto.eddsa.ed25519;

import io.moatwel.crypto.Signature;
import io.moatwel.util.ArrayUtils;
import io.moatwel.util.ByteUtils;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
class SignatureEd25519 extends Signature {
    SignatureEd25519(BigInteger bigInteger, BigInteger bigInteger2) {
        this(ArrayUtils.toByteArray(bigInteger, 32), ArrayUtils.toByteArray(bigInteger2, 32));
    }

    SignatureEd25519(byte[] bArr, byte[] bArr2) {
        super(bArr, bArr2);
        if (bArr.length != 32 || bArr2.length != 32) {
            throw new IllegalArgumentException("Signature on Curve25519 must have 32 byte length.");
        }
    }

    SignatureEd25519(byte[] bArr) {
        this(ByteUtils.split(bArr, 32)[0], ByteUtils.split(bArr, 32)[1]);
    }
}
