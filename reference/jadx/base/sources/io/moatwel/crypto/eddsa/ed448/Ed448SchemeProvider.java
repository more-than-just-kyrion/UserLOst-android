package io.moatwel.crypto.eddsa.ed448;

import io.moatwel.crypto.EdDsaSigner;
import io.moatwel.crypto.HashAlgorithm;
import io.moatwel.crypto.PrivateKey;
import io.moatwel.crypto.eddsa.PublicKeyDelegate;
import io.moatwel.crypto.eddsa.SchemeProvider;
import io.moatwel.util.ByteUtils;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes2.dex */
public class Ed448SchemeProvider extends SchemeProvider {
    private final HashAlgorithm hashAlgorithm;

    @Override // io.moatwel.crypto.eddsa.SchemeProvider
    public byte[] preHash(byte[] bArr) {
        return bArr;
    }

    public Ed448SchemeProvider(HashAlgorithm hashAlgorithm) {
        super(Curve448.getInstance());
        if (hashAlgorithm == null) {
            throw new IllegalArgumentException("argument HashAlgorithm must not be null.");
        }
        this.hashAlgorithm = hashAlgorithm;
    }

    @Override // io.moatwel.crypto.eddsa.SchemeProvider
    public EdDsaSigner getSigner() {
        return new Ed448Signer(this.hashAlgorithm, this);
    }

    @Override // io.moatwel.crypto.eddsa.SchemeProvider
    public PublicKeyDelegate getPublicKeyDelegate() {
        return new Ed448PublicKeyDelegate(this.hashAlgorithm);
    }

    @Override // io.moatwel.crypto.eddsa.SchemeProvider
    public PrivateKey generatePrivateKey() {
        byte[] bArr = new byte[57];
        new SecureRandom().nextBytes(bArr);
        return PrivateKey.newInstance(bArr);
    }

    @Override // io.moatwel.crypto.eddsa.SchemeProvider
    public byte[] dom(byte[] bArr) {
        return ByteUtils.join("SigEd448".getBytes(), new byte[]{0}, new byte[]{(byte) bArr.length}, bArr);
    }
}
