.class Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;
.super Lio/moatwel/crypto/eddsa/Point;
.source "PointEd25519.java"


# static fields
.field private static final DEFAULT_Z:Lio/moatwel/crypto/eddsa/Coordinate;

.field static final O:Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;

.field private static final ONE:Lio/moatwel/crypto/eddsa/Coordinate;

.field private static final ZERO:Lio/moatwel/crypto/eddsa/Coordinate;

.field private static final curve:Lio/moatwel/crypto/eddsa/Curve;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 19
    new-instance v0, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;->DEFAULT_Z:Lio/moatwel/crypto/eddsa/Coordinate;

    .line 20
    new-instance v1, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;-><init>(Ljava/math/BigInteger;)V

    sput-object v1, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;->ONE:Lio/moatwel/crypto/eddsa/Coordinate;

    .line 21
    new-instance v2, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v2, v3}, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;-><init>(Ljava/math/BigInteger;)V

    sput-object v2, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;->ZERO:Lio/moatwel/crypto/eddsa/Coordinate;

    .line 22
    new-instance v3, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;

    invoke-direct {v3, v2, v1, v0, v2}, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;-><init>(Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;)V

    sput-object v3, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;->O:Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;

    .line 23
    invoke-static {}, Lio/moatwel/crypto/eddsa/ed25519/Curve25519;->getInstance()Lio/moatwel/crypto/eddsa/ed25519/Curve25519;

    move-result-object v0

    sput-object v0, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;->curve:Lio/moatwel/crypto/eddsa/Curve;

    return-void
.end method

