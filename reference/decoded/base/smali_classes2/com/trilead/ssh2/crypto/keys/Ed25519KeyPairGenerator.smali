.class public Lcom/trilead/ssh2/crypto/keys/Ed25519KeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "Ed25519KeyPairGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    .line 19
    :try_start_0
    invoke-static {}, Lcom/google/crypto/tink/subtle/Ed25519Sign$KeyPair;->newKeyPair()Lcom/google/crypto/tink/subtle/Ed25519Sign$KeyPair;

    move-result-object v0

    .line 20
    new-instance v1, Ljava/security/KeyPair;

    new-instance v2, Lcom/trilead/ssh2/crypto/keys/Ed25519PublicKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/subtle/Ed25519Sign$KeyPair;->getPublicKey()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/trilead/ssh2/crypto/keys/Ed25519PublicKey;-><init>([B)V

    new-instance v3, Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/subtle/Ed25519Sign$KeyPair;->getPrivateKey()[B

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;-><init>([B)V

    invoke-direct {v1, v2, v3}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 22
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    return-void
.end method
