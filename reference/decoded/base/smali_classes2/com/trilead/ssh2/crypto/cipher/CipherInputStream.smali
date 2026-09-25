.class public Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;
.super Ljava/lang/Object;
.source "CipherInputStream.java"


# instance fields
.field private final bi:Ljava/io/BufferedInputStream;

.field private blockSize:I

.field private buffer:[B

.field private currentCipher:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

.field private enc:[B

.field private pos:I


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Ljava/io/InputStream;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    instance-of v0, p2, Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_0

    .line 26
    check-cast p2, Ljava/io/BufferedInputStream;

    iput-object p2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->bi:Ljava/io/BufferedInputStream;

    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->bi:Ljava/io/BufferedInputStream;

    .line 30
    :goto_0
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->changeCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;)V

    return-void
.end method

.method private getBlock()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 45
    :goto_0
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->blockSize:I

    if-ge v1, v2, :cond_1

    .line 47
    iget-object v3, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->bi:Ljava/io/BufferedInputStream;

    iget-object v4, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->enc:[B

    sub-int/2addr v2, v1

    invoke-virtual {v3, v4, v1, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot read full block, EOF reached."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->currentCipher:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    iget-object v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->enc:[B

    iget-object v3, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->buffer:[B

    invoke-interface {v1, v2, v0, v3, v0}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->transformBlock([BI[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    iput v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->pos:I

    return-void

    .line 59
    :catch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error while decrypting block."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public changeCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;)V
    .locals 1

    .line 35
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->currentCipher:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    .line 36
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->blockSize:I

    .line 37
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->buffer:[B

    .line 38
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->enc:[B

    .line 39
    iput p1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->pos:I

    return-void
.end method

.method public peekPlain([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->pos:I

    iget v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->blockSize:I

    if-ne v0, v1, :cond_2

    .line 119
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->bi:Ljava/io/BufferedInputStream;

    invoke-virtual {v0, p3}, Ljava/io/BufferedInputStream;->mark(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->bi:Ljava/io/BufferedInputStream;

    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    .line 124
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot fill buffer, EOF reached."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 128
    iget-object p2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->bi:Ljava/io/BufferedInputStream;

    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->reset()V

    .line 129
    throw p1

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->bi:Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    return v0

    .line 116
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot read plain since crypto buffer is not aligned."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->pos:I

    iget v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->blockSize:I

    if-lt v0, v1, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->getBlock()V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->buffer:[B

    iget v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 66
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-lez p3, :cond_1

    .line 75
    iget v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->pos:I

    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->blockSize:I

    if-lt v1, v2, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->getBlock()V

    .line 78
    :cond_0
    iget v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->blockSize:I

    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->pos:I

    sub-int/2addr v1, v2

    .line 79
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 80
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->buffer:[B

    iget v3, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->pos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->pos:I

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public readPlain([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->pos:I

    iget v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->blockSize:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 105
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->bi:Ljava/io/BufferedInputStream;

    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    .line 107
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot fill buffer, EOF reached."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return v0

    .line 101
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot read plain since crypto buffer is not aligned."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
