.class Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;
.super Lio/moatwel/crypto/eddsa/Coordinate;
.source "CoordinateEd25519.java"


# static fields
.field public static final ONE:Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;

.field private static final curve:Lio/moatwel/crypto/eddsa/Curve;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;->ONE:Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;

    .line 20
    invoke-static {}, Lio/moatwel/crypto/eddsa/ed25519/Curve25519;->getInstance()Lio/moatwel/crypto/eddsa/ed25519/Curve25519;

    move-result-object v0

    sput-object v0, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;->curve:Lio/moatwel/crypto/eddsa/Curve;

    return-void
.end method

.method constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lio/moatwel/crypto/eddsa/Coordinate;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method public final add(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;
    .locals 2

    .line 28
    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Coordinate;->getInteger()Ljava/math/BigInteger;

    move-result-object p1

    .line 29
    new-instance v0, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;

    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;->value:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public final divide(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;
    .locals 2

    .line 34
    new-instance v0, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;

    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;->value:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Coordinate;->getInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public encode()Lio/moatwel/crypto/eddsa/EncodedCoordinate;
    .locals 2

    .line 71
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;->value:Ljava/math/BigInteger;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lio/moatwel/util/ArrayUtils;->toByteArray(Ljava/math/BigInteger;I)[B

    move-result-object v0

    invoke-static {v0}, Lio/moatwel/util/ByteUtils;->reverse([B)[B

    move-result-object v0

    .line 72
    new-instance v1, Lio/moatwel/crypto/eddsa/ed25519/EncodedCoordinateEd25519;

    invoke-direct {v1, v0}, Lio/moatwel/crypto/eddsa/ed25519/EncodedCoordinateEd25519;-><init>([B)V

    return-object v1
.end method

.method public final inverse()Lio/moatwel/crypto/eddsa/Coordinate;
    .locals 3

    .line 56
    new-instance v0, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;

    invoke-virtual {p0}, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;->getInteger()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;->curve:Lio/moatwel/crypto/eddsa/Curve;

    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/Curve;->getPrimePowerP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public final mod()Lio/moatwel/crypto/eddsa/Coordinate;
    .locals 3

    .line 51
    new-instance v0, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;

    invoke-virtual {p0}, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;->getInteger()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;->curve:Lio/moatwel/crypto/eddsa/Curve;

    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/Curve;->getPrimePowerP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public final multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;
    .locals 2

    .line 39
    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Coordinate;->getInteger()Ljava/math/BigInteger;

    move-result-object p1

    .line 40
    new-instance v0, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;

    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;->value:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public negate()Lio/moatwel/crypto/eddsa/Coordinate;
    .locals 2

    .line 66
    new-instance v0, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;

    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;->value:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public powerMod(Ljava/math/BigInteger;)Lio/moatwel/crypto/eddsa/Coordinate;
    .locals 3

    .line 61
    new-instance v0, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;

    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;->value:Ljava/math/BigInteger;

    sget-object v2, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;->curve:Lio/moatwel/crypto/eddsa/Curve;

    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/Curve;->getPrimePowerP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public final subtract(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;
    .locals 2

    .line 45
    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Coordinate;->getInteger()Ljava/math/BigInteger;

    move-result-object p1

    .line 46
    new-instance v0, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;

    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;->value:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method
