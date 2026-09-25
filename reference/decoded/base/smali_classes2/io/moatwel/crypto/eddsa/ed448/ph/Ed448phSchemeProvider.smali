.class public Lio/moatwel/crypto/eddsa/ed448/ph/Ed448phSchemeProvider;
.super Lio/moatwel/crypto/eddsa/SchemeProvider;
.source "Ed448phSchemeProvider.java"


# instance fields
.field private final algorithm:Lio/moatwel/crypto/HashAlgorithm;


# direct methods
.method public constructor <init>(Lio/moatwel/crypto/HashAlgorithm;)V
    .locals 1

    .line 21
    invoke-static {}, Lio/moatwel/crypto/eddsa/ed448/Curve448;->getInstance()Lio/moatwel/crypto/eddsa/ed448/Curve448;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/moatwel/crypto/eddsa/SchemeProvider;-><init>(Lio/moatwel/crypto/eddsa/Curve;)V

    if-eqz p1, :cond_0

    .line 26
    iput-object p1, p0, Lio/moatwel/crypto/eddsa/ed448/ph/Ed448phSchemeProvider;->algorithm:Lio/moatwel/crypto/HashAlgorithm;

    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "argument HashAlgorithm must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public dom([B)[B
    .locals 5

    .line 54
    const-string v0, "SigEd448"

    .line 56
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    array-length v4, p1

    int-to-byte v4, v4

    new-array v1, v1, [B

    aput-byte v4, v1, v3

    filled-new-array {v0, v2, v1, p1}, [[B

    move-result-object p1

    .line 55
    invoke-static {p1}, Lio/moatwel/util/ByteUtils;->join([[B)[B

    move-result-object p1

    return-object p1
.end method

.method public generatePrivateKey()Lio/moatwel/crypto/PrivateKey;
    .locals 2

    .line 41
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x39

    .line 42
    new-array v1, v1, [B

    .line 43
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 44
    invoke-static {v1}, Lio/moatwel/crypto/PrivateKey;->newInstance([B)Lio/moatwel/crypto/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKeyDelegate()Lio/moatwel/crypto/eddsa/PublicKeyDelegate;
    .locals 2

    .line 36
    new-instance v0, Lio/moatwel/crypto/eddsa/ed448/Ed448PublicKeyDelegate;

    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed448/ph/Ed448phSchemeProvider;->algorithm:Lio/moatwel/crypto/HashAlgorithm;

    invoke-direct {v0, v1}, Lio/moatwel/crypto/eddsa/ed448/Ed448PublicKeyDelegate;-><init>(Lio/moatwel/crypto/HashAlgorithm;)V

    return-object v0
.end method

.method public getSigner()Lio/moatwel/crypto/EdDsaSigner;
    .locals 2

    .line 31
    new-instance v0, Lio/moatwel/crypto/eddsa/ed448/Ed448Signer;

    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed448/ph/Ed448phSchemeProvider;->algorithm:Lio/moatwel/crypto/HashAlgorithm;

    invoke-direct {v0, v1, p0}, Lio/moatwel/crypto/eddsa/ed448/Ed448Signer;-><init>(Lio/moatwel/crypto/HashAlgorithm;Lio/moatwel/crypto/eddsa/SchemeProvider;)V

    return-object v0
.end method

.method public preHash([B)[B
    .locals 2

    .line 49
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/ed448/ph/Ed448phSchemeProvider;->algorithm:Lio/moatwel/crypto/HashAlgorithm;

    const/16 v1, 0x40

    filled-new-array {p1}, [[B

    move-result-object p1

    invoke-static {v0, v1, p1}, Lio/moatwel/crypto/Hashes;->hash(Lio/moatwel/crypto/HashAlgorithm;I[[B)[B

    move-result-object p1

    return-object p1
.end method
