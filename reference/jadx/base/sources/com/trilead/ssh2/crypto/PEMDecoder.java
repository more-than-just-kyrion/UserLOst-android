package com.trilead.ssh2.crypto;

import com.iiordanov.pubkeygenerator.PreferenceConstants;
import com.iiordanov.pubkeygenerator.PubkeyDatabase;
import com.trilead.ssh2.crypto.cipher.AES;
import com.trilead.ssh2.crypto.cipher.BlockCipher;
import com.trilead.ssh2.crypto.cipher.DES;
import com.trilead.ssh2.crypto.cipher.DESede;
import com.trilead.ssh2.crypto.keys.Ed25519PrivateKey;
import com.trilead.ssh2.crypto.keys.Ed25519PublicKey;
import com.trilead.ssh2.packets.TypesReader;
import com.trilead.ssh2.signature.DSASHA1Verify;
import com.trilead.ssh2.signature.ECDSASHA2Verify;
import com.trilead.ssh2.signature.Ed25519Verify;
import com.trilead.ssh2.signature.RSASHA1Verify;
import java.io.BufferedReader;
import java.io.CharArrayReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.DigestException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.spec.DSAPrivateKeySpec;
import java.security.spec.DSAPublicKeySpec;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPrivateKeySpec;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.RSAPrivateCrtKeySpec;
import java.security.spec.RSAPrivateKeySpec;
import java.security.spec.RSAPublicKeySpec;
import java.util.Arrays;
import java.util.Locale;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.mindrot.jbcrypt.BCrypt;

/* JADX INFO: loaded from: classes2.dex */
public class PEMDecoder {
    private static final byte[] OPENSSH_V1_MAGIC = {111, 112, 101, 110, 115, 115, 104, 45, 107, 101, 121, 45, 118, TarConstants.LF_LINK, 0};
    public static final int PEM_DSA_PRIVATE_KEY = 2;
    public static final int PEM_EC_PRIVATE_KEY = 3;
    public static final int PEM_OPENSSH_PRIVATE_KEY = 4;
    public static final int PEM_RSA_PRIVATE_KEY = 1;

    private static int hexToInt(char c) {
        if (c >= 'a' && c <= 'f') {
            return c - 'W';
        }
        if (c >= 'A' && c <= 'F') {
            return c - '7';
        }
        if (c < '0' || c > '9') {
            throw new IllegalArgumentException("Need hex char");
        }
        return c - '0';
    }

