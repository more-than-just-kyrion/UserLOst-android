.class public Lcom/trilead/ssh2/crypto/cipher/DESede;
.super Lcom/trilead/ssh2/crypto/cipher/DES;
.source "DESede.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/crypto/cipher/DESede$CTR;,
        Lcom/trilead/ssh2/crypto/cipher/DESede$CBC;,
        Lcom/trilead/ssh2/crypto/cipher/DESede$Wrapper;
    }
.end annotation


# instance fields
.field private encrypt:Z

.field private key1:[I

.field private key2:[I

.field private key3:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/cipher/DES;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key1:[I

    .line 40
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key2:[I

    .line 41
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key3:[I

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 74
    const-string v0, "DESede"

    return-object v0
.end method

.method public init(Z[B[B)V
    .locals 1

    const/4 p3, 0x0

    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/trilead/ssh2/crypto/cipher/DESede;->generateWorkingKey(Z[BI)[I

    move-result-object p3

    iput-object p3, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key1:[I

    xor-int/lit8 p3, p1, 0x1

    const/16 v0, 0x8

    .line 66
    invoke-virtual {p0, p3, p2, v0}, Lcom/trilead/ssh2/crypto/cipher/DESede;->generateWorkingKey(Z[BI)[I

    move-result-object p3

    iput-object p3, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key2:[I

    const/16 p3, 0x10

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lcom/trilead/ssh2/crypto/cipher/DESede;->generateWorkingKey(Z[BI)[I

    move-result-object p2

    iput-object p2, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key3:[I

    .line 69
    iput-boolean p1, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->encrypt:Z

    return-void
.end method

.method public transformBlock([BI[BI)V
    .locals 6

    .line 80
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key1:[I

    if-eqz v1, :cond_1

    .line 85
    iget-boolean v0, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->encrypt:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .line 87
    invoke-virtual/range {v0 .. v5}, Lcom/trilead/ssh2/crypto/cipher/DESede;->desFunc([I[BI[BI)V

    .line 88
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key2:[I

    move-object v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/trilead/ssh2/crypto/cipher/DESede;->desFunc([I[BI[BI)V

    .line 89
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key3:[I

    invoke-virtual/range {v0 .. v5}, Lcom/trilead/ssh2/crypto/cipher/DESede;->desFunc([I[BI[BI)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key3:[I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/trilead/ssh2/crypto/cipher/DESede;->desFunc([I[BI[BI)V

    .line 94
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key2:[I

    move-object v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/trilead/ssh2/crypto/cipher/DESede;->desFunc([I[BI[BI)V

    .line 95
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key1:[I

    invoke-virtual/range {v0 .. v5}, Lcom/trilead/ssh2/crypto/cipher/DESede;->desFunc([I[BI[BI)V

    :goto_0
    return-void

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DESede engine not initialised!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
