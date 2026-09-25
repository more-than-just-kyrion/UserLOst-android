.class public final Lcom/iiordanov/jcraft/jzlib/ZStream;
.super Ljava/lang/Object;
.source "ZStream.java"


# static fields
.field private static final DEF_WBITS:I = 0xf

.field private static final MAX_MEM_LEVEL:I = 0x9

.field private static final MAX_WBITS:I = 0xf

.field private static final Z_BUF_ERROR:I = -0x5

.field private static final Z_DATA_ERROR:I = -0x3

.field private static final Z_ERRNO:I = -0x1

.field private static final Z_FINISH:I = 0x4

.field private static final Z_FULL_FLUSH:I = 0x3

.field private static final Z_MEM_ERROR:I = -0x4

.field private static final Z_NEED_DICT:I = 0x2

.field private static final Z_NO_FLUSH:I = 0x0

.field private static final Z_OK:I = 0x0

.field private static final Z_PARTIAL_FLUSH:I = 0x1

.field private static final Z_STREAM_END:I = 0x1

.field private static final Z_STREAM_ERROR:I = -0x2

.field private static final Z_SYNC_FLUSH:I = 0x2

.field private static final Z_VERSION_ERROR:I = -0x6


# instance fields
.field _adler:Lcom/iiordanov/jcraft/jzlib/Adler32;

.field public adler:J

.field public avail_in:I

.field public avail_out:I

.field data_type:I

.field dstate:Lcom/iiordanov/jcraft/jzlib/Deflate;

.field istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

.field public msg:Ljava/lang/String;

