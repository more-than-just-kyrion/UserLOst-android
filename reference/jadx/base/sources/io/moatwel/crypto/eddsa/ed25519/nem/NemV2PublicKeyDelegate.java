package io.moatwel.crypto.eddsa.ed25519.nem;

import io.moatwel.crypto.HashAlgorithm;
import io.moatwel.crypto.eddsa.ed25519.Ed25519PublicKeyDelegate;

/* JADX INFO: loaded from: classes2.dex */
public class NemV2PublicKeyDelegate extends Ed25519PublicKeyDelegate {
    private static final HashAlgorithm HASH_ALGORITHM = HashAlgorithm.SHA3_512;

    public NemV2PublicKeyDelegate() {
        super(HASH_ALGORITHM);
    }
}
