package com.trilead.ssh2.auth;

import java.io.IOException;
import java.security.PublicKey;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SignatureProxy {
    public static final String SHA1 = "SHA-1";
    public static final String SHA256 = "SHA-256";
    public static final String SHA384 = "SHA-384";
    public static final String SHA512 = "SHA-512";
    private PublicKey mPublicKey;

    public abstract byte[] sign(byte[] bArr, String str) throws IOException;

    public SignatureProxy(PublicKey publicKey) {
        if (publicKey == null) {
            throw new IllegalArgumentException("Public key must not be null");
        }
        this.mPublicKey = publicKey;
    }

    public PublicKey getPublicKey() {
        return this.mPublicKey;
    }
}
