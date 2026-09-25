.class public Lio/moatwel/crypto/eddsa/ed25519/ctx/Ed25519ctxSchemeProvider;
.super Lio/moatwel/crypto/eddsa/SchemeProvider;
.source "Ed25519ctxSchemeProvider.java"


# instance fields
.field private final algorithm:Lio/moatwel/crypto/HashAlgorithm;


# direct methods
.method public constructor <init>(Lio/moatwel/crypto/HashAlgorithm;)V
    .locals 1

    .line 20
    invoke-static {}, Lio/moatwel/crypto/eddsa/ed25519/Curve25519;->getInstance()Lio/moatwel/crypto/eddsa/ed25519/Curve25519;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/moatwel/crypto/eddsa/SchemeProvider;-><init>(Lio/moatwel/crypto/eddsa/Curve;)V

    if-eqz p1, :cond_0

    .line 25
    iput-object p1, p0, Lio/moatwel/crypto/eddsa/ed25519/ctx/Ed25519ctxSchemeProvider;->algorithm:Lio/moatwel/crypto/HashAlgorithm;

    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "argument HashAlgorithm must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public dom([B)[B
    .locals 5

    .line 53
    const-string v0, "SigEd25519 no Ed25519 collisions"

    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    array-length v4, p1

    int-to-byte v4, v4

    new-array v1, v1, [B

    aput-byte v4, v1, v3

    filled-new-array {v0, v2, v1, p1}, [[B

    move-result-object p1

    .line 54
    invoke-static {p1}, Lio/moatwel/util/ByteUtils;->join([[B)[B

    move-result-object p1

    return-object p1
.end method

.method public generatePrivateKey()Lio/moatwel/crypto/PrivateKey;
    .locals 2

    .line 40
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x20

    .line 41
    new-array v1, v1, [B

    .line 42
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 43
    invoke-static {v1}, Lio/moatwel/crypto/PrivateKey;->newInstance([B)Lio/moatwel/crypto/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKeyDelegate()Lio/moatwel/crypto/eddsa/PublicKeyDelegate;
    .locals 2

    .line 35
    new-instance v0, Lio/moatwel/crypto/eddsa/ed25519/Ed25519PublicKeyDelegate;

    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed25519/ctx/Ed25519ctxSchemeProvider;->algorithm:Lio/moatwel/crypto/HashAlgorithm;

    invoke-direct {v0, v1}, Lio/moatwel/crypto/eddsa/ed25519/Ed25519PublicKeyDelegate;-><init>(Lio/moatwel/crypto/HashAlgorithm;)V

    return-object v0
.end method

.method public getSigner()Lio/moatwel/crypto/EdDsaSigner;
    .locals 2

    .line 30
    new-instance v0, Lio/moatwel/crypto/eddsa/ed25519/Ed25519Signer;

    iget-object v1, p0, Lio/moatwel/crypto/eddsa/ed25519/ctx/Ed25519ctxSchemeProvider;->algorithm:Lio/moatwel/crypto/HashAlgorithm;

    invoke-direct {v0, v1, p0}, Lio/moatwel/crypto/eddsa/ed25519/Ed25519Signer;-><init>(Lio/moatwel/crypto/HashAlgorithm;Lio/moatwel/crypto/eddsa/SchemeProvider;)V

    return-object v0
.end method

.method public preHash([B)[B
    .locals 0

    return-object p1
.end method
