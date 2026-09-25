package com.iiordanov.pubkeygenerator;

import android.content.Context;
import android.util.Base64;
import android.util.Log;
import com.google.common.base.Ascii;
import com.trilead.ssh2.crypto.PEMDecoder;
import com.trilead.ssh2.crypto.PEMStructure;
import com.trilead.ssh2.signature.DSASHA1Verify;
import com.trilead.ssh2.signature.RSASHA1Verify;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPrivateKey;
import java.security.interfaces.DSAPublicKey;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.DSAPublicKeySpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.RSAPublicKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Arrays;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.EncryptedPrivateKeyInfo;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.lang3.StringUtils;
import org.spongycastle.jce.provider.BouncyCastleProvider;

/* JADX INFO: loaded from: classes2.dex */
public class PubkeyUtils {
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static final int ITERATIONS = 1000;
    public static final String PKCS8_END = "-----END PRIVATE KEY-----";
    public static final String PKCS8_START = "-----BEGIN PRIVATE KEY-----";
    private static final int SALT_SIZE = 8;
    public static final String TAG = "PubkeyUtils";

    public static String formatKey(Key key) {
        return "Key[algorithm=" + key.getAlgorithm() + ", format=" + key.getFormat() + ", bytes=" + key.getEncoded().length + "]";
    }

    public static byte[] sha256(byte[] bArr) throws NoSuchAlgorithmException {
        return MessageDigest.getInstance("SHA-256").digest(bArr);
    }

    public static byte[] cipher(int i, byte[] bArr, byte[] bArr2) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException {
        SecretKeySpec secretKeySpec = new SecretKeySpec(sha256(bArr2), "AES");
        Cipher cipher = Cipher.getInstance("AES");
        cipher.init(i, secretKeySpec);
        return cipher.doFinal(bArr);
    }

    public static byte[] encrypt(byte[] bArr, String str) throws Exception {
        byte[] bArr2 = new byte[8];
        byte[] bArrEncrypt = Encryptor.encrypt(bArr2, 1000, str, bArr);
        byte[] bArr3 = new byte[bArrEncrypt.length + 8];
        System.arraycopy(bArr2, 0, bArr3, 0, 8);
        System.arraycopy(bArrEncrypt, 0, bArr3, 8, bArrEncrypt.length);
        Arrays.fill(bArr2, (byte) 0);
        Arrays.fill(bArrEncrypt, (byte) 0);
        return bArr3;
    }

    public static byte[] decrypt(byte[] bArr, String str) throws Exception {
        try {
            byte[] bArr2 = new byte[8];
            int length = bArr.length - 8;
            byte[] bArr3 = new byte[length];
            System.arraycopy(bArr, 0, bArr2, 0, 8);
            System.arraycopy(bArr, 8, bArr3, 0, length);
            return Encryptor.decrypt(bArr2, 1000, str, bArr3);
        } catch (Exception e) {
            Log.d("decrypt", "Could not decrypt with new method", e);
            return cipher(2, bArr, str.getBytes());
        }
    }

    public static byte[] getEncodedPublic(PublicKey publicKey) {
        return new X509EncodedKeySpec(publicKey.getEncoded()).getEncoded();
    }

    public static byte[] getEncodedPrivate(PrivateKey privateKey) {
        return new PKCS8EncodedKeySpec(privateKey.getEncoded()).getEncoded();
    }

    public static byte[] getEncodedPrivate(PrivateKey privateKey, String str) throws Exception {
        if (str.length() > 0) {
            return encrypt(getEncodedPrivate(privateKey), str);
        }
        return getEncodedPrivate(privateKey);
    }

    public static PrivateKey decodePrivate(byte[] bArr, String str) throws InvalidKeySpecException, NoSuchAlgorithmException {
        return KeyFactory.getInstance(str).generatePrivate(new PKCS8EncodedKeySpec(bArr));
    }

    public static PrivateKey decodePrivate(byte[] bArr, String str, String str2) throws Exception {
        if (str2 != null && str2.length() > 0) {
            return decodePrivate(decrypt(bArr, str2), str);
        }
        return decodePrivate(bArr, str);
    }

    public static PublicKey decodePublic(byte[] bArr, String str) throws InvalidKeySpecException, NoSuchAlgorithmException {
        return KeyFactory.getInstance(str).generatePublic(new X509EncodedKeySpec(bArr));
    }

