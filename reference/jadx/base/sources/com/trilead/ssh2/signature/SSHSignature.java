package com.trilead.ssh2.signature;

import java.io.IOException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes2.dex */
public interface SSHSignature {
    PublicKey decodePublicKey(byte[] bArr) throws IOException;

    byte[] encodePublicKey(PublicKey publicKey) throws IOException;

    byte[] generateSignature(byte[] bArr, PrivateKey privateKey, SecureRandom secureRandom) throws IOException;

    String getKeyFormat();

    boolean verifySignature(byte[] bArr, byte[] bArr2, PublicKey publicKey) throws IOException;
}
