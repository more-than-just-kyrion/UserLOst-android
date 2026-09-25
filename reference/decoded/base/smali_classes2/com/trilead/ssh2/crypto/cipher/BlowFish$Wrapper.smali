.class abstract Lcom/trilead/ssh2/crypto/cipher/BlowFish$Wrapper;
.super Ljava/lang/Object;
.source "BlowFish.java"

# interfaces
.implements Lcom/trilead/ssh2/crypto/cipher/BlockCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/crypto/cipher/BlowFish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Wrapper"
.end annotation


# instance fields
.field protected bc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/trilead/ssh2/crypto/cipher/BlowFish-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/cipher/BlowFish$Wrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/BlowFish$Wrapper;->bc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    invoke-interface {v0}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public transformBlock([BI[BI)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/BlowFish$Wrapper;->bc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->transformBlock([BI[BI)V

    return-void
.end method