    public static KeyPair recoverKeyPair(byte[] bArr) throws InvalidKeySpecException, NoSuchAlgorithmException, NoSuchProviderException {
        PrivateKey privateKeyGeneratePrivate;
        PublicKey publicKeyGeneratePublic;
        PKCS8EncodedKeySpec pKCS8EncodedKeySpec = new PKCS8EncodedKeySpec(bArr);
        try {
            KeyFactory keyFactory = KeyFactory.getInstance(PubkeyDatabase.KEY_TYPE_RSA, new BouncyCastleProvider());
            privateKeyGeneratePrivate = keyFactory.generatePrivate(pKCS8EncodedKeySpec);
            publicKeyGeneratePublic = keyFactory.generatePublic(new RSAPublicKeySpec(((RSAPrivateCrtKey) privateKeyGeneratePrivate).getModulus(), ((RSAPrivateCrtKey) privateKeyGeneratePrivate).getPublicExponent()));
        } catch (ClassCastException unused) {
            KeyFactory keyFactory2 = KeyFactory.getInstance(PubkeyDatabase.KEY_TYPE_DSA, new BouncyCastleProvider());
            privateKeyGeneratePrivate = keyFactory2.generatePrivate(pKCS8EncodedKeySpec);
            DSAPrivateKey dSAPrivateKey = (DSAPrivateKey) privateKeyGeneratePrivate;
            DSAParams params = dSAPrivateKey.getParams();
            publicKeyGeneratePublic = keyFactory2.generatePublic(new DSAPublicKeySpec(params.getG().modPow(dSAPrivateKey.getX(), params.getP()), params.getP(), params.getQ(), params.getG()));
        }
        return new KeyPair(publicKeyGeneratePublic, privateKeyGeneratePrivate);
    }

    public static boolean isEncrypted(String str) {
        return decryptAndRecoverKeyPair(str, "") == null;
    }

    public static KeyPair decryptAndRecoverKeyPair(String str, String str2) {
        if (str == null) {
            Log.e(TAG, "SSH private key is null.");
            return null;
        }
        if (str.length() == 0) {
            Log.i(TAG, "SSH private key is empty, not recovering");
            return null;
        }
        if (str2 == null) {
            str2 = new String("");
        }
        try {
            if (str2.length() != 0) {
                Log.i(TAG, "Passphrase not empty, trying to decrypt key.");
                return recoverKeyPair(decrypt(Base64.decode(str, 0), str2));
            }
            Log.i(TAG, "Passphrase empty, recovering directly.");
            return recoverKeyPair(Base64.decode(str, 0));
        } catch (Exception e) {
            Log.i(TAG, "Either key is not encrypted and we were given passphrase, or the passphrase is wrong,or the key is corrupt.");
            e.printStackTrace();
            return null;
        }
    }

    public static String convertToOpenSSHFormat(PublicKey publicKey, String str) throws InvalidKeyException, IOException {
        if (str == null) {
            str = "pubkeygenerator@mobiledevice";
        }
        if (publicKey instanceof RSAPublicKey) {
            return ("ssh-rsa " + String.valueOf(com.trilead.ssh2.crypto.Base64.encode(RSASHA1Verify.get().encodePublicKey((RSAPublicKey) publicKey)))) + " " + str;
        }
        if (publicKey instanceof DSAPublicKey) {
            return ("ssh-dss " + String.valueOf(com.trilead.ssh2.crypto.Base64.encode(DSASHA1Verify.get().encodePublicKey((DSAPublicKey) publicKey)))) + " " + str;
        }
        throw new InvalidKeyException("Unknown key type");
    }

