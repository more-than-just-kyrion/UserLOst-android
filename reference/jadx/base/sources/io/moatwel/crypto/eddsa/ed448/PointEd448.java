package io.moatwel.crypto.eddsa.ed448;

import io.moatwel.crypto.eddsa.Coordinate;
import io.moatwel.crypto.eddsa.Curve;
import io.moatwel.crypto.eddsa.EncodedPoint;
import io.moatwel.crypto.eddsa.Point;
import io.moatwel.util.ArrayUtils;
import io.moatwel.util.ByteUtils;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
class PointEd448 extends Point {
    static final PointEd448 O = new PointEd448(CoordinateEd448.ZERO, CoordinateEd448.ONE, CoordinateEd448.ONE, CoordinateEd448.ZERO);
    private static final Coordinate DEFAULT_Z = CoordinateEd448.ONE;
    private static final Curve curve = Curve448.getInstance();

    PointEd448(Coordinate coordinate, Coordinate coordinate2, Coordinate coordinate3, Coordinate coordinate4) {
        super(coordinate, coordinate2, coordinate3, coordinate4);
    }

    public static PointEd448 fromAffine(Coordinate coordinate, Coordinate coordinate2) {
        Coordinate coordinate3 = DEFAULT_Z;
        return new PointEd448(coordinate.multiply(coordinate3).mod(), coordinate2.multiply(coordinate3).mod(), coordinate3, coordinate.multiply(coordinate2).multiply(coordinate3).mod());
    }

    @Override // io.moatwel.crypto.eddsa.Point
    public Point add(Point point) {
        Coordinate coordinate = this.x;
        Coordinate coordinate2 = this.y;
        Coordinate coordinate3 = this.z;
        Coordinate x = point.getX();
        Coordinate y = point.getY();
        Coordinate coordinateMod = coordinate3.multiply(point.getZ()).mod();
        Coordinate coordinateMod2 = coordinateMod.multiply(coordinateMod).mod();
        Coordinate coordinateMod3 = coordinate.multiply(x).mod();
        Coordinate coordinateMod4 = coordinate2.multiply(y).mod();
        Coordinate coordinateMod5 = curve.getD().multiply(coordinateMod3).multiply(coordinateMod4).mod();
        Coordinate coordinateMod6 = coordinateMod2.subtract(coordinateMod5).mod();
        Coordinate coordinateAdd = coordinateMod2.add(coordinateMod5);
        return new PointEd448(coordinateMod.multiply(coordinateMod6).multiply(coordinate.add(coordinate2).multiply(x.add(y)).mod().subtract(coordinateMod3).subtract(coordinateMod4)).mod(), coordinateMod.multiply(coordinateAdd).multiply(coordinateMod4.subtract(coordinateMod3)).mod(), coordinateMod6.multiply(coordinateAdd).mod(), CoordinateEd448.ZERO);
    }

    @Override // io.moatwel.crypto.eddsa.Point
    public Point doubling() {
        Coordinate coordinate = this.x;
        Coordinate coordinate2 = this.y;
        Coordinate coordinate3 = this.z;
        Coordinate coordinateMod = coordinate.add(coordinate2).multiply(coordinate.add(coordinate2)).mod();
        Coordinate coordinateMod2 = coordinate.multiply(coordinate).mod();
        Coordinate coordinateMod3 = coordinate2.multiply(coordinate2).mod();
        Coordinate coordinateMod4 = coordinateMod2.add(coordinateMod3).mod();
        Coordinate coordinateMod5 = coordinateMod4.subtract(new CoordinateEd448(BigInteger.ONE.shiftLeft(1)).multiply(coordinate3.multiply(coordinate3).mod())).mod();
        return new PointEd448(coordinateMod.subtract(coordinateMod4).multiply(coordinateMod5).mod(), coordinateMod4.multiply(coordinateMod2.subtract(coordinateMod3)).mod(), coordinateMod4.multiply(coordinateMod5), CoordinateEd448.ZERO);
    }

    @Override // io.moatwel.crypto.eddsa.Point
    public Point scalarMultiply(BigInteger bigInteger) {
        if (bigInteger.equals(BigInteger.ZERO)) {
            return O;
        }
        PointEd448 pointEd448 = O;
        Point[] pointArr = {pointEd448, pointEd448};
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
        return new PointEd448(this.x, this.y.negate(), this.z, this.t.negate());
    }

    @Override // io.moatwel.crypto.eddsa.Point
    public EncodedPoint encode() {
        byte[] bArrPaddingZeroOnTail = ByteUtils.paddingZeroOnTail(ByteUtils.reverse(ArrayUtils.toByteArray(getAffineY().getInteger(), 57)), 57);
        byte[] byteArray = ArrayUtils.toByteArray(getAffineX().getInteger(), 57);
        int length = byteArray.length;
        int length2 = bArrPaddingZeroOnTail.length;
        if ((byteArray[length - 1] & 1) == 1) {
            int i = length2 - 1;
            bArrPaddingZeroOnTail[i] = (byte) (bArrPaddingZeroOnTail[i] | 128);
        } else {
            int i2 = length2 - 1;
            bArrPaddingZeroOnTail[i2] = (byte) (bArrPaddingZeroOnTail[i2] & (-129));
        }
        return new EncodedPointEd448(bArrPaddingZeroOnTail);
    }

    @Override // io.moatwel.crypto.eddsa.Point
    public Point negate() {
        return new PointEd448(this.x.negate(), this.y.negate(), this.z, this.t);
    }
}
