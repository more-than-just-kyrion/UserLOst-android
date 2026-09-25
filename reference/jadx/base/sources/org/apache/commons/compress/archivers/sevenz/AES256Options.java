package org.apache.commons.compress.archivers.sevenz;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes3.dex */
final class AES256Options {
    static final String ALGORITHM = "AES";
    private static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
    static final String TRANSFORMATION = "AES/CBC/NoPadding";
    private final Cipher cipher;
    private final byte[] iv;
    private final int numCyclesPower;
    private final byte[] salt;

    static SecretKeySpec newSecretKeySpec(byte[] bArr) {
        return new SecretKeySpec(bArr, ALGORITHM);
    }

    private static byte[] randomBytes(int i) {
        byte[] bArr = new byte[i];
        try {
            SecureRandom.getInstanceStrong().nextBytes(bArr);
            return bArr;
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("No strong secure random available to generate strong AES key", e);
        }
    }

    AES256Options(char[] cArr) {
        this(cArr, EMPTY_BYTE_ARRAY, randomBytes(16), 19);
    }

    AES256Options(char[] cArr, byte[] bArr, byte[] bArr2, int i) {
        this.salt = bArr;
        this.iv = bArr2;
        this.numCyclesPower = i;
        SecretKeySpec secretKeySpecNewSecretKeySpec = newSecretKeySpec(AES256SHA256Decoder.sha256Password(cArr, i, bArr));
        try {
            Cipher cipher = Cipher.getInstance(TRANSFORMATION);
            this.cipher = cipher;
            cipher.init(1, secretKeySpecNewSecretKeySpec, new IvParameterSpec(bArr2));
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException("Encryption error (do you have the JCE Unlimited Strength Jurisdiction Policy Files installed?)", e);
        }
    }

    Cipher getCipher() {
        return this.cipher;
    }

    byte[] getIv() {
        return this.iv;
    }

    int getNumCyclesPower() {
        return this.numCyclesPower;
    }

    byte[] getSalt() {
        return this.salt;
    }
}
