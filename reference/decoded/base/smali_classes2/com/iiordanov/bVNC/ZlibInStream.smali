.class public Lcom/iiordanov/bVNC/ZlibInStream;
.super Lcom/iiordanov/bVNC/InStream;
.source "ZlibInStream.java"


# static fields
.field static final defaultBufSize:I = 0x4000


# instance fields
.field private bufSize:I

.field private bytesIn:I

.field private inflater:Ljava/util/zip/Inflater;

.field private ptrOffset:I

.field private underlying:Lcom/iiordanov/bVNC/InStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x4000

    .line 37
    invoke-direct {p0, v0}, Lcom/iiordanov/bVNC/ZlibInStream;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/iiordanov/bVNC/InStream;-><init>()V

    .line 31
    iput p1, p0, Lcom/iiordanov/bVNC/ZlibInStream;->bufSize:I

    .line 32
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/iiordanov/bVNC/ZlibInStream;->b:[B

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/iiordanov/bVNC/ZlibInStream;->ptrOffset:I

    iput p1, p0, Lcom/iiordanov/bVNC/ZlibInStream;->end:I

    iput p1, p0, Lcom/iiordanov/bVNC/ZlibInStream;->ptr:I

    .line 34
    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1}, Ljava/util/zip/Inflater;-><init>()V

    iput-object p1, p0, Lcom/iiordanov/bVNC/ZlibInStream;->inflater:Ljava/util/zip/Inflater;

    return-void
.end method

