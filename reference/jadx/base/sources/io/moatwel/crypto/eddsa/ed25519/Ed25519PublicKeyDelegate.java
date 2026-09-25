package io.moatwel.crypto.eddsa.ed25519;

import io.moatwel.crypto.HashAlgorithm;
import io.moatwel.crypto.Hashes;
import io.moatwel.crypto.PrivateKey;
import io.moatwel.crypto.eddsa.PublicKeyDelegate;

/* JADX INFO: loaded from: classes2.dex */
public class Ed25519PublicKeyDelegate implements PublicKeyDelegate {
    private static final Curve25519 CURVE = Curve25519.getInstance();
    private final HashAlgorithm hashAlgorithm;

    public Ed25519PublicKeyDelegate(HashAlgorithm hashAlgorithm) {
        this.hashAlgorithm = hashAlgorithm;
    }

    @Override // io.moatwel.crypto.eddsa.PublicKeyDelegate
    public byte[] generatePublicKeySeed(PrivateKey privateKey) {
        if (!(privateKey instanceof PrivateKeyEd25519)) {
            throw new IllegalArgumentException("Public key on Curve25519 must be " + CURVE.getPublicKeyByteLength() + " byte length. Length: " + privateKey.getRaw().length);
        }
        return CURVE.getBasePoint().scalarMultiply(privateKey.getScalarSeed(this)).encode().getValue();
    }

    @Override // io.moatwel.crypto.eddsa.HashDelegate
    public byte[] hashPrivateKey(PrivateKey privateKey) {
        return Hashes.hash(this.hashAlgorithm, privateKey.getRaw());
    }
}
