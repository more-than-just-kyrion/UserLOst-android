package io.moatwel.crypto.eddsa.ed25519.nem;

import io.moatwel.crypto.HashAlgorithm;
import io.moatwel.crypto.eddsa.PublicKeyDelegate;
import io.moatwel.crypto.eddsa.ed25519.Ed25519SchemeProvider;

/* JADX INFO: loaded from: classes2.dex */
public class NemV2SchemeProvider extends Ed25519SchemeProvider {
    public NemV2SchemeProvider() {
        super(HashAlgorithm.SHA3_512);
    }

    @Override // io.moatwel.crypto.eddsa.ed25519.Ed25519SchemeProvider, io.moatwel.crypto.eddsa.SchemeProvider
    public PublicKeyDelegate getPublicKeyDelegate() {
        return new NemV2PublicKeyDelegate();
    }
}
