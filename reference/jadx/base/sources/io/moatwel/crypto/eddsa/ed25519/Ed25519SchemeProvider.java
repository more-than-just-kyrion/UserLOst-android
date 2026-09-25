package io.moatwel.crypto.eddsa.ed25519;

import io.moatwel.crypto.EdDsaSigner;
import io.moatwel.crypto.HashAlgorithm;
import io.moatwel.crypto.PrivateKey;
import io.moatwel.crypto.eddsa.PublicKeyDelegate;
import io.moatwel.crypto.eddsa.SchemeProvider;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes2.dex */
public class Ed25519SchemeProvider extends SchemeProvider {
    private final HashAlgorithm hashAlgorithm;

    @Override // io.moatwel.crypto.eddsa.SchemeProvider
    public byte[] preHash(byte[] bArr) {
        return bArr;
    }

    public Ed25519SchemeProvider(HashAlgorithm hashAlgorithm) {
        super(Curve25519.getInstance());
        if (hashAlgorithm == null) {
            throw new IllegalArgumentException("argument HashAlgorithm must not be null.");
        }
        this.hashAlgorithm = hashAlgorithm;
    }

    @Override // io.moatwel.crypto.eddsa.SchemeProvider
    public EdDsaSigner getSigner() {
        return new Ed25519Signer(this.hashAlgorithm, this);
    }

    @Override // io.moatwel.crypto.eddsa.SchemeProvider
    public PublicKeyDelegate getPublicKeyDelegate() {
        return new Ed25519PublicKeyDelegate(this.hashAlgorithm);
    }

    @Override // io.moatwel.crypto.eddsa.SchemeProvider
    public PrivateKey generatePrivateKey() {
        byte[] bArr = new byte[32];
        new SecureRandom().nextBytes(bArr);
        return PrivateKey.newInstance(bArr);
    }

    @Override // io.moatwel.crypto.eddsa.SchemeProvider
    public byte[] dom(byte[] bArr) {
        return "".getBytes();
    }
}
