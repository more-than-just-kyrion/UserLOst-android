package io.moatwel.crypto.eddsa.ed448;

import io.moatwel.crypto.HashAlgorithm;
import io.moatwel.crypto.Hashes;
import io.moatwel.crypto.PrivateKey;
import io.moatwel.crypto.eddsa.HashDelegate;
import io.moatwel.crypto.eddsa.PublicKeyDelegate;

/* JADX INFO: loaded from: classes2.dex */
public class Ed448PublicKeyDelegate implements PublicKeyDelegate, HashDelegate {
    private static final Curve448 CURVE = Curve448.getInstance();
    private final HashAlgorithm hashAlgorithm;

    public Ed448PublicKeyDelegate(HashAlgorithm hashAlgorithm) {
        this.hashAlgorithm = hashAlgorithm;
    }

    @Override // io.moatwel.crypto.eddsa.PublicKeyDelegate
    public byte[] generatePublicKeySeed(PrivateKey privateKey) {
        if (!(privateKey instanceof PrivateKeyEd448)) {
            throw new IllegalArgumentException("Public key on Curve448 must be " + CURVE.getPublicKeyByteLength() + " byte length. Length: " + privateKey.getRaw().length);
        }
        return CURVE.getBasePoint().scalarMultiply(privateKey.getScalarSeed(this)).encode().getValue();
    }

    @Override // io.moatwel.crypto.eddsa.HashDelegate
    public byte[] hashPrivateKey(PrivateKey privateKey) {
        return Hashes.hash(this.hashAlgorithm, 114, privateKey.getRaw());
    }
}
