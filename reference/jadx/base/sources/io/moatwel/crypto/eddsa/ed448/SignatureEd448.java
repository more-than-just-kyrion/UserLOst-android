package io.moatwel.crypto.eddsa.ed448;

import io.moatwel.crypto.Signature;
import io.moatwel.util.ArrayUtils;
import io.moatwel.util.ByteUtils;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
class SignatureEd448 extends Signature {
    SignatureEd448(BigInteger bigInteger, BigInteger bigInteger2) {
        this(ArrayUtils.toByteArray(bigInteger, 57), ArrayUtils.toByteArray(bigInteger2, 57));
    }

    SignatureEd448(byte[] bArr, byte[] bArr2) {
        super(bArr, bArr2);
        if (bArr.length != 57 || bArr2.length != 57) {
            throw new IllegalArgumentException("Signature on ed448 curve must have 57 byte length.");
        }
    }

    SignatureEd448(byte[] bArr) {
        this(ByteUtils.split(bArr, 57)[0], ByteUtils.split(bArr, 57)[1]);
    }
}
