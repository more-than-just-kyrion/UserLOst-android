.class public Lio/moatwel/crypto/eddsa/ed25519/Ed25519PublicKeyDelegate;
.super Ljava/lang/Object;
.source "Ed25519PublicKeyDelegate.java"

# interfaces
.implements Lio/moatwel/crypto/eddsa/PublicKeyDelegate;


# static fields
.field private static final CURVE:Lio/moatwel/crypto/eddsa/ed25519/Curve25519;


# instance fields
.field private final hashAlgorithm:Lio/moatwel/crypto/HashAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    invoke-static {}, Lio/moatwel/crypto/eddsa/ed25519/Curve25519;->getInstance()Lio/moatwel/crypto/eddsa/ed25519/Curve25519;

    move-result-object v0

    sput-object v0, Lio/moatwel/crypto/eddsa/ed25519/Ed25519PublicKeyDelegate;->CURVE:Lio/moatwel/crypto/eddsa/ed25519/Curve25519;

    return-void
.end method

.method public constructor <init>(Lio/moatwel/crypto/HashAlgorithm;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lio/moatwel/crypto/eddsa/ed25519/Ed25519PublicKeyDelegate;->hashAlgorithm:Lio/moatwel/crypto/HashAlgorithm;

    return-void
.end method


# virtual methods
.method public generatePublicKeySeed(Lio/moatwel/crypto/PrivateKey;)[B
    .locals 3

    .line 30
    instance-of v0, p1, Lio/moatwel/crypto/eddsa/ed25519/PrivateKeyEd25519;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p1, p0}, Lio/moatwel/crypto/PrivateKey;->getScalarSeed(Lio/moatwel/crypto/eddsa/HashDelegate;)Ljava/math/BigInteger;

    move-result-object p1

    .line 37
    sget-object v0, Lio/moatwel/crypto/eddsa/ed25519/Ed25519PublicKeyDelegate;->CURVE:Lio/moatwel/crypto/eddsa/ed25519/Curve25519;

    invoke-virtual {v0}, Lio/moatwel/crypto/eddsa/ed25519/Curve25519;->getBasePoint()Lio/moatwel/crypto/eddsa/Point;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/moatwel/crypto/eddsa/Point;->scalarMultiply(Ljava/math/BigInteger;)Lio/moatwel/crypto/eddsa/Point;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Point;->encode()Lio/moatwel/crypto/eddsa/EncodedPoint;

    move-result-object p1

    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/EncodedPoint;->getValue()[B

    move-result-object p1

    return-object p1

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Public key on Curve25519 must be "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lio/moatwel/crypto/eddsa/ed25519/Ed25519PublicKeyDelegate;->CURVE:Lio/moatwel/crypto/eddsa/ed25519/Curve25519;

    .line 32
    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/ed25519/Curve25519;->getPublicKeyByteLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " byte length. Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/moatwel/crypto/PrivateKey;->getRaw()[B

    move-result-object p1

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashPrivateKey(Lio/moatwel/crypto/PrivateKey;)[B
    .locals 1

    .line 43
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/ed25519/Ed25519PublicKeyDelegate;->hashAlgorithm:Lio/moatwel/crypto/HashAlgorithm;

    invoke-virtual {p1}, Lio/moatwel/crypto/PrivateKey;->getRaw()[B

    move-result-object p1

    filled-new-array {p1}, [[B

    move-result-object p1

    invoke-static {v0, p1}, Lio/moatwel/crypto/Hashes;->hash(Lio/moatwel/crypto/HashAlgorithm;[[B)[B

    move-result-object p1

    return-object p1
.end method
