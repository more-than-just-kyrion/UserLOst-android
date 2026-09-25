package io.moatwel.crypto.eddsa.ed448;

import io.moatwel.crypto.eddsa.Coordinate;
import io.moatwel.crypto.eddsa.Curve;
import io.moatwel.crypto.eddsa.EncodedCoordinate;
import io.moatwel.util.ArrayUtils;
import io.moatwel.util.ByteUtils;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
class CoordinateEd448 extends Coordinate {
    public static final CoordinateEd448 ZERO = new CoordinateEd448(BigInteger.ZERO);
    public static final CoordinateEd448 ONE = new CoordinateEd448(BigInteger.ONE);
    private static final Curve curve = Curve448.getInstance();

    CoordinateEd448(BigInteger bigInteger) {
        super(bigInteger);
    }

    @Override // io.moatwel.crypto.eddsa.Coordinate
    public Coordinate add(Coordinate coordinate) {
        return new CoordinateEd448(this.value.add(coordinate.getInteger()));
    }

    @Override // io.moatwel.crypto.eddsa.Coordinate
    public Coordinate divide(Coordinate coordinate) {
        return new CoordinateEd448(this.value.divide(coordinate.getInteger()));
    }

    @Override // io.moatwel.crypto.eddsa.Coordinate
    public Coordinate multiply(Coordinate coordinate) {
        return new CoordinateEd448(this.value.multiply(coordinate.getInteger()));
    }

    @Override // io.moatwel.crypto.eddsa.Coordinate
    public Coordinate subtract(Coordinate coordinate) {
        return new CoordinateEd448(this.value.subtract(coordinate.getInteger()));
    }

    @Override // io.moatwel.crypto.eddsa.Coordinate
    public Coordinate mod() {
        return new CoordinateEd448(getInteger().mod(curve.getPrimePowerP()));
    }

    @Override // io.moatwel.crypto.eddsa.Coordinate
    public Coordinate inverse() {
        return new CoordinateEd448(this.value.modInverse(curve.getPrimePowerP()));
    }

    @Override // io.moatwel.crypto.eddsa.Coordinate
    public Coordinate powerMod(BigInteger bigInteger) {
        return new CoordinateEd448(this.value.modPow(bigInteger, curve.getPrimePowerP()));
    }

    @Override // io.moatwel.crypto.eddsa.Coordinate
    public Coordinate negate() {
        return new CoordinateEd448(this.value.negate()).mod();
    }

    @Override // io.moatwel.crypto.eddsa.Coordinate
    public EncodedCoordinate encode() {
        return new EncodedCoordinateEd448(ByteUtils.reverse(ArrayUtils.toByteArray(this.value, 57)));
    }
}
