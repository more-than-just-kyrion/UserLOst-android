package io.moatwel.crypto.eddsa;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Curve {
    public abstract BigInteger getA();

    public abstract Point getBasePoint();

    public abstract Coordinate getD();

    public abstract BigInteger getPrimeL();

    public abstract BigInteger getPrimePowerP();

    public abstract int getPublicKeyByteLength();
}
