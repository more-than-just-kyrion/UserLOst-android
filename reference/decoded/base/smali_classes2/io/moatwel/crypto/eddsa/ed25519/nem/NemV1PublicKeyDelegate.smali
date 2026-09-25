.class public Lio/moatwel/crypto/eddsa/ed25519/nem/NemV1PublicKeyDelegate;
.super Lio/moatwel/crypto/eddsa/ed25519/Ed25519PublicKeyDelegate;
.source "NemV1PublicKeyDelegate.java"


# static fields
.field private static final HASH_ALGORITHM:Lio/moatwel/crypto/HashAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    sget-object v0, Lio/moatwel/crypto/HashAlgorithm;->KECCAK_512:Lio/moatwel/crypto/HashAlgorithm;

    sput-object v0, Lio/moatwel/crypto/eddsa/ed25519/nem/NemV1PublicKeyDelegate;->HASH_ALGORITHM:Lio/moatwel/crypto/HashAlgorithm;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    sget-object v0, Lio/moatwel/crypto/eddsa/ed25519/nem/NemV1PublicKeyDelegate;->HASH_ALGORITHM:Lio/moatwel/crypto/HashAlgorithm;

    invoke-direct {p0, v0}, Lio/moatwel/crypto/eddsa/ed25519/Ed25519PublicKeyDelegate;-><init>(Lio/moatwel/crypto/HashAlgorithm;)V

    return-void
.end method


# virtual methods
.method public hashPrivateKey(Lio/moatwel/crypto/PrivateKey;)[B
    .locals 1

    .line 19
    sget-object v0, Lio/moatwel/crypto/eddsa/ed25519/nem/NemV1PublicKeyDelegate;->HASH_ALGORITHM:Lio/moatwel/crypto/HashAlgorithm;

    invoke-virtual {p1}, Lio/moatwel/crypto/PrivateKey;->getRaw()[B

    move-result-object p1

    invoke-static {p1}, Lio/moatwel/util/ByteUtils;->reverse([B)[B

    move-result-object p1

    filled-new-array {p1}, [[B

    move-result-object p1

    invoke-static {v0, p1}, Lio/moatwel/crypto/Hashes;->hash(Lio/moatwel/crypto/HashAlgorithm;[[B)[B

    move-result-object p1

    return-object p1
.end method