.field public next_in:[B

.field public next_in_index:I

.field public next_out:[B

.field public next_out_index:I

.field public total_in:J

.field public total_out:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/iiordanov/jcraft/jzlib/Adler32;

    invoke-direct {v0}, Lcom/iiordanov/jcraft/jzlib/Adler32;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->_adler:Lcom/iiordanov/jcraft/jzlib/Adler32;

    return-void
.end method


# virtual methods
.method public deflate(I)I
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->dstate:Lcom/iiordanov/jcraft/jzlib/Deflate;

    if-nez v0, :cond_0

    const/4 p1, -0x2

    return p1

    .line 133
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/iiordanov/jcraft/jzlib/Deflate;->deflate(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result p1

    return p1
.end method

.method public deflateEnd()I
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->dstate:Lcom/iiordanov/jcraft/jzlib/Deflate;

    if-nez v0, :cond_0

    const/4 v0, -0x2

    return v0

    .line 137
    :cond_0
    invoke-virtual {v0}, Lcom/iiordanov/jcraft/jzlib/Deflate;->deflateEnd()I

    move-result v0

    const/4 v1, 0x0

    .line 138
    iput-object v1, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->dstate:Lcom/iiordanov/jcraft/jzlib/Deflate;

    return v0
.end method

.method public deflateInit(I)I
    .locals 1

    const/16 v0, 0xf

    .line 117
    invoke-virtual {p0, p1, v0}, Lcom/iiordanov/jcraft/jzlib/ZStream;->deflateInit(II)I

    move-result p1

    return p1
.end method

.method public deflateInit(II)I
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, p1, p2, v0}, Lcom/iiordanov/jcraft/jzlib/ZStream;->deflateInit(IIZ)I

    move-result p1

    return p1
.end method

.method public deflateInit(IIZ)I
    .locals 1

    .line 126
    new-instance v0, Lcom/iiordanov/jcraft/jzlib/Deflate;

    invoke-direct {v0}, Lcom/iiordanov/jcraft/jzlib/Deflate;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->dstate:Lcom/iiordanov/jcraft/jzlib/Deflate;

    if-eqz p3, :cond_0

    neg-int p2, p2

    .line 127
    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/iiordanov/jcraft/jzlib/Deflate;->deflateInit(Lcom/iiordanov/jcraft/jzlib/ZStream;II)I

    move-result p1

    return p1
.end method

.method public deflateInit(IZ)I
    .locals 1

    const/16 v0, 0xf

    .line 120
    invoke-virtual {p0, p1, v0, p2}, Lcom/iiordanov/jcraft/jzlib/ZStream;->deflateInit(IIZ)I

    move-result p1

    return p1
.end method

.method public deflateParams(II)I
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->dstate:Lcom/iiordanov/jcraft/jzlib/Deflate;

    if-nez v0, :cond_0

    const/4 p1, -0x2

    return p1

    .line 143
    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/iiordanov/jcraft/jzlib/Deflate;->deflateParams(Lcom/iiordanov/jcraft/jzlib/ZStream;II)I

    move-result p1

    return p1
.end method

.method public deflateSetDictionary([BI)I
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->dstate:Lcom/iiordanov/jcraft/jzlib/Deflate;

    if-nez v0, :cond_0

    const/4 p1, -0x2

    return p1

    .line 148
    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/iiordanov/jcraft/jzlib/Deflate;->deflateSetDictionary(Lcom/iiordanov/jcraft/jzlib/ZStream;[BI)I

    move-result p1

    return p1
.end method

.method flush_pending()V
    .locals 5

    .line 156
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->dstate:Lcom/iiordanov/jcraft/jzlib/Deflate;

    iget v0, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending:I

    .line 158
    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    if-nez v0, :cond_1

    return-void

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->dstate:Lcom/iiordanov/jcraft/jzlib/Deflate;

    iget-object v1, v1, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending_buf:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->dstate:Lcom/iiordanov/jcraft/jzlib/Deflate;

    iget v2, v2, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending_out:I

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_out:[B

    array-length v1, v1

    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_out_index:I

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->dstate:Lcom/iiordanov/jcraft/jzlib/Deflate;

    iget-object v1, v1, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending_buf:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->dstate:Lcom/iiordanov/jcraft/jzlib/Deflate;

    iget v2, v2, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending_out:I

    add-int/2addr v2, v0

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_out:[B

    array-length v1, v1

    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_out_index:I

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_3

    .line 165
    :cond_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->dstate:Lcom/iiordanov/jcraft/jzlib/Deflate;

    iget-object v3, v3, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending_buf:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->dstate:Lcom/iiordanov/jcraft/jzlib/Deflate;

    iget v4, v4, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending_out:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_out:[B

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_out_index:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 167
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "avail_out="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    :cond_3
    iget-object v1, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->dstate:Lcom/iiordanov/jcraft/jzlib/Deflate;

    iget-object v1, v1, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending_buf:[B

    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->dstate:Lcom/iiordanov/jcraft/jzlib/Deflate;

    iget v2, v2, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending_out:I

    iget-object v3, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_out:[B

    iget v4, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_out_index:I

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_out_index:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_out_index:I

    .line 174
    iget-object v1, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->dstate:Lcom/iiordanov/jcraft/jzlib/Deflate;

    iget v2, v1, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending_out:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending_out:I

    .line 175
    iget-wide v1, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_out:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_out:J

    .line 176
    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    .line 177
    iget-object v1, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->dstate:Lcom/iiordanov/jcraft/jzlib/Deflate;

    iget v2, v1, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending:I

    sub-int/2addr v2, v0

    iput v2, v1, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending:I

    .line 178
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->dstate:Lcom/iiordanov/jcraft/jzlib/Deflate;

    iget v0, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending:I

    if-nez v0, :cond_4

    .line 179
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->dstate:Lcom/iiordanov/jcraft/jzlib/Deflate;

    const/4 v1, 0x0

    iput v1, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending_out:I

    :cond_4
    return-void
.end method

.method public free()V
    .locals 1

    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    .line 207
    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_out:[B

    .line 208
    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 209
    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->_adler:Lcom/iiordanov/jcraft/jzlib/Adler32;

    return-void
.end method

.method public inflate(I)I
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    if-nez v0, :cond_0

    const/4 p1, -0x2

    return p1

    .line 97
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/iiordanov/jcraft/jzlib/Inflate;->inflate(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result p1

    return p1
.end method

.method public inflateEnd()I
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    if-nez v0, :cond_0

    const/4 v0, -0x2

    return v0

    .line 101
    :cond_0
    invoke-virtual {v0, p0}, Lcom/iiordanov/jcraft/jzlib/Inflate;->inflateEnd(Lcom/iiordanov/jcraft/jzlib/ZStream;)I

    move-result v0

    const/4 v1, 0x0

    .line 102
    iput-object v1, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    return v0
.end method

.method public inflateInit()I
    .locals 1

    const/16 v0, 0xf

    .line 81
    invoke-virtual {p0, v0}, Lcom/iiordanov/jcraft/jzlib/ZStream;->inflateInit(I)I

    move-result v0

    return v0
.end method

.method public inflateInit(I)I
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/iiordanov/jcraft/jzlib/ZStream;->inflateInit(IZ)I

    move-result p1

    return p1
.end method

.method public inflateInit(IZ)I
    .locals 1

    .line 91
    new-instance v0, Lcom/iiordanov/jcraft/jzlib/Inflate;

    invoke-direct {v0}, Lcom/iiordanov/jcraft/jzlib/Inflate;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    if-eqz p2, :cond_0

    neg-int p1, p1

    .line 92
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/iiordanov/jcraft/jzlib/Inflate;->inflateInit(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result p1

    return p1
.end method

.method public inflateInit(Z)I
    .locals 1

    const/16 v0, 0xf

    .line 84
    invoke-virtual {p0, v0, p1}, Lcom/iiordanov/jcraft/jzlib/ZStream;->inflateInit(IZ)I

    move-result p1

    return p1
.end method

.method public inflateSetDictionary([BI)I
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    if-nez v0, :cond_0

    const/4 p1, -0x2

    return p1

    .line 113
    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/iiordanov/jcraft/jzlib/Inflate;->inflateSetDictionary(Lcom/iiordanov/jcraft/jzlib/ZStream;[BI)I

    move-result p1

    return p1
.end method

.method public inflateSync()I
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    if-nez v0, :cond_0

    const/4 v0, -0x2

    return v0

    .line 108
    :cond_0
    invoke-virtual {v0, p0}, Lcom/iiordanov/jcraft/jzlib/Inflate;->inflateSync(Lcom/iiordanov/jcraft/jzlib/ZStream;)I

    move-result v0

    return v0
.end method

.method read_buf([BII)I
    .locals 7

    .line 189
    iget v0, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    if-le v0, p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    if-nez p3, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    sub-int/2addr v0, p3

    .line 194
    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    .line 196
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->dstate:Lcom/iiordanov/jcraft/jzlib/Deflate;

    iget v0, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->noheader:I

    if-nez v0, :cond_2

    .line 197
    iget-object v1, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->_adler:Lcom/iiordanov/jcraft/jzlib/Adler32;

    iget-wide v2, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->adler:J

    iget-object v4, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    iget v5, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/iiordanov/jcraft/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->adler:J

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iget p1, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 201
    iget-wide p1, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    return p3
.end method
