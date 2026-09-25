.class Lio/moatwel/crypto/eddsa/ed448/PointEd448;
.super Lio/moatwel/crypto/eddsa/Point;
.source "PointEd448.java"


# static fields
.field private static final DEFAULT_Z:Lio/moatwel/crypto/eddsa/Coordinate;

.field static final O:Lio/moatwel/crypto/eddsa/ed448/PointEd448;

.field private static final curve:Lio/moatwel/crypto/eddsa/Curve;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 19
    new-instance v0, Lio/moatwel/crypto/eddsa/ed448/PointEd448;

    sget-object v1, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;->ZERO:Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;

    sget-object v2, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;->ONE:Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;

    sget-object v3, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;->ONE:Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;

    sget-object v4, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;->ZERO:Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/moatwel/crypto/eddsa/ed448/PointEd448;-><init>(Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;)V

    sput-object v0, Lio/moatwel/crypto/eddsa/ed448/PointEd448;->O:Lio/moatwel/crypto/eddsa/ed448/PointEd448;

    .line 20
    sget-object v0, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;->ONE:Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;

    sput-object v0, Lio/moatwel/crypto/eddsa/ed448/PointEd448;->DEFAULT_Z:Lio/moatwel/crypto/eddsa/Coordinate;

    .line 21
    invoke-static {}, Lio/moatwel/crypto/eddsa/ed448/Curve448;->getInstance()Lio/moatwel/crypto/eddsa/ed448/Curve448;

    move-result-object v0

    sput-object v0, Lio/moatwel/crypto/eddsa/ed448/PointEd448;->curve:Lio/moatwel/crypto/eddsa/Curve;

    return-void
.end method

