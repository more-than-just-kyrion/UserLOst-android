.class public Lcom/iiordanov/util/ByteBufferStack;
.super Ljava/lang/Object;
.source "ByteBufferStack.java"


# static fields
.field public static final MAX_DEPTH:I = 0x14

.field public static final MAX_SIZE:I = 0x418


# instance fields
.field private m_buffer:[B

.field private m_depth:I

.field private m_max_depth:I

.field private m_max_size:I

.field private m_offsets:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x14

    const/16 v1, 0x418

    .line 30
    invoke-direct {p0, v0, v1}, Lcom/iiordanov/util/ByteBufferStack;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/iiordanov/util/ByteBufferStack;->m_depth:I

    .line 22
    iput p1, p0, Lcom/iiordanov/util/ByteBufferStack;->m_max_depth:I

    .line 23
    iput p2, p0, Lcom/iiordanov/util/ByteBufferStack;->m_max_size:I

    .line 24
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/iiordanov/util/ByteBufferStack;->m_offsets:[I

    .line 25
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/iiordanov/util/ByteBufferStack;->m_buffer:[B

    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/iiordanov/util/ByteBufferStack;->m_buffer:[B

    return-object v0
.end method

.method public getOffset()I
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/iiordanov/util/ByteBufferStack;->m_offsets:[I

    iget v1, p0, Lcom/iiordanov/util/ByteBufferStack;->m_depth:I

    aget v0, v0, v1

    return v0
.end method

.method public release()V
    .locals 2

    .line 77
    iget v0, p0, Lcom/iiordanov/util/ByteBufferStack;->m_depth:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    sub-int/2addr v0, v1

    .line 81
    iput v0, p0, Lcom/iiordanov/util/ByteBufferStack;->m_depth:I

    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "release() without reserve()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reserve(I)I
    .locals 5

    if-ltz p1, :cond_2

    .line 52
    iget v0, p0, Lcom/iiordanov/util/ByteBufferStack;->m_max_size:I

    add-int/2addr v0, p1

    if-ltz v0, :cond_2

    .line 54
    iget v0, p0, Lcom/iiordanov/util/ByteBufferStack;->m_depth:I

    iget v1, p0, Lcom/iiordanov/util/ByteBufferStack;->m_max_depth:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    mul-int/lit8 v1, v1, 0x2

    .line 56
    iput v1, p0, Lcom/iiordanov/util/ByteBufferStack;->m_max_depth:I

    .line 57
    new-array v1, v1, [I

    .line 58
    iget-object v3, p0, Lcom/iiordanov/util/ByteBufferStack;->m_offsets:[I

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iput-object v1, p0, Lcom/iiordanov/util/ByteBufferStack;->m_offsets:[I

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/util/ByteBufferStack;->m_offsets:[I

    iget v1, p0, Lcom/iiordanov/util/ByteBufferStack;->m_depth:I

    aget v3, v0, v1

    add-int/2addr p1, v3

    add-int/lit8 v4, v1, 0x1

    .line 63
    iput v4, p0, Lcom/iiordanov/util/ByteBufferStack;->m_depth:I

    aput p1, v0, v1

    .line 64
    iget v0, p0, Lcom/iiordanov/util/ByteBufferStack;->m_max_size:I

    if-le p1, v0, :cond_1

    mul-int/lit8 v0, v0, 0x2

    .line 66
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/iiordanov/util/ByteBufferStack;->m_max_size:I

    .line 67
    new-array p1, p1, [B

    .line 68
    iget-object v0, p0, Lcom/iiordanov/util/ByteBufferStack;->m_buffer:[B

    invoke-static {v0, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iput-object p1, p0, Lcom/iiordanov/util/ByteBufferStack;->m_buffer:[B

    :cond_1
    return v3

    .line 53
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Count must by greater than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
