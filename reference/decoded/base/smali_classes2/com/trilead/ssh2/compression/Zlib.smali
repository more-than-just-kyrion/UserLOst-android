.class public Lcom/trilead/ssh2/compression/Zlib;
.super Ljava/lang/Object;
.source "Zlib.java"

# interfaces
.implements Lcom/trilead/ssh2/compression/ICompressor;


# static fields
.field private static final DEFAULT_BUF_SIZE:I = 0x1000

.field private static final LEVEL:I = 0x5


# instance fields
.field private deflate:Lcom/jcraft/jzlib/ZStream;

.field private deflate_tmpbuf:[B

.field private inflate:Lcom/jcraft/jzlib/ZStream;

.field private inflate_tmpbuf:[B

.field private inflated_buf:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/jcraft/jzlib/ZStream;

    invoke-direct {v0}, Lcom/jcraft/jzlib/ZStream;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    .line 52
    new-instance v0, Lcom/jcraft/jzlib/ZStream;

    invoke-direct {v0}, Lcom/jcraft/jzlib/ZStream;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    .line 54
    iget-object v0, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/jcraft/jzlib/ZStream;->deflateInit(I)I

    .line 55
    iget-object v0, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    invoke-virtual {v0}, Lcom/jcraft/jzlib/ZStream;->inflateInit()I

    const/16 v0, 0x1000

    .line 57
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate_tmpbuf:[B

    .line 58
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate_tmpbuf:[B

    .line 59
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/trilead/ssh2/compression/Zlib;->inflated_buf:[B

    return-void
.end method


# virtual methods
.method public canCompressPreauth()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public compress([BII[B)I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    iput-object p1, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 72
    iget-object v0, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    iput p2, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 73
    iget-object v0, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    sub-int/2addr p3, p2

    iput p3, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 75
    array-length p2, p1

    add-int/lit16 p2, p2, 0x400

    iget-object p3, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate_tmpbuf:[B

    array-length p3, p3

    if-le p2, p3, :cond_0

    .line 76
    array-length p1, p1

    add-int/lit16 p1, p1, 0x400

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate_tmpbuf:[B

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    iget-object p2, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate_tmpbuf:[B

    iput-object p2, p1, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 80
    iget-object p1, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    const/4 p2, 0x0

    iput p2, p1, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 81
    iget-object p1, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    array-length p3, p4

    iput p3, p1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 83
    iget-object p1, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/jcraft/jzlib/ZStream;->deflate(I)I

    move-result p1

    if-eqz p1, :cond_1

    .line 84
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p3, "compress: compression failure"

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    iget p1, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-lez p1, :cond_2

    .line 88
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p3, "compress: deflated data too large"

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    :cond_2
    array-length p1, p4

    iget-object p3, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    iget p3, p3, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int/2addr p1, p3

    .line 93
    iget-object p3, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate_tmpbuf:[B

    invoke-static {p3, p2, p4, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p1
.end method

.method public getBufferSize()I
    .locals 1

    const/16 v0, 0x1000

    return v0
.end method

.method public uncompress([BI[I)[B
    .locals 6

    .line 101
    iget-object v0, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    iput-object p1, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 102
    iget-object v0, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    iput p2, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 103
    iget-object v0, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    const/4 v1, 0x0

    aget v2, p3, v1

    iput v2, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move v0, v1

    .line 106
    :goto_0
    iget-object v2, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    iget-object v3, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate_tmpbuf:[B

    iput-object v3, v2, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 107
    iget-object v2, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 108
    iget-object v2, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    const/16 v3, 0x1000

    iput v3, v2, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 109
    iget-object v2, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/jcraft/jzlib/ZStream;->inflate(I)I

    move-result v2

    const/4 v4, -0x5

    if-eq v2, v4, :cond_2

    if-eqz v2, :cond_0

    .line 137
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "uncompress: inflate returnd "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/trilead/ssh2/compression/Zlib;->inflated_buf:[B

    array-length v2, v2

    add-int/lit16 v4, v0, 0x1000

    iget-object v5, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    iget v5, v5, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int v5, v4, v5

    if-ge v2, v5, :cond_1

    .line 114
    iget-object v2, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int/2addr v4, v2

    new-array v2, v4, [B

    .line 116
    iget-object v4, p0, Lcom/trilead/ssh2/compression/Zlib;->inflated_buf:[B

    invoke-static {v4, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iput-object v2, p0, Lcom/trilead/ssh2/compression/Zlib;->inflated_buf:[B

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate_tmpbuf:[B

    iget-object v4, p0, Lcom/trilead/ssh2/compression/Zlib;->inflated_buf:[B

    iget-object v5, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    iget v5, v5, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    rsub-int v5, v5, 0x1000

    invoke-static {v2, v1, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    iget-object v2, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 122
    aput v0, p3, v1

    goto :goto_0

    .line 125
    :cond_2
    array-length v2, p1

    sub-int/2addr v2, p2

    if-le v0, v2, :cond_3

    add-int v2, v0, p2

    .line 126
    new-array v2, v2, [B

    .line 127
    invoke-static {p1, v1, v2, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iget-object p1, p0, Lcom/trilead/ssh2/compression/Zlib;->inflated_buf:[B

    invoke-static {p1, v1, v2, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v2

    goto :goto_1

    .line 131
    :cond_3
    iget-object v2, p0, Lcom/trilead/ssh2/compression/Zlib;->inflated_buf:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    :goto_1
    aput v0, p3, v1

    return-object p1
.end method
