package io.moatwel.crypto.eddsa;

import io.moatwel.crypto.KeyGenerator;
import io.moatwel.crypto.KeyPair;
import io.moatwel.crypto.PrivateKey;
import io.moatwel.crypto.PublicKey;

/* JADX INFO: loaded from: classes2.dex */
public class EdDsaKeyGenerator implements KeyGenerator {
    private final EdKeyAnalyzer analyzer;
    private final SchemeProvider schemeProvider;

    public EdDsaKeyGenerator(SchemeProvider schemeProvider) {
        if (schemeProvider == null) {
            throw new IllegalArgumentException("SchemeProvider must not be null.");
        }
        this.schemeProvider = schemeProvider;
        this.analyzer = new EdKeyAnalyzer(schemeProvider.getCurve());
    }

    @Override // io.moatwel.crypto.KeyGenerator
    public EdKeyAnalyzer getKeyAnalyzer() {
        return this.analyzer;
    }

    @Override // io.moatwel.crypto.KeyGenerator
    public KeyPair generateKeyPair() {
        return generateKeyPair(this.schemeProvider.generatePrivateKey());
    }

    @Override // io.moatwel.crypto.KeyGenerator
    public KeyPair generateKeyPair(PrivateKey privateKey) {
        return new KeyPair(privateKey, derivePublicKey(privateKey), this.analyzer);
    }

    @Override // io.moatwel.crypto.KeyGenerator
    public PublicKey derivePublicKey(PrivateKey privateKey) {
        if (privateKey == null) {
            throw new IllegalArgumentException("PrivateKey must not be null.");
        }
        return new PublicKey(this.schemeProvider.getPublicKeyDelegate().generatePublicKeySeed(privateKey));
    }
}
