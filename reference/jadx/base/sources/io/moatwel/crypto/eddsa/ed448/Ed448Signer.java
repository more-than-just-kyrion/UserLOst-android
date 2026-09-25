package io.moatwel.crypto.eddsa.ed448;

import io.moatwel.crypto.EdDsaSigner;
import io.moatwel.crypto.HashAlgorithm;
import io.moatwel.crypto.Hashes;
import io.moatwel.crypto.KeyPair;
import io.moatwel.crypto.PublicKey;
import io.moatwel.crypto.Signature;
import io.moatwel.crypto.eddsa.Curve;
import io.moatwel.crypto.eddsa.DecodeException;
import io.moatwel.crypto.eddsa.Point;
import io.moatwel.crypto.eddsa.PublicKeyDelegate;
import io.moatwel.crypto.eddsa.SchemeProvider;
import io.moatwel.util.ByteUtils;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
public class Ed448Signer implements EdDsaSigner {
    private static final Curve CURVE = Curve448.getInstance();
    private final HashAlgorithm algorithm;
    private final SchemeProvider scheme;

    public Ed448Signer(HashAlgorithm hashAlgorithm, SchemeProvider schemeProvider) {
        this.algorithm = hashAlgorithm;
        this.scheme = schemeProvider;
    }

    @Override // io.moatwel.crypto.EdDsaSigner
    public Signature sign(KeyPair keyPair, byte[] bArr, byte[] bArr2) {
        byte[] bArrBeNonNullContext = beNonNullContext(bArr2);
        checkContextLength(bArrBeNonNullContext);
        PublicKeyDelegate publicKeyDelegate = this.scheme.getPublicKeyDelegate();
        byte[] bArrHashPrivateKey = publicKeyDelegate.hashPrivateKey(keyPair.getPrivateKey());
        BigInteger scalarSeed = keyPair.getPrivateKey().getScalarSeed(publicKeyDelegate);
        byte[] bArrDom = this.scheme.dom(bArrBeNonNullContext);
        byte[] bArr3 = ByteUtils.split(bArrHashPrivateKey, 57)[1];
        byte[] bArrPreHash = this.scheme.preHash(bArr);
        BigInteger bigInteger = new BigInteger(1, ByteUtils.reverse(Hashes.hash(this.algorithm, 114, bArrDom, bArr3, bArrPreHash)));
        Curve curve = CURVE;
        BigInteger bigIntegerMod = bigInteger.mod(curve.getPrimeL());
        byte[] value = curve.getBasePoint().scalarMultiply(bigIntegerMod).encode().getValue();
        return new SignatureEd448(ByteUtils.paddingZeroOnTail(value, 57), ByteUtils.paddingZeroOnTail(new CoordinateEd448(new BigInteger(1, ByteUtils.reverse(Hashes.hash(this.algorithm, 114, bArrDom, value, keyPair.getPublicKey().getRaw(), bArrPreHash))).mod(curve.getPrimeL()).multiply(scalarSeed).add(bigIntegerMod).mod(curve.getPrimeL())).encode().getValue(), 57));
    }

    @Override // io.moatwel.crypto.EdDsaSigner
    public boolean verify(KeyPair keyPair, byte[] bArr, byte[] bArr2, Signature signature) {
        return verify(keyPair.getPublicKey(), bArr, bArr2, signature);
    }

    @Override // io.moatwel.crypto.EdDsaSigner
    public boolean verify(PublicKey publicKey, byte[] bArr, byte[] bArr2, Signature signature) {
        try {
            byte[] bArrBeNonNullContext = beNonNullContext(bArr2);
            checkContextLength(bArrBeNonNullContext);
            Point pointDecode = new EncodedPointEd448(signature.getR()).decode();
            Point pointDecode2 = new EncodedPointEd448(publicKey.getRaw()).decode();
            BigInteger integer = new EncodedCoordinateEd448(signature.getS()).decode().getInteger();
            if (integer.compareTo(BigInteger.ZERO) >= 0) {
                Curve curve = CURVE;
                if (integer.compareTo(curve.getPrimeL()) <= 0) {
                    return pointDecode.add(pointDecode2.scalarMultiply(new EncodedCoordinateEd448(Hashes.hash(this.algorithm, 114, this.scheme.dom(bArrBeNonNullContext), pointDecode.encode().getValue(), pointDecode2.encode().getValue(), this.scheme.preHash(bArr))).decode().getInteger())).isEqual(curve.getBasePoint().scalarMultiply(integer));
                }
            }
        } catch (DecodeException unused) {
        }
        return false;
    }

    private byte[] beNonNullContext(byte[] bArr) {
        return bArr == null ? new byte[0] : bArr;
    }

    private void checkContextLength(byte[] bArr) {
        if (bArr.length > 255) {
            throw new IllegalStateException("context length in byte must be less than 256 bytes.");
        }
    }
}
