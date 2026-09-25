.class public Lio/moatwel/crypto/Hashes;
.super Ljava/lang/Object;
.source "Hashes.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs hash(Lio/moatwel/crypto/HashAlgorithm;I[[B)[B
    .locals 2

    .line 22
    sget-object v0, Lio/moatwel/crypto/Hashes$1;->$SwitchMap$io$moatwel$crypto$HashAlgorithm:[I

    invoke-virtual {p0}, Lio/moatwel/crypto/HashAlgorithm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 27
    invoke-virtual {p0}, Lio/moatwel/crypto/HashAlgorithm;->getDefaultBitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    if-ne v0, p1, :cond_0

    .line 28
    invoke-virtual {p0}, Lio/moatwel/crypto/HashAlgorithm;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lio/moatwel/crypto/Hashes;->hash(Ljava/lang/String;[[B)[B

    move-result-object p0

    return-object p0

    .line 30
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Specified output byte length("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ") is not available on this hash algorithm("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 32
    invoke-virtual {p0}, Lio/moatwel/crypto/HashAlgorithm;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 25
    :cond_1
    invoke-static {p0, p1, p2}, Lio/moatwel/crypto/Hashes;->hashVariableOutput(Lio/moatwel/crypto/HashAlgorithm;I[[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs hash(Lio/moatwel/crypto/HashAlgorithm;[[B)[B
    .locals 1

    .line 18
    invoke-virtual {p0}, Lio/moatwel/crypto/HashAlgorithm;->getDefaultBitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    invoke-static {p0, v0, p1}, Lio/moatwel/crypto/Hashes;->hash(Lio/moatwel/crypto/HashAlgorithm;I[[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static varargs hash(Ljava/lang/String;[[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 40
    :try_start_0
    const-string v0, "SC"

    invoke-static {p0, v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 41
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 42
    invoke-virtual {p0, v2}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 46
    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Hashing error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static varargs hashVariableOutput(Lio/moatwel/crypto/HashAlgorithm;I[[B)[B
    .locals 5

    .line 51
    new-instance v0, Lorg/spongycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {p0}, Lio/moatwel/crypto/HashAlgorithm;->getDefaultBitLength()I

    move-result p0

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    .line 52
    array-length p0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_0

    aget-object v3, p2, v2

    .line 53
    array-length v4, v3

    invoke-virtual {v0, v3, v1, v4}, Lorg/spongycastle/crypto/digests/SHAKEDigest;->update([BII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_0
    new-array p0, p1, [B

    .line 56
    invoke-virtual {v0, p0, v1, p1}, Lorg/spongycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    return-object p0
.end method