.method constructor <init>(Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lio/moatwel/crypto/eddsa/Point;-><init>(Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;)V

    return-void
.end method

.method public static fromAffine(Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;
    .locals 4

    .line 36
    new-instance v0, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;

    sget-object v1, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;->DEFAULT_Z:Lio/moatwel/crypto/eddsa/Coordinate;

    .line 37
    invoke-virtual {p0, v1}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v2

    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v2

    .line 38
    invoke-virtual {p1, v1}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v3

    invoke-virtual {v3}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v3

    .line 40
    invoke-virtual {p0, p1}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p0

    invoke-virtual {p0, v1}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p0

    invoke-virtual {p0}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p0

    invoke-direct {v0, v2, v3, v1, p0}, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;-><init>(Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;)V

    return-object v0
.end method


# virtual methods
.method public final add(Lio/moatwel/crypto/eddsa/Point;)Lio/moatwel/crypto/eddsa/Point;
    .locals 11

    .line 48
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;->x:Lio/moatwel/crypto/eddsa/Coordinate;

    .line 49
    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;->y:Lio/moatwel/crypto/eddsa/Coordinate;

    .line 50
    iget-object v2, p0, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;->z:Lio/moatwel/crypto/eddsa/Coordinate;

    .line 51
    iget-object v3, p0, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;->t:Lio/moatwel/crypto/eddsa/Coordinate;

    .line 52
    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Point;->getX()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v4

    .line 53
    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Point;->getY()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v5

    .line 54
    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Point;->getZ()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v6

    .line 55
    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Point;->getT()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p1

    .line 57
    new-instance v7, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;

    sget-object v8, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;->curve:Lio/moatwel/crypto/eddsa/Curve;

    invoke-virtual {v8}, Lio/moatwel/crypto/eddsa/Curve;->getD()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v8

    invoke-virtual {v8}, Lio/moatwel/crypto/eddsa/Coordinate;->getInteger()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {v7, v8}, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;-><init>(Ljava/math/BigInteger;)V

    .line 58
    new-instance v8, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;

    sget-object v9, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v8, v9}, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;-><init>(Ljava/math/BigInteger;)V

    .line 60
    invoke-virtual {v1, v0}, Lio/moatwel/crypto/eddsa/Coordinate;->subtract(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v9

    invoke-virtual {v5, v4}, Lio/moatwel/crypto/eddsa/Coordinate;->subtract(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v9

    invoke-virtual {v9}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v9

    .line 61
    invoke-virtual {v1, v0}, Lio/moatwel/crypto/eddsa/Coordinate;->add(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    invoke-virtual {v5, v4}, Lio/moatwel/crypto/eddsa/Coordinate;->add(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    invoke-virtual {v0}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    .line 62
    invoke-virtual {v3, v8}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    invoke-virtual {v1, v7}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p1

    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p1

    .line 63
    invoke-virtual {v2, v8}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    invoke-virtual {v1, v6}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    invoke-virtual {v1}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v9}, Lio/moatwel/crypto/eddsa/Coordinate;->subtract(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v2

    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v2

    .line 65
    invoke-virtual {v1, p1}, Lio/moatwel/crypto/eddsa/Coordinate;->subtract(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v3

    invoke-virtual {v3}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v3

    .line 66
    invoke-virtual {v1, p1}, Lio/moatwel/crypto/eddsa/Coordinate;->add(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p1

    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p1

    .line 67
    invoke-virtual {v0, v9}, Lio/moatwel/crypto/eddsa/Coordinate;->add(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    invoke-virtual {v0}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    .line 69
    invoke-virtual {v2, v3}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    invoke-virtual {v1}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    .line 70
    invoke-virtual {p1, v0}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v4

    invoke-virtual {v4}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v4

    .line 71
    invoke-virtual {v2, v0}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    invoke-virtual {v0}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    .line 72
    invoke-virtual {v3, p1}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p1

    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p1

    .line 74
    new-instance v2, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;

    invoke-direct {v2, v1, v4, p1, v0}, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;-><init>(Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;)V

    return-object v2
.end method

.method public doubling()Lio/moatwel/crypto/eddsa/Point;
    .locals 8

    .line 79
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;->x:Lio/moatwel/crypto/eddsa/Coordinate;

    .line 80
    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;->y:Lio/moatwel/crypto/eddsa/Coordinate;

    .line 81
    iget-object v2, p0, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;->z:Lio/moatwel/crypto/eddsa/Coordinate;

    .line 83
    invoke-virtual {v0, v0}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v3

    invoke-virtual {v3}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v3

    .line 84
    invoke-virtual {v1, v1}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v4

    invoke-virtual {v4}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v4

    .line 85
    new-instance v5, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;

    sget-object v6, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v5, v6}, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v5, v2}, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v5

    invoke-virtual {v5, v2}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v2

    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v2

    .line 86
    invoke-virtual {v3, v4}, Lio/moatwel/crypto/eddsa/Coordinate;->add(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v5

    invoke-virtual {v5}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v5

    .line 87
    invoke-virtual {v0, v1}, Lio/moatwel/crypto/eddsa/Coordinate;->add(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v6

    invoke-virtual {v0, v1}, Lio/moatwel/crypto/eddsa/Coordinate;->add(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    invoke-virtual {v6, v0}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    invoke-virtual {v0}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    invoke-virtual {v5, v0}, Lio/moatwel/crypto/eddsa/Coordinate;->subtract(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    invoke-virtual {v0}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    .line 88
    invoke-virtual {v3, v4}, Lio/moatwel/crypto/eddsa/Coordinate;->subtract(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    invoke-virtual {v1}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    .line 89
    invoke-virtual {v2, v1}, Lio/moatwel/crypto/eddsa/Coordinate;->add(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v2

    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v2

    .line 91
    invoke-virtual {v0, v2}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v3

    invoke-virtual {v3}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v3

    .line 92
    invoke-virtual {v1, v5}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v4

    invoke-virtual {v4}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v4

    .line 93
    invoke-virtual {v0, v5}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    invoke-virtual {v0}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    .line 94
    invoke-virtual {v2, v1}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    invoke-virtual {v1}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    .line 96
    new-instance v2, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;

    invoke-direct {v2, v3, v4, v1, v0}, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;-><init>(Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;)V

    return-object v2
.end method

.method public final encode()Lio/moatwel/crypto/eddsa/EncodedPoint;
    .locals 5

    .line 131
    invoke-virtual {p0}, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;->getAffineY()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    invoke-virtual {v0}, Lio/moatwel/crypto/eddsa/Coordinate;->getInteger()Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lio/moatwel/util/ArrayUtils;->toByteArray(Ljava/math/BigInteger;I)[B

    move-result-object v0

    invoke-static {v0}, Lio/moatwel/util/ByteUtils;->reverse([B)[B

    move-result-object v0

    .line 132
    invoke-static {v0, v1}, Lio/moatwel/util/ByteUtils;->paddingZeroOnTail([BI)[B

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;->getAffineX()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v2

    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/Coordinate;->getInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2, v1}, Lio/moatwel/util/ArrayUtils;->toByteArray(Ljava/math/BigInteger;I)[B

    move-result-object v1

    .line 134
    array-length v2, v1

    .line 135
    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    .line 136
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_0

    sub-int/2addr v3, v4

    .line 139
    aget-byte v1, v0, v3

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    goto :goto_0

    :cond_0
    sub-int/2addr v3, v4

    .line 142
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, -0x81

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 145
    :goto_0
    new-instance v1, Lio/moatwel/crypto/eddsa/ed25519/EncodedPointEd25519;

    invoke-direct {v1, v0}, Lio/moatwel/crypto/eddsa/ed25519/EncodedPointEd25519;-><init>([B)V

    return-object v1
.end method

.method public negate()Lio/moatwel/crypto/eddsa/Point;
    .locals 5

    .line 150
    new-instance v0, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;

    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;->x:Lio/moatwel/crypto/eddsa/Coordinate;

    invoke-virtual {v1}, Lio/moatwel/crypto/eddsa/Coordinate;->negate()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    iget-object v2, p0, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;->y:Lio/moatwel/crypto/eddsa/Coordinate;

    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/Coordinate;->negate()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v2

    iget-object v3, p0, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;->z:Lio/moatwel/crypto/eddsa/Coordinate;

    iget-object v4, p0, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;->t:Lio/moatwel/crypto/eddsa/Coordinate;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;-><init>(Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;)V

    return-object v0
.end method

.method public negateY()Lio/moatwel/crypto/eddsa/Point;
    .locals 5

    .line 123
    new-instance v0, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;

    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;->x:Lio/moatwel/crypto/eddsa/Coordinate;

    iget-object v2, p0, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;->y:Lio/moatwel/crypto/eddsa/Coordinate;

    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/Coordinate;->negate()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v2

    iget-object v3, p0, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;->z:Lio/moatwel/crypto/eddsa/Coordinate;

    iget-object v4, p0, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;->t:Lio/moatwel/crypto/eddsa/Coordinate;

    invoke-virtual {v4}, Lio/moatwel/crypto/eddsa/Coordinate;->negate()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;-><init>(Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;)V

    return-object v0
.end method

.method public final scalarMultiply(Ljava/math/BigInteger;)Lio/moatwel/crypto/eddsa/Point;
    .locals 9

    .line 104
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    sget-object p1, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;->O:Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;

    return-object p1

    :cond_0
    const/4 v0, 0x2

    .line 108
    new-array v1, v0, [Lio/moatwel/crypto/eddsa/Point;

    sget-object v2, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;->O:Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x3

    .line 109
    new-array v2, v2, [Lio/moatwel/crypto/eddsa/Point;

    aput-object p0, v2, v3

    aput-object p0, v2, v4

    invoke-virtual {p0}, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;->negateY()Lio/moatwel/crypto/eddsa/Point;

    move-result-object v5

    aput-object v5, v2, v0

    .line 111
    invoke-static {p1}, Lio/moatwel/util/ArrayUtils;->toMutualOppositeForm(Ljava/math/BigInteger;)[I

    move-result-object p1

    .line 113
    array-length v0, p1

    move v5, v3

    :goto_0
    if-ge v5, v0, :cond_1

    aget v6, p1, v5

    .line 114
    aget-object v7, v1, v3

    invoke-virtual {v7}, Lio/moatwel/crypto/eddsa/Point;->doubling()Lio/moatwel/crypto/eddsa/Point;

    move-result-object v7

    aput-object v7, v1, v3

    rsub-int/lit8 v8, v6, 0x1

    .line 115
    aget-object v8, v2, v8

    invoke-virtual {v7, v8}, Lio/moatwel/crypto/eddsa/Point;->add(Lio/moatwel/crypto/eddsa/Point;)Lio/moatwel/crypto/eddsa/Point;

    move-result-object v7

    invoke-virtual {v7}, Lio/moatwel/crypto/eddsa/Point;->negate()Lio/moatwel/crypto/eddsa/Point;

    move-result-object v7

    aput-object v7, v1, v4

    shr-int/lit8 v7, v6, 0x1f

    xor-int/2addr v6, v7

    sub-int/2addr v6, v7

    .line 116
    aget-object v6, v1, v6

    aput-object v6, v1, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 118
    :cond_1
    aget-object p1, v1, v3

    return-object p1
.end method
