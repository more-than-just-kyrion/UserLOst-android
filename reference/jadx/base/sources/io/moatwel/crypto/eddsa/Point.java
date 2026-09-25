package io.moatwel.crypto.eddsa;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Point {
    protected final Coordinate t;
    protected final Coordinate x;
    protected final Coordinate y;
    protected final Coordinate z;

    public abstract Point add(Point point);

    public abstract Point doubling();

    public abstract EncodedPoint encode();

    public abstract Point negate();

    public abstract Point negateY();

    public abstract Point scalarMultiply(BigInteger bigInteger);

    protected Point(Coordinate coordinate, Coordinate coordinate2, Coordinate coordinate3, Coordinate coordinate4) {
        this.x = coordinate;
        this.y = coordinate2;
        this.z = coordinate3;
        this.t = coordinate4;
    }

    public Coordinate getX() {
        return this.x;
    }

    public Coordinate getAffineX() {
        return this.x.multiply(this.z.inverse()).mod();
    }

    public Coordinate getY() {
        return this.y;
    }

    public Coordinate getAffineY() {
        return this.y.multiply(this.z.inverse()).mod();
    }

    public Coordinate getZ() {
        return this.z;
    }

    public Coordinate getT() {
        return this.t;
    }

    public boolean isEqual(Point point) {
        if (point.getClass() == getClass()) {
            return point.getAffineX().isEqual(getAffineX()) && point.getAffineY().isEqual(getAffineY());
        }
        throw new IllegalComparisonException("These points (" + (getClass().getSimpleName() + "{" + getAffineX().value.toString() + ", " + getAffineY().value.toString() + "}") + ", " + (point.getClass().getSimpleName() + "{" + point.getAffineX().value.toString() + ", " + point.getAffineY().value.toString() + "}") + ") can not be compared. Different point implementation.");
    }
}
