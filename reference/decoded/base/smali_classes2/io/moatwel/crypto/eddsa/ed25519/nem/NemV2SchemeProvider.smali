.class public Lio/moatwel/crypto/eddsa/ed25519/nem/NemV2SchemeProvider;
.super Lio/moatwel/crypto/eddsa/ed25519/Ed25519SchemeProvider;
.source "NemV2SchemeProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    sget-object v0, Lio/moatwel/crypto/HashAlgorithm;->SHA3_512:Lio/moatwel/crypto/HashAlgorithm;

    invoke-direct {p0, v0}, Lio/moatwel/crypto/eddsa/ed25519/Ed25519SchemeProvider;-><init>(Lio/moatwel/crypto/HashAlgorithm;)V

    return-void
.end method


# virtual methods
.method public getPublicKeyDelegate()Lio/moatwel/crypto/eddsa/PublicKeyDelegate;
    .locals 1

    .line 15
    new-instance v0, Lio/moatwel/crypto/eddsa/ed25519/nem/NemV2PublicKeyDelegate;

    invoke-direct {v0}, Lio/moatwel/crypto/eddsa/ed25519/nem/NemV2PublicKeyDelegate;-><init>()V

    return-object v0
.end method
