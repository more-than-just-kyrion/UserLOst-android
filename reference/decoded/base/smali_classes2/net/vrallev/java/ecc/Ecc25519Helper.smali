.class public Lnet/vrallev/java/ecc/Ecc25519Helper;
.super Ljava/lang/Object;
.source "Ecc25519Helper.java"


# instance fields
.field private final mEdDSAEngine:Lnet/i2p/crypto/eddsa/EdDSAEngine;

.field private final mKeyHolder:Lnet/vrallev/java/ecc/KeyHolder;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 66
    move-object v1, v0

    check-cast v1, Lnet/vrallev/java/ecc/KeyHolder;

    invoke-direct {p0, v0}, Lnet/vrallev/java/ecc/Ecc25519Helper;-><init>(Lnet/vrallev/java/ecc/KeyHolder;)V

    return-void
.end method

.method public constructor <init>(Lnet/vrallev/java/ecc/KeyHolder;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lnet/vrallev/java/ecc/Ecc25519Helper;->mKeyHolder:Lnet/vrallev/java/ecc/KeyHolder;

    .line 75
    new-instance p1, Lnet/i2p/crypto/eddsa/EdDSAEngine;

    invoke-static {}, Lnet/vrallev/java/ecc/Ecc25519Helper;->getSha512Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;-><init>(Ljava/security/MessageDigest;)V

    iput-object p1, p0, Lnet/vrallev/java/ecc/Ecc25519Helper;->mEdDSAEngine:Lnet/i2p/crypto/eddsa/EdDSAEngine;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 70
    new-instance v0, Lnet/vrallev/java/ecc/KeyHolder;

    invoke-direct {v0, p1}, Lnet/vrallev/java/ecc/KeyHolder;-><init>([B)V

    invoke-direct {p0, v0}, Lnet/vrallev/java/ecc/Ecc25519Helper;-><init>(Lnet/vrallev/java/ecc/KeyHolder;)V

    return-void
.end method

.method static getSha256Digest()Ljava/security/MessageDigest;
    .locals 2

    .line 42
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 47
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static getSha512Digest()Ljava/security/MessageDigest;
    .locals 2

    .line 53
    :try_start_0
    const-string v0, "SHA-512"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 58
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public diffieHellman()[B
    .locals 2

    .line 83
    iget-object v0, p0, Lnet/vrallev/java/ecc/Ecc25519Helper;->mKeyHolder:Lnet/vrallev/java/ecc/KeyHolder;

    invoke-virtual {v0}, Lnet/vrallev/java/ecc/KeyHolder;->getPrivateKey()[B

    move-result-object v0

    iget-object v1, p0, Lnet/vrallev/java/ecc/Ecc25519Helper;->mKeyHolder:Lnet/vrallev/java/ecc/KeyHolder;

    invoke-virtual {v1}, Lnet/vrallev/java/ecc/KeyHolder;->getPublicKeyDiffieHellman()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/vrallev/java/ecc/Ecc25519Helper;->diffieHellman([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public diffieHellman([B[B)[B
    .locals 1

    const/16 v0, 0x20

    .line 87
    new-array v0, v0, [B

    .line 88
    invoke-static {v0, p1, p2}, Ldjb/Curve25519;->curve([B[B[B)V

    .line 91
    invoke-static {}, Lnet/vrallev/java/ecc/Ecc25519Helper;->getSha256Digest()Ljava/security/MessageDigest;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    return-object p1
.end method

.method public getKeyHolder()Lnet/vrallev/java/ecc/KeyHolder;
    .locals 1

    .line 152
    iget-object v0, p0, Lnet/vrallev/java/ecc/Ecc25519Helper;->mKeyHolder:Lnet/vrallev/java/ecc/KeyHolder;

    return-object v0
.end method

.method public isValidSignature([B[B)Z
    .locals 1

    .line 128
    iget-object v0, p0, Lnet/vrallev/java/ecc/Ecc25519Helper;->mKeyHolder:Lnet/vrallev/java/ecc/KeyHolder;

    invoke-virtual {v0}, Lnet/vrallev/java/ecc/KeyHolder;->getPublicKeySignature()[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lnet/vrallev/java/ecc/Ecc25519Helper;->isValidSignature([B[B[B)Z

    move-result p1

    return p1
.end method

.method public isValidSignature([B[B[B)Z
    .locals 2

    .line 133
    :try_start_0
    const-string v0, "ed25519-sha-512"

    invoke-static {v0}, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->getByName(Ljava/lang/String;)Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    move-result-object v0

    .line 135
    new-instance v1, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;

    invoke-direct {v1, p3, v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;-><init>([BLnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    .line 136
    new-instance p3, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    invoke-direct {p3, v1}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;-><init>(Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;)V

    .line 138
    iget-object v0, p0, Lnet/vrallev/java/ecc/Ecc25519Helper;->mEdDSAEngine:Lnet/i2p/crypto/eddsa/EdDSAEngine;

    invoke-virtual {v0, p3}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->initVerify(Ljava/security/PublicKey;)V

    .line 139
    iget-object p3, p0, Lnet/vrallev/java/ecc/Ecc25519Helper;->mEdDSAEngine:Lnet/i2p/crypto/eddsa/EdDSAEngine;

    invoke-virtual {p3, p1}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->update([B)V

    .line 141
    iget-object p1, p0, Lnet/vrallev/java/ecc/Ecc25519Helper;->mEdDSAEngine:Lnet/i2p/crypto/eddsa/EdDSAEngine;

    invoke-virtual {p1, p2}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->verify([B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 143
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public sign([B)[B
    .locals 2

    .line 99
    iget-object v0, p0, Lnet/vrallev/java/ecc/Ecc25519Helper;->mKeyHolder:Lnet/vrallev/java/ecc/KeyHolder;

    invoke-virtual {v0}, Lnet/vrallev/java/ecc/KeyHolder;->getPrivateKey()[B

    move-result-object v0

    iget-object v1, p0, Lnet/vrallev/java/ecc/Ecc25519Helper;->mKeyHolder:Lnet/vrallev/java/ecc/KeyHolder;

    invoke-virtual {v1}, Lnet/vrallev/java/ecc/KeyHolder;->getPublicKeySignature()[B

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lnet/vrallev/java/ecc/Ecc25519Helper;->signWithoutClamp([B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public sign([B[B[B)[B
    .locals 1

    .line 103
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    .line 104
    invoke-static {p2}, Ldjb/Curve25519;->clamp([B)V

    .line 105
    invoke-virtual {p0, p1, p2, p3}, Lnet/vrallev/java/ecc/Ecc25519Helper;->signWithoutClamp([B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method protected signWithoutClamp([B[B[B)[B
    .locals 1

    .line 111
    :try_start_0
    new-instance p3, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;

    const-string v0, "ed25519-sha-512"

    invoke-static {v0}, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->getByName(Ljava/lang/String;)Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    move-result-object v0

    invoke-direct {p3, p2, v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;-><init>([BLnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    .line 112
    iget-object p2, p0, Lnet/vrallev/java/ecc/Ecc25519Helper;->mEdDSAEngine:Lnet/i2p/crypto/eddsa/EdDSAEngine;

    new-instance v0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    invoke-direct {v0, p3}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;-><init>(Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;)V

    invoke-virtual {p2, v0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->initSign(Ljava/security/PrivateKey;)V

    .line 113
    iget-object p2, p0, Lnet/vrallev/java/ecc/Ecc25519Helper;->mEdDSAEngine:Lnet/i2p/crypto/eddsa/EdDSAEngine;

    invoke-virtual {p2, p1}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->update([B)V

    .line 114
    iget-object p1, p0, Lnet/vrallev/java/ecc/Ecc25519Helper;->mEdDSAEngine:Lnet/i2p/crypto/eddsa/EdDSAEngine;

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->sign()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 119
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 117
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
