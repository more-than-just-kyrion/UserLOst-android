.class public Lcom/trilead/ssh2/crypto/dh/Curve25519Exchange;
.super Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;
.source "Curve25519Exchange.java"


# static fields
.field public static final ALT_NAME:Ljava/lang/String; = "curve25519-sha256@libssh.org"

.field public static final KEY_SIZE:I = 0x20

.field public static final NAME:Ljava/lang/String; = "curve25519-sha256"


# instance fields
.field private clientPrivate:[B

.field private clientPublic:[B

.field private serverPublic:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;-><init>()V

    .line 29
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 32
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/Curve25519Exchange;->clientPrivate:[B

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "secret must be key size"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public getE()[B
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/Curve25519Exchange;->clientPublic:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getHashAlgo()Ljava/lang/String;
    .locals 1

    .line 83
    const-string v0, "SHA-256"

    return-object v0
.end method

.method protected getServerE()[B
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/Curve25519Exchange;->serverPublic:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    const-string v0, "curve25519-sha256"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "curve25519-sha256@libssh.org"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/crypto/tink/subtle/X25519;->generatePrivateKey()[B

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/Curve25519Exchange;->clientPrivate:[B

    .line 43
    :try_start_0
    invoke-static {p1}, Lcom/google/crypto/tink/subtle/X25519;->publicFromPrivate([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/Curve25519Exchange;->clientPublic:[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 45
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setF([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    .line 65
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/Curve25519Exchange;->serverPublic:[B

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/Curve25519Exchange;->clientPrivate:[B

    invoke-static {v0, p1}, Lcom/google/crypto/tink/subtle/X25519;->computeSharedSecret([B[B)[B

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 69
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 70
    aget-byte v2, p1, v0

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 75
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/dh/Curve25519Exchange;->sharedSecret:Ljava/math/BigInteger;

    return-void

    .line 73
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid key computed; all zeroes"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 77
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 62
    :cond_2
    new-instance v0, Ljava/io/IOException;

    array-length p1, p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Server sent invalid key length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " (expected 32)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
