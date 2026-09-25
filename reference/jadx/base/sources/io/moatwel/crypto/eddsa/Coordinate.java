package io.moatwel.crypto.eddsa;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Coordinate {
    protected final BigInteger value;

    public abstract Coordinate add(Coordinate coordinate);

    public abstract Coordinate divide(Coordinate coordinate);

    public abstract EncodedCoordinate encode();

    public abstract Coordinate inverse();

    public abstract Coordinate mod();

    public abstract Coordinate multiply(Coordinate coordinate);

    public abstract Coordinate negate();

    public abstract Coordinate powerMod(BigInteger bigInteger);

    public abstract Coordinate subtract(Coordinate coordinate);

    protected Coordinate(BigInteger bigInteger) {
        this.value = bigInteger;
    }

    public BigInteger getInteger() {
        return this.value;
    }

    public boolean isEqual(Coordinate coordinate) {
        if (coordinate.getClass() == getClass()) {
            return this.value.compareTo(coordinate.getInteger()) == 0;
        }
        throw new IllegalComparisonException("These coordinates (" + (getClass().getSimpleName() + ":" + this.value.toString()) + ", " + (coordinate.getClass().getSimpleName() + ":" + coordinate.value.toString()) + ") can not be compared. Different coordinate implementations");
    }
}
