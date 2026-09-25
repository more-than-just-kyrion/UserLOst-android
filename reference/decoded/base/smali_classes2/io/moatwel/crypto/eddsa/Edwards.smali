.class public final Lio/moatwel/crypto/eddsa/Edwards;
.super Ljava/lang/Object;
.source "Edwards.java"


# instance fields
.field private final curve:Lio/moatwel/crypto/eddsa/Curve;

.field private final generator:Lio/moatwel/crypto/KeyGenerator;

.field private final schemeProvider:Lio/moatwel/crypto/eddsa/SchemeProvider;

.field private final signer:Lio/moatwel/crypto/EdDsaSigner;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    new-instance v0, Lio/moatwel/crypto/eddsa/ed25519/Ed25519SchemeProvider;

    sget-object v1, Lio/moatwel/crypto/HashAlgorithm;->KECCAK_512:Lio/moatwel/crypto/HashAlgorithm;

    invoke-direct {v0, v1}, Lio/moatwel/crypto/eddsa/ed25519/Ed25519SchemeProvider;-><init>(Lio/moatwel/crypto/HashAlgorithm;)V

    invoke-direct {p0, v0}, Lio/moatwel/crypto/eddsa/Edwards;-><init>(Lio/moatwel/crypto/eddsa/SchemeProvider;)V

    return-void
.end method

.method public constructor <init>(Lio/moatwel/crypto/HashAlgorithm;)V
    .locals 1

    .line 32
    new-instance v0, Lio/moatwel/crypto/eddsa/ed25519/Ed25519SchemeProvider;

    invoke-direct {v0, p1}, Lio/moatwel/crypto/eddsa/ed25519/Ed25519SchemeProvider;-><init>(Lio/moatwel/crypto/HashAlgorithm;)V

    invoke-direct {p0, v0}, Lio/moatwel/crypto/eddsa/Edwards;-><init>(Lio/moatwel/crypto/eddsa/SchemeProvider;)V

    return-void
.end method

