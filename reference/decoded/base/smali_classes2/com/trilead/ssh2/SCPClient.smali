.class public Lcom/trilead/ssh2/SCPClient;
.super Ljava/lang/Object;
.source "SCPClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/SCPClient$LenNamePair;
    }
.end annotation


# instance fields
.field conn:Lcom/trilead/ssh2/Connection;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/Connection;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 40
    iput-object p1, p0, Lcom/trilead/ssh2/SCPClient;->conn:Lcom/trilead/ssh2/Connection;

    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot accept null argument!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private get([Ljava/lang/String;[Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 658
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_6

    .line 661
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    .line 666
    :cond_0
    const-string v0, "scp -f"

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 668
    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    .line 671
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 673
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 676
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 674
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot accept empty filename."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 669
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot accept null filename."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 p1, 0x0

    .line 681
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/SCPClient;->conn:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v1}, Lcom/trilead/ssh2/Connection;->openSession()Lcom/trilead/ssh2/Session;

    move-result-object p1

    .line 682
    invoke-virtual {p1, v0}, Lcom/trilead/ssh2/Session;->execCommand(Ljava/lang/String;)V

    .line 683
    invoke-direct {p0, p1, p2}, Lcom/trilead/ssh2/SCPClient;->receiveFiles(Lcom/trilead/ssh2/Session;[Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    .line 692
    invoke-virtual {p1}, Lcom/trilead/ssh2/Session;->close()V

    :cond_4
    return-void

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    .line 687
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error during SCP transfer."

    invoke-direct {v0, v1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p1, :cond_5

    .line 692
    invoke-virtual {p1}, Lcom/trilead/ssh2/Session;->close()V

    .line 693
    :cond_5
    throw p2

    .line 659
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Length of arguments does not match."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 656
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null argument."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseCLine(Ljava/lang/String;)Lcom/trilead/ssh2/SCPClient$LenNamePair;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_5

    const/4 v0, 0x4

    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    const-string v2, "Malformed C line sent by remote SCP binary."

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v1, :cond_4

    .line 103
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 108
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    .line 109
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 114
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne v3, p1, :cond_1

    .line 119
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-ltz p1, :cond_0

    .line 129
    new-instance p1, Lcom/trilead/ssh2/SCPClient$LenNamePair;

    invoke-direct {p1, p0}, Lcom/trilead/ssh2/SCPClient$LenNamePair;-><init>(Lcom/trilead/ssh2/SCPClient;)V

    .line 130
    iput-wide v2, p1, Lcom/trilead/ssh2/SCPClient$LenNamePair;->length:J

    .line 131
    iput-object v1, p1, Lcom/trilead/ssh2/SCPClient$LenNamePair;->filename:Ljava/lang/String;

    return-object p1

    .line 127
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Malformed C line sent by remote SCP binary, illegal file length."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Malformed C line sent by remote SCP binary, cannot parse file length."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_4
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Malformed C line sent by remote SCP binary, line too short."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readResponse(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 54
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Remote scp sent illegal error code."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-ne v0, v2, :cond_3

    .line 57
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Remote scp terminated with error."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_3
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SCPClient;->receiveLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 60
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remote scp terminated with error ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Remote scp terminated unexpectedly."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private receiveFiles(Lcom/trilead/ssh2/Session;[Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    .line 245
    new-array v1, v0, [B

    .line 247
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Lcom/trilead/ssh2/Session;->getStdin()Ljava/io/OutputStream;

    move-result-object v3

    const/16 v4, 0x200

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 248
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Lcom/trilead/ssh2/Session;->getStdout()Ljava/io/InputStream;

    move-result-object p1

    const v4, 0x9c40

    invoke-direct {v3, p1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 p1, 0x0

    .line 250
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 251
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    move v4, p1

    .line 253
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_7

    .line 259
    :goto_1
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v5

    if-ltz v5, :cond_6

    .line 263
    invoke-direct {p0, v3}, Lcom/trilead/ssh2/SCPClient;->receiveLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x54

    if-ne v5, v7, :cond_0

    goto :goto_1

    .line 272
    :cond_0
    const-string v7, "Remote SCP error: "

    const/4 v8, 0x1

    if-eq v5, v8, :cond_5

    const/4 v8, 0x2

    if-eq v5, v8, :cond_5

    const/16 v8, 0x43

    if-ne v5, v8, :cond_4

    .line 277
    invoke-direct {p0, v6}, Lcom/trilead/ssh2/SCPClient;->parseCLine(Ljava/lang/String;)Lcom/trilead/ssh2/SCPClient$LenNamePair;

    move-result-object v5

    .line 284
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 285
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 287
    iget-wide v5, v5, Lcom/trilead/ssh2/SCPClient$LenNamePair;->length:J

    :goto_2
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_3

    int-to-long v7, v0

    cmp-long v7, v5, v7

    if-lez v7, :cond_1

    move v7, v0

    goto :goto_3

    :cond_1
    long-to-int v7, v5

    .line 297
    :goto_3
    invoke-virtual {v3, v1, p1, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-ltz v7, :cond_2

    .line 304
    aget-object v8, p2, v4

    invoke-virtual {v8, v1, p1, v7}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v7, v7

    sub-long/2addr v5, v7

    goto :goto_2

    .line 301
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Remote scp terminated connection unexpectedly"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 309
    :cond_3
    invoke-direct {p0, v3}, Lcom/trilead/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 311
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 312
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 281
    :cond_4
    new-instance p1, Ljava/io/IOException;

    int-to-char p2, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 273
    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 261
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Remote scp terminated unexpectedly."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    return-void
.end method

.method private receiveFiles(Lcom/trilead/ssh2/Session;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    .line 318
    new-array v1, v0, [B

    .line 320
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Lcom/trilead/ssh2/Session;->getStdin()Ljava/io/OutputStream;

    move-result-object v3

    const/16 v4, 0x200

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 321
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Lcom/trilead/ssh2/Session;->getStdout()Ljava/io/InputStream;

    move-result-object p1

    const v4, 0x9c40

    invoke-direct {v3, p1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 p1, 0x0

    .line 323
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 324
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    move v4, p1

    .line 326
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_8

    .line 332
    :goto_1
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v5

    if-ltz v5, :cond_7

    .line 336
    invoke-direct {p0, v3}, Lcom/trilead/ssh2/SCPClient;->receiveLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x54

    if-ne v5, v7, :cond_0

    goto :goto_1

    .line 345
    :cond_0
    const-string v7, "Remote SCP error: "

    const/4 v8, 0x1

    if-eq v5, v8, :cond_6

    const/4 v8, 0x2

    if-eq v5, v8, :cond_6

    const/16 v8, 0x43

    if-ne v5, v8, :cond_5

    .line 350
    invoke-direct {p0, v6}, Lcom/trilead/ssh2/SCPClient;->parseCLine(Ljava/lang/String;)Lcom/trilead/ssh2/SCPClient$LenNamePair;

    move-result-object v5

    .line 357
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 358
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 360
    new-instance v6, Ljava/io/File;

    sget-char v7, Ljava/io/File;->separatorChar:C

    iget-object v8, v5, Lcom/trilead/ssh2/SCPClient$LenNamePair;->filename:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 365
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 367
    :try_start_1
    iget-wide v5, v5, Lcom/trilead/ssh2/SCPClient$LenNamePair;->length:J

    :goto_2
    const-wide/16 v9, 0x0

    cmp-long v7, v5, v9

    if-lez v7, :cond_3

    int-to-long v9, v0

    cmp-long v7, v5, v9

    if-lez v7, :cond_1

    move v7, v0

    goto :goto_3

    :cond_1
    long-to-int v7, v5

    .line 377
    :goto_3
    invoke-virtual {v3, v1, p1, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-ltz v7, :cond_2

    .line 384
    invoke-virtual {v8, v1, p1, v7}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v9, v7

    sub-long/2addr v5, v9

    goto :goto_2

    .line 381
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Remote scp terminated connection unexpectedly"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    :cond_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 395
    invoke-direct {p0, v3}, Lcom/trilead/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 397
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 398
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v7, v8

    goto :goto_4

    :catchall_1
    move-exception p1

    :goto_4
    if-eqz v7, :cond_4

    .line 392
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 393
    :cond_4
    throw p1

    .line 354
    :cond_5
    new-instance p1, Ljava/io/IOException;

    int-to-char p2, v5

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 346
    :cond_6
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 334
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Remote scp terminated unexpectedly."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    return-void
.end method

.method private receiveLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 74
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/16 v2, 0x2000

    if-gt v1, v2, :cond_2

    .line 77
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    int-to-char v1, v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 80
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Remote scp terminated unexpectedly."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Remote scp sent a too long line"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private sendBytes(Lcom/trilead/ssh2/Session;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    const-string v0, "E\n"

    const-string v1, "ISO-8859-1"

    invoke-virtual {p1}, Lcom/trilead/ssh2/Session;->getStdin()Ljava/io/OutputStream;

    move-result-object v2

    .line 139
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Lcom/trilead/ssh2/Session;->getStdout()Ljava/io/InputStream;

    move-result-object p1

    const/16 v4, 0x200

    invoke-direct {v3, p1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 141
    invoke-direct {p0, v3}, Lcom/trilead/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 143
    array-length p1, p2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "C"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v4, " "

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\n"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 146
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 151
    :goto_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 153
    invoke-direct {p0, v3}, Lcom/trilead/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 155
    array-length p1, p2

    const/4 p3, 0x0

    invoke-virtual {v2, p2, p3, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 156
    invoke-virtual {v2, p3}, Ljava/io/OutputStream;->write(I)V

    .line 157
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 159
    invoke-direct {p0, v3}, Lcom/trilead/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 162
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 164
    :catch_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 166
    :goto_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private sendFiles(Lcom/trilead/ssh2/Session;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 171
    const-string v3, "E\n"

    const/16 v4, 0x2000

    new-array v5, v4, [B

    .line 173
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/Session;->getStdin()Ljava/io/OutputStream;

    move-result-object v7

    const v8, 0x9c40

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 174
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/Session;->getStdout()Ljava/io/InputStream;

    move-result-object v8

    const/16 v9, 0x200

    invoke-direct {v7, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 176
    invoke-direct {v1, v7}, Lcom/trilead/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    const/4 v9, 0x0

    .line 178
    :goto_0
    array-length v10, v0

    const-string v11, "ISO-8859-1"

    if-ge v9, v10, :cond_5

    .line 180
    new-instance v10, Ljava/io/File;

    aget-object v12, v0, v9

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v12

    if-eqz v2, :cond_0

    .line 185
    array-length v14, v2

    if-le v14, v9, :cond_0

    aget-object v14, v2, v9

    if-eqz v14, :cond_0

    goto :goto_1

    .line 188
    :cond_0
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    .line 190
    :goto_1
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v8, "C"

    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v8, p4

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v4, " "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, "\n"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 193
    :try_start_0
    invoke-virtual {v4, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 195
    :catch_0
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/io/OutputStream;->write([B)V

    .line 197
    :goto_2
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 199
    invoke-direct {v1, v7}, Lcom/trilead/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    const/4 v4, 0x0

    .line 205
    :try_start_1
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_3
    const-wide/16 v14, 0x0

    cmp-long v4, v12, v14

    if-lez v4, :cond_3

    const/16 v10, 0x2000

    int-to-long v14, v10

    cmp-long v4, v12, v14

    if-lez v4, :cond_1

    move v4, v10

    goto :goto_4

    :cond_1
    long-to-int v4, v12

    :goto_4
    const/4 v14, 0x0

    .line 215
    :try_start_2
    invoke-virtual {v11, v5, v14, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v15

    if-ne v15, v4, :cond_2

    .line 218
    invoke-virtual {v6, v5, v14, v4}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v14, v4

    sub-long/2addr v12, v14

    goto :goto_3

    .line 216
    :cond_2
    new-instance v2, Ljava/io/IOException;

    aget-object v0, v0, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot read enough from local file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v4, v11

    goto :goto_5

    :cond_3
    const/16 v10, 0x2000

    .line 226
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    const/4 v11, 0x0

    .line 229
    invoke-virtual {v6, v11}, Ljava/io/OutputStream;->write(I)V

    .line 230
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 232
    invoke-direct {v1, v7}, Lcom/trilead/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    add-int/lit8 v9, v9, 0x1

    move v4, v10

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :goto_5
    if-eqz v4, :cond_4

    .line 226
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 227
    :cond_4
    throw v0

    .line 236
    :cond_5
    :try_start_3
    invoke-virtual {v3, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    .line 238
    :catch_1
    invoke-virtual {v3, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 240
    :goto_6
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 648
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array p1, v0, [Ljava/io/OutputStream;

    aput-object p2, p1, v2

    invoke-direct {p0, v1, p1}, Lcom/trilead/ssh2/SCPClient;->get([Ljava/lang/String;[Ljava/io/OutputStream;)V

    return-void
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 631
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/trilead/ssh2/SCPClient;->get([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public get([Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 713
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    .line 718
    :cond_0
    const-string v0, "scp -f"

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 720
    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    .line 723
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 725
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 728
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 726
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot accept empty filename."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 721
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot accept null filename."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v1, 0x0

    .line 733
    :try_start_0
    iget-object v2, p0, Lcom/trilead/ssh2/SCPClient;->conn:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v2}, Lcom/trilead/ssh2/Connection;->openSession()Lcom/trilead/ssh2/Session;

    move-result-object v1

    .line 734
    invoke-virtual {v1, v0}, Lcom/trilead/ssh2/Session;->execCommand(Ljava/lang/String;)V

    .line 735
    invoke-direct {p0, v1, p1, p2}, Lcom/trilead/ssh2/SCPClient;->receiveFiles(Lcom/trilead/ssh2/Session;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 744
    invoke-virtual {v1}, Lcom/trilead/ssh2/Session;->close()V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 739
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Error during SCP transfer."

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v1, :cond_5

    .line 744
    invoke-virtual {v1}, Lcom/trilead/ssh2/Session;->close()V

    .line 745
    :cond_5
    throw p1

    .line 711
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null argument."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 416
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "0600"

    invoke-virtual {p0, v0, p2, p1}, Lcom/trilead/ssh2/SCPClient;->put([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 452
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2, p3}, Lcom/trilead/ssh2/SCPClient;->put([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 474
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array p1, v0, [Ljava/lang/String;

    aput-object p2, p1, v2

    invoke-virtual {p0, v1, p1, p3, p4}, Lcom/trilead/ssh2/SCPClient;->put([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 494
    const-string v0, "0600"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/trilead/ssh2/SCPClient;->put([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    .line 521
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    const-string v2, "Invalid mode."

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    .line 524
    :goto_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 525
    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 526
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 528
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 529
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    const-string p3, "."

    .line 531
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scp -t -d "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    .line 535
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/SCPClient;->conn:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v1}, Lcom/trilead/ssh2/Connection;->openSession()Lcom/trilead/ssh2/Session;

    move-result-object v0

    .line 536
    invoke-virtual {v0, p3}, Lcom/trilead/ssh2/Session;->execCommand(Ljava/lang/String;)V

    .line 537
    invoke-direct {p0, v0, p1, p2, p4}, Lcom/trilead/ssh2/SCPClient;->sendBytes(Lcom/trilead/ssh2/Session;[BLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 546
    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 541
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Error during SCP transfer."

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v0, :cond_4

    .line 546
    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->close()V

    .line 547
    :cond_4
    throw p1

    .line 522
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 519
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null argument."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public put([Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    const-string v0, "0600"

    invoke-virtual {p0, p1, p2, v0}, Lcom/trilead/ssh2/SCPClient;->put([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 565
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/trilead/ssh2/SCPClient;->put([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_9

    if-eqz p3, :cond_9

    if-eqz p4, :cond_9

    .line 581
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    const-string v2, "Invalid mode."

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    move v1, v0

    .line 584
    :goto_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 585
    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 586
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 588
    :cond_1
    array-length v1, p1

    if-nez v1, :cond_2

    return-void

    .line 591
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 592
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    const-string p3, "."

    .line 594
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scp -t -d "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 596
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_5

    .line 598
    aget-object v1, p1, v0

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 599
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot accept null filename."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/4 v0, 0x0

    .line 604
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/SCPClient;->conn:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v1}, Lcom/trilead/ssh2/Connection;->openSession()Lcom/trilead/ssh2/Session;

    move-result-object v0

    .line 605
    invoke-virtual {v0, p3}, Lcom/trilead/ssh2/Session;->execCommand(Ljava/lang/String;)V

    .line 606
    invoke-direct {p0, v0, p1, p2, p4}, Lcom/trilead/ssh2/SCPClient;->sendFiles(Lcom/trilead/ssh2/Session;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    .line 615
    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->close()V

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 610
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Error during SCP transfer."

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v0, :cond_7

    .line 615
    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->close()V

    .line 616
    :cond_7
    throw p1

    .line 582
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 579
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null argument."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
