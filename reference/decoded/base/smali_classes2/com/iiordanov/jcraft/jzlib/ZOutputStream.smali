.class public Lcom/iiordanov/jcraft/jzlib/ZOutputStream;
.super Ljava/io/OutputStream;
.source "ZOutputStream.java"


# instance fields
.field protected buf:[B

.field protected buf1:[B

.field protected bufsize:I

.field protected compress:Z

.field protected flush:I

.field protected out:Ljava/io/OutputStream;

.field protected z:Lcom/iiordanov/jcraft/jzlib/ZStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 42
    new-instance v0, Lcom/iiordanov/jcraft/jzlib/ZStream;

    invoke-direct {v0}, Lcom/iiordanov/jcraft/jzlib/ZStream;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    const/16 v1, 0x200

    .line 43
    iput v1, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->bufsize:I

    const/4 v2, 0x0

    .line 44
    iput v2, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->flush:I

    .line 45
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->buf:[B

    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->buf1:[B

    .line 53
    iput-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    .line 54
    invoke-virtual {v0}, Lcom/iiordanov/jcraft/jzlib/ZStream;->inflateInit()I

    .line 55
    iput-boolean v2, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->compress:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 42
    new-instance v0, Lcom/iiordanov/jcraft/jzlib/ZStream;

    invoke-direct {v0}, Lcom/iiordanov/jcraft/jzlib/ZStream;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    const/16 v1, 0x200

    .line 43
    iput v1, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->bufsize:I

    const/4 v2, 0x0

    .line 44
    iput v2, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->flush:I

    .line 45
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->buf:[B

    const/4 v1, 0x1

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->buf1:[B

    .line 63
    iput-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    .line 64
    invoke-virtual {v0, p2, p3}, Lcom/iiordanov/jcraft/jzlib/ZStream;->deflateInit(IZ)I

    .line 65
    iput-boolean v1, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->compress:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 134
    invoke-virtual {p0}, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->end()V

    .line 135
    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 136
    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    .line 137
    throw v1

    .line 134
    :catch_0
    :goto_0
    invoke-virtual {p0}, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->end()V

    .line 135
    iget-object v1, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 136
    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    return-void
.end method

.method public end()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-boolean v1, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->compress:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/iiordanov/jcraft/jzlib/ZStream;->deflateEnd()I

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {v0}, Lcom/iiordanov/jcraft/jzlib/ZStream;->inflateEnd()I

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    invoke-virtual {v0}, Lcom/iiordanov/jcraft/jzlib/ZStream;->free()V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    return-void
.end method

.method public finish()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget-object v1, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->buf:[B

    iput-object v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_out:[B

    .line 107
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    const/4 v1, 0x0

    iput v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_out_index:I

    .line 108
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->bufsize:I

    iput v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    .line 109
    iget-boolean v0, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->compress:Z

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    invoke-virtual {v0, v2}, Lcom/iiordanov/jcraft/jzlib/ZStream;->deflate(I)I

    move-result v0

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    invoke-virtual {v0, v2}, Lcom/iiordanov/jcraft/jzlib/ZStream;->inflate(I)I

    move-result v0

    :goto_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    if-eqz v0, :cond_3

    .line 112
    new-instance v0, Lcom/iiordanov/jcraft/jzlib/ZStreamException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->compress:Z

    if-eqz v2, :cond_2

    const-string v2, "de"

    goto :goto_1

    :cond_2
    const-string v2, "in"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "flating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget-object v2, v2, Lcom/iiordanov/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iiordanov/jcraft/jzlib/ZStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_3
    iget v0, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->bufsize:I

    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget v2, v2, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    sub-int/2addr v0, v2

    if-lez v0, :cond_4

    .line 114
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->buf:[B

    iget v3, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->bufsize:I

    iget-object v4, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget v4, v4, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 117
    :cond_4
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget v0, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget v0, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->flush()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public getFlushMode()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->flush:I

    return v0
.end method

.method public getTotalIn()J
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget-wide v0, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    return-wide v0
.end method

.method public getTotalOut()J
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget-wide v0, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_out:J

    return-wide v0
.end method

.method public setFlushMode(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->flush:I

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->buf1:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 70
    invoke-virtual {p0, v0, v1, p1}, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iput-object p1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    .line 78
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iput p2, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 79
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iput p3, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget-object p2, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->buf:[B

    iput-object p2, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_out:[B

    .line 82
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    const/4 p2, 0x0

    iput p2, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_out_index:I

    .line 83
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget p3, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->bufsize:I

    iput p3, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    .line 84
    iget-boolean p1, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->compress:Z

    if-eqz p1, :cond_2

    .line 85
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget p3, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->flush:I

    invoke-virtual {p1, p3}, Lcom/iiordanov/jcraft/jzlib/ZStream;->deflate(I)I

    move-result p1

    goto :goto_0

    .line 87
    :cond_2
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget p3, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->flush:I

    invoke-virtual {p1, p3}, Lcom/iiordanov/jcraft/jzlib/ZStream;->inflate(I)I

    move-result p1

    :goto_0
    if-eqz p1, :cond_4

    .line 89
    new-instance p1, Lcom/iiordanov/jcraft/jzlib/ZStreamException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean p3, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->compress:Z

    if-eqz p3, :cond_3

    const-string p3, "de"

    goto :goto_1

    :cond_3
    const-string p3, "in"

    :goto_1
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "flating: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget-object p3, p3, Lcom/iiordanov/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/iiordanov/jcraft/jzlib/ZStreamException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_4
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    iget-object p3, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->buf:[B

    iget v0, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->bufsize:I

    iget-object v1, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget v1, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, p3, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 92
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget p1, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZOutputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget p1, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    if-eqz p1, :cond_1

    return-void
.end method
