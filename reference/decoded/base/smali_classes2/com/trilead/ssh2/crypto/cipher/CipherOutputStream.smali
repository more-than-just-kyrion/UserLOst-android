.class public Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;
.super Ljava/lang/Object;
.source "CipherOutputStream.java"


# instance fields
.field private blockSize:I

.field private final bo:Ljava/io/BufferedOutputStream;

.field private buffer:[B

.field private currentCipher:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

.field private enc:[B

.field private pos:I

.field private recordingOutput:Z

.field private final recordingOutputStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Ljava/io/OutputStream;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->recordingOutputStream:Ljava/io/ByteArrayOutputStream;

    .line 28
    instance-of v0, p2, Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_0

    .line 29
    check-cast p2, Ljava/io/BufferedOutputStream;

    iput-object p2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->bo:Ljava/io/BufferedOutputStream;

    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->bo:Ljava/io/BufferedOutputStream;

    .line 33
    :goto_0
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->changeCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;)V

    return-void
.end method

.method private writeBlock()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->currentCipher:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->buffer:[B

    iget-object v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->enc:[B

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2, v3}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->transformBlock([BI[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->bo:Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->enc:[B

    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->blockSize:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 76
    iput v3, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    .line 78
    iget-boolean v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->recordingOutput:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->recordingOutputStream:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->enc:[B

    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->blockSize:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error while decrypting block."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public changeCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;)V
    .locals 1

    .line 46
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->currentCipher:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    .line 47
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->blockSize:I

    .line 48
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->buffer:[B

    .line 49
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->enc:[B

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->bo:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "FATAL: cannot flush since crypto buffer is not aligned."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRecordedOutput()[B
    .locals 2

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->recordingOutput:Z

    .line 59
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->recordingOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->recordingOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-object v0
.end method

.method public startRecording()V
    .locals 1

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->recordingOutput:Z

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->buffer:[B

    iget v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 103
    iget p1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->blockSize:I

    if-lt v2, p1, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->writeBlock()V

    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    if-lez p3, :cond_1

    .line 87
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->blockSize:I

    iget v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    sub-int/2addr v0, v1

    .line 88
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 90
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->buffer:[B

    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iget v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 95
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->blockSize:I

    if-lt v1, v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->writeBlock()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writePlain(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->bo:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    return-void

    .line 110
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Cannot write plain since crypto buffer is not aligned."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writePlain([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->bo:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V

    return-void

    .line 117
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot write plain since crypto buffer is not aligned."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
