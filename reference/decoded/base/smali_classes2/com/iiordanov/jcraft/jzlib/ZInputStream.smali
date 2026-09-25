.class public Lcom/iiordanov/jcraft/jzlib/ZInputStream;
.super Ljava/io/FilterInputStream;
.source "ZInputStream.java"


# instance fields
.field protected buf:[B

.field protected buf1:[B

.field protected bufsize:I

.field protected compress:Z

.field protected flush:I

.field protected in:Ljava/io/InputStream;

.field private nomoreinput:Z

.field protected z:Lcom/iiordanov/jcraft/jzlib/ZStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/iiordanov/jcraft/jzlib/ZInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 4

    .line 66
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 43
    new-instance v0, Lcom/iiordanov/jcraft/jzlib/ZStream;

    invoke-direct {v0}, Lcom/iiordanov/jcraft/jzlib/ZStream;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    const/16 v1, 0x200

    .line 44
    iput v1, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->bufsize:I

    const/4 v2, 0x0

    .line 45
    iput v2, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->flush:I

    .line 46
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->buf:[B

    const/4 v1, 0x1

    new-array v3, v1, [B

    iput-object v3, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->buf1:[B

    .line 85
    iput-boolean v2, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->nomoreinput:Z

    .line 67
    iput-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->in:Ljava/io/InputStream;

    .line 68
    invoke-virtual {v0, p2}, Lcom/iiordanov/jcraft/jzlib/ZStream;->deflateInit(I)I

    .line 69
    iput-boolean v1, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->compress:Z

    .line 70
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget-object p2, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->buf:[B

    iput-object p2, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    .line 71
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iput v2, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 72
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iput v2, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 3

    .line 56
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 43
    new-instance v0, Lcom/iiordanov/jcraft/jzlib/ZStream;

    invoke-direct {v0}, Lcom/iiordanov/jcraft/jzlib/ZStream;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    const/16 v1, 0x200

    .line 44
    iput v1, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->bufsize:I

    const/4 v2, 0x0

    .line 45
    iput v2, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->flush:I

    .line 46
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->buf:[B

    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->buf1:[B

    .line 85
    iput-boolean v2, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->nomoreinput:Z

    .line 57
    iput-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->in:Ljava/io/InputStream;

    .line 58
    invoke-virtual {v0, p2}, Lcom/iiordanov/jcraft/jzlib/ZStream;->inflateInit(Z)I

    .line 59
    iput-boolean v2, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->compress:Z

    .line 60
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget-object p2, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->buf:[B

    iput-object p2, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    .line 61
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iput v2, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 62
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iput v2, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getFlushMode()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->flush:I

    return v0
.end method

.method public getTotalIn()J
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget-wide v0, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    return-wide v0
.end method

.method public getTotalOut()J
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget-wide v0, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_out:J

    return-wide v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->buf1:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->buf1:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iput-object p1, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_out:[B

    .line 92
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iput p2, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_out_index:I

    .line 93
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iput p3, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    .line 95
    :cond_1
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget p1, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    const/4 p2, 0x1

    const/4 v1, -0x1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->nomoreinput:Z

    if-nez p1, :cond_2

    .line 96
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iput v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 97
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->buf:[B

    iget v4, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->bufsize:I

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    iput v2, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    .line 98
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget p1, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    if-ne p1, v1, :cond_2

    .line 99
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iput v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    .line 100
    iput-boolean p2, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->nomoreinput:Z

    .line 103
    :cond_2
    iget-boolean p1, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->compress:Z

    if-eqz p1, :cond_3

    .line 104
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->flush:I

    invoke-virtual {p1, v2}, Lcom/iiordanov/jcraft/jzlib/ZStream;->deflate(I)I

    move-result p1

    goto :goto_0

    .line 106
    :cond_3
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->flush:I

    invoke-virtual {p1, v2}, Lcom/iiordanov/jcraft/jzlib/ZStream;->inflate(I)I

    move-result p1

    .line 107
    :goto_0
    iget-boolean v2, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->nomoreinput:Z

    if-eqz v2, :cond_4

    const/4 v3, -0x5

    if-ne p1, v3, :cond_4

    return v1

    :cond_4
    if-eqz p1, :cond_6

    if-eq p1, p2, :cond_6

    .line 110
    new-instance p1, Lcom/iiordanov/jcraft/jzlib/ZStreamException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean p3, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->compress:Z

    if-eqz p3, :cond_5

    const-string p3, "de"

    goto :goto_1

    :cond_5
    const-string p3, "in"

    :goto_1
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "flating: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget-object p3, p3, Lcom/iiordanov/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/iiordanov/jcraft/jzlib/ZStreamException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    if-nez v2, :cond_7

    if-ne p1, p2, :cond_8

    .line 111
    :cond_7
    iget-object p2, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget p2, p2, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    if-ne p2, p3, :cond_8

    return v1

    .line 114
    :cond_8
    iget-object p2, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget p2, p2, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    if-ne p2, p3, :cond_9

    if-eqz p1, :cond_1

    .line 116
    :cond_9
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->z:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget p1, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    sub-int/2addr p3, p1

    return p3
.end method

.method public setFlushMode(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->flush:I

    return-void
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x200

    int-to-long v1, v0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    long-to-int v0, p1

    .line 123
    :cond_0
    new-array p1, v0, [B

    .line 124
    invoke-virtual {p0, p1}, Lcom/iiordanov/jcraft/jzlib/ZInputStream;->read([B)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method
