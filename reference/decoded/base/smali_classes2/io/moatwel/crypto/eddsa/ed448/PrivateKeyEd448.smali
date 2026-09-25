.class public Lio/moatwel/crypto/eddsa/ed448/PrivateKeyEd448;
.super Lio/moatwel/crypto/PrivateKey;
.source "PrivateKeyEd448.java"


# direct methods
.method private constructor <init>([B)V
    .locals 1

    .line 13
    invoke-direct {p0, p1}, Lio/moatwel/crypto/PrivateKey;-><init>([B)V

    .line 14
    array-length p1, p1

    const/16 v0, 0x39

    if-ne p1, v0, :cond_0

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "PrivateKey on Ed448 curve must have 57 byte length."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static fromBytes([B)Lio/moatwel/crypto/PrivateKey;
    .locals 1

    .line 27
    new-instance v0, Lio/moatwel/crypto/eddsa/ed448/PrivateKeyEd448;

    invoke-direct {v0, p0}, Lio/moatwel/crypto/eddsa/ed448/PrivateKeyEd448;-><init>([B)V

    return-object v0
.end method

.method public static random()Lio/moatwel/crypto/PrivateKey;
    .locals 2

    const/16 v0, 0x39

    .line 20
    new-array v0, v0, [B

    .line 21
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 22
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 23
    new-instance v1, Lio/moatwel/crypto/eddsa/ed448/PrivateKeyEd448;

    invoke-direct {v1, v0}, Lio/moatwel/crypto/eddsa/ed448/PrivateKeyEd448;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method public getScalarSeed(Lio/moatwel/crypto/eddsa/HashDelegate;)Ljava/math/BigInteger;
    .locals 3

    .line 32
    invoke-interface {p1, p0}, Lio/moatwel/crypto/eddsa/HashDelegate;->hashPrivateKey(Lio/moatwel/crypto/PrivateKey;)[B

    move-result-object p1

    const/16 v0, 0x39

    .line 33
    invoke-static {p1, v0}, Lio/moatwel/util/ByteUtils;->split([BI)[[B

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 35
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xfc

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/16 v1, 0x38

    .line 36
    aget-byte v2, p1, v1

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    const/16 v0, 0x37

    .line 37
    aget-byte v1, p1, v0

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 39
    invoke-static {p1}, Lio/moatwel/util/ByteUtils;->reverse([B)[B

    move-result-object p1

    .line 40
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method
