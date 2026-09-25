package io.moatwel.crypto.eddsa.ed25519;

import io.moatwel.crypto.eddsa.Coordinate;
import io.moatwel.crypto.eddsa.Curve;
import io.moatwel.crypto.eddsa.EncodedCoordinate;
import io.moatwel.util.ArrayUtils;
import io.moatwel.util.ByteUtils;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
class CoordinateEd25519 extends Coordinate {
    public static final CoordinateEd25519 ONE = new CoordinateEd25519(BigInteger.ONE);
    private static final Curve curve = Curve25519.getInstance();

    CoordinateEd25519(BigInteger bigInteger) {
        super(bigInteger);
    }

    @Override // io.moatwel.crypto.eddsa.Coordinate
    public final Coordinate add(Coordinate coordinate) {
        return new CoordinateEd25519(this.value.add(coordinate.getInteger()));
    }

    @Override // io.moatwel.crypto.eddsa.Coordinate
    public final Coordinate divide(Coordinate coordinate) {
        return new CoordinateEd25519(this.value.divide(coordinate.getInteger()));
    }

    @Override // io.moatwel.crypto.eddsa.Coordinate
    public final Coordinate multiply(Coordinate coordinate) {
        return new CoordinateEd25519(this.value.multiply(coordinate.getInteger()));
    }

    @Override // io.moatwel.crypto.eddsa.Coordinate
    public final Coordinate subtract(Coordinate coordinate) {
        return new CoordinateEd25519(this.value.subtract(coordinate.getInteger()));
    }

    @Override // io.moatwel.crypto.eddsa.Coordinate
    public final Coordinate mod() {
        return new CoordinateEd25519(getInteger().mod(curve.getPrimePowerP()));
    }

    @Override // io.moatwel.crypto.eddsa.Coordinate
    public final Coordinate inverse() {
        return new CoordinateEd25519(getInteger().modInverse(curve.getPrimePowerP()));
    }

    @Override // io.moatwel.crypto.eddsa.Coordinate
    public Coordinate powerMod(BigInteger bigInteger) {
        return new CoordinateEd25519(this.value.modPow(bigInteger, curve.getPrimePowerP()));
    }

    @Override // io.moatwel.crypto.eddsa.Coordinate
    public Coordinate negate() {
        return new CoordinateEd25519(this.value.negate()).mod();
    }

    @Override // io.moatwel.crypto.eddsa.Coordinate
    public EncodedCoordinate encode() {
        return new EncodedCoordinateEd25519(ByteUtils.reverse(ArrayUtils.toByteArray(this.value, 32)));
    }
}