.method private decompress()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/ZlibInStream;->underlying:Lcom/iiordanov/bVNC/InStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/InStream;->check(I)V

    .line 89
    iget-object v0, p0, Lcom/iiordanov/bVNC/ZlibInStream;->underlying:Lcom/iiordanov/bVNC/InStream;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/InStream;->getend()I

    move-result v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/ZlibInStream;->underlying:Lcom/iiordanov/bVNC/InStream;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/InStream;->getptr()I

    move-result v1

    sub-int/2addr v0, v1

    .line 90
    iget v1, p0, Lcom/iiordanov/bVNC/ZlibInStream;->bytesIn:I

    if-le v0, v1, :cond_0

    move v0, v1

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/iiordanov/bVNC/ZlibInStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/iiordanov/bVNC/ZlibInStream;->inflater:Ljava/util/zip/Inflater;

    iget-object v2, p0, Lcom/iiordanov/bVNC/ZlibInStream;->underlying:Lcom/iiordanov/bVNC/InStream;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/InStream;->getbuf()[B

    move-result-object v2

    iget-object v3, p0, Lcom/iiordanov/bVNC/ZlibInStream;->underlying:Lcom/iiordanov/bVNC/InStream;

    invoke-virtual {v3}, Lcom/iiordanov/bVNC/InStream;->getptr()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/iiordanov/bVNC/ZlibInStream;->inflater:Ljava/util/zip/Inflater;

    iget-object v2, p0, Lcom/iiordanov/bVNC/ZlibInStream;->b:[B

    iget v3, p0, Lcom/iiordanov/bVNC/ZlibInStream;->end:I

    iget v4, p0, Lcom/iiordanov/bVNC/ZlibInStream;->bufSize:I

    iget v5, p0, Lcom/iiordanov/bVNC/ZlibInStream;->end:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v1

    .line 99
    iget v2, p0, Lcom/iiordanov/bVNC/ZlibInStream;->end:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/iiordanov/bVNC/ZlibInStream;->end:I

    .line 100
    iget-object v1, p0, Lcom/iiordanov/bVNC/ZlibInStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    iget v1, p0, Lcom/iiordanov/bVNC/ZlibInStream;->bytesIn:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/iiordanov/bVNC/ZlibInStream;->bytesIn:I

    .line 102
    iget-object v1, p0, Lcom/iiordanov/bVNC/ZlibInStream;->underlying:Lcom/iiordanov/bVNC/InStream;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/InStream;->getptr()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/iiordanov/bVNC/InStream;->setptr(I)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    .line 105
    :catch_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "ZlibInStream: inflate failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected overrun(II)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    iget v0, p0, Lcom/iiordanov/bVNC/ZlibInStream;->bufSize:I

    if-gt p1, v0, :cond_4

    .line 61
    iget-object v0, p0, Lcom/iiordanov/bVNC/ZlibInStream;->underlying:Lcom/iiordanov/bVNC/InStream;

    if-eqz v0, :cond_3

    .line 64
    iget v0, p0, Lcom/iiordanov/bVNC/ZlibInStream;->end:I

    iget v1, p0, Lcom/iiordanov/bVNC/ZlibInStream;->ptr:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/iiordanov/bVNC/ZlibInStream;->b:[B

    iget v2, p0, Lcom/iiordanov/bVNC/ZlibInStream;->ptr:I

    iget-object v3, p0, Lcom/iiordanov/bVNC/ZlibInStream;->b:[B

    iget v4, p0, Lcom/iiordanov/bVNC/ZlibInStream;->end:I

    iget v5, p0, Lcom/iiordanov/bVNC/ZlibInStream;->ptr:I

    sub-int/2addr v4, v5

    invoke-static {v0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    :cond_0
    iget v0, p0, Lcom/iiordanov/bVNC/ZlibInStream;->ptrOffset:I

    iget v2, p0, Lcom/iiordanov/bVNC/ZlibInStream;->ptr:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/iiordanov/bVNC/ZlibInStream;->ptrOffset:I

    .line 68
    iget v0, p0, Lcom/iiordanov/bVNC/ZlibInStream;->end:I

    iget v2, p0, Lcom/iiordanov/bVNC/ZlibInStream;->ptr:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/iiordanov/bVNC/ZlibInStream;->end:I

    .line 69
    iput v1, p0, Lcom/iiordanov/bVNC/ZlibInStream;->ptr:I

    .line 71
    :goto_0
    iget v0, p0, Lcom/iiordanov/bVNC/ZlibInStream;->end:I

    if-ge v0, p1, :cond_1

    .line 72
    invoke-direct {p0}, Lcom/iiordanov/bVNC/ZlibInStream;->decompress()V

    goto :goto_0

    :cond_1
    mul-int v0, p1, p2

    .line 75
    iget v1, p0, Lcom/iiordanov/bVNC/ZlibInStream;->end:I

    if-le v0, v1, :cond_2

    .line 76
    iget p2, p0, Lcom/iiordanov/bVNC/ZlibInStream;->end:I

    div-int/2addr p2, p1

    :cond_2
    return p2

    .line 62
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "ZlibInStream overrun: no underlying stream"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "ZlibInStream overrun: max itemSize exceeded"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pos()I
    .locals 2

    .line 56
    iget v0, p0, Lcom/iiordanov/bVNC/ZlibInStream;->ptrOffset:I

    iget v1, p0, Lcom/iiordanov/bVNC/ZlibInStream;->ptr:I

    add-int/2addr v0, v1

    return v0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/iiordanov/bVNC/ZlibInStream;->end:I

    iput v0, p0, Lcom/iiordanov/bVNC/ZlibInStream;->ptr:I

    .line 47
    iget-object v1, p0, Lcom/iiordanov/bVNC/ZlibInStream;->underlying:Lcom/iiordanov/bVNC/InStream;

    if-nez v1, :cond_0

    return-void

    .line 49
    :cond_0
    :goto_0
    iget v1, p0, Lcom/iiordanov/bVNC/ZlibInStream;->bytesIn:I

    if-lez v1, :cond_1

    .line 50
    invoke-direct {p0}, Lcom/iiordanov/bVNC/ZlibInStream;->decompress()V

    .line 51
    iput v0, p0, Lcom/iiordanov/bVNC/ZlibInStream;->end:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/iiordanov/bVNC/ZlibInStream;->underlying:Lcom/iiordanov/bVNC/InStream;

    return-void
.end method

.method public setUnderlying(Lcom/iiordanov/bVNC/InStream;I)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/iiordanov/bVNC/ZlibInStream;->underlying:Lcom/iiordanov/bVNC/InStream;

    .line 41
    iput p2, p0, Lcom/iiordanov/bVNC/ZlibInStream;->bytesIn:I

    const/4 p1, 0x0

    .line 42
    iput p1, p0, Lcom/iiordanov/bVNC/ZlibInStream;->end:I

    iput p1, p0, Lcom/iiordanov/bVNC/ZlibInStream;->ptr:I

    return-void
.end method
