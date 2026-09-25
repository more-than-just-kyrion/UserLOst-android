.class public abstract Lio/moatwel/crypto/eddsa/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field protected final t:Lio/moatwel/crypto/eddsa/Coordinate;

.field protected final x:Lio/moatwel/crypto/eddsa/Coordinate;

.field protected final y:Lio/moatwel/crypto/eddsa/Coordinate;

.field protected final z:Lio/moatwel/crypto/eddsa/Coordinate;


# direct methods
.method protected constructor <init>(Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lio/moatwel/crypto/eddsa/Point;->x:Lio/moatwel/crypto/eddsa/Coordinate;

    .line 31
    iput-object p2, p0, Lio/moatwel/crypto/eddsa/Point;->y:Lio/moatwel/crypto/eddsa/Coordinate;

    .line 32
    iput-object p3, p0, Lio/moatwel/crypto/eddsa/Point;->z:Lio/moatwel/crypto/eddsa/Coordinate;

    .line 33
    iput-object p4, p0, Lio/moatwel/crypto/eddsa/Point;->t:Lio/moatwel/crypto/eddsa/Coordinate;

    return-void
.end method


# virtual methods
.method public abstract add(Lio/moatwel/crypto/eddsa/Point;)Lio/moatwel/crypto/eddsa/Point;
.end method

.method public abstract doubling()Lio/moatwel/crypto/eddsa/Point;
.end method

.method public abstract encode()Lio/moatwel/crypto/eddsa/EncodedPoint;
.end method

.method public getAffineX()Lio/moatwel/crypto/eddsa/Coordinate;
    .locals 2

    .line 51
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/Point;->z:Lio/moatwel/crypto/eddsa/Coordinate;

    invoke-virtual {v0}, Lio/moatwel/crypto/eddsa/Coordinate;->inverse()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lio/moatwel/crypto/eddsa/Point;->x:Lio/moatwel/crypto/eddsa/Coordinate;

    invoke-virtual {v1, v0}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    invoke-virtual {v0}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public getAffineY()Lio/moatwel/crypto/eddsa/Coordinate;
    .locals 2

    .line 70
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/Point;->z:Lio/moatwel/crypto/eddsa/Coordinate;

    invoke-virtual {v0}, Lio/moatwel/crypto/eddsa/Coordinate;->inverse()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lio/moatwel/crypto/eddsa/Point;->y:Lio/moatwel/crypto/eddsa/Coordinate;

    invoke-virtual {v1, v0}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    invoke-virtual {v0}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public getT()Lio/moatwel/crypto/eddsa/Coordinate;
    .locals 1

    .line 79
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/Point;->t:Lio/moatwel/crypto/eddsa/Coordinate;

    return-object v0
.end method

.method public getX()Lio/moatwel/crypto/eddsa/Coordinate;
    .locals 1

    .line 42
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/Point;->x:Lio/moatwel/crypto/eddsa/Coordinate;

    return-object v0
.end method

.method public getY()Lio/moatwel/crypto/eddsa/Coordinate;
    .locals 1

    .line 61
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/Point;->y:Lio/moatwel/crypto/eddsa/Coordinate;

    return-object v0
.end method

.method public getZ()Lio/moatwel/crypto/eddsa/Coordinate;
    .locals 1

    .line 75
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/Point;->z:Lio/moatwel/crypto/eddsa/Coordinate;

    return-object v0
.end method

.method public isEqual(Lio/moatwel/crypto/eddsa/Point;)Z
    .locals 6

    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 194
    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Point;->getAffineX()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    invoke-virtual {p0}, Lio/moatwel/crypto/eddsa/Point;->getAffineX()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/moatwel/crypto/eddsa/Coordinate;->isEqual(Lio/moatwel/crypto/eddsa/Coordinate;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Point;->getAffineY()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p1

    invoke-virtual {p0}, Lio/moatwel/crypto/eddsa/Point;->getAffineY()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/moatwel/crypto/eddsa/Coordinate;->isEqual(Lio/moatwel/crypto/eddsa/Coordinate;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 183
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Lio/moatwel/crypto/eddsa/Point;->getAffineX()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v2

    iget-object v2, v2, Lio/moatwel/crypto/eddsa/Coordinate;->value:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Lio/moatwel/crypto/eddsa/Point;->getAffineY()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v3

    iget-object v3, v3, Lio/moatwel/crypto/eddsa/Coordinate;->value:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 187
    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Point;->getAffineX()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v4

    iget-object v4, v4, Lio/moatwel/crypto/eddsa/Coordinate;->value:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 188
    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Point;->getAffineY()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p1

    iget-object p1, p1, Lio/moatwel/crypto/eddsa/Coordinate;->value:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 189
    new-instance v1, Lio/moatwel/crypto/eddsa/IllegalComparisonException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "These points ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ") can not be compared. Different point implementation."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lio/moatwel/crypto/eddsa/IllegalComparisonException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract negate()Lio/moatwel/crypto/eddsa/Point;
.end method

.method public abstract negateY()Lio/moatwel/crypto/eddsa/Point;
.end method

.method public abstract scalarMultiply(Ljava/math/BigInteger;)Lio/moatwel/crypto/eddsa/Point;
.end method
