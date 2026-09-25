.class public Lio/moatwel/crypto/eddsa/ed25519/EncodedPointEd25519;
.super Lio/moatwel/crypto/eddsa/EncodedPoint;
.source "EncodedPointEd25519.java"


# static fields
.field private static final curve:Lio/moatwel/crypto/eddsa/Curve;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    invoke-static {}, Lio/moatwel/crypto/eddsa/ed25519/Curve25519;->getInstance()Lio/moatwel/crypto/eddsa/ed25519/Curve25519;

    move-result-object v0

    sput-object v0, Lio/moatwel/crypto/eddsa/ed25519/EncodedPointEd25519;->curve:Lio/moatwel/crypto/eddsa/Curve;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    .line 21
    invoke-direct {p0, p1}, Lio/moatwel/crypto/eddsa/EncodedPoint;-><init>([B)V

    .line 22
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EncodedPoint on ed25519 curve must have 32 byte length. The length of your EncodedPoint was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private recoverX(Lio/moatwel/crypto/eddsa/Coordinate;I)Lio/moatwel/crypto/eddsa/Coordinate;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/moatwel/crypto/eddsa/DecodeException;
        }
    .end annotation

    .line 53
    new-instance v0, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;-><init>(Ljava/math/BigInteger;)V

    .line 54
    invoke-virtual {p1, p1}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/moatwel/crypto/eddsa/Coordinate;->subtract(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    invoke-virtual {v1}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    .line 55
    sget-object v2, Lio/moatwel/crypto/eddsa/ed25519/EncodedPointEd25519;->curve:Lio/moatwel/crypto/eddsa/Curve;

    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/Curve;->getD()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v3

    invoke-virtual {v3, p1}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v3

    invoke-virtual {v3, p1}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/moatwel/crypto/eddsa/Coordinate;->add(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p1

    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Coordinate;->inverse()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p1

    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p1

    .line 58
    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/Curve;->getPrimePowerP()Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    const-string v3, "3"

    invoke-direct {v1, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    const-string v3, "8"

    invoke-direct {v1, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/moatwel/crypto/eddsa/Coordinate;->powerMod(Ljava/math/BigInteger;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v0}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/moatwel/crypto/eddsa/Coordinate;->subtract(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    invoke-virtual {v1}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    invoke-virtual {v1}, Lio/moatwel/crypto/eddsa/Coordinate;->getInteger()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 61
    invoke-virtual {v0, v0}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/moatwel/crypto/eddsa/Coordinate;->add(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p1

    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p1

    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Coordinate;->getInteger()Ljava/math/BigInteger;

    move-result-object p1

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-nez p1, :cond_0

    .line 62
    new-instance p1, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 63
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 64
    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/Curve;->getPrimePowerP()Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 65
    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/Curve;->getPrimePowerP()Ljava/math/BigInteger;

    move-result-object v5

    .line 63
    invoke-virtual {v1, v4, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p1, v1}, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;-><init>(Ljava/math/BigInteger;)V

    .line 62
    invoke-virtual {v0, p1}, Lio/moatwel/crypto/eddsa/Coordinate;->multiply(Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Coordinate;->mod()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_0
    new-instance p1, Lio/moatwel/crypto/eddsa/DecodeException;

    const-string p2, "EdDsa decoding failed."

    invoke-direct {p1, p2}, Lio/moatwel/crypto/eddsa/DecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lio/moatwel/crypto/eddsa/Coordinate;->getInteger()Ljava/math/BigInteger;

    move-result-object p1

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    int-to-long v3, p2

    .line 72
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 73
    new-instance p1, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;

    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/Curve;->getPrimePowerP()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v0}, Lio/moatwel/crypto/eddsa/Coordinate;->getInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/Curve;->getPrimePowerP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;-><init>(Ljava/math/BigInteger;)V

    move-object v0, p1

    :cond_2
    return-object v0
.end method

.method private recoverY([B)Lio/moatwel/crypto/eddsa/Coordinate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/moatwel/crypto/eddsa/DecodeException;
        }
    .end annotation

    .line 44
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-byte v2, p1, v0

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 45
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p1}, Lio/moatwel/util/ByteUtils;->reverse([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    .line 46
    sget-object p1, Lio/moatwel/crypto/eddsa/ed25519/EncodedPointEd25519;->curve:Lio/moatwel/crypto/eddsa/Curve;

    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Curve;->getPrimePowerP()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-ge p1, v1, :cond_0

    .line 49
    new-instance p1, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;

    invoke-direct {p1, v0}, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;-><init>(Ljava/math/BigInteger;)V

    return-object p1

    .line 47
    :cond_0
    new-instance p1, Lio/moatwel/crypto/eddsa/DecodeException;

    const-string v0, "EdDsa decoding failed. This point is not on the edwards Curve25519."

    invoke-direct {p1, v0}, Lio/moatwel/crypto/eddsa/DecodeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public decode()Lio/moatwel/crypto/eddsa/Point;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/moatwel/crypto/eddsa/DecodeException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/ed25519/EncodedPointEd25519;->value:[B

    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed25519/EncodedPointEd25519;->value:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    const/4 v1, 0x7

    .line 34
    invoke-static {v0, v1}, Lio/moatwel/util/ByteUtils;->readBit(BI)I

    move-result v0

    .line 36
    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed25519/EncodedPointEd25519;->value:[B

    invoke-direct {p0, v1}, Lio/moatwel/crypto/eddsa/ed25519/EncodedPointEd25519;->recoverY([B)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v1

    .line 38
    invoke-direct {p0, v1, v0}, Lio/moatwel/crypto/eddsa/ed25519/EncodedPointEd25519;->recoverX(Lio/moatwel/crypto/eddsa/Coordinate;I)Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object v0

    .line 40
    invoke-static {v0, v1}, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;->fromAffine(Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;)Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;

    move-result-object v0

    return-object v0
.end method
