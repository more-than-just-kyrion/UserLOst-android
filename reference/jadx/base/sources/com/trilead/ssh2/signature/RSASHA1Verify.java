package com.trilead.ssh2.signature;

import com.iiordanov.pubkeygenerator.PubkeyDatabase;
import com.trilead.ssh2.log.Logger;
import com.trilead.ssh2.packets.TypesReader;
import com.trilead.ssh2.packets.TypesWriter;
import java.io.IOException;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.SignatureException;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.RSAPublicKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public class RSASHA1Verify implements SSHSignature {
    public static final String ID_SSH_RSA = "ssh-rsa";
    private static final Logger log = Logger.getLogger(RSASHA1Verify.class);

    private static class InstanceHolder {
        private static RSASHA1Verify sInstance = new RSASHA1Verify();

        private InstanceHolder() {
        }
    }

    private RSASHA1Verify() {
    }

    public static RSASHA1Verify get() {
        return InstanceHolder.sInstance;
    }

    @Override // com.trilead.ssh2.signature.SSHSignature
    public String getKeyFormat() {
        return ID_SSH_RSA;
    }

    @Override // com.trilead.ssh2.signature.SSHSignature
    public PublicKey decodePublicKey(byte[] bArr) throws IOException {
        TypesReader typesReader = new TypesReader(bArr);
        if (!typesReader.readString().equals(ID_SSH_RSA)) {
            throw new IllegalArgumentException("This is not a ssh-rsa public key");
        }
        BigInteger mpint = typesReader.readMPINT();
        BigInteger mpint2 = typesReader.readMPINT();
        if (typesReader.remain() != 0) {
            throw new IOException("Padding in RSA public key!");
        }
        try {
            return KeyFactory.getInstance(PubkeyDatabase.KEY_TYPE_RSA).generatePublic(new RSAPublicKeySpec(mpint2, mpint));
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
            throw new IOException("No RSA KeyFactory available", e);
        }
    }

    @Override // com.trilead.ssh2.signature.SSHSignature
    public byte[] encodePublicKey(PublicKey publicKey) throws IOException {
        RSAPublicKey rSAPublicKey = (RSAPublicKey) publicKey;
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(ID_SSH_RSA);
        typesWriter.writeMPInt(rSAPublicKey.getPublicExponent());
        typesWriter.writeMPInt(rSAPublicKey.getModulus());
        return typesWriter.getBytes();
    }

    private static byte[] decodeSignature(byte[] bArr) throws IOException {
        TypesReader typesReader = new TypesReader(bArr);
        if (!typesReader.readString().equals(ID_SSH_RSA)) {
            throw new IOException("Peer sent wrong signature format");
        }
        byte[] byteString = typesReader.readByteString();
        if (byteString.length == 0) {
            throw new IOException("Error in RSA signature, S is empty.");
        }
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(80, "Decoding ssh-rsa signature string (length: " + byteString.length + ")");
        }
        if (typesReader.remain() == 0) {
            return byteString;
        }
        throw new IOException("Padding in RSA signature!");
    }

    private static byte[] encodeSignature(byte[] bArr) throws IOException {
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(ID_SSH_RSA);
        if (bArr.length > 1 && bArr[0] == 0) {
            typesWriter.writeString(bArr, 1, bArr.length - 1);
        } else {
            typesWriter.writeString(bArr, 0, bArr.length);
        }
        return typesWriter.getBytes();
    }

    @Override // com.trilead.ssh2.signature.SSHSignature
    public byte[] generateSignature(byte[] bArr, PrivateKey privateKey, SecureRandom secureRandom) throws IOException {
        try {
            Signature signature = Signature.getInstance("SHA1withRSA");
            signature.initSign(privateKey, secureRandom);
            signature.update(bArr);
            return encodeSignature(signature.sign());
        } catch (InvalidKeyException | NoSuchAlgorithmException | SignatureException e) {
            throw new IOException(e);
        }
    }

    @Override // com.trilead.ssh2.signature.SSHSignature
    public boolean verifySignature(byte[] bArr, byte[] bArr2, PublicKey publicKey) throws IOException {
        byte[] bArrDecodeSignature = decodeSignature(bArr2);
        try {
            Signature signature = Signature.getInstance("SHA1withRSA");
            signature.initVerify(publicKey);
            signature.update(bArr);
            return signature.verify(bArrDecodeSignature);
        } catch (InvalidKeyException | NoSuchAlgorithmException | SignatureException e) {
            throw new IOException(e);
        }
    }
}
