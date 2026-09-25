package com.trilead.ssh2.signature;

import com.trilead.ssh2.crypto.SimpleDERReader;
import com.trilead.ssh2.log.Logger;
import com.trilead.ssh2.packets.TypesReader;
import com.trilead.ssh2.packets.TypesWriter;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.SignatureException;
import java.security.interfaces.ECKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECFieldFp;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import java.security.spec.InvalidKeySpecException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ECDSASHA2Verify implements SSHSignature {
    public static final String ECDSA_SHA2_PREFIX = "ecdsa-sha2-";
    private static final Logger log = Logger.getLogger(ECDSASHA2Verify.class);

    public abstract String getCurveName();

    protected abstract String getDigestAlgorithm();

    @Override // com.trilead.ssh2.signature.SSHSignature
    public abstract String getKeyFormat();

    public abstract String getOid();

    public abstract ECParameterSpec getParameterSpec();

    protected abstract String getSignatureAlgorithm();

    @Override // com.trilead.ssh2.signature.SSHSignature
    public PublicKey decodePublicKey(byte[] bArr) throws IOException {
        TypesReader typesReader = new TypesReader(bArr);
        String string = typesReader.readString();
        if (!string.startsWith(ECDSA_SHA2_PREFIX)) {
            throw new IllegalArgumentException("This is not an ECDSA public key");
        }
        String string2 = typesReader.readString();
        byte[] byteString = typesReader.readByteString();
        if (typesReader.remain() != 0) {
            throw new IOException("Padding in ECDSA public key!");
        }
        if (!string.equals(getKeyFormat())) {
            throw new IOException("Key format is inconsistent with curve name: " + string + " != " + string2);
        }
        ECParameterSpec parameterSpec = getParameterSpec();
        if (parameterSpec == null) {
            throw new IOException("Curve is not supported: " + string2);
        }
        ECPoint eCPointDecodeECPoint = decodeECPoint(byteString);
        if (eCPointDecodeECPoint == null) {
            throw new IOException("Invalid ECDSA group");
        }
        try {
            return KeyFactory.getInstance("EC").generatePublic(new ECPublicKeySpec(eCPointDecodeECPoint, parameterSpec));
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
            throw new IOException("No EC KeyFactory available", e);
        }
    }

    @Override // com.trilead.ssh2.signature.SSHSignature
    public byte[] encodePublicKey(PublicKey publicKey) {
        ECPublicKey eCPublicKey = (ECPublicKey) publicKey;
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(ECDSA_SHA2_PREFIX + getCurveName());
        typesWriter.writeString(getCurveName());
        byte[] bArrEncodeECPoint = encodeECPoint(eCPublicKey.getW(), eCPublicKey.getParams().getCurve());
        typesWriter.writeString(bArrEncodeECPoint, 0, bArrEncodeECPoint.length);
        return typesWriter.getBytes();
    }

    public static ECDSASHA2Verify getVerifierForKey(ECKey eCKey) {
        int fieldSize = eCKey.getParams().getCurve().getField().getFieldSize();
        if (fieldSize == 256) {
            return ECDSASHA2NISTP256Verify.get();
        }
        if (fieldSize == 384) {
            return ECDSASHA2NISTP384Verify.get();
        }
        if (fieldSize != 521) {
            return null;
        }
        return ECDSASHA2NISTP521Verify.get();
    }

    public static String getSshKeyType(ECKey eCKey) {
        ECDSASHA2Verify verifierForKey = getVerifierForKey(eCKey);
        if (verifierForKey == null) {
            return null;
        }
        return verifierForKey.getKeyFormat();
    }

    public static int getCurveSize(ECParameterSpec eCParameterSpec) {
        return eCParameterSpec.getCurve().getField().getFieldSize();
    }

    public static ECDSASHA2Verify getVerifierForOID(String str) {
        if (str == null) {
            return null;
        }
        if (str.equals(ECDSASHA2NISTP256Verify.get().getOid())) {
            return ECDSASHA2NISTP256Verify.get();
        }
        if (str.equals(ECDSASHA2NISTP384Verify.get().getOid())) {
            return ECDSASHA2NISTP384Verify.get();
        }
        if (str.equals(ECDSASHA2NISTP521Verify.get().getOid())) {
            return ECDSASHA2NISTP521Verify.get();
        }
        return null;
    }

    private byte[] decodeSSHECDSASignature(byte[] bArr) throws IOException {
        TypesReader typesReader = new TypesReader(bArr);
        String string = typesReader.readString();
        if (!string.equals(getKeyFormat())) {
            throw new IOException("Unsupported format: " + string);
        }
        byte[] byteString = typesReader.readByteString();
        if (typesReader.remain() != 0) {
            throw new IOException("Padding in ECDSA signature!");
        }
        TypesReader typesReader2 = new TypesReader(byteString);
        byte[] byteArray = typesReader2.readMPINT().toByteArray();
        byte[] byteArray2 = typesReader2.readMPINT().toByteArray();
        int length = byteArray.length;
        int length2 = byteArray2.length;
        if ((byteArray[0] & 128) != 0) {
            length++;
        }
        if ((byteArray2[0] & 128) != 0) {
            length2++;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(length + 6 + length2);
        byteArrayOutputStream.write(48);
        writeLength(length + 4 + length2, byteArrayOutputStream);
        byteArrayOutputStream.write(2);
        writeLength(length, byteArrayOutputStream);
        if (length != byteArray.length) {
            byteArrayOutputStream.write(0);
        }
        byteArrayOutputStream.write(byteArray);
        byteArrayOutputStream.write(2);
        writeLength(length2, byteArrayOutputStream);
        if (length2 != byteArray2.length) {
            byteArrayOutputStream.write(0);
        }
        byteArrayOutputStream.write(byteArray2);
        return byteArrayOutputStream.toByteArray();
    }

    private static void writeLength(int i, OutputStream outputStream) throws IOException {
        if (i <= 127) {
            outputStream.write(i);
            return;
        }
        int i2 = 0;
        int i3 = i;
        while (i3 != 0) {
            i3 >>>= 8;
            i2++;
        }
        outputStream.write(i2 | 128);
        for (int i4 = (i2 - 1) * 8; i4 >= 0; i4 -= 8) {
            outputStream.write((byte) (i >> i4));
        }
    }

    private byte[] encodeSSHECDSASignature(byte[] bArr) throws IOException {
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(getKeyFormat());
        SimpleDERReader simpleDERReader = new SimpleDERReader(bArr);
        simpleDERReader.resetInput(simpleDERReader.readSequenceAsByteArray());
        BigInteger bigInteger = simpleDERReader.readInt();
        BigInteger bigInteger2 = simpleDERReader.readInt();
        TypesWriter typesWriter2 = new TypesWriter();
        typesWriter2.writeMPInt(bigInteger);
        typesWriter2.writeMPInt(bigInteger2);
        byte[] bytes = typesWriter2.getBytes();
        typesWriter.writeString(bytes, 0, bytes.length);
        return typesWriter.getBytes();
    }

    @Override // com.trilead.ssh2.signature.SSHSignature
    public byte[] generateSignature(byte[] bArr, PrivateKey privateKey, SecureRandom secureRandom) throws IOException {
        try {
            Signature signature = Signature.getInstance(getSignatureAlgorithm());
            signature.initSign(privateKey, secureRandom);
            signature.update(bArr);
            return encodeSSHECDSASignature(signature.sign());
        } catch (InvalidKeyException | NoSuchAlgorithmException | SignatureException e) {
            throw new IOException(e);
        }
    }

    @Override // com.trilead.ssh2.signature.SSHSignature
    public boolean verifySignature(byte[] bArr, byte[] bArr2, PublicKey publicKey) throws IOException {
        byte[] bArrDecodeSSHECDSASignature = decodeSSHECDSASignature(bArr2);
        try {
            Signature signature = Signature.getInstance(getSignatureAlgorithm());
            signature.initVerify(publicKey);
            signature.update(bArr);
            return signature.verify(bArrDecodeSSHECDSASignature);
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

    public static String getDigestAlgorithmForParams(ECKey eCKey) {
        ECDSASHA2Verify verifierForKey = getVerifierForKey(eCKey);
        if (verifierForKey == null) {
            return null;
        }
        return verifierForKey.getDigestAlgorithm();
    }

    public ECPoint decodeECPoint(byte[] bArr) {
        if (bArr.length == 0) {
            return null;
        }
        int fieldSize = (getParameterSpec().getCurve().getField().getFieldSize() + 7) / 8;
        if (bArr.length != (fieldSize * 2) + 1 || bArr[0] != 4) {
            return null;
        }
        byte[] bArr2 = new byte[fieldSize];
        System.arraycopy(bArr, 1, bArr2, 0, fieldSize);
        byte[] bArr3 = new byte[fieldSize];
        System.arraycopy(bArr, fieldSize + 1, bArr3, 0, fieldSize);
        return new ECPoint(new BigInteger(1, bArr2), new BigInteger(1, bArr3));
    }

    public static byte[] encodeECPoint(ECPoint eCPoint, EllipticCurve ellipticCurve) {
        int fieldSize = (ellipticCurve.getField().getFieldSize() + 7) / 8;
        byte[] bArr = new byte[(fieldSize * 2) + 1];
        bArr[0] = 4;
        byte[] bArrRemoveLeadingZeroes = removeLeadingZeroes(eCPoint.getAffineX().toByteArray());
        int i = fieldSize + 1;
        System.arraycopy(bArrRemoveLeadingZeroes, 0, bArr, i - bArrRemoveLeadingZeroes.length, bArrRemoveLeadingZeroes.length);
        byte[] bArrRemoveLeadingZeroes2 = removeLeadingZeroes(eCPoint.getAffineY().toByteArray());
        System.arraycopy(bArrRemoveLeadingZeroes2, 0, bArr, (i + fieldSize) - bArrRemoveLeadingZeroes2.length, bArrRemoveLeadingZeroes2.length);
        return bArr;
    }

    private static byte[] removeLeadingZeroes(byte[] bArr) {
        if (bArr[0] != 0) {
            return bArr;
        }
        int i = 1;
        while (i < bArr.length - 1 && bArr[i] == 0) {
            i++;
        }
        int length = bArr.length - i;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, i, bArr2, 0, length);
        return bArr2;
    }

    public static class ECDSASHA2NISTP256Verify extends ECDSASHA2Verify {
        private static final String KEY_FORMAT = "ecdsa-sha2-nistp256";
        private static final String NISTP256 = "nistp256";
        private static final String NISTP256_OID = "1.2.840.10045.3.1.7";
        public static ECParameterSpec nistp256 = new ECParameterSpec(new EllipticCurve(new ECFieldFp(new BigInteger("FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF", 16)), new BigInteger("FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFC", 16), new BigInteger("5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b", 16)), new ECPoint(new BigInteger("6B17D1F2E12C4247F8BCE6E563A440F277037D812DEB33A0F4A13945D898C296", 16), new BigInteger("4FE342E2FE1A7F9B8EE7EB4A7C0F9E162BCE33576B315ECECBB6406837BF51F5", 16)), new BigInteger("FFFFFFFF00000000FFFFFFFFFFFFFFFFBCE6FAADA7179E84F3B9CAC2FC632551", 16), 1);

        @Override // com.trilead.ssh2.signature.ECDSASHA2Verify
        public String getCurveName() {
            return NISTP256;
        }

        @Override // com.trilead.ssh2.signature.ECDSASHA2Verify
        public String getOid() {
            return NISTP256_OID;
        }

        @Override // com.trilead.ssh2.signature.ECDSASHA2Verify
        protected String getSignatureAlgorithm() {
            return "SHA256withECDSA";
        }

        @Override // com.trilead.ssh2.signature.ECDSASHA2Verify
        protected String getDigestAlgorithm() {
            return "SHA-256";
        }

        @Override // com.trilead.ssh2.signature.ECDSASHA2Verify, com.trilead.ssh2.signature.SSHSignature
        public String getKeyFormat() {
            return KEY_FORMAT;
        }

        @Override // com.trilead.ssh2.signature.ECDSASHA2Verify
        public ECParameterSpec getParameterSpec() {
            return nistp256;
        }

        private static class InstanceHolder {
            private static final ECDSASHA2NISTP256Verify sInstance = new ECDSASHA2NISTP256Verify();

            private InstanceHolder() {
            }
        }

        private ECDSASHA2NISTP256Verify() {
        }

        public static ECDSASHA2NISTP256Verify get() {
            return InstanceHolder.sInstance;
        }
    }

    public static class ECDSASHA2NISTP384Verify extends ECDSASHA2Verify {
        private static final String KEY_FORMAT = "ecdsa-sha2-nistp384";
        private static final String NISTP384 = "nistp384";
        private static final String NISTP384_OID = "1.3.132.0.34";
        public static ECParameterSpec nistp384 = new ECParameterSpec(new EllipticCurve(new ECFieldFp(new BigInteger("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFF", 16)), new BigInteger("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFC", 16), new BigInteger("B3312FA7E23EE7E4988E056BE3F82D19181D9C6EFE8141120314088F5013875AC656398D8A2ED19D2A85C8EDD3EC2AEF", 16)), new ECPoint(new BigInteger("AA87CA22BE8B05378EB1C71EF320AD746E1D3B628BA79B9859F741E082542A385502F25DBF55296C3A545E3872760AB7", 16), new BigInteger("3617DE4A96262C6F5D9E98BF9292DC29F8F41DBD289A147CE9DA3113B5F0B8C00A60B1CE1D7E819D7A431D7C90EA0E5F", 16)), new BigInteger("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7634D81F4372DDF581A0DB248B0A77AECEC196ACCC52973", 16), 1);

        @Override // com.trilead.ssh2.signature.ECDSASHA2Verify, com.trilead.ssh2.signature.SSHSignature
        public String getKeyFormat() {
            return KEY_FORMAT;
        }

        private static class InstanceHolder {
            private static final ECDSASHA2NISTP384Verify sInstance = new ECDSASHA2NISTP384Verify();

            private InstanceHolder() {
            }
        }

        private ECDSASHA2NISTP384Verify() {
        }

        public static ECDSASHA2NISTP384Verify get() {
            return InstanceHolder.sInstance;
        }

        @Override // com.trilead.ssh2.signature.ECDSASHA2Verify
        public ECParameterSpec getParameterSpec() {
            return nistp384;
        }

        @Override // com.trilead.ssh2.signature.ECDSASHA2Verify
        public String getCurveName() {
            return NISTP384;
        }

        @Override // com.trilead.ssh2.signature.ECDSASHA2Verify
        public String getOid() {
            return NISTP384_OID;
        }

        @Override // com.trilead.ssh2.signature.ECDSASHA2Verify
        protected String getSignatureAlgorithm() {
            return "SHA384withECDSA";
        }

        @Override // com.trilead.ssh2.signature.ECDSASHA2Verify
        protected String getDigestAlgorithm() {
            return "SHA-384";
        }
    }

    public static class ECDSASHA2NISTP521Verify extends ECDSASHA2Verify {
        private static final String KEY_FORMAT = "ecdsa-sha2-nistp521";
        private static final String NISTP521 = "nistp521";
        private static final String NISTP521_OID = "1.3.132.0.35";
        public static ECParameterSpec nistp521 = new ECParameterSpec(new EllipticCurve(new ECFieldFp(new BigInteger("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF", 16)), new BigInteger("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC", 16), new BigInteger("0051953EB9618E1C9A1F929A21A0B68540EEA2DA725B99B315F3B8B489918EF109E156193951EC7E937B1652C0BD3BB1BF073573DF883D2C34F1EF451FD46B503F00", 16)), new ECPoint(new BigInteger("00C6858E06B70404E9CD9E3ECB662395B4429C648139053FB521F828AF606B4D3DBAA14B5E77EFE75928FE1DC127A2FFA8DE3348B3C1856A429BF97E7E31C2E5BD66", 16), new BigInteger("011839296A789A3BC0045C8A5FB42C7D1BD998F54449579B446817AFBD17273E662C97EE72995EF42640C550B9013FAD0761353C7086A272C24088BE94769FD16650", 16)), new BigInteger("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA51868783BF2F966B7FCC0148F709A5D03BB5C9B8899C47AEBB6FB71E91386409", 16), 1);

        @Override // com.trilead.ssh2.signature.ECDSASHA2Verify, com.trilead.ssh2.signature.SSHSignature
        public String getKeyFormat() {
            return KEY_FORMAT;
        }

        @Override // com.trilead.ssh2.signature.ECDSASHA2Verify
        public ECParameterSpec getParameterSpec() {
            return nistp521;
        }

        @Override // com.trilead.ssh2.signature.ECDSASHA2Verify
        public String getCurveName() {
            return NISTP521;
        }

        @Override // com.trilead.ssh2.signature.ECDSASHA2Verify
        public String getOid() {
            return NISTP521_OID;
        }

        @Override // com.trilead.ssh2.signature.ECDSASHA2Verify
        protected String getSignatureAlgorithm() {
            return "SHA512withECDSA";
        }

        @Override // com.trilead.ssh2.signature.ECDSASHA2Verify
        protected String getDigestAlgorithm() {
            return "SHA-512";
        }

        private static class InstanceHolder {
            private static final ECDSASHA2NISTP521Verify sInstance = new ECDSASHA2NISTP521Verify();

            private InstanceHolder() {
            }
        }

        private ECDSASHA2NISTP521Verify() {
        }

        public static ECDSASHA2NISTP521Verify get() {
            return InstanceHolder.sInstance;
        }
    }
}
