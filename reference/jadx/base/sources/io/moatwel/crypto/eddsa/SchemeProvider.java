package io.moatwel.crypto.eddsa;

import io.moatwel.crypto.EdDsaSigner;
import io.moatwel.crypto.PrivateKey;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SchemeProvider {
    private final Curve curve;

    public abstract byte[] dom(byte[] bArr);

    public abstract PrivateKey generatePrivateKey();

    public abstract PublicKeyDelegate getPublicKeyDelegate();

    public abstract EdDsaSigner getSigner();

    public abstract byte[] preHash(byte[] bArr);

    protected SchemeProvider(Curve curve) {
        if (curve == null) {
            throw new NullPointerException("Curve must not be null");
        }
        this.curve = curve;
    }

    public Curve getCurve() {
        return this.curve;
    }
}