.method constructor <init>(Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lio/moatwel/crypto/eddsa/Point;-><init>(Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;)V

    return-void
.end method

.method public static fromAffine(Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/ed448/PointEd448;
    .locals 4

    .line 34
    new-instance v0, Lio/moatwel/crypto/eddsa/ed448/PointEd448;

    sget-object v1, Lio/moatwel/crypto/eddsa/ed448/PointEd448;->DEFAULT_Z:Lio/moatwel/crypto/eddsa/Coordinate;

    .line 35
    invoke-virtual {p0, v1}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v2

    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v2

    .line 36
    invoke-virtual {p1, v1}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v3

    invoke-virtual {v3}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v3

    .line 38
    invoke-virtual {p0, p1}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p0

    invoke-virtual {p0, v1}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p0

    invoke-virtual {p0}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p0

    invoke-direct {v0, v2, v3, v1, p0}, Lio/moatwel/crypto/eddsa/ed448/PointEd448;-><init>(Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;)V

    return-object v0
.end method


# virtual methods
.method public add(Lio/moatwel/crypto/eddsa/Point;)Lio/moatwel/crypto/eddsa/Point;
    .locals 9

    .line 47
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/ed448/PointEd448;->x:Lio/moatwel/crypto/eddsa/Coordinate;

    .line 48
    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed448/PointEd448;->y:Lio/moatwel/crypto/eddsa/Coordinate;

    .line 49
    iget-object v2, p0, Lio/moatwel/crypto/eddsa/ed448/PointEd448;->z:Lio/moatwel/crypto/eddsa/Coordinate;

    .line 50
    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Point;->getX()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v3

    .line 51
    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Point;->getY()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v4

    .line 52
    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Point;->getZ()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p1

    .line 54
    invoke-virtual {v2, p1}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p1

    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p1

    .line 55
    invoke-virtual {p1, p1}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v2

    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v2

    .line 56
    invoke-virtual {v0, v3}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v5

    invoke-virtual {v5}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v5

    .line 57
    invoke-virtual {v1, v4}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v6

    invoke-virtual {v6}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v6

    .line 59
    sget-object v7, Lio/moatwel/crypto/eddsa/ed448/PointEd448;->curve:Lio/moatwel/crypto/eddsa/Curve;

    invoke-virtual {v7}, Lio/moatwel/crypto/eddsa/Curve;->getD()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v7

    invoke-virtual {v7, v5}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v7

    invoke-virtual {v7, v6}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v7

    invoke-virtual {v7}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v7

    .line 60
    invoke-virtual {v2, v7}, Lio/moatwel/crypto/eddsa/Coordinate;->subtract(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v8

    invoke-virtual {v8}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v8

    .line 61
    invoke-virtual {v2, v7}, Lio/moatwel/crypto/eddsa/Coordinate;->add(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v2

    .line 62
    invoke-virtual {v0, v1}, Lio/moatwel/crypto/eddsa/Coordinate;->add(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    invoke-virtual {v3, v4}, Lio/moatwel/crypto/eddsa/Coordinate;->add(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    invoke-virtual {v0}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    .line 63
    invoke-virtual {p1, v8}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    invoke-virtual {v0, v5}, Lio/moatwel/crypto/eddsa/Coordinate;->subtract(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    invoke-virtual {v0, v6}, Lio/moatwel/crypto/eddsa/Coordinate;->subtract(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    invoke-virtual {v0}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    .line 64
    invoke-virtual {p1, v2}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p1

    invoke-virtual {v6, v5}, Lio/moatwel/crypto/eddsa/Coordinate;->subtract(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p1

    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p1

    .line 65
    invoke-virtual {v8, v2}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    invoke-virtual {v1}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    .line 68
    new-instance v2, Lio/moatwel/crypto/eddsa/ed448/PointEd448;

    sget-object v3, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;->ZERO:Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;

    invoke-direct {v2, v0, p1, v1, v3}, Lio/moatwel/crypto/eddsa/ed448/PointEd448;-><init>(Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;)V

    return-object v2
.end method

.method public doubling()Lio/moatwel/crypto/eddsa/Point;
    .locals 8

    .line 73
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/ed448/PointEd448;->x:Lio/moatwel/crypto/eddsa/Coordinate;

    .line 74
    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed448/PointEd448;->y:Lio/moatwel/crypto/eddsa/Coordinate;

    .line 75
    iget-object v2, p0, Lio/moatwel/crypto/eddsa/ed448/PointEd448;->z:Lio/moatwel/crypto/eddsa/Coordinate;

    .line 77
    invoke-virtual {v0, v1}, Lio/moatwel/crypto/eddsa/Coordinate;->add(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v3

    invoke-virtual {v0, v1}, Lio/moatwel/crypto/eddsa/Coordinate;->add(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v3

    invoke-virtual {v3}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v3

    .line 78
    invoke-virtual {v0, v0}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    invoke-virtual {v0}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    .line 79
    invoke-virtual {v1, v1}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    invoke-virtual {v1}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lio/moatwel/crypto/eddsa/Coordinate;->add(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v4

    invoke-virtual {v4}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v4

    .line 81
    invoke-virtual {v2, v2}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v2

    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v2

    .line 82
    new-instance v5, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;

    sget-object v6, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v5, v6}, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v5, v2}, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v2

    invoke-virtual {v4, v2}, Lio/moatwel/crypto/eddsa/Coordinate;->subtract(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v2

    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v2

    .line 84
    invoke-virtual {v3, v4}, Lio/moatwel/crypto/eddsa/Coordinate;->subtract(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v3

    invoke-virtual {v3}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v3

    .line 85
    invoke-virtual {v0, v1}, Lio/moatwel/crypto/eddsa/Coordinate;->subtract(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    invoke-virtual {v4, v0}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    invoke-virtual {v0}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    .line 86
    invoke-virtual {v4, v2}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    .line 89
    new-instance v2, Lio/moatwel/crypto/eddsa/ed448/PointEd448;

    sget-object v4, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;->ZERO:Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;

    invoke-direct {v2, v3, v0, v1, v4}, Lio/moatwel/crypto/eddsa/ed448/PointEd448;-><init>(Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;)V

    return-object v2
.end method

.method public encode()Lio/moatwel/crypto/eddsa/EncodedPoint;
    .locals 5

    .line 124
    invoke-virtual {p0}, Lio/moatwel/crypto/eddsa/ed448/PointEd448;->getAffineY()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    invoke-virtual {v0}, Lio/moatwel/crypto/eddsa/Coordinate;->getInteger()Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x39

    invoke-static {v0, v1}, Lio/moatwel/util/ArrayUtils;->toByteArray(Ljava/math/BigInteger;I)[B

    move-result-object v0

    invoke-static {v0}, Lio/moatwel/util/ByteUtils;->reverse([B)[B

    move-result-object v0

    .line 125
    invoke-static {v0, v1}, Lio/moatwel/util/ByteUtils;->paddingZeroOnTail([BI)[B

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lio/moatwel/crypto/eddsa/ed448/PointEd448;->getAffineX()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v2

    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/Coordinate;->getInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2, v1}, Lio/moatwel/util/ArrayUtils;->toByteArray(Ljava/math/BigInteger;I)[B

    move-result-object v1

    .line 127
    array-length v2, v1

    .line 128
    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    .line 129
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_0

    sub-int/2addr v3, v4

    .line 132
    aget-byte v1, v0, v3

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    goto :goto_0

    :cond_0
    sub-int/2addr v3, v4

    .line 135
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, -0x81

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 138
    :goto_0
    new-instance v1, Lio/moatwel/crypto/eddsa/ed448/EncodedPointEd448;

    invoke-direct {v1, v0}, Lio/moatwel/crypto/eddsa/ed448/EncodedPointEd448;-><init>([B)V

    return-object v1
.end method

.method public negate()Lio/moatwel/crypto/eddsa/Point;
    .locals 5

    .line 143
    new-instance v0, Lio/moatwel/crypto/eddsa/ed448/PointEd448;

    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed448/PointEd448;->x:Lio/moatwel/crypto/eddsa/Coordinate;

    invoke-virtual {v1}, Lio/moatwel/crypto/eddsa/Coordinate;->negate()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    iget-object v2, p0, Lio/moatwel/crypto/eddsa/ed448/PointEd448;->y:Lio/moatwel/crypto/eddsa/Coordinate;

    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/Coordinate;->negate()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v2

    iget-object v3, p0, Lio/moatwel/crypto/eddsa/ed448/PointEd448;->z:Lio/moatwel/crypto/eddsa/Coordinate;

    iget-object v4, p0, Lio/moatwel/crypto/eddsa/ed448/PointEd448;->t:Lio/moatwel/crypto/eddsa/Coordinate;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/moatwel/crypto/eddsa/ed448/PointEd448;-><init>(Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;)V

    return-object v0
.end method

.method public negateY()Lio/moatwel/crypto/eddsa/Point;
    .locals 5

    .line 116
    new-instance v0, Lio/moatwel/crypto/eddsa/ed448/PointEd448;

    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed448/PointEd448;->x:Lio/moatwel/crypto/eddsa/Coordinate;

    iget-object v2, p0, Lio/moatwel/crypto/eddsa/ed448/PointEd448;->y:Lio/moatwel/crypto/eddsa/Coordinate;

    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/Coordinate;->negate()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v2

    iget-object v3, p0, Lio/moatwel/crypto/eddsa/ed448/PointEd448;->z:Lio/moatwel/crypto/eddsa/Coordinate;

    iget-object v4, p0, Lio/moatwel/crypto/eddsa/ed448/PointEd448;->t:Lio/moatwel/crypto/eddsa/Coordinate;

    invoke-virtual {v4}, Lio/moatwel/crypto/eddsa/Coordinate;->negate()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lio/moatwel/crypto/eddsa/ed448/PointEd448;-><init>(Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;)V

    return-object v0
.end method

.method public scalarMultiply(Ljava/math/BigInteger;)Lio/moatwel/crypto/eddsa/Point;
    .locals 9

    .line 97
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    sget-object p1, Lio/moatwel/crypto/eddsa/ed448/PointEd448;->O:Lio/moatwel/crypto/eddsa/ed448/PointEd448;

    return-object p1

    :cond_0
    const/4 v0, 0x2

    .line 101
    new-array v1, v0, [Lio/moatwel/crypto/eddsa/Point;

    sget-object v2, Lio/moatwel/crypto/eddsa/ed448/PointEd448;->O:Lio/moatwel/crypto/eddsa/ed448/PointEd448;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x3

    .line 102
    new-array v2, v2, [Lio/moatwel/crypto/eddsa/Point;

    aput-object p0, v2, v3

    aput-object p0, v2, v4

    invoke-virtual {p0}, Lio/moatwel/crypto/eddsa/ed448/PointEd448;->negateY()Lio/moatwel/crypto/eddsa/Point;

    move-result-object v5

    aput-object v5, v2, v0

    .line 104
    invoke-static {p1}, Lio/moatwel/util/ArrayUtils;->toMutualOppositeForm(Ljava/math/BigInteger;)[I

    move-result-object p1

    .line 106
    array-length v0, p1

    move v5, v3

    :goto_0
    if-ge v5, v0, :cond_1

    aget v6, p1, v5

    .line 107
    aget-object v7, v1, v3

    invoke-virtual {v7}, Lio/moatwel/crypto/eddsa/Point;->doubling()Lio/moatwel/crypto/eddsa/Point;

    move-result-object v7

    aput-object v7, v1, v3

    rsub-int/lit8 v8, v6, 0x1

    .line 108
    aget-object v8, v2, v8

    invoke-virtual {v7, v8}, Lio/moatwel/crypto/eddsa/Point;->add(Lio/moatwel/crypto/eddsa/Point;)Lio/moatwel/crypto/eddsa/Point;

    move-result-object v7

    invoke-virtual {v7}, Lio/moatwel/crypto/eddsa/Point;->negate()Lio/moatwel/crypto/eddsa/Point;

    move-result-object v7

    aput-object v7, v1, v4

    shr-int/lit8 v7, v6, 0x1f

    xor-int/2addr v6, v7

    sub-int/2addr v6, v7

    .line 109
    aget-object v6, v1, v6

    aput-object v6, v1, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 111
    :cond_1
    aget-object p1, v1, v3

    return-object p1
.end method
