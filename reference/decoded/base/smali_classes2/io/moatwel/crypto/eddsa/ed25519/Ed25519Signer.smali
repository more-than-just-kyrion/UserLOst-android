.class public Lio/moatwel/crypto/eddsa/ed25519/Ed25519Signer;
.super Ljava/lang/Object;
.source "Ed25519Signer.java"

# interfaces
.implements Lio/moatwel/crypto/EdDsaSigner;


# static fields
.field private static final CURVE:Lio/moatwel/crypto/eddsa/Curve;


# instance fields
.field private final hashAlgorithm:Lio/moatwel/crypto/HashAlgorithm;

.field private final schemeProvider:Lio/moatwel/crypto/eddsa/SchemeProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    invoke-static {}, Lio/moatwel/crypto/eddsa/ed25519/Curve25519;->getInstance()Lio/moatwel/crypto/eddsa/ed25519/Curve25519;

    move-result-object v0

    sput-object v0, Lio/moatwel/crypto/eddsa/ed25519/Ed25519Signer;->CURVE:Lio/moatwel/crypto/eddsa/Curve;

    return-void
.end method

.method public constructor <init>(Lio/moatwel/crypto/HashAlgorithm;Lio/moatwel/crypto/eddsa/SchemeProvider;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lio/moatwel/crypto/eddsa/ed25519/Ed25519Signer;->hashAlgorithm:Lio/moatwel/crypto/HashAlgorithm;

    .line 37
    iput-object p2, p0, Lio/moatwel/crypto/eddsa/ed25519/Ed25519Signer;->schemeProvider:Lio/moatwel/crypto/eddsa/SchemeProvider;

    return-void
.end method

.method private beNonNullContext([B)[B
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 113
    new-array p1, p1, [B

    :cond_0
    return-object p1
.end method

.method private checkContextLength([B)V
    .locals 1

    .line 118
    array-length p1, p1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    return-void

    .line 119
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "context length in byte must be less than 256 bytes."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public sign(Lio/moatwel/crypto/KeyPair;[B[B)Lio/moatwel/crypto/Signature;
    .locals 7

    .line 42
    invoke-direct {p0, p3}, Lio/moatwel/crypto/eddsa/ed25519/Ed25519Signer;->beNonNullContext([B)[B

    move-result-object p3

    .line 43
    invoke-direct {p0, p3}, Lio/moatwel/crypto/eddsa/ed25519/Ed25519Signer;->checkContextLength([B)V

    .line 44
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/ed25519/Ed25519Signer;->schemeProvider:Lio/moatwel/crypto/eddsa/SchemeProvider;

    invoke-virtual {v0}, Lio/moatwel/crypto/eddsa/SchemeProvider;->getPublicKeyDelegate()Lio/moatwel/crypto/eddsa/PublicKeyDelegate;

    move-result-object v0

    .line 45
    invoke-virtual {p1}, Lio/moatwel/crypto/KeyPair;->getPrivateKey()Lio/moatwel/crypto/PrivateKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/moatwel/crypto/eddsa/PublicKeyDelegate;->hashPrivateKey(Lio/moatwel/crypto/PrivateKey;)[B

    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lio/moatwel/crypto/KeyPair;->getPrivateKey()Lio/moatwel/crypto/PrivateKey;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/moatwel/crypto/PrivateKey;->getScalarSeed(Lio/moatwel/crypto/eddsa/HashDelegate;)Ljava/math/BigInteger;

    move-result-object v0

    .line 50
    iget-object v2, p0, Lio/moatwel/crypto/eddsa/ed25519/Ed25519Signer;->schemeProvider:Lio/moatwel/crypto/eddsa/SchemeProvider;

    invoke-virtual {v2, p3}, Lio/moatwel/crypto/eddsa/SchemeProvider;->dom([B)[B

    move-result-object p3

    const/16 v2, 0x20

    .line 51
    invoke-static {v1, v2}, Lio/moatwel/util/ByteUtils;->split([BI)[[B

    move-result-object v1

    const/4 v3, 0x1

    aget-object v1, v1, v3

    .line 52
    iget-object v4, p0, Lio/moatwel/crypto/eddsa/ed25519/Ed25519Signer;->schemeProvider:Lio/moatwel/crypto/eddsa/SchemeProvider;

    invoke-virtual {v4, p2}, Lio/moatwel/crypto/eddsa/SchemeProvider;->preHash([B)[B

    move-result-object p2

    .line 54
    iget-object v4, p0, Lio/moatwel/crypto/eddsa/ed25519/Ed25519Signer;->hashAlgorithm:Lio/moatwel/crypto/HashAlgorithm;

    filled-new-array {p3, v1, p2}, [[B

    move-result-object v1

    invoke-static {v4, v1}, Lio/moatwel/crypto/Hashes;->hash(Lio/moatwel/crypto/HashAlgorithm;[[B)[B

    move-result-object v1

    .line 55
    invoke-static {v1}, Lio/moatwel/util/ByteUtils;->reverse([B)[B

    move-result-object v1

    .line 56
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 59
    sget-object v1, Lio/moatwel/crypto/eddsa/ed25519/Ed25519Signer;->CURVE:Lio/moatwel/crypto/eddsa/Curve;

    invoke-virtual {v1}, Lio/moatwel/crypto/eddsa/Curve;->getBasePoint()Lio/moatwel/crypto/eddsa/Point;

    move-result-object v5

    invoke-virtual {v5, v4}, Lio/moatwel/crypto/eddsa/Point;->scalarMultiply(Ljava/math/BigInteger;)Lio/moatwel/crypto/eddsa/Point;

    move-result-object v5

    .line 60
    invoke-virtual {v5}, Lio/moatwel/crypto/eddsa/Point;->encode()Lio/moatwel/crypto/eddsa/EncodedPoint;

    move-result-object v5

    invoke-virtual {v5}, Lio/moatwel/crypto/eddsa/EncodedPoint;->getValue()[B

    move-result-object v5

    .line 63
    iget-object v6, p0, Lio/moatwel/crypto/eddsa/ed25519/Ed25519Signer;->hashAlgorithm:Lio/moatwel/crypto/HashAlgorithm;

    invoke-virtual {p1}, Lio/moatwel/crypto/KeyPair;->getPublicKey()Lio/moatwel/crypto/PublicKey;

    move-result-object p1

    invoke-virtual {p1}, Lio/moatwel/crypto/PublicKey;->getRaw()[B

    move-result-object p1

    filled-new-array {p3, v5, p1, p2}, [[B

    move-result-object p1

    invoke-static {v6, p1}, Lio/moatwel/crypto/Hashes;->hash(Lio/moatwel/crypto/HashAlgorithm;[[B)[B

    move-result-object p1

    .line 66
    new-instance p2, Ljava/math/BigInteger;

    invoke-static {p1}, Lio/moatwel/util/ByteUtils;->reverse([B)[B

    move-result-object p1

    invoke-direct {p2, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 68
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

    .line 69
    new-instance p2, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;

    invoke-direct {p2, p1}, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p2}, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;->encode()Lio/moatwel/crypto/eddsa/EncodedCoordinate;

    move-result-object p1

    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/EncodedCoordinate;->getValue()[B

    move-result-object p1

    .line 72
    new-instance p2, Lio/moatwel/crypto/eddsa/ed25519/SignatureEd25519;

    invoke-static {v5, v2}, Lio/moatwel/util/ByteUtils;->paddingZeroOnTail([BI)[B

    move-result-object p3

    .line 73
    invoke-static {p1, v2}, Lio/moatwel/util/ByteUtils;->paddingZeroOnTail([BI)[B

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lio/moatwel/crypto/eddsa/ed25519/SignatureEd25519;-><init>([B[B)V

    return-object p2
.end method

.method public verify(Lio/moatwel/crypto/KeyPair;[B[BLio/moatwel/crypto/Signature;)Z
    .locals 0

    .line 78
    invoke-virtual {p1}, Lio/moatwel/crypto/KeyPair;->getPublicKey()Lio/moatwel/crypto/PublicKey;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/moatwel/crypto/eddsa/ed25519/Ed25519Signer;->verify(Lio/moatwel/crypto/PublicKey;[B[BLio/moatwel/crypto/Signature;)Z

    move-result p1

    return p1
.end method

.method public verify(Lio/moatwel/crypto/PublicKey;[B[BLio/moatwel/crypto/Signature;)Z
    .locals 4

    .line 84
    :try_start_0
    invoke-direct {p0, p3}, Lio/moatwel/crypto/eddsa/ed25519/Ed25519Signer;->beNonNullContext([B)[B

    move-result-object p3

    .line 85
    invoke-direct {p0, p3}, Lio/moatwel/crypto/eddsa/ed25519/Ed25519Signer;->checkContextLength([B)V

    .line 87
    invoke-virtual {p4}, Lio/moatwel/crypto/Signature;->getR()[B

    move-result-object v0

    .line 88
    new-instance v1, Lio/moatwel/crypto/eddsa/ed25519/EncodedPointEd25519;

    invoke-direct {v1, v0}, Lio/moatwel/crypto/eddsa/ed25519/EncodedPointEd25519;-><init>([B)V

    .line 89
    invoke-virtual {v1}, Lio/moatwel/crypto/eddsa/EncodedPoint;->decode()Lio/moatwel/crypto/eddsa/Point;

    move-result-object v0

    .line 91
    new-instance v1, Lio/moatwel/crypto/eddsa/ed25519/EncodedPointEd25519;

    invoke-virtual {p1}, Lio/moatwel/crypto/PublicKey;->getRaw()[B

    move-result-object p1

    invoke-direct {v1, p1}, Lio/moatwel/crypto/eddsa/ed25519/EncodedPointEd25519;-><init>([B)V

    .line 92
    invoke-virtual {v1}, Lio/moatwel/crypto/eddsa/EncodedPoint;->decode()Lio/moatwel/crypto/eddsa/Point;

    move-result-object p1

    .line 94
    new-instance v1, Lio/moatwel/crypto/eddsa/ed25519/EncodedCoordinateEd25519;

    invoke-virtual {p4}, Lio/moatwel/crypto/Signature;->getS()[B

    move-result-object p4

    invoke-direct {v1, p4}, Lio/moatwel/crypto/eddsa/ed25519/EncodedCoordinateEd25519;-><init>([B)V

    .line 95
    invoke-virtual {v1}, Lio/moatwel/crypto/eddsa/EncodedCoordinate;->decode()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p4

    .line 97
    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed25519/Ed25519Signer;->schemeProvider:Lio/moatwel/crypto/eddsa/SchemeProvider;

    invoke-virtual {v1, p3}, Lio/moatwel/crypto/eddsa/SchemeProvider;->dom([B)[B

    move-result-object p3

    .line 98
    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed25519/Ed25519Signer;->schemeProvider:Lio/moatwel/crypto/eddsa/SchemeProvider;

    invoke-virtual {v1, p2}, Lio/moatwel/crypto/eddsa/SchemeProvider;->preHash([B)[B

    move-result-object p2

    .line 99
    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed25519/Ed25519Signer;->hashAlgorithm:Lio/moatwel/crypto/HashAlgorithm;

    invoke-virtual {v0}, Lio/moatwel/crypto/eddsa/Point;->encode()Lio/moatwel/crypto/eddsa/EncodedPoint;

    move-result-object v2

    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/EncodedPoint;->getValue()[B

    move-result-object v2

    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Point;->encode()Lio/moatwel/crypto/eddsa/EncodedPoint;

    move-result-object v3

    invoke-virtual {v3}, Lio/moatwel/crypto/eddsa/EncodedPoint;->getValue()[B

    move-result-object v3

    filled-new-array {p3, v2, v3, p2}, [[B

    move-result-object p2

    invoke-static {v1, p2}, Lio/moatwel/crypto/Hashes;->hash(Lio/moatwel/crypto/HashAlgorithm;[[B)[B

    move-result-object p2

    .line 100
    new-instance p3, Lio/moatwel/crypto/eddsa/ed25519/EncodedCoordinateEd25519;

    invoke-direct {p3, p2}, Lio/moatwel/crypto/eddsa/ed25519/EncodedCoordinateEd25519;-><init>([B)V

    invoke-virtual {p3}, Lio/moatwel/crypto/eddsa/ed25519/EncodedCoordinateEd25519;->decode()Lio/moatwel/crypto/eddsa/Coordinate;

    move-result-object p2

    .line 102
    invoke-virtual {p2}, Lio/moatwel/crypto/eddsa/Coordinate;->getInteger()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/moatwel/crypto/eddsa/Point;->scalarMultiply(Ljava/math/BigInteger;)Lio/moatwel/crypto/eddsa/Point;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/moatwel/crypto/eddsa/Point;->add(Lio/moatwel/crypto/eddsa/Point;)Lio/moatwel/crypto/eddsa/Point;

    move-result-object p1

    .line 104
    sget-object p2, Lio/moatwel/crypto/eddsa/ed25519/Ed25519Signer;->CURVE:Lio/moatwel/crypto/eddsa/Curve;

    invoke-virtual {p2}, Lio/moatwel/crypto/eddsa/Curve;->getBasePoint()Lio/moatwel/crypto/eddsa/Point;

    move-result-object p2

    invoke-virtual {p4}, Lio/moatwel/crypto/eddsa/Coordinate;->getInteger()Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/moatwel/crypto/eddsa/Point;->scalarMultiply(Ljava/math/BigInteger;)Lio/moatwel/crypto/eddsa/Point;

    move-result-object p2

    .line 106
    invoke-virtual {p1, p2}, Lio/moatwel/crypto/eddsa/Point;->isEqual(Lio/moatwel/crypto/eddsa/Point;)Z

    move-result p1
    :try_end_0
    .catch Lio/moatwel/crypto/eddsa/DecodeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
