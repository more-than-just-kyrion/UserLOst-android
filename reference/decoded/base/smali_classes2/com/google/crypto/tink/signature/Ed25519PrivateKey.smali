.class public final Lcom/google/crypto/tink/signature/Ed25519PrivateKey;
.super Lcom/google/crypto/tink/signature/SignaturePrivateKey;
.source "Ed25519PrivateKey.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# instance fields
.field private final privateKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

.field private final publicKey:Lcom/google/crypto/tink/signature/Ed25519PublicKey;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/signature/Ed25519PublicKey;Lcom/google/crypto/tink/util/SecretBytes;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "privateKeyBytes"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/SignaturePrivateKey;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;->publicKey:Lcom/google/crypto/tink/signature/Ed25519PublicKey;

    .line 44
    iput-object p2, p0, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;->privateKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/signature/Ed25519PublicKey;Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/signature/Ed25519PrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "privateKeyBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 59
    invoke-virtual {p1}, Lcom/google/crypto/tink/util/SecretBytes;->size()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/Ed25519PublicKey;->getPublicKeyBytes()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object v0

    .line 67
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/crypto/tink/util/SecretBytes;->toByteArray(Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object v1

    .line 69
    invoke-static {v1}, Lcom/google/crypto/tink/internal/Ed25519;->getHashedScalar([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/internal/Ed25519;->scalarMultWithBaseToBytes([B)[B

    move-result-object v1

    .line 71
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;

    invoke-direct {v0, p0, p1}, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;-><init>(Lcom/google/crypto/tink/signature/Ed25519PublicKey;Lcom/google/crypto/tink/util/SecretBytes;)V

    return-object v0

    .line 72
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Ed25519 keys mismatch"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 60
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ed25519 key must be constructed with key of length 32 bytes, not "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lcom/google/crypto/tink/util/SecretBytes;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 56
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Ed25519 key cannot be constructed without an Ed25519 public key"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equalsKey(Lcom/google/crypto/tink/Key;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 99
    instance-of v0, p1, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 102
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;

    .line 103
    iget-object v0, p1, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;->publicKey:Lcom/google/crypto/tink/signature/Ed25519PublicKey;

    iget-object v2, p0, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;->publicKey:Lcom/google/crypto/tink/signature/Ed25519PublicKey;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/signature/Ed25519PublicKey;->equalsKey(Lcom/google/crypto/tink/Key;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;->privateKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    iget-object p1, p1, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;->privateKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    .line 104
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/util/SecretBytes;->equalsSecretBytes(Lcom/google/crypto/tink/util/SecretBytes;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;->getParameters()Lcom/google/crypto/tink/signature/Ed25519Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/signature/Ed25519Parameters;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;->publicKey:Lcom/google/crypto/tink/signature/Ed25519PublicKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/Ed25519PublicKey;->getParameters()Lcom/google/crypto/tink/signature/Ed25519Parameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/signature/SignatureParameters;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;->getParameters()Lcom/google/crypto/tink/signature/Ed25519Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;->privateKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    return-object v0
.end method

.method public bridge synthetic getPublicKey()Lcom/google/crypto/tink/Key;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;->getPublicKey()Lcom/google/crypto/tink/signature/Ed25519PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lcom/google/crypto/tink/signature/Ed25519PublicKey;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;->publicKey:Lcom/google/crypto/tink/signature/Ed25519PublicKey;

    return-object v0
.end method

.method public bridge synthetic getPublicKey()Lcom/google/crypto/tink/signature/SignaturePublicKey;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;->getPublicKey()Lcom/google/crypto/tink/signature/Ed25519PublicKey;

    move-result-object v0

    return-object v0
.end method
