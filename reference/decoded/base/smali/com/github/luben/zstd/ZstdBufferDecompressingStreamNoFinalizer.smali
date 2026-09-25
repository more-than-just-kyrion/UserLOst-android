.class public Lcom/github/luben/zstd/ZstdBufferDecompressingStreamNoFinalizer;
.super Lcom/github/luben/zstd/BaseZstdBufferDecompressingStreamNoFinalizer;
.source "ZstdBufferDecompressingStreamNoFinalizer.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 10
    invoke-static {}, Lcom/github/luben/zstd/util/Native;->load()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 14
    invoke-direct {p0, p1}, Lcom/github/luben/zstd/BaseZstdBufferDecompressingStreamNoFinalizer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result p1

    if-nez p1, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdBufferDecompressingStreamNoFinalizer;->createDStream()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/luben/zstd/ZstdBufferDecompressingStreamNoFinalizer;->stream:J

    .line 19
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdBufferDecompressingStreamNoFinalizer;->stream:J

    invoke-virtual {p0, v0, v1}, Lcom/github/luben/zstd/ZstdBufferDecompressingStreamNoFinalizer;->initDStream(J)J

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source buffer should be a non-direct buffer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native createDStreamNative()J
.end method

.method private native decompressStreamNative(J[BII[BII)J
.end method

.method private native freeDStreamNative(J)J
.end method

.method private native initDStreamNative(J)J
.end method

.method private static native recommendedDOutSizeNative()J
.end method

.method public static recommendedTargetBufferSize()I
    .locals 2

    .line 63
    invoke-static {}, Lcom/github/luben/zstd/ZstdBufferDecompressingStreamNoFinalizer;->recommendedDOutSizeNative()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method createDStream()J
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/github/luben/zstd/ZstdBufferDecompressingStreamNoFinalizer;->createDStreamNative()J

    move-result-wide v0

    return-wide v0
.end method

.method decompressStream(JLjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)J
    .locals 10

    .line 47
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 54
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    .line 59
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    add-int v5, p4, v0

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    add-int v8, p7, v0

    move-object v1, p0

    move-wide v2, p1

    move v6, p5

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/github/luben/zstd/ZstdBufferDecompressingStreamNoFinalizer;->decompressStreamNative(J[BII[BII)J

    move-result-wide v0

    return-wide v0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provided destination ByteBuffer lacks array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provided source ByteBuffer lacks array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method freeDStream(J)J
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/github/luben/zstd/ZstdBufferDecompressingStreamNoFinalizer;->freeDStreamNative(J)J

    move-result-wide p1

    return-wide p1
.end method

.method initDStream(J)J
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/github/luben/zstd/ZstdBufferDecompressingStreamNoFinalizer;->initDStreamNative(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/github/luben/zstd/ZstdBufferDecompressingStreamNoFinalizer;->readInternal(Ljava/nio/ByteBuffer;Z)I

    move-result p1

    return p1

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Target buffer should be a non-direct buffer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
