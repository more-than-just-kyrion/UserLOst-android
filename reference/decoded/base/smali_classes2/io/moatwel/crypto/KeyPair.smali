.class public Lio/moatwel/crypto/KeyPair;
.super Ljava/lang/Object;
.source "KeyPair.java"


# instance fields
.field private final privateKey:Lio/moatwel/crypto/PrivateKey;

.field private final publicKey:Lio/moatwel/crypto/PublicKey;


# direct methods
.method public constructor <init>(Lio/moatwel/crypto/PrivateKey;Lio/moatwel/crypto/KeyGenerator;Lio/moatwel/crypto/eddsa/EdKeyAnalyzer;)V
    .locals 0

    .line 11
    invoke-interface {p2, p1}, Lio/moatwel/crypto/KeyGenerator;->derivePublicKey(Lio/moatwel/crypto/PrivateKey;)Lio/moatwel/crypto/PublicKey;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lio/moatwel/crypto/KeyPair;-><init>(Lio/moatwel/crypto/PrivateKey;Lio/moatwel/crypto/PublicKey;Lio/moatwel/crypto/eddsa/EdKeyAnalyzer;)V

    return-void
.end method

.method public constructor <init>(Lio/moatwel/crypto/PrivateKey;Lio/moatwel/crypto/PublicKey;Lio/moatwel/crypto/eddsa/EdKeyAnalyzer;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/moatwel/crypto/KeyPair;->privateKey:Lio/moatwel/crypto/PrivateKey;

    .line 16
    iput-object p2, p0, Lio/moatwel/crypto/KeyPair;->publicKey:Lio/moatwel/crypto/PublicKey;

    if-eqz p2, :cond_1

    .line 19
    invoke-virtual {p3, p2}, Lio/moatwel/crypto/eddsa/EdKeyAnalyzer;->isKeyCompressed(Lio/moatwel/crypto/PublicKey;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Public key must be in compressed form"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getPrivateKey()Lio/moatwel/crypto/PrivateKey;
    .locals 1

    .line 26
    iget-object v0, p0, Lio/moatwel/crypto/KeyPair;->privateKey:Lio/moatwel/crypto/PrivateKey;

    return-object v0
.end method

.method public getPublicKey()Lio/moatwel/crypto/PublicKey;
    .locals 1

    .line 30
    iget-object v0, p0, Lio/moatwel/crypto/KeyPair;->publicKey:Lio/moatwel/crypto/PublicKey;

    return-object v0
.end method
