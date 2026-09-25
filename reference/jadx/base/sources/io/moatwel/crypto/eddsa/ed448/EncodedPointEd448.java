package io.moatwel.crypto.eddsa.ed448;

import io.moatwel.crypto.eddsa.Coordinate;
import io.moatwel.crypto.eddsa.Curve;
import io.moatwel.crypto.eddsa.DecodeException;
import io.moatwel.crypto.eddsa.EncodedPoint;
import io.moatwel.crypto.eddsa.Point;
import io.moatwel.util.ByteUtils;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
public class EncodedPointEd448 extends EncodedPoint {
    private static final Curve curve = Curve448.getInstance();

    public EncodedPointEd448(byte[] bArr) {
        super(bArr);
        if (bArr.length != 57) {
            throw new IllegalArgumentException("EncodedPoint on ed448 curve must have 57 byte length. The length of your EncodedPoint was " + bArr.length);
        }
    }

    @Override // io.moatwel.crypto.eddsa.EncodedPoint
    public Point decode() throws DecodeException {
        int bit = ByteUtils.readBit(this.value[this.value.length - 1], 7);
        Coordinate coordinateRecoverY = recoverY(this.value);
        return PointEd448.fromAffine(recoverX(coordinateRecoverY, bit), coordinateRecoverY);
    }

    private Coordinate recoverY(byte[] bArr) throws DecodeException {
        int length = bArr.length - 1;
        bArr[length] = (byte) (bArr[length] & 127);
        BigInteger bigInteger = new BigInteger(1, ByteUtils.reverse(bArr));
        if (bigInteger.compareTo(curve.getPrimePowerP()) >= 1) {
            throw new DecodeException("EdDsa decoding failed. This point is not on the Curve448.");
        }
        return new CoordinateEd448(bigInteger);
    }

    private Coordinate recoverX(Coordinate coordinate, int i) throws DecodeException {
        Coordinate coordinateMod = coordinate.multiply(coordinate).subtract(CoordinateEd448.ONE).mod();
        Curve curve2 = curve;
        Coordinate coordinateMod2 = coordinateMod.multiply(curve2.getD().multiply(coordinate).multiply(coordinate).subtract(CoordinateEd448.ONE).mod().inverse()).mod();
        Coordinate coordinatePowerMod = coordinateMod2.powerMod(curve2.getPrimePowerP().add(BigInteger.ONE).divide(BigInteger.ONE.shiftLeft(2)));
        if (coordinatePowerMod.multiply(coordinatePowerMod).mod().subtract(coordinateMod2).getInteger().compareTo(BigInteger.ZERO) != 0) {
            throw new DecodeException("EdDsa decoding failed. This encoded point is not on the Curve448");
        }
        if (coordinatePowerMod.isEqual(CoordinateEd448.ZERO) && i == 1) {
            throw new DecodeException("EdDsa decoding failed.");
        }
        return coordinatePowerMod.getInteger().mod(BigInteger.ONE.shiftLeft(1)).compareTo(BigInteger.valueOf((long) i)) != 0 ? new CoordinateEd448(BigInteger.ZERO.subtract(coordinatePowerMod.getInteger()).mod(curve2.getPrimePowerP())) : coordinatePowerMod;
    }
}