    private static byte[] hexToByteArray(String str) {
        if (str == null) {
            throw new IllegalArgumentException("null argument");
        }
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException("Uneven string length in hex encoding.");
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) ((hexToInt(str.charAt(i2)) * 16) + hexToInt(str.charAt(i2 + 1)));
        }
        return bArr;
    }

    private static byte[] generateKeyFromPasswordSaltWithMD5(byte[] bArr, byte[] bArr2, int i) throws IOException {
        if (bArr2.length < 8) {
            throw new IllegalArgumentException("Salt needs to be at least 8 bytes for key generation.");
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(MessageDigestAlgorithms.MD5);
            byte[] bArr3 = new byte[i];
            int digestLength = messageDigest.getDigestLength();
            byte[] bArr4 = new byte[digestLength];
            int i2 = i;
            while (true) {
                messageDigest.update(bArr, 0, bArr.length);
                messageDigest.update(bArr2, 0, 8);
                int i3 = i2 < digestLength ? i2 : digestLength;
                try {
                    messageDigest.digest(bArr4, 0, digestLength);
                    System.arraycopy(bArr4, 0, bArr3, i - i2, i3);
                    i2 -= i3;
                    if (i2 == 0) {
                        return bArr3;
                    }
                    messageDigest.update(bArr4, 0, digestLength);
                } catch (DigestException e) {
                    throw new IOException("could not digest password", e);
                }
            }
        } catch (NoSuchAlgorithmException e2) {
            throw new IllegalArgumentException("VM does not support MD5", e2);
        }
    }

    private static byte[] removePadding(byte[] bArr, int i) throws IOException {
        int i2 = bArr[bArr.length - 1] & 255;
        if (i2 < 1 || i2 > i) {
            throw new IOException("Decrypted PEM has wrong padding, did you specify the correct password?");
        }
        for (int i3 = 2; i3 <= i2; i3++) {
            if (bArr[bArr.length - i3] != i2) {
                throw new IOException("Decrypted PEM has wrong padding, did you specify the correct password?");
            }
        }
        byte[] bArr2 = new byte[bArr.length - i2];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length - i2);
        return bArr2;
    }

    public static final PEMStructure parsePEM(char[] cArr) throws IOException {
        String str;
        PEMStructure pEMStructure = new PEMStructure();
        BufferedReader bufferedReader = new BufferedReader(new CharArrayReader(cArr));
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                throw new IOException("Invalid PEM structure, '-----BEGIN...' missing");
            }
            String strTrim = line.trim();
            if (strTrim.startsWith("-----BEGIN DSA PRIVATE KEY-----")) {
                pEMStructure.pemType = 2;
                str = "-----END DSA PRIVATE KEY-----";
                break;
            }
            if (strTrim.startsWith("-----BEGIN RSA PRIVATE KEY-----")) {
                pEMStructure.pemType = 1;
                str = "-----END RSA PRIVATE KEY-----";
                break;
            }
            if (strTrim.startsWith("-----BEGIN EC PRIVATE KEY-----")) {
                pEMStructure.pemType = 3;
                str = "-----END EC PRIVATE KEY-----";
                break;
            }
            if (strTrim.startsWith("-----BEGIN OPENSSH PRIVATE KEY-----")) {
                pEMStructure.pemType = 4;
                str = "-----END OPENSSH PRIVATE KEY-----";
                break;
            }
        }
        while (true) {
            String line2 = bufferedReader.readLine();
            if (line2 == null) {
                throw new IOException("Invalid PEM structure, " + str + " missing");
            }
            String strTrim2 = line2.trim();
            int iIndexOf = strTrim2.indexOf(58);
            if (iIndexOf != -1) {
                int i = iIndexOf + 1;
                String strSubstring = strTrim2.substring(0, i);
                String[] strArrSplit = strTrim2.substring(i).split(",");
                for (int i2 = 0; i2 < strArrSplit.length; i2++) {
                    strArrSplit[i2] = strArrSplit[i2].trim();
                }
                if ("Proc-Type:".equals(strSubstring)) {
                    pEMStructure.procType = strArrSplit;
                } else if ("DEK-Info:".equals(strSubstring)) {
                    pEMStructure.dekInfo = strArrSplit;
                }
            } else {
                StringBuffer stringBuffer = new StringBuffer();
                while (strTrim2 != null) {
                    String strTrim3 = strTrim2.trim();
                    if (!strTrim3.startsWith(str)) {
                        stringBuffer.append(strTrim3);
                        strTrim2 = bufferedReader.readLine();
                    } else {
                        int length = stringBuffer.length();
                        char[] cArr2 = new char[length];
                        stringBuffer.getChars(0, length, cArr2, 0);
                        pEMStructure.data = Base64.decode(cArr2);
                        if (pEMStructure.data.length != 0) {
                            return pEMStructure;
                        }
                        throw new IOException("Invalid PEM structure, no data available");
                    }
                }
                throw new IOException("Invalid PEM structure, " + str + " missing");
            }
        }
    }

    private static byte[] decryptData(byte[] bArr, byte[] bArr2, byte[] bArr3, int i, String str) throws IOException {
        BlockCipher cbc;
        String lowerCase = str.toLowerCase(Locale.US);
        int i2 = 24;
        if (lowerCase.equals("des-ede3-cbc")) {
            cbc = new DESede.CBC();
        } else if (lowerCase.equals("des-cbc")) {
            cbc = new DES.CBC();
            i2 = 8;
        } else {
            if (lowerCase.equals("aes-128-cbc") || lowerCase.equals("aes128-cbc")) {
                cbc = new AES.CBC();
            } else if (lowerCase.equals("aes-192-cbc") || lowerCase.equals("aes192-cbc")) {
                cbc = new AES.CBC();
            } else {
                if (lowerCase.equals("aes-256-cbc") || lowerCase.equals("aes256-cbc")) {
                    cbc = new AES.CBC();
                } else if (lowerCase.equals("aes-128-ctr") || lowerCase.equals("aes128-ctr")) {
                    cbc = new AES.CTR();
                } else if (lowerCase.equals("aes-192-ctr") || lowerCase.equals("aes192-ctr")) {
                    cbc = new AES.CTR();
                } else if (lowerCase.equals("aes-256-ctr") || lowerCase.equals("aes256-ctr")) {
                    cbc = new AES.CTR();
                } else {
                    throw new IOException("Cannot decrypt PEM structure, unknown cipher " + str);
                }
                i2 = 32;
            }
            i2 = 16;
        }
        if (i == -1) {
            cbc.init(false, generateKeyFromPasswordSaltWithMD5(bArr2, bArr3, i2), bArr3);
        } else {
            byte[] bArr4 = new byte[i2];
            int blockSize = cbc.getBlockSize();
            byte[] bArr5 = new byte[blockSize];
            byte[] bArr6 = new byte[i2 + blockSize];
            new BCrypt().pbkdf(bArr2, bArr3, i, bArr6);
            System.arraycopy(bArr6, 0, bArr4, 0, i2);
            System.arraycopy(bArr6, i2, bArr5, 0, blockSize);
            cbc.init(false, bArr4, bArr5);
        }
        if (bArr.length % cbc.getBlockSize() != 0) {
            throw new IOException("Invalid PEM structure, size of encrypted block is not a multiple of " + cbc.getBlockSize());
        }
        byte[] bArr7 = new byte[bArr.length];
        for (int i3 = 0; i3 < bArr.length / cbc.getBlockSize(); i3++) {
            cbc.transformBlock(bArr, cbc.getBlockSize() * i3, bArr7, cbc.getBlockSize() * i3);
        }
        return i == -1 ? removePadding(bArr7, cbc.getBlockSize()) : bArr7;
    }

    private static void decryptPEM(PEMStructure pEMStructure, byte[] bArr) throws IOException {
        if (pEMStructure.dekInfo == null) {
            throw new IOException("Broken PEM, no mode and salt given, but encryption enabled");
        }
        if (pEMStructure.dekInfo.length != 2) {
            throw new IOException("Broken PEM, DEK-Info is incomplete!");
        }
        String str = pEMStructure.dekInfo[0];
        pEMStructure.data = decryptData(pEMStructure.data, bArr, hexToByteArray(pEMStructure.dekInfo[1]), -1, str);
        pEMStructure.dekInfo = null;
        pEMStructure.procType = null;
    }

    public static final boolean isPEMEncrypted(PEMStructure pEMStructure) throws IOException {
        if (pEMStructure.pemType == 4) {
            TypesReader typesReader = new TypesReader(pEMStructure.data);
            byte[] bArr = OPENSSH_V1_MAGIC;
            byte[] bytes = typesReader.readBytes(bArr.length);
            if (!Arrays.equals(bArr, bytes)) {
                throw new IOException("Could not find OPENSSH key magic: ".concat(new String(bytes)));
            }
            typesReader.readString();
            return !PreferenceConstants.CUSTOM_KEYMAP_DISABLED.equals(typesReader.readString());
        }
        if (pEMStructure.procType == null) {
            return false;
        }
        if (pEMStructure.procType.length != 2) {
            throw new IOException("Unknown Proc-Type field.");
        }
        if (!"4".equals(pEMStructure.procType[0])) {
            throw new IOException("Unknown Proc-Type field (" + pEMStructure.procType[0] + ")");
        }
        return "ENCRYPTED".equals(pEMStructure.procType[1]);
    }

    public static KeyPair decode(char[] cArr, String str) throws IOException {
        return decode(parsePEM(cArr), str);
    }

    public static KeyPair decode(PEMStructure pEMStructure, String str) throws IOException {
        KeyPair keyPairGenerateKeyPair;
        KeySpec rSAPrivateKeySpec;
        ECDSASHA2Verify eCDSASHA2Verify;
        byte[] bytes;
        if (isPEMEncrypted(pEMStructure) && pEMStructure.pemType != 4) {
            if (str == null) {
                throw new IOException("PEM is encrypted, but no password was specified");
            }
            try {
                decryptPEM(pEMStructure, str.getBytes("ISO-8859-1"));
            } catch (UnsupportedEncodingException unused) {
                decryptPEM(pEMStructure, str.getBytes("ISO-8859-1"));
            }
        }
        if (pEMStructure.pemType == 2) {
            SimpleDERReader simpleDERReader = new SimpleDERReader(pEMStructure.data);
            byte[] sequenceAsByteArray = simpleDERReader.readSequenceAsByteArray();
            if (simpleDERReader.available() != 0) {
                throw new IOException("Padding in DSA PRIVATE KEY DER stream.");
            }
            simpleDERReader.resetInput(sequenceAsByteArray);
            BigInteger bigInteger = simpleDERReader.readInt();
            if (bigInteger.compareTo(BigInteger.ZERO) != 0) {
                throw new IOException("Wrong version (" + bigInteger + ") in DSA PRIVATE KEY DER stream.");
            }
            BigInteger bigInteger2 = simpleDERReader.readInt();
            BigInteger bigInteger3 = simpleDERReader.readInt();
            BigInteger bigInteger4 = simpleDERReader.readInt();
            BigInteger bigInteger5 = simpleDERReader.readInt();
            BigInteger bigInteger6 = simpleDERReader.readInt();
            if (simpleDERReader.available() != 0) {
                throw new IOException("Padding in DSA PRIVATE KEY DER stream.");
            }
            return generateKeyPair(PubkeyDatabase.KEY_TYPE_DSA, new DSAPrivateKeySpec(bigInteger6, bigInteger2, bigInteger3, bigInteger4), new DSAPublicKeySpec(bigInteger5, bigInteger2, bigInteger3, bigInteger4));
        }
        if (pEMStructure.pemType == 1) {
            SimpleDERReader simpleDERReader2 = new SimpleDERReader(pEMStructure.data);
            byte[] sequenceAsByteArray2 = simpleDERReader2.readSequenceAsByteArray();
            if (simpleDERReader2.available() != 0) {
                throw new IOException("Padding in RSA PRIVATE KEY DER stream.");
            }
            simpleDERReader2.resetInput(sequenceAsByteArray2);
            BigInteger bigInteger7 = simpleDERReader2.readInt();
            if (bigInteger7.compareTo(BigInteger.ZERO) != 0 && bigInteger7.compareTo(BigInteger.ONE) != 0) {
                throw new IOException("Wrong version (" + bigInteger7 + ") in RSA PRIVATE KEY DER stream.");
            }
            BigInteger bigInteger8 = simpleDERReader2.readInt();
            BigInteger bigInteger9 = simpleDERReader2.readInt();
            return generateKeyPair(PubkeyDatabase.KEY_TYPE_RSA, new RSAPrivateCrtKeySpec(bigInteger8, bigInteger9, simpleDERReader2.readInt(), simpleDERReader2.readInt(), simpleDERReader2.readInt(), simpleDERReader2.readInt(), simpleDERReader2.readInt(), simpleDERReader2.readInt()), new RSAPublicKeySpec(bigInteger8, bigInteger9));
        }
        if (pEMStructure.pemType == 3) {
            SimpleDERReader simpleDERReader3 = new SimpleDERReader(pEMStructure.data);
            byte[] sequenceAsByteArray3 = simpleDERReader3.readSequenceAsByteArray();
            if (simpleDERReader3.available() != 0) {
                throw new IOException("Padding in EC PRIVATE KEY DER stream.");
            }
            simpleDERReader3.resetInput(sequenceAsByteArray3);
            BigInteger bigInteger10 = simpleDERReader3.readInt();
            if (bigInteger10.compareTo(BigInteger.ONE) != 0) {
                throw new IOException("Wrong version (" + bigInteger10 + ") in EC PRIVATE KEY DER stream.");
            }
            byte[] octetString = simpleDERReader3.readOctetString();
            String oid = null;
            byte[] octetString2 = null;
            while (simpleDERReader3.available() > 0) {
                int constructedType = simpleDERReader3.readConstructedType();
                SimpleDERReader constructed = simpleDERReader3.readConstructed();
                if (constructedType == 0) {
                    oid = constructed.readOid();
                } else if (constructedType == 1) {
                    octetString2 = constructed.readOctetString();
                }
            }
            ECDSASHA2Verify verifierForOID = ECDSASHA2Verify.getVerifierForOID(oid);
            if (verifierForOID == null) {
                throw new IOException("invalid OID");
            }
            BigInteger bigInteger11 = new BigInteger(1, octetString);
            int length = octetString2.length - 1;
            byte[] bArr = new byte[length];
            System.arraycopy(octetString2, 1, bArr, 0, length);
            ECParameterSpec parameterSpec = verifierForOID.getParameterSpec();
            return generateKeyPair("EC", new ECPrivateKeySpec(bigInteger11, parameterSpec), new ECPublicKeySpec(verifierForOID.decodeECPoint(bArr), parameterSpec));
        }
        if (pEMStructure.pemType == 4) {
            TypesReader typesReader = new TypesReader(pEMStructure.data);
            byte[] bArr2 = OPENSSH_V1_MAGIC;
            byte[] bytes2 = typesReader.readBytes(bArr2.length);
            if (!Arrays.equals(bArr2, bytes2)) {
                throw new IOException("Could not find OPENSSH key magic: ".concat(new String(bytes2)));
            }
            String string = typesReader.readString();
            String string2 = typesReader.readString();
            byte[] byteString = typesReader.readByteString();
            int uint32 = typesReader.readUINT32();
            if (uint32 != 1) {
                throw new IOException("Only one key supported, but encountered bundle of " + uint32);
            }
            typesReader.readByteString();
            byte[] byteString2 = typesReader.readByteString();
            if ("bcrypt".equals(string2)) {
                if (str == null) {
                    throw new IOException("PEM is encrypted, but no password was specified");
                }
                TypesReader typesReader2 = new TypesReader(byteString);
                byte[] byteString3 = typesReader2.readByteString();
                int uint33 = typesReader2.readUINT32();
                try {
                    bytes = str.getBytes("UTF-8");
                } catch (UnsupportedEncodingException unused2) {
                    bytes = str.getBytes();
                }
                byteString2 = decryptData(byteString2, bytes, byteString3, uint33, string);
            } else if (!PreferenceConstants.CUSTOM_KEYMAP_DISABLED.equals(string) || !PreferenceConstants.CUSTOM_KEYMAP_DISABLED.equals(string2)) {
                throw new IOException("encryption not supported");
            }
            TypesReader typesReader3 = new TypesReader(byteString2);
            if (typesReader3.readUINT32() != typesReader3.readUINT32()) {
                throw new IOException("Decryption failed when trying to read private keys");
            }
            String string3 = typesReader3.readString();
            if (Ed25519Verify.ED25519_ID.equals(string3)) {
                keyPairGenerateKeyPair = new KeyPair(new Ed25519PublicKey(typesReader3.readByteString()), new Ed25519PrivateKey(Arrays.copyOfRange(typesReader3.readByteString(), 0, 32)));
            } else if (string3.startsWith(ECDSASHA2Verify.ECDSA_SHA2_PREFIX)) {
                String string4 = typesReader3.readString();
                byte[] byteString4 = typesReader3.readByteString();
                BigInteger mpint = typesReader3.readMPINT();
                if (string4.equals(ECDSASHA2Verify.ECDSASHA2NISTP256Verify.get().getCurveName())) {
                    eCDSASHA2Verify = ECDSASHA2Verify.ECDSASHA2NISTP256Verify.get();
                } else if (string4.equals(ECDSASHA2Verify.ECDSASHA2NISTP384Verify.get().getCurveName())) {
                    eCDSASHA2Verify = ECDSASHA2Verify.ECDSASHA2NISTP384Verify.get();
                } else if (string4.equals(ECDSASHA2Verify.ECDSASHA2NISTP521Verify.get().getCurveName())) {
                    eCDSASHA2Verify = ECDSASHA2Verify.ECDSASHA2NISTP521Verify.get();
                } else {
                    throw new IOException("Invalid ECDSA group");
                }
                ECParameterSpec parameterSpec2 = eCDSASHA2Verify.getParameterSpec();
                keyPairGenerateKeyPair = generateKeyPair("EC", new ECPrivateKeySpec(mpint, parameterSpec2), new ECPublicKeySpec(eCDSASHA2Verify.decodeECPoint(byteString4), parameterSpec2));
            } else if (RSASHA1Verify.get().getKeyFormat().equals(string3)) {
                BigInteger mpint2 = typesReader3.readMPINT();
                BigInteger mpint3 = typesReader3.readMPINT();
                BigInteger mpint4 = typesReader3.readMPINT();
                BigInteger mpint5 = typesReader3.readMPINT();
                BigInteger mpint6 = typesReader3.readMPINT();
                if (mpint6 == null || mpint5 == null) {
                    rSAPrivateKeySpec = new RSAPrivateKeySpec(mpint2, mpint4);
                } else {
                    BigInteger bigIntegerModInverse = mpint5.modInverse(mpint6);
                    rSAPrivateKeySpec = new RSAPrivateCrtKeySpec(mpint2, mpint3, mpint4, mpint6, bigIntegerModInverse, mpint4.mod(mpint6.subtract(BigInteger.ONE)), mpint4.mod(bigIntegerModInverse.subtract(BigInteger.ONE)), mpint5);
                }
                keyPairGenerateKeyPair = generateKeyPair(PubkeyDatabase.KEY_TYPE_RSA, rSAPrivateKeySpec, new RSAPublicKeySpec(mpint2, mpint3));
            } else if (DSASHA1Verify.get().getKeyFormat().equals(string3)) {
                BigInteger mpint7 = typesReader3.readMPINT();
                BigInteger mpint8 = typesReader3.readMPINT();
                BigInteger mpint9 = typesReader3.readMPINT();
                keyPairGenerateKeyPair = generateKeyPair(PubkeyDatabase.KEY_TYPE_DSA, new DSAPrivateKeySpec(typesReader3.readMPINT(), mpint7, mpint8, mpint9), new DSAPublicKeySpec(typesReader3.readMPINT(), mpint7, mpint8, mpint9));
            } else {
                throw new IOException("Unknown key type " + string3);
            }
            typesReader3.readByteString();
            int iRemain = typesReader.remain();
            for (int i = 1; i <= iRemain; i++) {
                if (i != typesReader.readByte()) {
                    throw new IOException("Bad padding value on decrypted private keys");
                }
            }
            return keyPairGenerateKeyPair;
        }
        throw new IOException("PEM problem: it is of unknown type");
    }

    private static KeyPair generateKeyPair(String str, KeySpec keySpec, KeySpec keySpec2) throws IOException {
        try {
            KeyFactory keyFactory = KeyFactory.getInstance(str);
            return new KeyPair(keyFactory.generatePublic(keySpec2), keyFactory.generatePrivate(keySpec));
        } catch (NoSuchAlgorithmException e) {
            throw new IOException(e);
        } catch (InvalidKeySpecException e2) {
            throw new IOException("invalid keyspec", e2);
        }
    }
}
