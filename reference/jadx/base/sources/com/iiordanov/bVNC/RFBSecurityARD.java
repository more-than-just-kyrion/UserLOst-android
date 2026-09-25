package com.iiordanov.bVNC;

import com.google.common.base.Ascii;
import java.io.IOException;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPublicKeySpec;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;

/* JADX INFO: loaded from: classes2.dex */
public class RFBSecurityARD {
    private static final String MSG_ERROR = "A cryptography error occurred while trying to perform Mac Authentication.";
    private static final String MSG_NO_SUPPORT = "Your device does not support the required cryptography to perform Mac Authentication.";
    private static final String NAME = "Mac Authentication";
    private String password;
    private String username;

    public byte getType() {
        return Ascii.RS;
    }

    public String getTypeName() {
        return NAME;
    }

    private static class DHResult {
        private byte[] privateKey;
        private byte[] publicKey;
        private byte[] secretKey;

        private DHResult() {
        }
    }

    public RFBSecurityARD(String str, String str2) {
        this.username = str;
        this.password = str2;
    }

    public boolean perform(RfbProto rfbProto) throws IOException {
        byte[] bArr = new byte[2];
        rfbProto.is.readFully(bArr, 0, 2);
        int i = rfbProto.is.readShort();
        byte[] bArr2 = new byte[i];
        rfbProto.is.readFully(bArr2);
        byte[] bArr3 = new byte[i];
        rfbProto.is.readFully(bArr3);
        DHResult dHResultPerformDHKeyAgreement = performDHKeyAgreement(new BigInteger(1, bArr2), new BigInteger(1, bArr), new BigInteger(1, bArr3), i);
        byte[] bArrPerformMD5 = performMD5(dHResultPerformDHKeyAgreement.secretKey);
        byte[] bArr4 = new byte[128];
        new SecureRandom().nextBytes(bArr4);
        byte[] bytes = this.username.getBytes("UTF-8");
        byte[] bytes2 = this.password.getBytes("UTF-8");
        int length = bytes.length < 63 ? bytes.length : 63;
        int length2 = bytes2.length < 63 ? bytes2.length : 63;
        System.arraycopy(bytes, 0, bArr4, 0, length);
        System.arraycopy(bytes2, 0, bArr4, 64, length2);
        bArr4[length] = 0;
        bArr4[length2 + 64] = 0;
        rfbProto.os.write(performAES128(bArrPerformMD5, bArr4));
        rfbProto.os.write(dHResultPerformDHKeyAgreement.publicKey);
        return true;
    }

    private DHResult performDHKeyAgreement(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i) throws IOException {
        try {
            KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("DH");
            KeyAgreement keyAgreement = KeyAgreement.getInstance("DH");
            try {
                DHPublicKey dHPublicKey = (DHPublicKey) KeyFactory.getInstance("DH").generatePublic(new DHPublicKeySpec(bigInteger3, bigInteger, bigInteger2));
                keyPairGenerator.initialize(new DHParameterSpec(bigInteger, bigInteger2));
                KeyPair keyPairGenerateKeyPair = keyPairGenerator.generateKeyPair();
                keyAgreement.init(keyPairGenerateKeyPair.getPrivate());
                keyAgreement.doPhase(dHPublicKey, true);
                DHResult dHResult = new DHResult();
                dHResult.publicKey = keyToBytes(keyPairGenerateKeyPair.getPublic(), i);
                dHResult.privateKey = keyToBytes(keyPairGenerateKeyPair.getPrivate(), i);
                dHResult.secretKey = keyAgreement.generateSecret();
                return dHResult;
            } catch (GeneralSecurityException e) {
                e.printStackTrace();
                throw new IOException("A cryptography error occurred while trying to perform Mac Authentication. (Key agreement)");
            }
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
            throw new IOException("Your device does not support the required cryptography to perform Mac Authentication. (Diffie-Hellman)");
        }
    }

    private byte[] performMD5(byte[] bArr) throws IOException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(MessageDigestAlgorithms.MD5);
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            throw new IOException("Your device does not support the required cryptography to perform Mac Authentication. (MD5)");
        }
    }

    private byte[] performAES128(byte[] bArr, byte[] bArr2) throws IOException {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            Cipher cipher = Cipher.getInstance("AES/ECB/NoPadding");
            cipher.init(1, secretKeySpec);
            return cipher.doFinal(bArr2);
        } catch (GeneralSecurityException e) {
            e.printStackTrace();
            throw new IOException("A cryptography error occurred while trying to perform Mac Authentication. (AES128)");
        }
    }

    private byte[] convertBigIntegerToByteArray(BigInteger bigInteger, int i) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length > i) {
            byte[] bArr = new byte[i];
            System.arraycopy(byteArray, byteArray.length - i, bArr, 0, i);
            return bArr;
        }
        if (byteArray.length >= i) {
            return byteArray;
        }
        byte[] bArr2 = new byte[i];
        System.arraycopy(byteArray, 0, bArr2, i - byteArray.length, byteArray.length);
        return bArr2;
    }

    private byte[] keyToBytes(Key key, int i) throws IOException {
        if (key == null) {
            throw new IOException("A cryptography error occurred while trying to perform Mac Authentication. (null key to bytes)");
        }
        if (key instanceof DHPublicKey) {
            return convertBigIntegerToByteArray(((DHPublicKey) key).getY(), i);
        }
        if (key instanceof DHPrivateKey) {
            return convertBigIntegerToByteArray(((DHPrivateKey) key).getX(), i);
        }
        throw new IOException("A cryptography error occurred while trying to perform Mac Authentication. (key " + key.getClass().getSimpleName() + " to bytes)");
    }
}
