.class Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;
.super Ljava/lang/Object;
.source "BlockCipherFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CipherEntry"
.end annotation


# instance fields
.field final blocksize:I

.field final cipherClass:Ljava/lang/String;

.field final keysize:I

.field final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;->type:Ljava/lang/String;

    .line 25
    iput p2, p0, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;->blocksize:I

    .line 26
    iput p3, p0, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;->keysize:I

    .line 27
    iput-object p4, p0, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;->cipherClass:Ljava/lang/String;

    return-void
.end method
