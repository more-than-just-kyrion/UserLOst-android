.class public Lcom/trilead/ssh2/crypto/SimpleDERReader;
.super Ljava/lang/Object;
.source "SimpleDERReader.java"


# static fields
.field private static final CONSTRUCTED:I = 0x20


# instance fields
.field buffer:[B

.field count:I

.field pos:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->resetInput([B)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->resetInput([BII)V

    return-void
.end method

.method private readByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget v0, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->count:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 47
    iput v0, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->count:I

    .line 48
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->buffer:[B

    iget v1, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->pos:I

    aget-byte v0, v0, v1

    return v0

    .line 46
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER byte array: out of data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readBytes(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget v0, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->count:I

    if-gt p1, v0, :cond_0

    .line 56
    new-array v0, p1, [B

    .line 58
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->buffer:[B

    iget v2, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->pos:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iget v1, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->pos:I

    .line 61
    iget v1, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->count:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->count:I

    return-object v0

    .line 54
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "DER byte array: out of data"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->count:I

    return v0
.end method

.method public ignoreNextObject()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 105
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readLength()I

    move-result v1

    if-ltz v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 110
    invoke-direct {p0, v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readBytes(I)[B

    return v0

    .line 108
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal len in DER object ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readConstructed()Lcom/trilead/ssh2/crypto/SimpleDERReader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readLength()I

    move-result v0

    if-ltz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 150
    new-instance v1, Lcom/trilead/ssh2/crypto/SimpleDERReader;

    iget-object v2, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->buffer:[B

    iget v3, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->pos:I

    invoke-direct {v1, v2, v3, v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;-><init>([BII)V

    .line 152
    iget v2, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->pos:I

    .line 153
    iget v2, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->count:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->count:I

    return-object v1

    .line 148
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal len in DER object ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readConstructedType()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readByte()B

    move-result v0

    and-int/lit16 v1, v0, 0xff

    and-int/lit8 v2, v0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    and-int/lit8 v0, v0, 0x1f

    return v0

    .line 138
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected constructed type, but was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readInt()Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readLength()I

    move-result v0

    if-ltz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 127
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readBytes(I)[B

    move-result-object v0

    .line 129
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1

    .line 125
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal len in DER object ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected DER Integer, but found type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method readLength()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readByte()B

    move-result v0

    and-int/lit16 v1, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_0

    return v1

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    const/4 v1, -0x1

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x4

    if-le v0, v2, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_3

    shl-int/lit8 v2, v2, 0x8

    .line 91
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    if-gez v2, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public readOctetString()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected DER Octetstring, but found type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readLength()I

    move-result v0

    if-ltz v0, :cond_2

    .line 227
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 230
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readBytes(I)[B

    move-result-object v0

    return-object v0

    .line 228
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal len in DER object ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readOid()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 182
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readLength()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    .line 184
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result v2

    if-gt v0, v2, :cond_4

    .line 187
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readBytes(I)[B

    move-result-object v2

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    .line 192
    aget-byte v5, v2, v4

    div-int/lit8 v5, v5, 0x28

    if-eqz v5, :cond_1

    if-eq v5, v1, :cond_0

    const/16 v1, 0x32

    .line 201
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    aget-byte v1, v2, v4

    add-int/lit8 v1, v1, -0x50

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    goto :goto_0

    :cond_0
    const/16 v1, 0x31

    .line 197
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    aget-byte v1, v2, v4

    add-int/lit8 v1, v1, -0x28

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    goto :goto_0

    :cond_1
    const/16 v1, 0x30

    .line 194
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    const-wide/16 v5, 0x0

    move-wide v7, v5

    :goto_1
    if-ge v4, v0, :cond_3

    const/4 v1, 0x7

    shl-long/2addr v7, v1

    .line 207
    aget-byte v1, v2, v4

    and-int/lit8 v9, v1, 0x7f

    int-to-long v9, v9

    add-long/2addr v7, v9

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_2

    const/16 v1, 0x2e

    .line 209
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-wide v7, v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 215
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 185
    :cond_4
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal len in DER object ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_5
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected DER OID, but found type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readSequenceAsByteArray()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readLength()I

    move-result v0

    if-ltz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 170
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readBytes(I)[B

    move-result-object v0

    return-object v0

    .line 168
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal len in DER object ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected DER Sequence, but found type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resetInput([B)V
    .locals 2

    const/4 v0, 0x0

    .line 33
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->resetInput([BII)V

    return-void
.end method

.method public resetInput([BII)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->buffer:[B

    .line 39
    iput p2, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->pos:I

    .line 40
    iput p3, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->count:I

    return-void
.end method
