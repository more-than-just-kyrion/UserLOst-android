package io.moatwel.crypto.eddsa.ed25519.ph;

import io.moatwel.crypto.EdDsaSigner;
import io.moatwel.crypto.HashAlgorithm;
import io.moatwel.crypto.Hashes;
import io.moatwel.crypto.PrivateKey;
import io.moatwel.crypto.eddsa.PublicKeyDelegate;
import io.moatwel.crypto.eddsa.SchemeProvider;
import io.moatwel.crypto.eddsa.ed25519.Curve25519;
import io.moatwel.crypto.eddsa.ed25519.Ed25519PublicKeyDelegate;
import io.moatwel.crypto.eddsa.ed25519.Ed25519Signer;
import io.moatwel.util.ByteUtils;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes2.dex */
public class Ed25519phSchemeProvider extends SchemeProvider {
    private final HashAlgorithm algorithm;

    public Ed25519phSchemeProvider(HashAlgorithm hashAlgorithm) {
        super(Curve25519.getInstance());
        if (hashAlgorithm == null) {
            throw new IllegalArgumentException("argument HashAlgorithm must not be null.");
        }
        this.algorithm = hashAlgorithm;
    }

    @Override // io.moatwel.crypto.eddsa.SchemeProvider
    public EdDsaSigner getSigner() {
        return new Ed25519Signer(this.algorithm, this);
    }

    @Override // io.moatwel.crypto.eddsa.SchemeProvider
    public PublicKeyDelegate getPublicKeyDelegate() {
        return new Ed25519PublicKeyDelegate(this.algorithm);
    }

    @Override // io.moatwel.crypto.eddsa.SchemeProvider
    public PrivateKey generatePrivateKey() {
        byte[] bArr = new byte[32];
        new SecureRandom().nextBytes(bArr);
        return PrivateKey.newInstance(bArr);
    }

    @Override // io.moatwel.crypto.eddsa.SchemeProvider
    public byte[] preHash(byte[] bArr) {
        return Hashes.hash(this.algorithm, bArr);
    }

    @Override // io.moatwel.crypto.eddsa.SchemeProvider
    public byte[] dom(byte[] bArr) {
        return ByteUtils.join("SigEd25519 no Ed25519 collisions".getBytes(), new byte[]{1}, new byte[]{(byte) bArr.length}, bArr);
    }
}
