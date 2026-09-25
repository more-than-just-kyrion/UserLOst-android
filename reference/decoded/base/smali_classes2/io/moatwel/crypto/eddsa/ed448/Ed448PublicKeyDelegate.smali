.class public Lio/moatwel/crypto/eddsa/ed448/Ed448PublicKeyDelegate;
.super Ljava/lang/Object;
.source "Ed448PublicKeyDelegate.java"

# interfaces
.implements Lio/moatwel/crypto/eddsa/PublicKeyDelegate;
.implements Lio/moatwel/crypto/eddsa/HashDelegate;


# static fields
.field private static final CURVE:Lio/moatwel/crypto/eddsa/ed448/Curve448;


# instance fields
.field private final hashAlgorithm:Lio/moatwel/crypto/HashAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    invoke-static {}, Lio/moatwel/crypto/eddsa/ed448/Curve448;->getInstance()Lio/moatwel/crypto/eddsa/ed448/Curve448;

    move-result-object v0

    sput-object v0, Lio/moatwel/crypto/eddsa/ed448/Ed448PublicKeyDelegate;->CURVE:Lio/moatwel/crypto/eddsa/ed448/Curve448;

    return-void
.end method

.method public constructor <init>(Lio/moatwel/crypto/HashAlgorithm;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lio/moatwel/crypto/eddsa/ed448/Ed448PublicKeyDelegate;->hashAlgorithm:Lio/moatwel/crypto/HashAlgorithm;

    return-void
.end method


# virtual methods
.method public generatePublicKeySeed(Lio/moatwel/crypto/PrivateKey;)[B
    .locals 3

    .line 31
    instance-of v0, p1, Lio/moatwel/crypto/eddsa/ed448/PrivateKeyEd448;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p1, p0}, Lio/moatwel/crypto/PrivateKey;->getScalarSeed(Lio/moatwel/crypto/eddsa/HashDelegate;)Ljava/math/BigInteger;

    move-result-object p1

    .line 38
    sget-object v0, Lio/moatwel/crypto/eddsa/ed448/Ed448PublicKeyDelegate;->CURVE:Lio/moatwel/crypto/eddsa/ed448/Curve448;

    invoke-virtual {v0}, Lio/moatwel/crypto/eddsa/ed448/Curve448;->getBasePoint()Lio/moatwel/crypto/eddsa/Point;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/moatwel/crypto/eddsa/Point;->scalarMultiply(Ljava/math/BigInteger;)Lio/moatwel/crypto/eddsa/Point;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/Point;->encode()Lio/moatwel/crypto/eddsa/EncodedPoint;

    move-result-object p1

    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/EncodedPoint;->getValue()[B

    move-result-object p1

    return-object p1

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Public key on Curve448 must be "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lio/moatwel/crypto/eddsa/ed448/Ed448PublicKeyDelegate;->CURVE:Lio/moatwel/crypto/eddsa/ed448/Curve448;

    .line 33
    invoke-virtual {v2}, Lio/moatwel/crypto/eddsa/ed448/Curve448;->getPublicKeyByteLength()I

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
    .locals 2

    .line 44
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/ed448/Ed448PublicKeyDelegate;->hashAlgorithm:Lio/moatwel/crypto/HashAlgorithm;

    invoke-virtual {p1}, Lio/moatwel/crypto/PrivateKey;->getRaw()[B

    move-result-object p1

    filled-new-array {p1}, [[B

    move-result-object p1

    const/16 v1, 0x72

    invoke-static {v0, v1, p1}, Lio/moatwel/crypto/Hashes;->hash(Lio/moatwel/crypto/HashAlgorithm;I[[B)[B

    move-result-object p1

    return-object p1
.end method