    public static String exportPEM(PrivateKey privateKey, String str) throws NoSuchPaddingException, InvalidKeySpecException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidParameterSpecException, InvalidKeyException, IOException, InvalidAlgorithmParameterException {
        StringBuilder sb = new StringBuilder();
        byte[] encoded = privateKey.getEncoded();
        sb.append("-----BEGIN PRIVATE KEY-----\n");
        if (str != null) {
            byte[] bArr = new byte[8];
            new SecureRandom().nextBytes(bArr);
            PBEParameterSpec pBEParameterSpec = new PBEParameterSpec(bArr, 1);
            AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance(privateKey.getAlgorithm());
            algorithmParameters.init(pBEParameterSpec);
            PBEKeySpec pBEKeySpec = new PBEKeySpec(str.toCharArray());
            SecretKeyFactory secretKeyFactory = SecretKeyFactory.getInstance(privateKey.getAlgorithm());
            Cipher cipher = Cipher.getInstance(privateKey.getAlgorithm());
            cipher.init(3, secretKeyFactory.generateSecret(pBEKeySpec), algorithmParameters);
            byte[] encoded2 = new EncryptedPrivateKeyInfo(algorithmParameters, cipher.wrap(privateKey)).getEncoded();
            sb.append("Proc-Type: 4,ENCRYPTED\nDEK-Info: DES-EDE3-CBC,");
            sb.append(encodeHex(bArr));
            sb.append("\n\n");
            encoded = encoded2;
        }
        int length = sb.length();
        sb.append(com.trilead.ssh2.crypto.Base64.encode(encoded));
        for (int i = length + 63; i < sb.length(); i += 64) {
            sb.insert(i, StringUtils.LF);
        }
        sb.append('\n');
        sb.append(PKCS8_END);
        sb.append('\n');
        return sb.toString();
    }

    protected static String encodeHex(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b : bArr) {
            int i2 = i + 1;
            char[] cArr2 = HEX_DIGITS;
            cArr[i] = cArr2[(b >> 4) & 15];
            i += 2;
            cArr[i2] = cArr2[b & Ascii.SI];
        }
        return String.valueOf(cArr);
    }

    public static String getPubkeyString(PubkeyBean pubkeyBean) {
        try {
            return convertToOpenSSHFormat(pubkeyBean.getPublicKey(), pubkeyBean.getNickname());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getPrivkeyString(PubkeyBean pubkeyBean, String str) {
        PrivateKey privateKeyDecodePrivate;
        if (PubkeyDatabase.KEY_TYPE_IMPORTED.equals(pubkeyBean.getType())) {
            try {
                return new String(pubkeyBean.getPrivateKey());
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            try {
                if (str == null) {
                    privateKeyDecodePrivate = decodePrivate(pubkeyBean.getPrivateKey(), pubkeyBean.getType());
                } else {
                    privateKeyDecodePrivate = decodePrivate(pubkeyBean.getPrivateKey(), pubkeyBean.getType(), str);
                }
                return exportPEM(privateKeyDecodePrivate, str);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    public static KeyPair importPEM(String str) {
        try {
            return recoverKeyPair(Base64.decode(str.replace("-----BEGIN RSA PRIVATE KEY-----\n", "").replace("-----END RSA PRIVATE KEY-----", "").replace("-----BEGIN DSA PRIVATE KEY-----\n", "").replace("-----END DSA PRIVATE KEY-----", "").replace("-----BEGIN PRIVATE KEY-----\n", "").replace(PKCS8_END, ""), 0));
        } catch (Exception e) {
            Log.e(TAG, "Could not recover keypair from PEM string.");
            e.printStackTrace();
            return null;
        }
    }

    public static KeyPair importPkcs8(String str) throws Exception {
        try {
            return recoverKeyPair(Base64.decode(str.replace("-----BEGIN PRIVATE KEY-----\n", "").replace(PKCS8_END, ""), 0));
        } catch (Exception e) {
            Log.e(TAG, "Could not recover keypair from PKCS8 string.");
            e.printStackTrace();
            return null;
        }
    }

    public static KeyPair importPem(Context context, String str, String str2) throws Exception {
        try {
            PEMStructure pem = PEMDecoder.parsePEM(str.toCharArray());
            if (PEMDecoder.isPEMEncrypted(pem)) {
                try {
                    PEMDecoder.decode(pem, str2);
                } catch (Exception unused) {
                    throw new Exception(context.getString(R.string.error_decrypting));
                }
            }
            try {
                return recoverKeyPair(pem.data);
            } catch (Exception e) {
                Log.e(TAG, "Could not recover key-pair from PEM string.");
                e.printStackTrace();
                return null;
            }
        } catch (Exception e2) {
            Log.e(TAG, "Key not in PEM format or corrupt.");
            e2.printStackTrace();
            return null;
        }
    }

    public static KeyPair tryImportingPemAndPkcs8(Context context, String str, String str2) throws Exception {
        KeyPair keyPairImportPem = importPem(context, str, str2);
        if (keyPairImportPem == null) {
            keyPairImportPem = importPkcs8(str);
        }
        if (keyPairImportPem != null) {
            return keyPairImportPem;
        }
        throw new Exception(context.getString(R.string.error_importing));
    }
}
