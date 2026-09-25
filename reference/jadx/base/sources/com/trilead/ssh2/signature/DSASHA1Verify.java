package com.trilead.ssh2.signature;

import androidx.core.view.ViewCompat;
import com.google.common.base.Ascii;
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
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPublicKey;
import java.security.spec.DSAPublicKeySpec;
import java.security.spec.InvalidKeySpecException;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes2.dex */
public class DSASHA1Verify implements SSHSignature {
    public static final String ID_SSH_DSS = "ssh-dss";
    private static final Logger log = Logger.getLogger(DSASHA1Verify.class);

    private static class InstanceHolder {
        private static DSASHA1Verify sInstance = new DSASHA1Verify();

        private InstanceHolder() {
        }
    }

    private DSASHA1Verify() {
    }

    public static DSASHA1Verify get() {
        return InstanceHolder.sInstance;
    }

    @Override // com.trilead.ssh2.signature.SSHSignature
    public String getKeyFormat() {
        return ID_SSH_DSS;
    }

    @Override // com.trilead.ssh2.signature.SSHSignature
    public PublicKey decodePublicKey(byte[] bArr) throws IOException {
        TypesReader typesReader = new TypesReader(bArr);
        if (!typesReader.readString().equals(ID_SSH_DSS)) {
            throw new IllegalArgumentException("This is not a ssh-dss public key!");
        }
        BigInteger mpint = typesReader.readMPINT();
        BigInteger mpint2 = typesReader.readMPINT();
        BigInteger mpint3 = typesReader.readMPINT();
        BigInteger mpint4 = typesReader.readMPINT();
        if (typesReader.remain() != 0) {
            throw new IOException("Padding in DSA public key!");
        }
        try {
            return (DSAPublicKey) KeyFactory.getInstance(PubkeyDatabase.KEY_TYPE_DSA).generatePublic(new DSAPublicKeySpec(mpint4, mpint, mpint2, mpint3));
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
            throw new IOException(e);
        }
    }

    @Override // com.trilead.ssh2.signature.SSHSignature
    public byte[] encodePublicKey(PublicKey publicKey) throws IOException {
        DSAPublicKey dSAPublicKey = (DSAPublicKey) publicKey;
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(ID_SSH_DSS);
        DSAParams params = dSAPublicKey.getParams();
        typesWriter.writeMPInt(params.getP());
        typesWriter.writeMPInt(params.getQ());
        typesWriter.writeMPInt(params.getG());
        typesWriter.writeMPInt(dSAPublicKey.getY());
        return typesWriter.getBytes();
    }

    private static byte[] encodeSignature(byte[] bArr) {
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(ID_SSH_DSS);
        int i = bArr[3] & 255;
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 4, bArr2, 0, i);
        int i2 = bArr[i + 5] & 255;
        byte[] bArr3 = new byte[i2];
        System.arraycopy(bArr, i + 6, bArr3, 0, i2);
        byte[] bArr4 = new byte[40];
        int i3 = i < 20 ? i : 20;
        int i4 = i2 < 20 ? i2 : 20;
        System.arraycopy(bArr2, i - i3, bArr4, 20 - i3, i3);
        System.arraycopy(bArr3, i2 - i4, bArr4, 40 - i4, i4);
        typesWriter.writeString(bArr4, 0, 40);
        return typesWriter.getBytes();
    }

    private byte[] decodeSignature(byte[] bArr) throws IOException {
        byte b;
        byte b2;
        if (bArr.length != 40) {
            TypesReader typesReader = new TypesReader(bArr);
            if (!typesReader.readString().equals(ID_SSH_DSS)) {
                throw new IOException("Peer sent wrong signature format");
            }
            bArr = typesReader.readByteString();
            if (bArr.length != 40) {
                throw new IOException("Peer sent corrupt signature");
            }
            if (typesReader.remain() != 0) {
                throw new IOException("Padding in DSA signature!");
            }
        }
        byte b3 = bArr[0];
        if (b3 == 0 && (b = bArr[1]) == 0 && (b2 = bArr[2]) == 0) {
            int i = ((b3 << Ascii.CAN) & ViewCompat.MEASURED_STATE_MASK) | ((b << 16) & 16711680) | ((b2 << 8) & 65280) | (bArr[3] & 255);
            int i2 = ((bArr[4 + i] << 24) & ViewCompat.MEASURED_STATE_MASK) | (16711680 & (bArr[i + 5] << 16)) | (65280 & (bArr[i + 6] << 8)) | (bArr[i + 7] & 255);
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i + 8, bArr2, 0, i2);
            bArr = bArr2;
        }
        int i3 = (bArr[0] & 128) != 0 ? 1 : 0;
        byte b4 = (bArr[20] & 128) != 0 ? (byte) 1 : (byte) 0;
        byte[] bArr3 = new byte[bArr.length + 6 + i3 + b4];
        bArr3[0] = TarConstants.LF_NORMAL;
        if (bArr.length != 40) {
            throw new IOException("Peer sent corrupt signature");
        }
        bArr3[1] = 44;
        byte b5 = (byte) (44 + i3);
        bArr3[1] = b5;
        bArr3[1] = (byte) (b5 + b4);
        bArr3[2] = 2;
        bArr3[3] = Ascii.DC4;
        bArr3[3] = (byte) (20 + i3);
        System.arraycopy(bArr, 0, bArr3, i3 + 4, 20);
        bArr3[bArr3[3] + 4] = 2;
        bArr3[bArr3[3] + 5] = Ascii.DC4;
        int i4 = bArr3[3] + 5;
        bArr3[i4] = (byte) (bArr3[i4] + b4);
        System.arraycopy(bArr, 20, bArr3, bArr3[3] + 6 + b4, 20);
        return bArr3;
    }

    @Override // com.trilead.ssh2.signature.SSHSignature
    public boolean verifySignature(byte[] bArr, byte[] bArr2, PublicKey publicKey) throws IOException {
        byte[] bArrDecodeSignature = decodeSignature(bArr2);
        try {
            Signature signature = Signature.getInstance("SHA1withDSA");
            signature.initVerify(publicKey);
            signature.update(bArr);
            return signature.verify(bArrDecodeSignature);
        } catch (InvalidKeyException e) {
            e = e;
            throw new IOException("No such algorithm", e);
        } catch (NoSuchAlgorithmException e2) {
            e = e2;
            throw new IOException("No such algorithm", e);
        } catch (SignatureException e3) {
            throw new IOException(e3);
        }
    }

    @Override // com.trilead.ssh2.signature.SSHSignature
    public byte[] generateSignature(byte[] bArr, PrivateKey privateKey, SecureRandom secureRandom) throws IOException {
        try {
            Signature signature = Signature.getInstance("SHA1withDSA");
            signature.initSign(privateKey);
            signature.update(bArr);
            return encodeSignature(signature.sign());
        } catch (InvalidKeyException | NoSuchAlgorithmException | SignatureException e) {
            throw new IOException(e);
        }
    }
}
