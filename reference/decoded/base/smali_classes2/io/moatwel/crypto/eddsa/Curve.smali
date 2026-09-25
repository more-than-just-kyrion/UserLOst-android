.class public abstract Lio/moatwel/crypto/eddsa/Curve;
.super Ljava/lang/Object;
.source "Curve.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getA()Ljava/math/BigInteger;
.end method

.method public abstract getBasePoint()Lio/moatwel/crypto/eddsa/Point;
.end method

.method public abstract getD()Lio/moatwel/crypto/eddsa/Coordinate;
.end method

.method public abstract getPrimeL()Ljava/math/BigInteger;
.end method

.method public abstract getPrimePowerP()Ljava/math/BigInteger;
.end method

.method public abstract getPublicKeyByteLength()I
.end method
