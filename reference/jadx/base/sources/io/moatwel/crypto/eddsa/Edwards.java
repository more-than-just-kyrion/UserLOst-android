package io.moatwel.crypto.eddsa;

import io.moatwel.crypto.EdDsaSigner;
import io.moatwel.crypto.HashAlgorithm;
import io.moatwel.crypto.KeyGenerator;
import io.moatwel.crypto.KeyPair;
import io.moatwel.crypto.PrivateKey;
import io.moatwel.crypto.PublicKey;
import io.moatwel.crypto.Signature;
import io.moatwel.crypto.eddsa.ed25519.Ed25519SchemeProvider;

/* JADX INFO: loaded from: classes2.dex */
public final class Edwards {
    private final Curve curve;
    private final KeyGenerator generator;
    private final SchemeProvider schemeProvider;
    private final EdDsaSigner signer;

    public Edwards() {
        this(new Ed25519SchemeProvider(HashAlgorithm.KECCAK_512));
    }

    public Edwards(HashAlgorithm hashAlgorithm) {
        this(new Ed25519SchemeProvider(hashAlgorithm));
    }

    public Edwards(SchemeProvider schemeProvider) {
        if (schemeProvider == null) {
            throw new IllegalArgumentException("SchemeProvider must not be null.");
        }
        this.curve = schemeProvider.getCurve();
        this.generator = new EdDsaKeyGenerator(schemeProvider);
        this.signer = schemeProvider.getSigner();
        this.schemeProvider = schemeProvider;
    }

    public KeyPair generateKeyPair() {
        return this.generator.generateKeyPair();
    }

    public KeyPair generateKeyPair(PrivateKey privateKey) {
        return this.generator.generateKeyPair(privateKey);
    }

    public PublicKey derivePublicKey(PrivateKey privateKey) {
        return this.generator.derivePublicKey(privateKey);
    }

    public Signature sign(KeyPair keyPair, byte[] bArr) {
        return this.signer.sign(keyPair, bArr, null);
    }

    public Signature sign(KeyPair keyPair, byte[] bArr, byte[] bArr2) {
        return this.signer.sign(keyPair, bArr, bArr2);
    }

    @Deprecated
    public boolean verify(KeyPair keyPair, byte[] bArr, Signature signature) {
        return this.signer.verify(keyPair, bArr, (byte[]) null, signature);
    }

    public boolean verify(PublicKey publicKey, byte[] bArr, Signature signature) {
        return this.signer.verify(publicKey, bArr, (byte[]) null, signature);
    }

    @Deprecated
    public boolean verify(KeyPair keyPair, byte[] bArr, byte[] bArr2, Signature signature) {
        return this.signer.verify(keyPair, bArr, bArr2, signature);
    }

    public boolean verify(PublicKey publicKey, byte[] bArr, byte[] bArr2, Signature signature) {
        return this.signer.verify(publicKey, bArr, bArr2, signature);
    }

    public Curve getCurve() {
        return this.curve;
    }

    public EdDsaSigner getDsaSigner() {
        return this.signer;
    }

    public KeyGenerator getKeyGenerator() {
        return this.generator;
    }

    public SchemeProvider getSchemeProvider() {
        return this.schemeProvider;
    }
}
