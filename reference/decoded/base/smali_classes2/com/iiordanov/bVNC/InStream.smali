.class public abstract Lcom/iiordanov/bVNC/InStream;
.super Ljava/lang/Object;
.source "InStream.java"


# instance fields
.field protected b:[B

.field protected end:I

.field protected ptr:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bytesAvailable()Z
    .locals 2

    .line 134
    iget v0, p0, Lcom/iiordanov/bVNC/InStream;->end:I

    iget v1, p0, Lcom/iiordanov/bVNC/InStream;->ptr:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final check(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    iget v0, p0, Lcom/iiordanov/bVNC/InStream;->ptr:I

    mul-int v1, p1, p2

    add-int/2addr v1, v0

    iget v2, p0, Lcom/iiordanov/bVNC/InStream;->end:I

    if-le v1, v2, :cond_1

    add-int v1, v0, p1

    if-le v1, v2, :cond_0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/iiordanov/bVNC/InStream;->overrun(II)I

    move-result p1

    return p1

    :cond_0
    sub-int/2addr v2, v0

    .line 38
    div-int p2, v2, p1

    :cond_1
    return p2
.end method

.method public final check(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    iget v0, p0, Lcom/iiordanov/bVNC/InStream;->ptr:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/iiordanov/bVNC/InStream;->end:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/iiordanov/bVNC/InStream;->overrun(II)I

    :cond_0
    return-void
.end method

.method public final getbuf()[B
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/iiordanov/bVNC/InStream;->b:[B

    return-object v0
.end method

.method public final getend()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/iiordanov/bVNC/InStream;->end:I

    return v0
.end method

.method public final getptr()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/iiordanov/bVNC/InStream;->ptr:I

    return v0
.end method

.method protected abstract overrun(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract pos()I
.end method

.method public readBytes([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    const/4 v0, 0x1

    sub-int v1, p3, p2

    .line 92
    invoke-virtual {p0, v0, v1}, Lcom/iiordanov/bVNC/InStream;->check(II)I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/iiordanov/bVNC/InStream;->b:[B

    iget v2, p0, Lcom/iiordanov/bVNC/InStream;->ptr:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    iget v1, p0, Lcom/iiordanov/bVNC/InStream;->ptr:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/iiordanov/bVNC/InStream;->ptr:I

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final readOpaque16()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/InStream;->readU16()I

    move-result v0

    return v0
.end method

.method public final readOpaque24A()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x3

    .line 115
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/InStream;->check(I)V

    iget-object v1, p0, Lcom/iiordanov/bVNC/InStream;->b:[B

    iget v2, p0, Lcom/iiordanov/bVNC/InStream;->ptr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/iiordanov/bVNC/InStream;->ptr:I

    aget-byte v4, v1, v2

    add-int/lit8 v5, v2, 0x2

    .line 116
    iput v5, p0, Lcom/iiordanov/bVNC/InStream;->ptr:I

    aget-byte v3, v1, v3

    add-int/2addr v2, v0

    iput v2, p0, Lcom/iiordanov/bVNC/InStream;->ptr:I

    aget-byte v0, v1, v5

    shl-int/lit8 v1, v4, 0x18

    shl-int/lit8 v2, v3, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public final readOpaque24B()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x3

    .line 121
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/InStream;->check(I)V

    iget-object v1, p0, Lcom/iiordanov/bVNC/InStream;->b:[B

    iget v2, p0, Lcom/iiordanov/bVNC/InStream;->ptr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/iiordanov/bVNC/InStream;->ptr:I

    aget-byte v4, v1, v2

    add-int/lit8 v5, v2, 0x2

    .line 122
    iput v5, p0, Lcom/iiordanov/bVNC/InStream;->ptr:I

    aget-byte v3, v1, v3

    add-int/2addr v2, v0

    iput v2, p0, Lcom/iiordanov/bVNC/InStream;->ptr:I

    aget-byte v0, v1, v5

    shl-int/lit8 v1, v4, 0x10

    shl-int/lit8 v2, v3, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public final readOpaque32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/InStream;->readU32()I

    move-result v0

    return v0
.end method

.method public final readOpaque8()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/InStream;->readU8()I

    move-result v0

    return v0
.end method

.method public final readS16()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    .line 55
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/InStream;->check(I)V

    iget-object v1, p0, Lcom/iiordanov/bVNC/InStream;->b:[B

    iget v2, p0, Lcom/iiordanov/bVNC/InStream;->ptr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/iiordanov/bVNC/InStream;->ptr:I

    aget-byte v4, v1, v2

    add-int/2addr v2, v0

    .line 56
    iput v2, p0, Lcom/iiordanov/bVNC/InStream;->ptr:I

    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v4, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public final readS32()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x4

    .line 60
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/InStream;->check(I)V

    iget-object v1, p0, Lcom/iiordanov/bVNC/InStream;->b:[B

    iget v2, p0, Lcom/iiordanov/bVNC/InStream;->ptr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/iiordanov/bVNC/InStream;->ptr:I

    aget-byte v4, v1, v2

    add-int/lit8 v5, v2, 0x2

    .line 61
    iput v5, p0, Lcom/iiordanov/bVNC/InStream;->ptr:I

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v6, v2, 0x3

    .line 62
    iput v6, p0, Lcom/iiordanov/bVNC/InStream;->ptr:I

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v2, v0

    .line 63
    iput v2, p0, Lcom/iiordanov/bVNC/InStream;->ptr:I

    aget-byte v0, v1, v6

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v4, 0x18

    shl-int/lit8 v2, v3, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v5, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public final readS8()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/InStream;->check(I)V

    iget-object v0, p0, Lcom/iiordanov/bVNC/InStream;->b:[B

    iget v1, p0, Lcom/iiordanov/bVNC/InStream;->ptr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/iiordanov/bVNC/InStream;->ptr:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public final readU16()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/InStream;->readS16()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final readU32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/InStream;->readS32()I

    move-result v0

    return v0
.end method

.method public final readU8()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/InStream;->readS8()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final setptr(I)V
    .locals 0

    .line 143
    iput p1, p0, Lcom/iiordanov/bVNC/InStream;->ptr:I

    return-void
.end method

.method public final skip(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :goto_0
    if-lez p1, :cond_0

    const/4 v0, 0x1

    .line 81
    invoke-virtual {p0, v0, p1}, Lcom/iiordanov/bVNC/InStream;->check(II)I

    move-result v0

    .line 82
    iget v1, p0, Lcom/iiordanov/bVNC/InStream;->ptr:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/iiordanov/bVNC/InStream;->ptr:I

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
