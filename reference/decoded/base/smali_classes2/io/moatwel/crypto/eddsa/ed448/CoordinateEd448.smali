.class Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;
.super Lio/moatwel/crypto/eddsa/Coordinate;
.source "CoordinateEd448.java"


# static fields
.field public static final ONE:Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;

.field public static final ZERO:Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;

.field private static final curve:Lio/moatwel/crypto/eddsa/Curve;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;->ZERO:Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;

    .line 19
    new-instance v0, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;->ONE:Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;

    .line 21
    invoke-static {}, Lio/moatwel/crypto/eddsa/ed448/Curve448;->getInstance()Lio/moatwel/crypto/eddsa/ed448/Curve448;

    move-result-object v0

    sput-object v0, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;->curve:Lio/moatwel/crypto/eddsa/Curve;

    return-void
.end method

.method constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lio/moatwel/crypto/eddsa/Coordinate;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method public add(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;
    .locals 2

    .line 29
    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Coordinate;->getInteger()Ljava/math/BigInteger;

    move-result-object p1

    .line 30
    new-instance v0, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;

    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;->value:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public divide(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;
    .locals 2

    .line 35
    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Coordinate;->getInteger()Ljava/math/BigInteger;

    move-result-object p1

    .line 36
    new-instance v0, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;

    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;->value:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public encode()Lio/moatwel/crypto/eddsa/EncodedCoordinate;
    .locals 2

    .line 73
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;->value:Ljava/math/BigInteger;

    const/16 v1, 0x39

    invoke-static {v0, v1}, Lio/moatwel/util/ArrayUtils;->toByteArray(Ljava/math/BigInteger;I)[B

    move-result-object v0

    invoke-static {v0}, Lio/moatwel/util/ByteUtils;->reverse([B)[B

    move-result-object v0

    .line 74
    new-instance v1, Lio/moatwel/crypto/eddsa/ed448/EncodedCoordinateEd448;

    invoke-direct {v1, v0}, Lio/moatwel/crypto/eddsa/ed448/EncodedCoordinateEd448;-><init>([B)V

    return-object v1
.end method

.method public inverse()Lio/moatwel/crypto/eddsa/Coordinate;
    .locals 3

    .line 58
    new-instance v0, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;

    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;->value:Ljava/math/BigInteger;

    sget-object v2, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;->curve:Lio/moatwel/crypto/eddsa/Curve;

    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/Curve;->getPrimePowerP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public mod()Lio/moatwel/crypto/eddsa/Coordinate;
    .locals 3

    .line 53
    new-instance v0, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;

    invoke-virtual {p0}, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;->getInteger()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;->curve:Lio/moatwel/crypto/eddsa/Curve;

    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/Curve;->getPrimePowerP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;
    .locals 2

    .line 41
    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Coordinate;->getInteger()Ljava/math/BigInteger;

    move-result-object p1

    .line 42
    new-instance v0, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;

    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;->value:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public negate()Lio/moatwel/crypto/eddsa/Coordinate;
    .locals 2

    .line 68
    new-instance v0, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;

    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;->value:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public powerMod(Ljava/math/BigInteger;)Lio/moatwel/crypto/eddsa/Coordinate;
    .locals 3

    .line 63
    new-instance v0, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;

    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;->value:Ljava/math/BigInteger;

    sget-object v2, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;->curve:Lio/moatwel/crypto/eddsa/Curve;

    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/Curve;->getPrimePowerP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public subtract(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;
    .locals 2

    .line 47
    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Coordinate;->getInteger()Ljava/math/BigInteger;

    move-result-object p1

    .line 48
    new-instance v0, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;

    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;->value:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method
