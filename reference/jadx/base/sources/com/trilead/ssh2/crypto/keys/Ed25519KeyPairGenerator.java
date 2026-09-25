package com.trilead.ssh2.crypto.keys;

import com.google.crypto.tink.subtle.Ed25519Sign;
import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.KeyPairGeneratorSpi;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes2.dex */
public class Ed25519KeyPairGenerator extends KeyPairGeneratorSpi {
    @Override // java.security.KeyPairGeneratorSpi
    public void initialize(int i, SecureRandom secureRandom) {
    }

    @Override // java.security.KeyPairGeneratorSpi
    public KeyPair generateKeyPair() {
        try {
            Ed25519Sign.KeyPair keyPairNewKeyPair = Ed25519Sign.KeyPair.newKeyPair();
            return new KeyPair(new Ed25519PublicKey(keyPairNewKeyPair.getPublicKey()), new Ed25519PrivateKey(keyPairNewKeyPair.getPrivateKey()));
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}
