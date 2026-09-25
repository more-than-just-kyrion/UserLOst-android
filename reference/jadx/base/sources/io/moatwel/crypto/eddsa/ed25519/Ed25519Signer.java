package io.moatwel.crypto.eddsa.ed25519;

import io.moatwel.crypto.EdDsaSigner;
import io.moatwel.crypto.HashAlgorithm;
import io.moatwel.crypto.Hashes;
import io.moatwel.crypto.KeyPair;
import io.moatwel.crypto.PublicKey;
import io.moatwel.crypto.Signature;
import io.moatwel.crypto.eddsa.Coordinate;
import io.moatwel.crypto.eddsa.Curve;
import io.moatwel.crypto.eddsa.DecodeException;
import io.moatwel.crypto.eddsa.Point;
import io.moatwel.crypto.eddsa.PublicKeyDelegate;
import io.moatwel.crypto.eddsa.SchemeProvider;
import io.moatwel.util.ByteUtils;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
public class Ed25519Signer implements EdDsaSigner {
    private static final Curve CURVE = Curve25519.getInstance();
    private final HashAlgorithm hashAlgorithm;
    private final SchemeProvider schemeProvider;

    public Ed25519Signer(HashAlgorithm hashAlgorithm, SchemeProvider schemeProvider) {
        this.hashAlgorithm = hashAlgorithm;
        this.schemeProvider = schemeProvider;
    }

    @Override // io.moatwel.crypto.EdDsaSigner
    public Signature sign(KeyPair keyPair, byte[] bArr, byte[] bArr2) {
        byte[] bArrBeNonNullContext = beNonNullContext(bArr2);
        checkContextLength(bArrBeNonNullContext);
        PublicKeyDelegate publicKeyDelegate = this.schemeProvider.getPublicKeyDelegate();
        byte[] bArrHashPrivateKey = publicKeyDelegate.hashPrivateKey(keyPair.getPrivateKey());
        BigInteger scalarSeed = keyPair.getPrivateKey().getScalarSeed(publicKeyDelegate);
        byte[] bArrDom = this.schemeProvider.dom(bArrBeNonNullContext);
        byte[] bArr3 = ByteUtils.split(bArrHashPrivateKey, 32)[1];
        byte[] bArrPreHash = this.schemeProvider.preHash(bArr);
        BigInteger bigInteger = new BigInteger(1, ByteUtils.reverse(Hashes.hash(this.hashAlgorithm, bArrDom, bArr3, bArrPreHash)));
        Curve curve = CURVE;
        byte[] value = curve.getBasePoint().scalarMultiply(bigInteger).encode().getValue();
        return new SignatureEd25519(ByteUtils.paddingZeroOnTail(value, 32), ByteUtils.paddingZeroOnTail(new CoordinateEd25519(new BigInteger(1, ByteUtils.reverse(Hashes.hash(this.hashAlgorithm, bArrDom, value, keyPair.getPublicKey().getRaw(), bArrPreHash))).mod(curve.getPrimeL()).multiply(scalarSeed).add(bigInteger).mod(curve.getPrimeL())).encode().getValue(), 32));
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
            Point pointDecode = new EncodedPointEd25519(signature.getR()).decode();
            Point pointDecode2 = new EncodedPointEd25519(publicKey.getRaw()).decode();
            Coordinate coordinateDecode = new EncodedCoordinateEd25519(signature.getS()).decode();
            return pointDecode.add(pointDecode2.scalarMultiply(new EncodedCoordinateEd25519(Hashes.hash(this.hashAlgorithm, this.schemeProvider.dom(bArrBeNonNullContext), pointDecode.encode().getValue(), pointDecode2.encode().getValue(), this.schemeProvider.preHash(bArr))).decode().getInteger())).isEqual(CURVE.getBasePoint().scalarMultiply(coordinateDecode.getInteger()));
        } catch (DecodeException unused) {
            return false;
        }
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
