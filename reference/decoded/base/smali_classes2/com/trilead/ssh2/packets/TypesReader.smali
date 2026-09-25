.class public Lcom/trilead/ssh2/packets/TypesReader;
.super Ljava/lang/Object;
.source "TypesReader.java"


# instance fields
.field arr:[B

.field max:I

.field pos:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    .line 25
    iput-object p1, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    .line 26
    iput v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 27
    array-length p1, p1

    iput p1, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    .line 32
    iput-object p1, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    .line 33
    iput p2, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 34
    array-length v0, p1

    iput v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    if-ltz p2, :cond_0

    .line 36
    array-length p1, p1

    if-gt p2, p1, :cond_0

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal offset."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    .line 43
    iput p2, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int/2addr p3, p2

    .line 44
    iput p3, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    if-ltz p2, :cond_1

    .line 46
    array-length v0, p1

    if-ge p2, v0, :cond_1

    if-ltz p3, :cond_0

    .line 49
    array-length p1, p1

    if-gt p3, p1, :cond_0

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal length."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal offset."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public readBoolean()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    iget v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    if-ge v0, v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    aget-byte v0, v1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 95
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Packet too short."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    iget v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    if-ge v0, v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 56
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Packet too short."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readByteString()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v0

    .line 141
    iget v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int v2, v0, v1

    iget v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    if-gt v2, v3, :cond_0

    .line 144
    new-array v2, v0, [B

    .line 145
    iget-object v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    iget v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    return-object v2

    .line 142
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed SSH byte string."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readBytes([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    .line 82
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_1

    .line 85
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int v1, v0, p3

    iget v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    if-gt v1, v2, :cond_0

    .line 88
    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iget p1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    return-void

    .line 86
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Packet too short."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Length too long for output buffer"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Negative offset or length specified"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readBytes(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 66
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    if-gt v1, v2, :cond_0

    .line 69
    new-array v1, p1, [B

    .line 71
    iget-object v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    return-object v1

    .line 67
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Packet too short."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Negative length requested"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readMPINT()Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object v0

    .line 129
    array-length v1, v0

    if-nez v1, :cond_0

    .line 130
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_0

    .line 132
    :cond_0
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public readNameList()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-static {v0, v1}, Lcom/trilead/ssh2/util/Tokenizer;->parseTokens(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    invoke-virtual {p0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v0

    .line 167
    iget v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    if-gt v1, v2, :cond_0

    .line 172
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    iget v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    const-string v4, "ISO-8859-1"

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    iget v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 177
    :goto_0
    iget v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    return-object v1

    .line 168
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed SSH string."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v0

    .line 154
    iget v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    if-gt v1, v2, :cond_1

    if-nez p1, :cond_0

    .line 157
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    iget v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    invoke-direct {p1, v1, v2, v0}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    iget v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    invoke-direct {v1, v2, v3, v0, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object p1, v1

    .line 158
    :goto_0
    iget v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    return-object p1

    .line 155
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Malformed SSH string."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readUINT32()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    if-gt v1, v2, :cond_0

    .line 105
    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, v0, 0x2

    iput v4, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x3

    iput v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    return v0

    .line 103
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Packet too short."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readUINT64()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int/lit8 v1, v0, 0x8

    iget v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    if-gt v1, v2, :cond_0

    .line 114
    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, v0, 0x2

    iput v4, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x3

    iput v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    add-int/lit8 v4, v0, 0x4

    iput v4, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-long v2, v2

    add-int/lit8 v5, v0, 0x5

    .line 117
    iput v5, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v6, v0, 0x6

    iput v6, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, v0, 0x7

    iput v5, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    aget-byte v0, v1, v5

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v4

    int-to-long v0, v0

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 112
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Packet too short."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remain()I
    .locals 2

    .line 189
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    iget v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method
