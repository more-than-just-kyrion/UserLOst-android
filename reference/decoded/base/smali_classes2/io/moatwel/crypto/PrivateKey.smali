.class public abstract Lio/moatwel/crypto/PrivateKey;
.super Ljava/lang/Object;
.source "PrivateKey.java"


# instance fields
.field protected final value:[B


# direct methods
.method protected constructor <init>([B)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lio/moatwel/crypto/PrivateKey;->value:[B

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lio/moatwel/crypto/PrivateKey;
    .locals 0

    .line 36
    invoke-static {p0}, Lio/moatwel/util/HexEncoder;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lio/moatwel/crypto/PrivateKey;->newInstance([B)Lio/moatwel/crypto/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance([B)Lio/moatwel/crypto/PrivateKey;
    .locals 3

    .line 25
    array-length v0, p0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x39

    if-ne v0, v1, :cond_0

    .line 29
    invoke-static {p0}, Lio/moatwel/crypto/eddsa/ed448/PrivateKeyEd448;->fromBytes([B)Lio/moatwel/crypto/PrivateKey;

    move-result-object p0

    return-object p0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PrivateKey byte length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " is not supported."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_1
    invoke-static {p0}, Lio/moatwel/crypto/eddsa/ed25519/PrivateKeyEd25519;->fromBytes([B)Lio/moatwel/crypto/PrivateKey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 60
    instance-of v0, p1, Lio/moatwel/crypto/PrivateKey;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 63
    :cond_0
    check-cast p1, Lio/moatwel/crypto/PrivateKey;

    .line 64
    iget-object v0, p0, Lio/moatwel/crypto/PrivateKey;->value:[B

    iget-object p1, p1, Lio/moatwel/crypto/PrivateKey;->value:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public getHexString()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lio/moatwel/crypto/PrivateKey;->value:[B

    invoke-static {v0}, Lio/moatwel/util/HexEncoder;->getString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInteger()Ljava/math/BigInteger;
    .locals 3

    .line 46
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    iget-object v2, p0, Lio/moatwel/crypto/PrivateKey;->value:[B

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public getRaw()[B
    .locals 1

    .line 42
    iget-object v0, p0, Lio/moatwel/crypto/PrivateKey;->value:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public abstract getScalarSeed(Lio/moatwel/crypto/eddsa/HashDelegate;)Ljava/math/BigInteger;
.end method

.method public hashCode()I
    .locals 1

    .line 55
    iget-object v0, p0, Lio/moatwel/crypto/PrivateKey;->value:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
