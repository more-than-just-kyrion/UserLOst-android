.class public Lcom/trilead/ssh2/crypto/cipher/DESede$CTR;
.super Lcom/trilead/ssh2/crypto/cipher/DESede$Wrapper;
.source "DESede.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/crypto/cipher/DESede;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CTR"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/crypto/cipher/DESede$Wrapper;-><init>(Lcom/trilead/ssh2/crypto/cipher/DESede-IA;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getBlockSize()I
    .locals 1

    .line 122
    invoke-super {p0}, Lcom/trilead/ssh2/crypto/cipher/DESede$Wrapper;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public init(Z[B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/trilead/ssh2/crypto/cipher/DESede;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/cipher/DESede;-><init>()V

    const/4 v1, 0x1

    .line 126
    invoke-interface {v0, v1, p2, p3}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->init(Z[B[B)V

    .line 127
    new-instance p2, Lcom/trilead/ssh2/crypto/cipher/CTRMode;

    invoke-direct {p2, v0, p3, p1}, Lcom/trilead/ssh2/crypto/cipher/CTRMode;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;[BZ)V

    iput-object p2, p0, Lcom/trilead/ssh2/crypto/cipher/DESede$CTR;->bc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    return-void
.end method

.method public bridge synthetic transformBlock([BI[BI)V
    .locals 0

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Lcom/trilead/ssh2/crypto/cipher/DESede$Wrapper;->transformBlock([BI[BI)V

    return-void
.end method
