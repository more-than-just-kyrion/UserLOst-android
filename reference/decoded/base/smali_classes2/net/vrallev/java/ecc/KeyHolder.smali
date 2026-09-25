.class public Lnet/vrallev/java/ecc/KeyHolder;
.super Ljava/lang/Object;
.source "KeyHolder.java"


# instance fields
.field protected final mOriginalPrivateKey:[B

.field protected final mPrivateKey:[B

.field protected final mPublicKeyDiffieHellman:[B

.field protected final mPublicKeySignature:[B


# direct methods
.method public constructor <init>([B)V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 43
    array-length v0, p1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    array-length v0, p1

    const/16 v2, 0x40

    if-ne v0, v2, :cond_1

    .line 47
    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lnet/vrallev/java/ecc/KeyHolder;->mOriginalPrivateKey:[B

    .line 48
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lnet/vrallev/java/ecc/KeyHolder;->mPrivateKey:[B

    .line 50
    invoke-static {p1}, Ldjb/Curve25519;->clamp([B)V

    .line 52
    new-array v0, v1, [B

    iput-object v0, p0, Lnet/vrallev/java/ecc/KeyHolder;->mPublicKeyDiffieHellman:[B

    const/4 v1, 0x0

    .line 53
    invoke-static {v0, v1, p1}, Ldjb/Curve25519;->keygen([B[B[B)V

    .line 55
    invoke-virtual {p0, p1}, Lnet/vrallev/java/ecc/KeyHolder;->computePublicSignatureKey([B)[B

    move-result-object p1

    iput-object p1, p0, Lnet/vrallev/java/ecc/KeyHolder;->mPublicKeySignature:[B

    return-void

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "private key must contain 32 or 64 bytes."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B[B)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, v0, p1, p2}, Lnet/vrallev/java/ecc/KeyHolder;-><init>([B[B[B)V

    return-void
.end method

.method public constructor <init>([B[B[B)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lnet/vrallev/java/ecc/KeyHolder;->mPrivateKey:[B

    .line 64
    iput-object p1, p0, Lnet/vrallev/java/ecc/KeyHolder;->mOriginalPrivateKey:[B

    .line 65
    iput-object p2, p0, Lnet/vrallev/java/ecc/KeyHolder;->mPublicKeyDiffieHellman:[B

    .line 66
    iput-object p3, p0, Lnet/vrallev/java/ecc/KeyHolder;->mPublicKeySignature:[B

    return-void
.end method

.method public static createPrivateKey([B)[B
    .locals 1

    .line 34
    invoke-static {}, Lnet/vrallev/java/ecc/Ecc25519Helper;->getSha256Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected computePublicSignatureKey([B)[B
    .locals 2

    .line 70
    new-instance v0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;

    const-string v1, "ed25519-sha-512"

    invoke-static {v1}, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->getByName(Ljava/lang/String;)Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;-><init>([BLnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    .line 71
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->getA()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object p1

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public getPrivateKey()[B
    .locals 1

    .line 75
    iget-object v0, p0, Lnet/vrallev/java/ecc/KeyHolder;->mPrivateKey:[B

    return-object v0
.end method

.method public getPrivateKeyUnclamped()[B
    .locals 1

    .line 79
    iget-object v0, p0, Lnet/vrallev/java/ecc/KeyHolder;->mOriginalPrivateKey:[B

    return-object v0
.end method

.method public getPublicKeyDiffieHellman()[B
    .locals 1

    .line 83
    iget-object v0, p0, Lnet/vrallev/java/ecc/KeyHolder;->mPublicKeyDiffieHellman:[B

    return-object v0
.end method

.method public getPublicKeySignature()[B
    .locals 1

    .line 87
    iget-object v0, p0, Lnet/vrallev/java/ecc/KeyHolder;->mPublicKeySignature:[B

    return-object v0
.end method
