package io.moatwel.crypto.eddsa.ed25519.nem;

import io.moatwel.crypto.HashAlgorithm;
import io.moatwel.crypto.eddsa.PublicKeyDelegate;
import io.moatwel.crypto.eddsa.ed25519.Ed25519SchemeProvider;

/* JADX INFO: loaded from: classes2.dex */
public class NemV1SchemeProvider extends Ed25519SchemeProvider {
    public NemV1SchemeProvider() {
        super(HashAlgorithm.KECCAK_512);
    }

    @Override // io.moatwel.crypto.eddsa.ed25519.Ed25519SchemeProvider, io.moatwel.crypto.eddsa.SchemeProvider
    public PublicKeyDelegate getPublicKeyDelegate() {
        return new NemV1PublicKeyDelegate();
    }
}
