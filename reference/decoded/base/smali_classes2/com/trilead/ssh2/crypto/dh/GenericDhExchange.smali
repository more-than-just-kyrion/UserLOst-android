.class public abstract Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;
.super Ljava/lang/Object;
.source "GenericDhExchange.java"


# static fields
.field private static final log:Lcom/trilead/ssh2/log/Logger;


# instance fields
.field sharedSecret:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;->log:Lcom/trilead/ssh2/log/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;
    .locals 1

    .line 31
    const-string v0, "curve25519-sha256"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "curve25519-sha256@libssh.org"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    const-string v0, "ecdh-sha2-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 35
    new-instance p0, Lcom/trilead/ssh2/crypto/dh/EcDhExchange;

    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/dh/EcDhExchange;-><init>()V

    return-object p0

    .line 37
    :cond_1
    new-instance p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;

    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/dh/DhExchange;-><init>()V

    return-object p0

    .line 32
    :cond_2
    :goto_0
    new-instance p0, Lcom/trilead/ssh2/crypto/dh/Curve25519Exchange;

    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/dh/Curve25519Exchange;-><init>()V

    return-object p0
.end method


# virtual methods
.method public calculateH([B[B[B[B[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;

    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;->getHashAlgo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;-><init>(Ljava/lang/String;)V

    .line 77
    sget-object v1, Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v1}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Client: \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x5a

    invoke-virtual {v1, v4, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 80
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Server: \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 83
    :cond_0
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 84
    invoke-virtual {v0, p2}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 85
    invoke-virtual {v0, p3}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 86
    invoke-virtual {v0, p4}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 87
    invoke-virtual {v0, p5}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 88
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;->getE()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 89
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;->getServerE()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 90
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;->sharedSecret:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 92
    invoke-virtual {v0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->getDigest()[B

    move-result-object p1

    return-object p1
.end method

.method public abstract getE()[B
.end method

.method public abstract getHashAlgo()Ljava/lang/String;
.end method

.method public getK()Ljava/math/BigInteger;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;->sharedSecret:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    return-object v0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shared secret not yet known, need f first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getServerE()[B
.end method

.method public abstract init(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setF([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
