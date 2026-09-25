.class public Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;
.super Ljava/lang/Object;
.source "DhGroupExchange.java"


# instance fields
.field private e:Ljava/math/BigInteger;

.field private f:Ljava/math/BigInteger;

.field private g:Ljava/math/BigInteger;

.field private k:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->p:Ljava/math/BigInteger;

    .line 40
    iput-object p2, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->g:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public calculateH(Ljava/lang/String;[B[B[B[B[BLcom/trilead/ssh2/DHGexParameters;)[B
    .locals 1

    .line 93
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;

    invoke-direct {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, p2}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 96
    invoke-virtual {v0, p3}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 97
    invoke-virtual {v0, p4}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 98
    invoke-virtual {v0, p5}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 99
    invoke-virtual {v0, p6}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 100
    invoke-virtual {p7}, Lcom/trilead/ssh2/DHGexParameters;->getMin_group_len()I

    move-result p1

    if-lez p1, :cond_0

    .line 101
    invoke-virtual {p7}, Lcom/trilead/ssh2/DHGexParameters;->getMin_group_len()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateUINT32(I)V

    .line 102
    :cond_0
    invoke-virtual {p7}, Lcom/trilead/ssh2/DHGexParameters;->getPref_group_len()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateUINT32(I)V

    .line 103
    invoke-virtual {p7}, Lcom/trilead/ssh2/DHGexParameters;->getMax_group_len()I

    move-result p1

    if-lez p1, :cond_1

    .line 104
    invoke-virtual {p7}, Lcom/trilead/ssh2/DHGexParameters;->getMax_group_len()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateUINT32(I)V

    .line 105
    :cond_1
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 106
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->g:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 107
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->e:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 108
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->f:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 109
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->k:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 111
    invoke-virtual {v0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->getDigest()[B

    move-result-object p1

    return-object p1
.end method

.method public getE()Ljava/math/BigInteger;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->e:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    return-object v0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getK()Ljava/math/BigInteger;
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->k:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    return-object v0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shared secret not yet known, need f first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Ljava/security/SecureRandom;)V
    .locals 2

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->k:Ljava/math/BigInteger;

    .line 47
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->x:Ljava/math/BigInteger;

    .line 48
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->g:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {p1, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->e:Ljava/math/BigInteger;

    return-void
.end method

.method public setF(Ljava/math/BigInteger;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->e:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    .line 81
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_0

    .line 86
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->f:Ljava/math/BigInteger;

    .line 87
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->x:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {p1, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->k:Ljava/math/BigInteger;

    return-void

    .line 84
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid f specified!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not initialized!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
