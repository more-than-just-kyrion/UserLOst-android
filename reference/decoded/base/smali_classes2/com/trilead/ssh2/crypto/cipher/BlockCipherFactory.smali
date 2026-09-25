.class public Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;
.super Ljava/lang/Object;
.source "BlockCipherFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;
    }
.end annotation


# static fields
.field private static final ciphers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/ArrayList;

    .line 37
    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    const-string v2, "aes256-ctr"

    const/16 v3, 0x10

    const/16 v4, 0x20

    const-string v5, "com.trilead.ssh2.crypto.cipher.AES$CTR"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    const-string v2, "aes128-ctr"

    invoke-direct {v1, v2, v3, v3, v5}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    const-string v2, "com.trilead.ssh2.crypto.cipher.BlowFish$CTR"

    const-string v5, "blowfish-ctr"

    const/16 v6, 0x8

    invoke-direct {v1, v5, v6, v3, v2}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    const-string v2, "aes256-cbc"

    const-string v5, "com.trilead.ssh2.crypto.cipher.AES$CBC"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    const-string v2, "aes128-cbc"

    invoke-direct {v1, v2, v3, v3, v5}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    const-string v2, "blowfish-cbc"

    const-string v4, "com.trilead.ssh2.crypto.cipher.BlowFish$CBC"

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    const-string v2, "com.trilead.ssh2.crypto.cipher.DESede$CTR"

    const-string v3, "3des-ctr"

    const/16 v4, 0x18

    invoke-direct {v1, v3, v6, v4, v2}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    const-string v2, "3des-cbc"

    const-string v3, "com.trilead.ssh2.crypto.cipher.DESede$CBC"

    invoke-direct {v1, v2, v6, v4, v3}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCipherList([Ljava/lang/String;)V
    .locals 3

    .line 62
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 63
    invoke-static {v2}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getEntry(Ljava/lang/String;)Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static createCipher(Ljava/lang/String;Z[B[B)Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
    .locals 3

    .line 70
    :try_start_0
    invoke-static {p0}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getEntry(Ljava/lang/String;)Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    move-result-object v0

    .line 71
    iget-object v0, v0, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;->cipherClass:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 72
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 73
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    .line 74
    invoke-interface {v0, p1, p2, p3}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->init(Z[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 79
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Cannot instantiate "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static getBlockSize(Ljava/lang/String;)I
    .locals 0

    .line 94
    invoke-static {p0}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getEntry(Ljava/lang/String;)Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    move-result-object p0

    .line 95
    iget p0, p0, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;->blocksize:I

    return p0
.end method

.method public static getDefaultCipherList()[Ljava/lang/String;
    .locals 4

    .line 51
    sget-object v0, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 52
    :goto_0
    sget-object v2, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 54
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    .line 55
    iget-object v2, v2, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;->type:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getEntry(Ljava/lang/String;)Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;
    .locals 3

    .line 85
    sget-object v0, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    .line 86
    iget-object v2, v1, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;->type:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown algorithm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getKeySize(Ljava/lang/String;)I
    .locals 0

    .line 100
    invoke-static {p0}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getEntry(Ljava/lang/String;)Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    move-result-object p0

    .line 101
    iget p0, p0, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;->keysize:I

    return p0
.end method
