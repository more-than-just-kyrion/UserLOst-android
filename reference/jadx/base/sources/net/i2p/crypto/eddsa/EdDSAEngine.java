package net.i2p.crypto.eddsa;

import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.Arrays;
import net.i2p.crypto.eddsa.math.Curve;
import net.i2p.crypto.eddsa.math.ScalarOps;
import sun.security.x509.X509Key;

/* JADX INFO: loaded from: classes2.dex */
public final class EdDSAEngine extends Signature {
    public static final AlgorithmParameterSpec ONE_SHOT_MODE = new OneShotSpec();
    public static final String SIGNATURE_ALGORITHM = "NONEwithEdDSA";
    private ByteArrayOutputStream baos;
    private MessageDigest digest;
    private EdDSAKey key;
    private byte[] oneShotBytes;
    private int oneShotLength;
    private boolean oneShotMode;
    private int oneShotOffset;

    private static class OneShotSpec implements AlgorithmParameterSpec {
        private OneShotSpec() {
        }
    }

    public EdDSAEngine() {
        super(SIGNATURE_ALGORITHM);
    }

    public EdDSAEngine(MessageDigest messageDigest) {
        this();
        this.digest = messageDigest;
    }

    private void reset() {
        MessageDigest messageDigest = this.digest;
        if (messageDigest != null) {
            messageDigest.reset();
        }
        ByteArrayOutputStream byteArrayOutputStream = this.baos;
        if (byteArrayOutputStream != null) {
            byteArrayOutputStream.reset();
        }
        this.oneShotMode = false;
        this.oneShotBytes = null;
    }

