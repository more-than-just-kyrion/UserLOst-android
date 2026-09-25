package com.trilead.ssh2.crypto.dh;

import com.google.crypto.tink.subtle.X25519;
import java.io.IOException;
import java.math.BigInteger;
import java.security.InvalidKeyException;

/* JADX INFO: loaded from: classes2.dex */
public class Curve25519Exchange extends GenericDhExchange {
    public static final String ALT_NAME = "curve25519-sha256@libssh.org";
    public static final int KEY_SIZE = 32;
    public static final String NAME = "curve25519-sha256";
    private byte[] clientPrivate;
    private byte[] clientPublic;
    private byte[] serverPublic;

    public Curve25519Exchange() {
    }

    public Curve25519Exchange(byte[] bArr) throws InvalidKeyException {
        if (bArr.length != 32) {
            throw new AssertionError("secret must be key size");
        }
        this.clientPrivate = (byte[]) bArr.clone();
    }

    @Override // com.trilead.ssh2.crypto.dh.GenericDhExchange
    public void init(String str) throws IOException {
        if (!NAME.equals(str) && !ALT_NAME.equals(str)) {
            throw new IOException("Invalid name " + str);
        }
        byte[] bArrGeneratePrivateKey = X25519.generatePrivateKey();
        this.clientPrivate = bArrGeneratePrivateKey;
        try {
            this.clientPublic = X25519.publicFromPrivate(bArrGeneratePrivateKey);
        } catch (InvalidKeyException e) {
            throw new IOException(e);
        }
    }

    @Override // com.trilead.ssh2.crypto.dh.GenericDhExchange
    public byte[] getE() {
        return (byte[]) this.clientPublic.clone();
    }

    @Override // com.trilead.ssh2.crypto.dh.GenericDhExchange
    protected byte[] getServerE() {
        return (byte[]) this.serverPublic.clone();
    }

    @Override // com.trilead.ssh2.crypto.dh.GenericDhExchange
    public void setF(byte[] bArr) throws IOException {
        if (bArr.length != 32) {
            throw new IOException("Server sent invalid key length " + bArr.length + " (expected 32)");
        }
        byte[] bArr2 = (byte[]) bArr.clone();
        this.serverPublic = bArr2;
        try {
            byte[] bArrComputeSharedSecret = X25519.computeSharedSecret(this.clientPrivate, bArr2);
            int i = 0;
            for (byte b : bArrComputeSharedSecret) {
                i |= b;
            }
            if (i == 0) {
                throw new IOException("Invalid key computed; all zeroes");
            }
            this.sharedSecret = new BigInteger(1, bArrComputeSharedSecret);
        } catch (InvalidKeyException e) {
            throw new IOException(e);
        }
    }

    @Override // com.trilead.ssh2.crypto.dh.GenericDhExchange
    public String getHashAlgo() {
        return "SHA-256";
    }
}
