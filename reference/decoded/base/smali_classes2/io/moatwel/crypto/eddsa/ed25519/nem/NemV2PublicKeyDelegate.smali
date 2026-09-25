.class public Lio/moatwel/crypto/eddsa/ed25519/nem/NemV2PublicKeyDelegate;
.super Lio/moatwel/crypto/eddsa/ed25519/Ed25519PublicKeyDelegate;
.source "NemV2PublicKeyDelegate.java"


# static fields
.field private static final HASH_ALGORITHM:Lio/moatwel/crypto/HashAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    sget-object v0, Lio/moatwel/crypto/HashAlgorithm;->SHA3_512:Lio/moatwel/crypto/HashAlgorithm;

    sput-object v0, Lio/moatwel/crypto/eddsa/ed25519/nem/NemV2PublicKeyDelegate;->HASH_ALGORITHM:Lio/moatwel/crypto/HashAlgorithm;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    sget-object v0, Lio/moatwel/crypto/eddsa/ed25519/nem/NemV2PublicKeyDelegate;->HASH_ALGORITHM:Lio/moatwel/crypto/HashAlgorithm;

    invoke-direct {p0, v0}, Lio/moatwel/crypto/eddsa/ed25519/Ed25519PublicKeyDelegate;-><init>(Lio/moatwel/crypto/HashAlgorithm;)V

    return-void
.end method
