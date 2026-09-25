package io.moatwel.crypto;

import io.moatwel.crypto.eddsa.EdKeyAnalyzer;

/* JADX INFO: loaded from: classes2.dex */
public interface KeyGenerator {
    PublicKey derivePublicKey(PrivateKey privateKey);

    KeyPair generateKeyPair();

    KeyPair generateKeyPair(PrivateKey privateKey);

    EdKeyAnalyzer getKeyAnalyzer();
}
