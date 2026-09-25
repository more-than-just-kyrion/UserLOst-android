.class public Lio/moatwel/crypto/eddsa/ed25519/PrivateKeyEd25519;
.super Lio/moatwel/crypto/PrivateKey;
.source "PrivateKeyEd25519.java"


# direct methods
.method private constructor <init>([B)V
    .locals 1

    .line 14
    invoke-direct {p0, p1}, Lio/moatwel/crypto/PrivateKey;-><init>([B)V

    .line 15
    array-length p1, p1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "PrivateKey on ed25519 curve must have 32 byte length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static fromBytes([B)Lio/moatwel/crypto/PrivateKey;
    .locals 1

    .line 25
    new-instance v0, Lio/moatwel/crypto/eddsa/ed25519/PrivateKeyEd25519;

    invoke-direct {v0, p0}, Lio/moatwel/crypto/eddsa/ed25519/PrivateKeyEd25519;-><init>([B)V

    return-object v0
.end method

.method public static fromHexString(Ljava/lang/String;)Lio/moatwel/crypto/PrivateKey;
    .locals 1

    .line 21
    new-instance v0, Lio/moatwel/crypto/eddsa/ed25519/PrivateKeyEd25519;

    invoke-static {p0}, Lio/moatwel/util/HexEncoder;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lio/moatwel/crypto/eddsa/ed25519/PrivateKeyEd25519;-><init>([B)V

    return-object v0
.end method

.method public static random()Lio/moatwel/crypto/PrivateKey;
    .locals 2

    const/16 v0, 0x20

    .line 29
    new-array v0, v0, [B

    .line 30
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 31
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 32
    new-instance v1, Lio/moatwel/crypto/eddsa/ed25519/PrivateKeyEd25519;

    invoke-direct {v1, v0}, Lio/moatwel/crypto/eddsa/ed25519/PrivateKeyEd25519;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method public getScalarSeed(Lio/moatwel/crypto/eddsa/HashDelegate;)Ljava/math/BigInteger;
    .locals 2

    .line 37
    invoke-interface {p1, p0}, Lio/moatwel/crypto/eddsa/HashDelegate;->hashPrivateKey(Lio/moatwel/crypto/PrivateKey;)[B

    move-result-object p1

    const/16 v0, 0x20

    .line 38
    invoke-static {p1, v0}, Lio/moatwel/util/ByteUtils;->split([BI)[[B

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 40
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xf8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/16 v0, 0x1f

    .line 41
    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x40

    int-to-byte v1, v1

    .line 42
    aput-byte v1, p1, v0

    .line 44
    invoke-static {p1}, Lio/moatwel/util/ByteUtils;->reverse([B)[B

    move-result-object p1

    .line 45
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method
