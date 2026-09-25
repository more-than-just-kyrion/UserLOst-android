package io.moatwel.crypto;

import io.moatwel.crypto.eddsa.EdKeyAnalyzer;

/* JADX INFO: loaded from: classes2.dex */
public class KeyPair {
    private final PrivateKey privateKey;
    private final PublicKey publicKey;

    public KeyPair(PrivateKey privateKey, KeyGenerator keyGenerator, EdKeyAnalyzer edKeyAnalyzer) {
        this(privateKey, keyGenerator.derivePublicKey(privateKey), edKeyAnalyzer);
    }

    public KeyPair(PrivateKey privateKey, PublicKey publicKey, EdKeyAnalyzer edKeyAnalyzer) {
        this.privateKey = privateKey;
        this.publicKey = publicKey;
        if (publicKey != null && !edKeyAnalyzer.isKeyCompressed(publicKey)) {
            throw new IllegalArgumentException("Public key must be in compressed form");
        }
    }

    public PrivateKey getPrivateKey() {
        return this.privateKey;
    }

    public PublicKey getPublicKey() {
        return this.publicKey;
    }
}
