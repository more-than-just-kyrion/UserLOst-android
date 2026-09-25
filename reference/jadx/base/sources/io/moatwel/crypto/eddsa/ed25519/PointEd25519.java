package io.moatwel.crypto.eddsa.ed25519;

import io.moatwel.crypto.eddsa.Coordinate;
import io.moatwel.crypto.eddsa.Curve;
import io.moatwel.crypto.eddsa.EncodedPoint;
import io.moatwel.crypto.eddsa.Point;
import io.moatwel.util.ArrayUtils;
import io.moatwel.util.ByteUtils;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
class PointEd25519 extends Point {
    private static final Coordinate DEFAULT_Z;
    static final PointEd25519 O;
    private static final Coordinate ONE;
    private static final Coordinate ZERO;
    private static final Curve curve;

    static {
        CoordinateEd25519 coordinateEd25519 = new CoordinateEd25519(BigInteger.ONE);
        DEFAULT_Z = coordinateEd25519;
        CoordinateEd25519 coordinateEd255110 = new CoordinateEd25519(BigInteger.ONE);
        ONE = coordinateEd255110;
        CoordinateEd25519 coordinateEd255111 = new CoordinateEd25519(BigInteger.ZERO);
        ZERO = coordinateEd255111;
        O = new PointEd25519(coordinateEd255111, coordinateEd255110, coordinateEd25519, coordinateEd255111);
        curve = Curve25519.getInstance();
    }

    PointEd25519(Coordinate coordinate, Coordinate coordinate2, Coordinate coordinate3, Coordinate coordinate4) {
        super(coordinate, coordinate2, coordinate3, coordinate4);
    }

    public static PointEd25519 fromAffine(Coordinate coordinate, Coordinate coordinate2) {
        Coordinate coordinate3 = DEFAULT_Z;
        return new PointEd25519(coordinate.multiply(coordinate3).mod(), coordinate2.multiply(coordinate3).mod(), coordinate3, coordinate.multiply(coordinate2).multiply(coordinate3).mod());
    }

    @Override // io.moatwel.crypto.eddsa.Point
    public final Point add(Point point) {
        Coordinate coordinate = this.x;
        Coordinate coordinate2 = this.y;
        Coordinate coordinate3 = this.z;
        Coordinate coordinate4 = this.t;
        Coordinate x = point.getX();
        Coordinate y = point.getY();
        Coordinate z = point.getZ();
        Coordinate t = point.getT();
        CoordinateEd25519 coordinateEd25519 = new CoordinateEd25519(curve.getD().getInteger());
        CoordinateEd25519 coordinateEd255110 = new CoordinateEd25519(BigInteger.ONE.shiftLeft(1));
        Coordinate coordinateMod = coordinate2.subtract(coordinate).multiply(y.subtract(x)).mod();
        Coordinate coordinateMod2 = coordinate2.add(coordinate).multiply(y.add(x)).mod();
        Coordinate coordinateMod3 = coordinate4.multiply(coordinateEd255110).multiply(coordinateEd25519).multiply(t).mod();
        Coordinate coordinateMod4 = coordinate3.multiply(coordinateEd255110).multiply(z).mod();
        Coordinate coordinateMod5 = coordinateMod2.subtract(coordinateMod).mod();
        Coordinate coordinateMod6 = coordinateMod4.subtract(coordinateMod3).mod();
        Coordinate coordinateMod7 = coordinateMod4.add(coordinateMod3).mod();
        Coordinate coordinateMod8 = coordinateMod2.add(coordinateMod).mod();
        return new PointEd25519(coordinateMod5.multiply(coordinateMod6).mod(), coordinateMod7.multiply(coordinateMod8).mod(), coordinateMod6.multiply(coordinateMod7).mod(), coordinateMod5.multiply(coordinateMod8).mod());
    }

    @Override // io.moatwel.crypto.eddsa.Point
    public Point doubling() {
        Coordinate coordinate = this.x;
        Coordinate coordinate2 = this.y;
        Coordinate coordinate3 = this.z;
        Coordinate coordinateMod = coordinate.multiply(coordinate).mod();
        Coordinate coordinateMod2 = coordinate2.multiply(coordinate2).mod();
        Coordinate coordinateMod3 = new CoordinateEd25519(BigInteger.ONE.shiftLeft(1)).multiply(coordinate3).multiply(coordinate3).mod();
        Coordinate coordinateMod4 = coordinateMod.add(coordinateMod2).mod();
        Coordinate coordinateMod5 = coordinateMod4.subtract(coordinate.add(coordinate2).multiply(coordinate.add(coordinate2)).mod()).mod();
        Coordinate coordinateMod6 = coordinateMod.subtract(coordinateMod2).mod();
        Coordinate coordinateMod7 = coordinateMod3.add(coordinateMod6).mod();
        return new PointEd25519(coordinateMod5.multiply(coordinateMod7).mod(), coordinateMod6.multiply(coordinateMod4).mod(), coordinateMod7.multiply(coordinateMod6).mod(), coordinateMod5.multiply(coordinateMod4).mod());
    }

    @Override // io.moatwel.crypto.eddsa.Point
    public final Point scalarMultiply(BigInteger bigInteger) {
        if (bigInteger.equals(BigInteger.ZERO)) {
            return O;
        }
        PointEd25519 pointEd25519 = O;
        Point[] pointArr = {pointEd25519, pointEd25519};
        Point[] pointArr2 = {this, this, negateY()};
        for (int i : ArrayUtils.toMutualOppositeForm(bigInteger)) {
            Point pointDoubling = pointArr[0].doubling();
            pointArr[0] = pointDoubling;
            pointArr[1] = pointDoubling.add(pointArr2[1 - i]).negate();
            int i2 = i >> 31;
            pointArr[0] = pointArr[(i ^ i2) - i2];
        }
        return pointArr[0];
    }

    @Override // io.moatwel.crypto.eddsa.Point
    public Point negateY() {
        return new PointEd25519(this.x, this.y.negate(), this.z, this.t.negate());
    }

    @Override // io.moatwel.crypto.eddsa.Point
    public final EncodedPoint encode() {
        byte[] bArrPaddingZeroOnTail = ByteUtils.paddingZeroOnTail(ByteUtils.reverse(ArrayUtils.toByteArray(getAffineY().getInteger(), 32)), 32);
        byte[] byteArray = ArrayUtils.toByteArray(getAffineX().getInteger(), 32);
        int length = byteArray.length;
        int length2 = bArrPaddingZeroOnTail.length;
        if ((byteArray[length - 1] & 1) == 1) {
            int i = length2 - 1;
            bArrPaddingZeroOnTail[i] = (byte) (bArrPaddingZeroOnTail[i] | 128);
        } else {
            int i2 = length2 - 1;
            bArrPaddingZeroOnTail[i2] = (byte) (bArrPaddingZeroOnTail[i2] & (-129));
        }
        return new EncodedPointEd25519(bArrPaddingZeroOnTail);
    }

    @Override // io.moatwel.crypto.eddsa.Point
    public Point negate() {
        return new PointEd25519(this.x.negate(), this.y.negate(), this.z, this.t);
    }
}
