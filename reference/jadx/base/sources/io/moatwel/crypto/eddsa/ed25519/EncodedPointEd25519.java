package io.moatwel.crypto.eddsa.ed25519;

import androidx.exifinterface.media.ExifInterface;
import io.moatwel.crypto.eddsa.Coordinate;
import io.moatwel.crypto.eddsa.Curve;
import io.moatwel.crypto.eddsa.DecodeException;
import io.moatwel.crypto.eddsa.EncodedPoint;
import io.moatwel.crypto.eddsa.Point;
import io.moatwel.util.ByteUtils;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
public class EncodedPointEd25519 extends EncodedPoint {
    private static final Curve curve = Curve25519.getInstance();

    public EncodedPointEd25519(byte[] bArr) {
        super(bArr);
        if (bArr.length != 32) {
            throw new IllegalArgumentException("EncodedPoint on ed25519 curve must have 32 byte length. The length of your EncodedPoint was " + bArr.length);
        }
    }

    @Override // io.moatwel.crypto.eddsa.EncodedPoint
    public Point decode() throws DecodeException {
        int bit = ByteUtils.readBit(this.value[this.value.length - 1], 7);
        Coordinate coordinateRecoverY = recoverY(this.value);
        return PointEd25519.fromAffine(recoverX(coordinateRecoverY, bit), coordinateRecoverY);
    }

    private Coordinate recoverY(byte[] bArr) throws DecodeException {
        int length = bArr.length - 1;
        bArr[length] = (byte) (bArr[length] & 127);
        BigInteger bigInteger = new BigInteger(ByteUtils.reverse(bArr));
        if (bigInteger.compareTo(curve.getPrimePowerP()) >= 1) {
            throw new DecodeException("EdDsa decoding failed. This point is not on the edwards Curve25519.");
        }
        return new CoordinateEd25519(bigInteger);
    }

    private Coordinate recoverX(Coordinate coordinate, int i) throws DecodeException {
        CoordinateEd25519 coordinateEd25519 = new CoordinateEd25519(BigInteger.ONE);
        Coordinate coordinateMod = coordinate.multiply(coordinate).subtract(coordinateEd25519).mod();
        Curve curve2 = curve;
        Coordinate coordinateMod2 = coordinateMod.multiply(curve2.getD().multiply(coordinate).multiply(coordinate).add(coordinateEd25519).mod().inverse()).mod();
        Coordinate coordinatePowerMod = coordinateMod2.powerMod(curve2.getPrimePowerP().add(new BigInteger(ExifInterface.GPS_MEASUREMENT_3D)).divide(new BigInteger("8")));
        if (coordinatePowerMod.multiply(coordinatePowerMod).subtract(coordinateMod2).mod().getInteger().compareTo(BigInteger.ZERO) != 0) {
            if (coordinatePowerMod.multiply(coordinatePowerMod).add(coordinateMod2).mod().getInteger().compareTo(BigInteger.ZERO) == 0) {
                coordinatePowerMod = coordinatePowerMod.multiply(new CoordinateEd25519(BigInteger.ONE.shiftLeft(1).modPow(curve2.getPrimePowerP().subtract(BigInteger.ONE).divide(BigInteger.ONE.shiftLeft(2)), curve2.getPrimePowerP()))).mod();
            } else {
                throw new DecodeException("EdDsa decoding failed.");
            }
        }
        return coordinatePowerMod.getInteger().mod(BigInteger.ONE.shiftLeft(1)).compareTo(BigInteger.valueOf((long) i)) != 0 ? new CoordinateEd25519(curve2.getPrimePowerP().subtract(coordinatePowerMod.getInteger()).mod(curve2.getPrimePowerP())) : coordinatePowerMod;
    }
}
