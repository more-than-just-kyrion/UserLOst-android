package com.iiordanov.pubkeygenerator;

import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public final class Encryptor {
    private static final String CHARSET_NAME = "UTF-8";
    private static final String CIPHER_ALGORITHM = "AES/CBC/PKCS5Padding";
    private static final String DIGEST_ALGORITHM = "SHA-256";
    private static final String KEY_ALGORITHM = "AES";
    private static final String RNG_ALGORITHM = "SHA1PRNG";

    private Encryptor() {
    }

    public static byte[] encrypt(byte[] bArr, int i, String str, byte[] bArr2) throws Exception {
        SecureRandom.getInstance(RNG_ALGORITHM).nextBytes(bArr);
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        byte[] bytes = str.getBytes("UTF-8");
        for (int i2 = 0; i2 < i; i2++) {
            byte[] bArr3 = new byte[bytes.length + bArr.length];
            System.arraycopy(bytes, 0, bArr3, 0, bytes.length);
            System.arraycopy(bArr, 0, bArr3, bytes.length, bArr.length);
            Arrays.fill(bytes, (byte) 0);
            messageDigest.reset();
            bytes = messageDigest.digest(bArr3);
            Arrays.fill(bArr3, (byte) 0);
        }
        byte[] bArr4 = new byte[16];
        byte[] bArr5 = new byte[16];
        System.arraycopy(bytes, 0, bArr4, 0, 16);
        System.arraycopy(bytes, 16, bArr5, 0, 16);
        Arrays.fill(bytes, (byte) 0);
        Cipher cipher = Cipher.getInstance(CIPHER_ALGORITHM);
        cipher.init(1, new SecretKeySpec(bArr4, KEY_ALGORITHM), new IvParameterSpec(bArr5));
        Arrays.fill(bArr4, (byte) 0);
        Arrays.fill(bArr5, (byte) 0);
        return cipher.doFinal(bArr2);
    }

    public static byte[] decrypt(byte[] bArr, int i, String str, byte[] bArr2) throws Exception {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        byte[] bytes = str.getBytes("UTF-8");
        for (int i2 = 0; i2 < i; i2++) {
            byte[] bArr3 = new byte[bytes.length + bArr.length];
            System.arraycopy(bytes, 0, bArr3, 0, bytes.length);
            System.arraycopy(bArr, 0, bArr3, bytes.length, bArr.length);
            Arrays.fill(bytes, (byte) 0);
            messageDigest.reset();
            bytes = messageDigest.digest(bArr3);
            Arrays.fill(bArr3, (byte) 0);
        }
        byte[] bArr4 = new byte[16];
        byte[] bArr5 = new byte[16];
        System.arraycopy(bytes, 0, bArr4, 0, 16);
        System.arraycopy(bytes, 16, bArr5, 0, 16);
        Arrays.fill(bytes, (byte) 0);
        Cipher cipher = Cipher.getInstance(CIPHER_ALGORITHM);
        cipher.init(2, new SecretKeySpec(bArr4, KEY_ALGORITHM), new IvParameterSpec(bArr5));
        Arrays.fill(bArr4, (byte) 0);
        Arrays.fill(bArr5, (byte) 0);
        return cipher.doFinal(bArr2);
    }
}
