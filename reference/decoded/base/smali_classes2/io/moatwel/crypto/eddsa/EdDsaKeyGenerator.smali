.class public Lio/moatwel/crypto/eddsa/EdDsaKeyGenerator;
.super Ljava/lang/Object;
.source "EdDsaKeyGenerator.java"

# interfaces
.implements Lio/moatwel/crypto/KeyGenerator;


# instance fields
.field private final analyzer:Lio/moatwel/crypto/eddsa/EdKeyAnalyzer;

.field private final schemeProvider:Lio/moatwel/crypto/eddsa/SchemeProvider;


# direct methods
.method public constructor <init>(Lio/moatwel/crypto/eddsa/SchemeProvider;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 20
    iput-object p1, p0, Lio/moatwel/crypto/eddsa/EdDsaKeyGenerator;->schemeProvider:Lio/moatwel/crypto/eddsa/SchemeProvider;

    .line 21
    invoke-virtual {p1}, Lio/moatwel/crypto/eddsa/SchemeProvider;->getCurve()Lio/moatwel/crypto/eddsa/Curve;

    move-result-object p1

    .line 22
    new-instance v0, Lio/moatwel/crypto/eddsa/EdKeyAnalyzer;

    invoke-direct {v0, p1}, Lio/moatwel/crypto/eddsa/EdKeyAnalyzer;-><init>(Lio/moatwel/crypto/eddsa/Curve;)V

    iput-object v0, p0, Lio/moatwel/crypto/eddsa/EdDsaKeyGenerator;->analyzer:Lio/moatwel/crypto/eddsa/EdKeyAnalyzer;

    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SchemeProvider must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public derivePublicKey(Lio/moatwel/crypto/PrivateKey;)Lio/moatwel/crypto/PublicKey;
    .locals 1

    if-eqz p1, :cond_0

    .line 47
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/EdDsaKeyGenerator;->schemeProvider:Lio/moatwel/crypto/eddsa/SchemeProvider;

    invoke-virtual {v0}, Lio/moatwel/crypto/eddsa/SchemeProvider;->getPublicKeyDelegate()Lio/moatwel/crypto/eddsa/PublicKeyDelegate;

    move-result-object v0

    .line 49
    invoke-interface {v0, p1}, Lio/moatwel/crypto/eddsa/PublicKeyDelegate;->generatePublicKeySeed(Lio/moatwel/crypto/PrivateKey;)[B

    move-result-object p1

    .line 51
    new-instance v0, Lio/moatwel/crypto/PublicKey;

    invoke-direct {v0, p1}, Lio/moatwel/crypto/PublicKey;-><init>([B)V

    return-object v0

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "PrivateKey must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generateKeyPair()Lio/moatwel/crypto/KeyPair;
    .locals 1

    .line 32
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/EdDsaKeyGenerator;->schemeProvider:Lio/moatwel/crypto/eddsa/SchemeProvider;

    invoke-virtual {v0}, Lio/moatwel/crypto/eddsa/SchemeProvider;->generatePrivateKey()Lio/moatwel/crypto/PrivateKey;

    move-result-object v0

    .line 33
    invoke-virtual {p0, v0}, Lio/moatwel/crypto/eddsa/EdDsaKeyGenerator;->generateKeyPair(Lio/moatwel/crypto/PrivateKey;)Lio/moatwel/crypto/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method public generateKeyPair(Lio/moatwel/crypto/PrivateKey;)Lio/moatwel/crypto/KeyPair;
    .locals 3

    .line 38
    invoke-virtual {p0, p1}, Lio/moatwel/crypto/eddsa/EdDsaKeyGenerator;->derivePublicKey(Lio/moatwel/crypto/PrivateKey;)Lio/moatwel/crypto/PublicKey;

    move-result-object v0

    .line 39
    new-instance v1, Lio/moatwel/crypto/KeyPair;

    iget-object v2, p0, Lio/moatwel/crypto/eddsa/EdDsaKeyGenerator;->analyzer:Lio/moatwel/crypto/eddsa/EdKeyAnalyzer;

    invoke-direct {v1, p1, v0, v2}, Lio/moatwel/crypto/KeyPair;-><init>(Lio/moatwel/crypto/PrivateKey;Lio/moatwel/crypto/PublicKey;Lio/moatwel/crypto/eddsa/EdKeyAnalyzer;)V

    return-object v1
.end method

.method public getKeyAnalyzer()Lio/moatwel/crypto/eddsa/EdKeyAnalyzer;
    .locals 1

    .line 27
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/EdDsaKeyGenerator;->analyzer:Lio/moatwel/crypto/eddsa/EdKeyAnalyzer;

    return-object v0
.end method