.method public constructor <init>(Lio/moatwel/crypto/eddsa/SchemeProvider;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/SchemeProvider;->getCurve()Lio/moatwel/crypto/eddsa/Curve;

    move-result-object v0

    iput-object v0, p0, Lio/moatwel/crypto/eddsa/Edwards;->curve:Lio/moatwel/crypto/eddsa/Curve;

    .line 40
    new-instance v0, Lio/moatwel/crypto/eddsa/EdDsaKeyGenerator;

    invoke-direct {v0, p1}, Lio/moatwel/crypto/eddsa/EdDsaKeyGenerator;-><init>(Lio/moatwel/crypto/eddsa/SchemeProvider;)V

    iput-object v0, p0, Lio/moatwel/crypto/eddsa/Edwards;->generator:Lio/moatwel/crypto/KeyGenerator;

    .line 41
    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/SchemeProvider;->getSigner()Lio/moatwel/crypto/EdDsaSigner;

    move-result-object v0

    iput-object v0, p0, Lio/moatwel/crypto/eddsa/Edwards;->signer:Lio/moatwel/crypto/EdDsaSigner;

    .line 42
    iput-object p1, p0, Lio/moatwel/crypto/eddsa/Edwards;->schemeProvider:Lio/moatwel/crypto/eddsa/SchemeProvider;

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SchemeProvider must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public derivePublicKey(Lio/moatwel/crypto/PrivateKey;)Lio/moatwel/crypto/PublicKey;
    .locals 1

    .line 54
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/Edwards;->generator:Lio/moatwel/crypto/KeyGenerator;

    invoke-interface {v0, p1}, Lio/moatwel/crypto/KeyGenerator;->derivePublicKey(Lio/moatwel/crypto/PrivateKey;)Lio/moatwel/crypto/PublicKey;

    move-result-object p1

    return-object p1
.end method

.method public generateKeyPair()Lio/moatwel/crypto/KeyPair;
    .locals 1

    .line 46
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/Edwards;->generator:Lio/moatwel/crypto/KeyGenerator;

    invoke-interface {v0}, Lio/moatwel/crypto/KeyGenerator;->generateKeyPair()Lio/moatwel/crypto/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method public generateKeyPair(Lio/moatwel/crypto/PrivateKey;)Lio/moatwel/crypto/KeyPair;
    .locals 1

    .line 50
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/Edwards;->generator:Lio/moatwel/crypto/KeyGenerator;

    invoke-interface {v0, p1}, Lio/moatwel/crypto/KeyGenerator;->generateKeyPair(Lio/moatwel/crypto/PrivateKey;)Lio/moatwel/crypto/KeyPair;

    move-result-object p1

    return-object p1
.end method

.method public getCurve()Lio/moatwel/crypto/eddsa/Curve;
    .locals 1

    .line 84
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/Edwards;->curve:Lio/moatwel/crypto/eddsa/Curve;

    return-object v0
.end method

.method public getDsaSigner()Lio/moatwel/crypto/EdDsaSigner;
    .locals 1

    .line 88
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/Edwards;->signer:Lio/moatwel/crypto/EdDsaSigner;

    return-object v0
.end method

.method public getKeyGenerator()Lio/moatwel/crypto/KeyGenerator;
    .locals 1

    .line 92
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/Edwards;->generator:Lio/moatwel/crypto/KeyGenerator;

    return-object v0
.end method

.method public getSchemeProvider()Lio/moatwel/crypto/eddsa/SchemeProvider;
    .locals 1

    .line 96
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/Edwards;->schemeProvider:Lio/moatwel/crypto/eddsa/SchemeProvider;

    return-object v0
.end method

.method public sign(Lio/moatwel/crypto/KeyPair;[B)Lio/moatwel/crypto/Signature;
    .locals 2

    .line 58
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/Edwards;->signer:Lio/moatwel/crypto/EdDsaSigner;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lio/moatwel/crypto/EdDsaSigner;->sign(Lio/moatwel/crypto/KeyPair;[B[B)Lio/moatwel/crypto/Signature;

    move-result-object p1

    return-object p1
.end method

.method public sign(Lio/moatwel/crypto/KeyPair;[B[B)Lio/moatwel/crypto/Signature;
    .locals 1

    .line 62
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/Edwards;->signer:Lio/moatwel/crypto/EdDsaSigner;

    invoke-interface {v0, p1, p2, p3}, Lio/moatwel/crypto/EdDsaSigner;->sign(Lio/moatwel/crypto/KeyPair;[B[B)Lio/moatwel/crypto/Signature;

    move-result-object p1

    return-object p1
.end method

.method public verify(Lio/moatwel/crypto/KeyPair;[BLio/moatwel/crypto/Signature;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/Edwards;->signer:Lio/moatwel/crypto/EdDsaSigner;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1, p3}, Lio/moatwel/crypto/EdDsaSigner;->verify(Lio/moatwel/crypto/KeyPair;[B[BLio/moatwel/crypto/Signature;)Z

    move-result p1

    return p1
.end method

.method public verify(Lio/moatwel/crypto/KeyPair;[B[BLio/moatwel/crypto/Signature;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/Edwards;->signer:Lio/moatwel/crypto/EdDsaSigner;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/moatwel/crypto/EdDsaSigner;->verify(Lio/moatwel/crypto/KeyPair;[B[BLio/moatwel/crypto/Signature;)Z

    move-result p1

    return p1
.end method

.method public verify(Lio/moatwel/crypto/PublicKey;[BLio/moatwel/crypto/Signature;)Z
    .locals 2

    .line 71
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/Edwards;->signer:Lio/moatwel/crypto/EdDsaSigner;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1, p3}, Lio/moatwel/crypto/EdDsaSigner;->verify(Lio/moatwel/crypto/PublicKey;[B[BLio/moatwel/crypto/Signature;)Z

    move-result p1

    return p1
.end method

.method public verify(Lio/moatwel/crypto/PublicKey;[B[BLio/moatwel/crypto/Signature;)Z
    .locals 1

    .line 80
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/Edwards;->signer:Lio/moatwel/crypto/EdDsaSigner;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/moatwel/crypto/EdDsaSigner;->verify(Lio/moatwel/crypto/PublicKey;[B[BLio/moatwel/crypto/Signature;)Z

    move-result p1

    return p1
.end method
