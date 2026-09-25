package io.moatwel.crypto.eddsa.ed448.ph;

import io.moatwel.crypto.EdDsaSigner;
import io.moatwel.crypto.HashAlgorithm;
import io.moatwel.crypto.Hashes;
import io.moatwel.crypto.PrivateKey;
import io.moatwel.crypto.eddsa.PublicKeyDelegate;
import io.moatwel.crypto.eddsa.SchemeProvider;
import io.moatwel.crypto.eddsa.ed448.Curve448;
import io.moatwel.crypto.eddsa.ed448.Ed448PublicKeyDelegate;
import io.moatwel.crypto.eddsa.ed448.Ed448Signer;
import io.moatwel.util.ByteUtils;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes2.dex */
public class Ed448phSchemeProvider extends SchemeProvider {
    private final HashAlgorithm algorithm;

    public Ed448phSchemeProvider(HashAlgorithm hashAlgorithm) {
        super(Curve448.getInstance());
        if (hashAlgorithm == null) {
            throw new IllegalArgumentException("argument HashAlgorithm must not be null.");
        }
        this.algorithm = hashAlgorithm;
    }

    @Override // io.moatwel.crypto.eddsa.SchemeProvider
    public EdDsaSigner getSigner() {
        return new Ed448Signer(this.algorithm, this);
    }

    @Override // io.moatwel.crypto.eddsa.SchemeProvider
    public PublicKeyDelegate getPublicKeyDelegate() {
        return new Ed448PublicKeyDelegate(this.algorithm);
    }

    @Override // io.moatwel.crypto.eddsa.SchemeProvider
    public PrivateKey generatePrivateKey() {
        byte[] bArr = new byte[57];
        new SecureRandom().nextBytes(bArr);
        return PrivateKey.newInstance(bArr);
    }

    @Override // io.moatwel.crypto.eddsa.SchemeProvider
    public byte[] preHash(byte[] bArr) {
        return Hashes.hash(this.algorithm, 64, bArr);
    }

    @Override // io.moatwel.crypto.eddsa.SchemeProvider
    public byte[] dom(byte[] bArr) {
        return ByteUtils.join("SigEd448".getBytes(), new byte[]{1}, new byte[]{(byte) bArr.length}, bArr);
    }
}
