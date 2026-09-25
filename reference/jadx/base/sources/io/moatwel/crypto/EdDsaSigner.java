package io.moatwel.crypto;

/* JADX INFO: loaded from: classes2.dex */
public interface EdDsaSigner {
    Signature sign(KeyPair keyPair, byte[] bArr, byte[] bArr2);

    @Deprecated
    boolean verify(KeyPair keyPair, byte[] bArr, byte[] bArr2, Signature signature);

    boolean verify(PublicKey publicKey, byte[] bArr, byte[] bArr2, Signature signature);
}
