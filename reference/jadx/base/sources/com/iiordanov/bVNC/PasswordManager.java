package com.iiordanov.bVNC;

import android.util.Base64;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public class PasswordManager {
    private static String DELIM = "]";
    String password;

    public PasswordManager(String str) {
        this.password = str;
    }

    private Cipher initialize(byte[] bArr, byte[] bArr2, int i) throws NoSuchPaddingException, InvalidKeySpecException, NoSuchAlgorithmException, InvalidKeyException, UnsupportedEncodingException, InvalidAlgorithmParameterException {
        SecretKeySpec secretKeySpec = new SecretKeySpec(SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1").generateSecret(new PBEKeySpec(this.password.toCharArray(), bArr, 10000, 256)).getEncoded(), "AES");
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        if (i == 1) {
            bArr2 = randomBytes(cipher.getBlockSize());
        }
        cipher.init(i, secretKeySpec, new IvParameterSpec(bArr2));
        return cipher;
    }

    public String encrypt(String str) throws BadPaddingException, NoSuchPaddingException, InvalidKeySpecException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, UnsupportedEncodingException, InvalidAlgorithmParameterException {
        Log.e("ENCRYPT", "ENCRYPT FUNCTION CALLED with password: " + str);
        byte[] bArrRandomBytes = randomBytes(256);
        Cipher cipherInitialize = initialize(bArrRandomBytes, null, 1);
        String str2 = String.format("%s%s%s%s%s", b64Encode(bArrRandomBytes), DELIM, b64Encode(cipherInitialize.getIV()), DELIM, b64Encode(cipherInitialize.doFinal(str.getBytes("UTF-8"))));
        Log.e("ENCRYPT-ENCRYPTED", str2);
        return str2;
    }

    public String decrypt(String str) throws BadPaddingException, InvalidKeySpecException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, UnsupportedEncodingException, InvalidAlgorithmParameterException {
        String[] strArrSplit = str.split(DELIM);
        byte[] bArrB64Decode = b64Decode(strArrSplit[0]);
        byte[] bArrB64Decode2 = b64Decode(strArrSplit[1]);
        String str2 = new String(initialize(bArrB64Decode, bArrB64Decode2, 2).doFinal(b64Decode(strArrSplit[2])), "UTF-8");
        Log.e("DECRYPT-ENCRYPTED", str);
        Log.e("DECRYPT", "DECRYPT FUNCTION CALLED plaintext resulted in: ".concat(str2));
        return str2;
    }

    public static byte[] randomBytes(int i) {
        byte[] bArr = new byte[i];
        new SecureRandom().nextBytes(bArr);
        return bArr;
    }

    public static String randomString(int i) throws UnsupportedEncodingException {
        return new String(randomBytes(i), "UTF-8");
    }

    public static String randomBase64EncodedString(int i) throws UnsupportedEncodingException {
        return b64Encode(randomBytes(i));
    }

    public static String b64Encode(byte[] bArr) {
        return Base64.encodeToString(bArr, 3);
    }

    public static byte[] b64Decode(String str) {
        return Base64.decode(str, 3);
    }

    public static String computeHash(String str, byte[] bArr) throws InvalidKeySpecException, NoSuchAlgorithmException {
        return String.format("%x", new BigInteger(SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1").generateSecret(new PBEKeySpec(str.toCharArray(), bArr, 10000, 256)).getEncoded()));
    }

    public static String computeHash(String str, String str2) throws InvalidKeySpecException, NoSuchAlgorithmException {
        return computeHash(str, str2.getBytes());
    }
}