    @Override // java.security.SignatureSpi
    protected void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        reset();
        if (privateKey instanceof EdDSAPrivateKey) {
            EdDSAPrivateKey edDSAPrivateKey = (EdDSAPrivateKey) privateKey;
            this.key = edDSAPrivateKey;
            if (this.digest == null) {
                try {
                    this.digest = MessageDigest.getInstance(edDSAPrivateKey.getParams().getHashAlgorithm());
                } catch (NoSuchAlgorithmException unused) {
                    throw new InvalidKeyException("cannot get required digest " + this.key.getParams().getHashAlgorithm() + " for private key.");
                }
            } else if (!edDSAPrivateKey.getParams().getHashAlgorithm().equals(this.digest.getAlgorithm())) {
                throw new InvalidKeyException("Key hash algorithm does not match chosen digest");
            }
            digestInitSign(edDSAPrivateKey);
            return;
        }
        throw new InvalidKeyException("cannot identify EdDSA private key: " + privateKey.getClass());
    }

    private void digestInitSign(EdDSAPrivateKey edDSAPrivateKey) {
        int bVar = edDSAPrivateKey.getParams().getCurve().getField().getb();
        int i = bVar / 8;
        this.digest.update(edDSAPrivateKey.getH(), i, (bVar / 4) - i);
    }

    @Override // java.security.SignatureSpi
    protected void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        reset();
        if (publicKey instanceof EdDSAPublicKey) {
            EdDSAPublicKey edDSAPublicKey = (EdDSAPublicKey) publicKey;
            this.key = edDSAPublicKey;
            if (this.digest == null) {
                try {
                    this.digest = MessageDigest.getInstance(edDSAPublicKey.getParams().getHashAlgorithm());
                    return;
                } catch (NoSuchAlgorithmException unused) {
                    throw new InvalidKeyException("cannot get required digest " + this.key.getParams().getHashAlgorithm() + " for private key.");
                }
            } else {
                if (!edDSAPublicKey.getParams().getHashAlgorithm().equals(this.digest.getAlgorithm())) {
                    throw new InvalidKeyException("Key hash algorithm does not match chosen digest");
                }
                return;
            }
        }
        if (publicKey instanceof X509Key) {
            try {
                engineInitVerify(new EdDSAPublicKey(new X509EncodedKeySpec(publicKey.getEncoded())));
                return;
            } catch (InvalidKeySpecException unused2) {
                throw new InvalidKeyException("cannot handle X.509 EdDSA public key: " + publicKey.getAlgorithm());
            }
        }
        throw new InvalidKeyException("cannot identify EdDSA public key: " + publicKey.getClass());
    }

    @Override // java.security.SignatureSpi
    protected void engineUpdate(byte b) throws SignatureException {
        if (this.oneShotMode) {
            throw new SignatureException("unsupported in one-shot mode");
        }
        if (this.baos == null) {
            this.baos = new ByteArrayOutputStream(256);
        }
        this.baos.write(b);
    }

    @Override // java.security.SignatureSpi
    protected void engineUpdate(byte[] bArr, int i, int i2) throws SignatureException {
        if (this.oneShotMode) {
            if (this.oneShotBytes != null) {
                throw new SignatureException("update() already called");
            }
            this.oneShotBytes = bArr;
            this.oneShotOffset = i;
            this.oneShotLength = i2;
            return;
        }
        if (this.baos == null) {
            this.baos = new ByteArrayOutputStream(256);
        }
        this.baos.write(bArr, i, i2);
    }

    @Override // java.security.SignatureSpi
    protected byte[] engineSign() throws SignatureException {
        try {
            return x_engineSign();
        } finally {
            reset();
            digestInitSign((EdDSAPrivateKey) this.key);
        }
    }

    private byte[] x_engineSign() throws SignatureException {
        int i;
        byte[] byteArray;
        int length;
        Curve curve = this.key.getParams().getCurve();
        ScalarOps scalarOps = this.key.getParams().getScalarOps();
        byte[] aVar = ((EdDSAPrivateKey) this.key).geta();
        if (this.oneShotMode) {
            byteArray = this.oneShotBytes;
            if (byteArray == null) {
                throw new SignatureException("update() not called first");
            }
            i = this.oneShotOffset;
            length = this.oneShotLength;
        } else {
            ByteArrayOutputStream byteArrayOutputStream = this.baos;
            i = 0;
            if (byteArrayOutputStream == null) {
                byteArray = new byte[0];
            } else {
                byteArray = byteArrayOutputStream.toByteArray();
            }
            length = byteArray.length;
        }
        this.digest.update(byteArray, i, length);
        byte[] bArrReduce = scalarOps.reduce(this.digest.digest());
        byte[] byteArray2 = this.key.getParams().getB().scalarMultiply(bArrReduce).toByteArray();
        this.digest.update(byteArray2);
        this.digest.update(((EdDSAPrivateKey) this.key).getAbyte());
        this.digest.update(byteArray, i, length);
        byte[] bArrMultiplyAndAdd = scalarOps.multiplyAndAdd(scalarOps.reduce(this.digest.digest()), aVar, bArrReduce);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(curve.getField().getb() / 4);
        byteBufferAllocate.put(byteArray2).put(bArrMultiplyAndAdd);
        return byteBufferAllocate.array();
    }

    @Override // java.security.SignatureSpi
    protected boolean engineVerify(byte[] bArr) throws SignatureException {
        try {
            return x_engineVerify(bArr);
        } finally {
            reset();
        }
    }

    private boolean x_engineVerify(byte[] bArr) throws SignatureException {
        byte[] byteArray;
        int length;
        int i;
        int bVar = this.key.getParams().getCurve().getField().getb();
        int i2 = bVar / 4;
        if (bArr.length != i2) {
            throw new SignatureException("signature length is wrong");
        }
        int i3 = bVar / 8;
        this.digest.update(bArr, 0, i3);
        this.digest.update(((EdDSAPublicKey) this.key).getAbyte());
        if (this.oneShotMode) {
            byteArray = this.oneShotBytes;
            if (byteArray == null) {
                throw new SignatureException("update() not called first");
            }
            i = this.oneShotOffset;
            length = this.oneShotLength;
        } else {
            ByteArrayOutputStream byteArrayOutputStream = this.baos;
            if (byteArrayOutputStream == null) {
                byteArray = new byte[0];
            } else {
                byteArray = byteArrayOutputStream.toByteArray();
            }
            length = byteArray.length;
            i = 0;
        }
        this.digest.update(byteArray, i, length);
        byte[] byteArray2 = this.key.getParams().getB().doubleScalarMultiplyVariableTime(((EdDSAPublicKey) this.key).getNegativeA(), this.key.getParams().getScalarOps().reduce(this.digest.digest()), Arrays.copyOfRange(bArr, i3, i2)).toByteArray();
        for (int i4 = 0; i4 < byteArray2.length; i4++) {
            if (byteArray2[i4] != bArr[i4]) {
                return false;
            }
        }
        return true;
    }

    public byte[] signOneShot(byte[] bArr) throws SignatureException {
        return signOneShot(bArr, 0, bArr.length);
    }

    public byte[] signOneShot(byte[] bArr, int i, int i2) throws SignatureException {
        this.oneShotMode = true;
        update(bArr, i, i2);
        return sign();
    }

    public boolean verifyOneShot(byte[] bArr, byte[] bArr2) throws SignatureException {
        return verifyOneShot(bArr, 0, bArr.length, bArr2, 0, bArr2.length);
    }

    public boolean verifyOneShot(byte[] bArr, int i, int i2, byte[] bArr2) throws SignatureException {
        return verifyOneShot(bArr, i, i2, bArr2, 0, bArr2.length);
    }

    public boolean verifyOneShot(byte[] bArr, byte[] bArr2, int i, int i2) throws SignatureException {
        return verifyOneShot(bArr, 0, bArr.length, bArr2, i, i2);
    }

    public boolean verifyOneShot(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4) throws SignatureException {
        this.oneShotMode = true;
        update(bArr, i, i2);
        return verify(bArr2, i3, i4);
    }

    @Override // java.security.SignatureSpi
    protected void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidAlgorithmParameterException {
        ByteArrayOutputStream byteArrayOutputStream;
        if (algorithmParameterSpec.equals(ONE_SHOT_MODE)) {
            if (this.oneShotBytes != null || ((byteArrayOutputStream = this.baos) != null && byteArrayOutputStream.size() > 0)) {
                throw new InvalidAlgorithmParameterException("update() already called");
            }
            this.oneShotMode = true;
            return;
        }
        super.engineSetParameter(algorithmParameterSpec);
    }

    @Override // java.security.SignatureSpi
    protected void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    protected Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }
}
