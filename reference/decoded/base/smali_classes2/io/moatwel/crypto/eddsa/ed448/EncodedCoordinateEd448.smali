.class Lio/moatwel/crypto/eddsa/ed448/EncodedCoordinateEd448;
.super Lio/moatwel/crypto/eddsa/EncodedCoordinate;
.source "EncodedCoordinateEd448.java"


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lio/moatwel/crypto/eddsa/EncodedCoordinate;-><init>([B)V

    return-void
.end method


# virtual methods
.method public decode()Lio/moatwel/crypto/eddsa/Coordinate;
    .locals 4

    .line 17
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/ed448/EncodedCoordinateEd448;->value:[B

    invoke-static {v0}, Lio/moatwel/util/ByteUtils;->reverse([B)[B

    move-result-object v0

    .line 18
    new-instance v1, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;

    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v1, v2}, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;-><init>(Ljava/math/BigInteger;)V

    return-object v1
.end method
