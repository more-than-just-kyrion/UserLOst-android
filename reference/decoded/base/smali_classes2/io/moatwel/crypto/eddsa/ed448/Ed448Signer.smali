.class public Lio/moatwel/crypto/eddsa/ed448/Ed448Signer;
.super Ljava/lang/Object;
.source "Ed448Signer.java"

# interfaces
.implements Lio/moatwel/crypto/EdDsaSigner;


# static fields
.field private static final CURVE:Lio/moatwel/crypto/eddsa/Curve;


# instance fields
.field private final algorithm:Lio/moatwel/crypto/HashAlgorithm;

.field private final scheme:Lio/moatwel/crypto/eddsa/SchemeProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    invoke-static {}, Lio/moatwel/crypto/eddsa/ed448/Curve448;->getInstance()Lio/moatwel/crypto/eddsa/ed448/Curve448;

    move-result-object v0

    sput-object v0, Lio/moatwel/crypto/eddsa/ed448/Ed448Signer;->CURVE:Lio/moatwel/crypto/eddsa/Curve;

    return-void
.end method

.method public constructor <init>(Lio/moatwel/crypto/HashAlgorithm;Lio/moatwel/crypto/eddsa/SchemeProvider;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lio/moatwel/crypto/eddsa/ed448/Ed448Signer;->algorithm:Lio/moatwel/crypto/HashAlgorithm;

    .line 35
    iput-object p2, p0, Lio/moatwel/crypto/eddsa/ed448/Ed448Signer;->scheme:Lio/moatwel/crypto/eddsa/SchemeProvider;

    return-void
.end method

.method private beNonNullContext([B)[B
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 111
    new-array p1, p1, [B

    :cond_0
    return-object p1
.end method

.method private checkContextLength([B)V
    .locals 1

    .line 116
    array-length p1, p1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    return-void

    .line 117
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "context length in byte must be less than 256 bytes."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public sign(Lio/moatwel/crypto/KeyPair;[B[B)Lio/moatwel/crypto/Signature;
    .locals 8

    .line 40
    invoke-direct {p0, p3}, Lio/moatwel/crypto/eddsa/ed448/Ed448Signer;->beNonNullContext([B)[B

    move-result-object p3

    .line 41
    invoke-direct {p0, p3}, Lio/moatwel/crypto/eddsa/ed448/Ed448Signer;->checkContextLength([B)V

    .line 43
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/ed448/Ed448Signer;->scheme:Lio/moatwel/crypto/eddsa/SchemeProvider;

    invoke-virtual {v0}, Lio/moatwel/crypto/eddsa/SchemeProvider;->getPublicKeyDelegate()Lio/moatwel/crypto/eddsa/PublicKeyDelegate;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Lio/moatwel/crypto/KeyPair;->getPrivateKey()Lio/moatwel/crypto/PrivateKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/moatwel/crypto/eddsa/PublicKeyDelegate;->hashPrivateKey(Lio/moatwel/crypto/PrivateKey;)[B

    move-result-object v1

    .line 46
    invoke-virtual {p1}, Lio/moatwel/crypto/KeyPair;->getPrivateKey()Lio/moatwel/crypto/PrivateKey;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/moatwel/crypto/PrivateKey;->getScalarSeed(Lio/moatwel/crypto/eddsa/HashDelegate;)Ljava/math/BigInteger;

    move-result-object v0

    .line 48
    iget-object v2, p0, Lio/moatwel/crypto/eddsa/ed448/Ed448Signer;->scheme:Lio/moatwel/crypto/eddsa/SchemeProvider;

    invoke-virtual {v2, p3}, Lio/moatwel/crypto/eddsa/SchemeProvider;->dom([B)[B

    move-result-object p3

    const/16 v2, 0x39

    .line 49
    invoke-static {v1, v2}, Lio/moatwel/util/ByteUtils;->split([BI)[[B

    move-result-object v1

    const/4 v3, 0x1

    aget-object v1, v1, v3

    .line 50
    iget-object v4, p0, Lio/moatwel/crypto/eddsa/ed448/Ed448Signer;->scheme:Lio/moatwel/crypto/eddsa/SchemeProvider;

    invoke-virtual {v4, p2}, Lio/moatwel/crypto/eddsa/SchemeProvider;->preHash([B)[B

    move-result-object p2

    .line 52
    iget-object v4, p0, Lio/moatwel/crypto/eddsa/ed448/Ed448Signer;->algorithm:Lio/moatwel/crypto/HashAlgorithm;

    filled-new-array {p3, v1, p2}, [[B

    move-result-object v1

    const/16 v5, 0x72

    invoke-static {v4, v5, v1}, Lio/moatwel/crypto/Hashes;->hash(Lio/moatwel/crypto/HashAlgorithm;I[[B)[B

    move-result-object v1

    .line 53
    invoke-static {v1}, Lio/moatwel/util/ByteUtils;->reverse([B)[B

    move-result-object v1

    .line 54
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v1, Lio/moatwel/crypto/eddsa/ed448/Ed448Signer;->CURVE:Lio/moatwel/crypto/eddsa/Curve;

    invoke-virtual {v1}, Lio/moatwel/crypto/eddsa/Curve;->getPrimeL()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 56
    invoke-virtual {v1}, Lio/moatwel/crypto/eddsa/Curve;->getBasePoint()Lio/moatwel/crypto/eddsa/Point;

    move-result-object v6

    invoke-virtual {v6, v4}, Lio/moatwel/crypto/eddsa/Point;->scalarMultiply(Ljava/math/BigInteger;)Lio/moatwel/crypto/eddsa/Point;

    move-result-object v6

    .line 57
    invoke-virtual {v6}, Lio/moatwel/crypto/eddsa/Point;->encode()Lio/moatwel/crypto/eddsa/EncodedPoint;

    move-result-object v6

    invoke-virtual {v6}, Lio/moatwel/crypto/eddsa/EncodedPoint;->getValue()[B

    move-result-object v6

    .line 59
    iget-object v7, p0, Lio/moatwel/crypto/eddsa/ed448/Ed448Signer;->algorithm:Lio/moatwel/crypto/HashAlgorithm;

    invoke-virtual {p1}, Lio/moatwel/crypto/KeyPair;->getPublicKey()Lio/moatwel/crypto/PublicKey;

    move-result-object p1

    invoke-virtual {p1}, Lio/moatwel/crypto/PublicKey;->getRaw()[B

    move-result-object p1

    filled-new-array {p3, v6, p1, p2}, [[B

    move-result-object p1

    invoke-static {v7, v5, p1}, Lio/moatwel/crypto/Hashes;->hash(Lio/moatwel/crypto/HashAlgorithm;I[[B)[B

    move-result-object p1

    .line 61
    new-instance p2, Ljava/math/BigInteger;

    invoke-static {p1}, Lio/moatwel/util/ByteUtils;->reverse([B)[B

    move-result-object p1

    invoke-direct {p2, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 63
    invoke-virtual {v1}, Lio/moatwel/crypto/eddsa/Curve;->getPrimeL()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v1}, Lio/moatwel/crypto/eddsa/Curve;->getPrimeL()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 64
    new-instance p2, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;

    invoke-direct {p2, p1}, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p2}, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;->encode()Lio/moatwel/crypto/eddsa/EncodedCoordinate;

    move-result-object p1

    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/EncodedCoordinate;->getValue()[B

    move-result-object p1

    .line 66
    new-instance p2, Lio/moatwel/crypto/eddsa/ed448/SignatureEd448;

    invoke-static {v6, v2}, Lio/moatwel/util/ByteUtils;->paddingZeroOnTail([BI)[B

    move-result-object p3

    .line 67
    invoke-static {p1, v2}, Lio/moatwel/util/ByteUtils;->paddingZeroOnTail([BI)[B

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lio/moatwel/crypto/eddsa/ed448/SignatureEd448;-><init>([B[B)V

    return-object p2
.end method

.method public verify(Lio/moatwel/crypto/KeyPair;[B[BLio/moatwel/crypto/Signature;)Z
    .locals 0

    .line 72
    invoke-virtual {p1}, Lio/moatwel/crypto/KeyPair;->getPublicKey()Lio/moatwel/crypto/PublicKey;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/moatwel/crypto/eddsa/ed448/Ed448Signer;->verify(Lio/moatwel/crypto/PublicKey;[B[BLio/moatwel/crypto/Signature;)Z

    move-result p1

    return p1
.end method

.method public verify(Lio/moatwel/crypto/PublicKey;[B[BLio/moatwel/crypto/Signature;)Z
    .locals 6

    const/4 v0, 0x0

    .line 78
    :try_start_0
    invoke-direct {p0, p3}, Lio/moatwel/crypto/eddsa/ed448/Ed448Signer;->beNonNullContext([B)[B

    move-result-object p3

    .line 79
    invoke-direct {p0, p3}, Lio/moatwel/crypto/eddsa/ed448/Ed448Signer;->checkContextLength([B)V

    .line 81
    invoke-virtual {p4}, Lio/moatwel/crypto/Signature;->getR()[B

    move-result-object v1

    .line 82
    new-instance v2, Lio/moatwel/crypto/eddsa/ed448/EncodedPointEd448;

    invoke-direct {v2, v1}, Lio/moatwel/crypto/eddsa/ed448/EncodedPointEd448;-><init>([B)V

    .line 83
    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/EncodedPoint;->decode()Lio/moatwel/crypto/eddsa/Point;

    move-result-object v1

    .line 85
    new-instance v2, Lio/moatwel/crypto/eddsa/ed448/EncodedPointEd448;

    invoke-virtual {p1}, Lio/moatwel/crypto/PublicKey;->getRaw()[B

    move-result-object p1

    invoke-direct {v2, p1}, Lio/moatwel/crypto/eddsa/ed448/EncodedPointEd448;-><init>([B)V

    .line 86
    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/EncodedPoint;->decode()Lio/moatwel/crypto/eddsa/Point;

    move-result-object p1

    .line 88
    new-instance v2, Lio/moatwel/crypto/eddsa/ed448/EncodedCoordinateEd448;

    invoke-virtual {p4}, Lio/moatwel/crypto/Signature;->getS()[B

    move-result-object p4

    invoke-direct {v2, p4}, Lio/moatwel/crypto/eddsa/ed448/EncodedCoordinateEd448;-><init>([B)V

    .line 89
    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/EncodedCoordinate;->decode()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p4

    invoke-virtual {p4}, Lio/moatwel/crypto/eddsa/Coordinate;->getInteger()Ljava/math/BigInteger;

    move-result-object p4

    .line 90
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p4, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_1

    sget-object v2, Lio/moatwel/crypto/eddsa/ed448/Ed448Signer;->CURVE:Lio/moatwel/crypto/eddsa/Curve;

    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/Curve;->getPrimeL()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object v3, p0, Lio/moatwel/crypto/eddsa/ed448/Ed448Signer;->scheme:Lio/moatwel/crypto/eddsa/SchemeProvider;

    invoke-virtual {v3, p3}, Lio/moatwel/crypto/eddsa/SchemeProvider;->dom([B)[B

    move-result-object p3

    .line 95
    iget-object v3, p0, Lio/moatwel/crypto/eddsa/ed448/Ed448Signer;->scheme:Lio/moatwel/crypto/eddsa/SchemeProvider;

    invoke-virtual {v3, p2}, Lio/moatwel/crypto/eddsa/SchemeProvider;->preHash([B)[B

    move-result-object p2

    .line 96
    iget-object v3, p0, Lio/moatwel/crypto/eddsa/ed448/Ed448Signer;->algorithm:Lio/moatwel/crypto/HashAlgorithm;

    invoke-virtual {v1}, Lio/moatwel/crypto/eddsa/Point;->encode()Lio/moatwel/crypto/eddsa/EncodedPoint;

    move-result-object v4

    invoke-virtual {v4}, Lio/moatwel/crypto/eddsa/EncodedPoint;->getValue()[B

    move-result-object v4

    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Point;->encode()Lio/moatwel/crypto/eddsa/EncodedPoint;

    move-result-object v5

    invoke-virtual {v5}, Lio/moatwel/crypto/eddsa/EncodedPoint;->getValue()[B

    move-result-object v5

    filled-new-array {p3, v4, v5, p2}, [[B

    move-result-object p2

    const/16 p3, 0x72

    invoke-static {v3, p3, p2}, Lio/moatwel/crypto/Hashes;->hash(Lio/moatwel/crypto/HashAlgorithm;I[[B)[B

    move-result-object p2

    .line 98
    new-instance p3, Lio/moatwel/crypto/eddsa/ed448/EncodedCoordinateEd448;

    invoke-direct {p3, p2}, Lio/moatwel/crypto/eddsa/ed448/EncodedCoordinateEd448;-><init>([B)V

    invoke-virtual {p3}, Lio/moatwel/crypto/eddsa/ed448/EncodedCoordinateEd448;->decode()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p2

    invoke-virtual {p2}, Lio/moatwel/crypto/eddsa/Coordinate;->getInteger()Ljava/math/BigInteger;

    move-result-object p2

    .line 100
    invoke-virtual {p1, p2}, Lio/moatwel/crypto/eddsa/Point;->scalarMultiply(Ljava/math/BigInteger;)Lio/moatwel/crypto/eddsa/Point;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/moatwel/crypto/eddsa/Point;->add(Lio/moatwel/crypto/eddsa/Point;)Lio/moatwel/crypto/eddsa/Point;

    move-result-object p1

    .line 102
    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/Curve;->getBasePoint()Lio/moatwel/crypto/eddsa/Point;

    move-result-object p2

    invoke-virtual {p2, p4}, Lio/moatwel/crypto/eddsa/Point;->scalarMultiply(Ljava/math/BigInteger;)Lio/moatwel/crypto/eddsa/Point;

    move-result-object p2

    .line 104
    invoke-virtual {p1, p2}, Lio/moatwel/crypto/eddsa/Point;->isEqual(Lio/moatwel/crypto/eddsa/Point;)Z

    move-result p1
    :try_end_0
    .catch Lio/moatwel/crypto/eddsa/DecodeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method
