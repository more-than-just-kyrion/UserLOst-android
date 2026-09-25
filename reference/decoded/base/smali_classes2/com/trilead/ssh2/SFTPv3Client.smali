.class public Lcom/trilead/ssh2/SFTPv3Client;
.super Ljava/lang/Object;
.source "SFTPv3Client.java"


# instance fields
.field charsetName:Ljava/lang/String;

.field final conn:Lcom/trilead/ssh2/Connection;

.field final debug:Ljava/io/PrintStream;

.field flag_closed:Z

.field is:Ljava/io/InputStream;

.field next_request_id:I

.field os:Ljava/io/OutputStream;

.field protocol_version:I

.field server_extensions:Ljava/util/HashMap;

.field final sess:Lcom/trilead/ssh2/Session;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/Connection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, p1, v0}, Lcom/trilead/ssh2/SFTPv3Client;-><init>(Lcom/trilead/ssh2/Connection;Ljava/io/PrintStream;)V

    return-void
.end method

.method public constructor <init>(Lcom/trilead/ssh2/Connection;Ljava/io/PrintStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->flag_closed:Z

    .line 72
    iput v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->protocol_version:I

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->server_extensions:Ljava/util/HashMap;

    const/16 v0, 0x3e8

    .line 75
    iput v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->next_request_id:I

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 95
    iput-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->conn:Lcom/trilead/ssh2/Connection;

    .line 96
    iput-object p2, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p2, :cond_0

    .line 99
    const-string v0, "Opening session and starting SFTP subsystem."

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/trilead/ssh2/Connection;->openSession()Lcom/trilead/ssh2/Session;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->sess:Lcom/trilead/ssh2/Session;

    .line 102
    const-string p2, "sftp"

    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/Session;->startSubSystem(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lcom/trilead/ssh2/Session;->getStdout()Ljava/io/InputStream;

    move-result-object p2

    iput-object p2, p0, Lcom/trilead/ssh2/SFTPv3Client;->is:Ljava/io/InputStream;

    .line 105
    new-instance p2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Lcom/trilead/ssh2/Session;->getStdin()Ljava/io/OutputStream;

    move-result-object p1

    const/16 v0, 0x800

    invoke-direct {p2, p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object p2, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    .line 107
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->is:Ljava/io/InputStream;

    if-eqz p1, :cond_1

    .line 110
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->init()V

    return-void

    .line 108
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "There is a problem with the streams of the underlying channel."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot accept null argument!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final checkHandleValidAndOpen(Lcom/trilead/ssh2/SFTPv3FileHandle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    iget-object v0, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->client:Lcom/trilead/ssh2/SFTPv3Client;

    if-ne v0, p0, :cond_1

    .line 179
    iget-boolean p1, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->isClosed:Z

    if-nez p1, :cond_0

    return-void

    .line 180
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The file handle is closed."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 177
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The file handle was created with another SFTPv3FileHandle instance."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final closeHandle([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 268
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    const/4 v2, 0x0

    .line 269
    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    const/4 p1, 0x4

    .line 271
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 273
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    return-void
.end method

.method private createAttrs(Lcom/trilead/ssh2/SFTPv3FileAttributes;)[B
    .locals 3

    .line 1113
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1119
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    goto :goto_0

    .line 1123
    :cond_0
    iget-object v2, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->size:Ljava/lang/Long;

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 1126
    :cond_1
    iget-object v2, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->uid:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->gid:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    or-int/lit8 v1, v1, 0x2

    .line 1129
    :cond_2
    iget-object v2, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x4

    .line 1132
    :cond_3
    iget-object v2, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->atime:Ljava/lang/Long;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->mtime:Ljava/lang/Long;

    if-eqz v2, :cond_4

    or-int/lit8 v1, v1, 0x8

    .line 1135
    :cond_4
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 1137
    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->size:Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 1138
    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->size:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT64(J)V

    .line 1140
    :cond_5
    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->uid:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->gid:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 1142
    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->uid:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 1143
    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->gid:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 1146
    :cond_6
    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 1147
    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 1149
    :cond_7
    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->atime:Ljava/lang/Long;

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->mtime:Ljava/lang/Long;

    if-eqz v1, :cond_8

    .line 1151
    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->atime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 1152
    iget-object p1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->mtime:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 1156
    :cond_8
    :goto_0
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method private final expandString([BII)Ljava/lang/String;
    .locals 5

    .line 829
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    add-int v2, p2, v1

    .line 833
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_0

    int-to-char v2, v2

    .line 837
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 841
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 845
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private expectStatusOKMessage(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x84d0

    .line 533
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object v0

    .line 535
    iget-object v1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v1, :cond_0

    .line 537
    const-string v2, "Got REPLY."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 538
    iget-object v1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 541
    :cond_0
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v1, v0}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 543
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result v0

    .line 545
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    if-ne v2, p1, :cond_3

    const/16 p1, 0x65

    if-ne v0, p1, :cond_2

    .line 552
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 557
    :cond_1
    new-instance v0, Lcom/trilead/ssh2/SFTPException;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 550
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The SFTP server sent an unexpected packet type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 547
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The server sent an invalid id field."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final generateNextRequestID()I
    .locals 2

    .line 258
    monitor-enter p0

    .line 260
    :try_start_0
    iget v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->next_request_id:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/trilead/ssh2/SFTPv3Client;->next_request_id:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 261
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private init()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 854
    iget-object v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 855
    const-string v1, "Sending SSH_FXP_INIT (3)..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 857
    :cond_0
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    const/4 v1, 0x3

    .line 858
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    const/4 v2, 0x1

    .line 859
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 863
    iget-object v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v0, :cond_1

    .line 864
    const-string v2, "Waiting for SSH_FXP_VERSION..."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 866
    :cond_1
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    const v2, 0x84d0

    invoke-direct {p0, v2}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 868
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_6

    .line 875
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    iput v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->protocol_version:I

    .line 877
    iget-object v4, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v4, :cond_2

    .line 878
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SSH_FXP_VERSION: protocol_version = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 880
    :cond_2
    iget v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->protocol_version:I

    if-ne v2, v1, :cond_5

    .line 885
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v1

    if-eqz v1, :cond_4

    .line 887
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 888
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object v2

    .line 889
    iget-object v4, p0, Lcom/trilead/ssh2/SFTPv3Client;->server_extensions:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    iget-object v4, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v4, :cond_3

    .line 892
    array-length v5, v2

    invoke-direct {p0, v2, v3, v5}, Lcom/trilead/ssh2/SFTPv3Client;->expandString([BII)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SSH_FXP_VERSION: extension: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " = \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void

    .line 881
    :cond_5
    new-instance v0, Ljava/io/IOException;

    iget v1, p0, Lcom/trilead/ssh2/SFTPv3Client;->protocol_version:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Server version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is currently not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 872
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "The server did not send a SSH_FXP_VERSION packet (got "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final openDirectory(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 783
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 785
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 786
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    .line 790
    const-string v2, "Sending SSH_FXP_OPENDIR..."

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 791
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    :cond_0
    const/16 p1, 0xb

    .line 794
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    const p1, 0x84d0

    .line 796
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object p1

    .line 798
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v1, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 800
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    .line 802
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    if-ne v2, v0, :cond_4

    const/16 v0, 0x66

    if-ne p1, v0, :cond_2

    .line 808
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_1

    .line 810
    const-string v0, "Got SSH_FXP_HANDLE."

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 811
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 814
    :cond_1
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v0, 0x65

    if-eq p1, v0, :cond_3

    .line 819
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The SFTP server sent an unexpected packet type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 821
    :cond_3
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    .line 822
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 824
    new-instance v1, Lcom/trilead/ssh2/SFTPException;

    invoke-direct {v1, v0, p1}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 804
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The server sent an invalid id field."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private openFile(Ljava/lang/String;ILcom/trilead/ssh2/SFTPv3FileAttributes;)Lcom/trilead/ssh2/SFTPv3FileHandle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1161
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 1163
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 1164
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    invoke-virtual {v1, p2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 1166
    invoke-direct {p0, p3}, Lcom/trilead/ssh2/SFTPv3Client;->createAttrs(Lcom/trilead/ssh2/SFTPv3FileAttributes;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBytes([B)V

    .line 1168
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    .line 1170
    const-string p2, "Sending SSH_FXP_OPEN..."

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1171
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    :cond_0
    const/4 p1, 0x3

    .line 1174
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    const p1, 0x84d0

    .line 1176
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object p1

    .line 1178
    new-instance p2, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {p2, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 1180
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    .line 1182
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p3

    if-ne p3, v0, :cond_4

    const/16 p3, 0x66

    if-ne p1, p3, :cond_2

    .line 1188
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_1

    .line 1190
    const-string p3, "Got SSH_FXP_HANDLE."

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1191
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 1194
    :cond_1
    new-instance p1, Lcom/trilead/ssh2/SFTPv3FileHandle;

    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/trilead/ssh2/SFTPv3FileHandle;-><init>(Lcom/trilead/ssh2/SFTPv3Client;[B)V

    return-object p1

    :cond_2
    const/16 p3, 0x65

    if-eq p1, p3, :cond_3

    .line 1198
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "The SFTP server sent an unexpected packet type ("

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1200
    :cond_3
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    .line 1201
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1203
    new-instance p3, Lcom/trilead/ssh2/SFTPException;

    invoke-direct {p3, p2, p1}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw p3

    .line 1184
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The server sent an invalid id field."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readAttrs(Lcom/trilead/ssh2/packets/TypesReader;)Lcom/trilead/ssh2/SFTPv3FileAttributes;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    new-instance v0, Lcom/trilead/ssh2/SFTPv3FileAttributes;

    invoke-direct {v0}, Lcom/trilead/ssh2/SFTPv3FileAttributes;-><init>()V

    .line 295
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    .line 299
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v2, :cond_0

    .line 300
    const-string v3, "SSH_FILEXFER_ATTR_SIZE"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 301
    :cond_0
    new-instance v2, Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT64()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    iput-object v2, v0, Lcom/trilead/ssh2/SFTPv3FileAttributes;->size:Ljava/lang/Long;

    :cond_1
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_3

    .line 306
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v2, :cond_2

    .line 307
    const-string v3, "SSH_FILEXFER_ATTR_V3_UIDGID"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 308
    :cond_2
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v2, v0, Lcom/trilead/ssh2/SFTPv3FileAttributes;->uid:Ljava/lang/Integer;

    .line 309
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v2, v0, Lcom/trilead/ssh2/SFTPv3FileAttributes;->gid:Ljava/lang/Integer;

    :cond_3
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_5

    .line 314
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v2, :cond_4

    .line 315
    const-string v3, "SSH_FILEXFER_ATTR_PERMISSIONS"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 316
    :cond_4
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v2, v0, Lcom/trilead/ssh2/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    :cond_5
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_7

    .line 321
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v2, :cond_6

    .line 322
    const-string v3, "SSH_FILEXFER_ATTR_V3_ACMODTIME"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 323
    :cond_6
    new-instance v2, Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    iput-object v2, v0, Lcom/trilead/ssh2/SFTPv3FileAttributes;->atime:Ljava/lang/Long;

    .line 324
    new-instance v2, Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    iput-object v2, v0, Lcom/trilead/ssh2/SFTPv3FileAttributes;->mtime:Ljava/lang/Long;

    :cond_7
    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    .line 330
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v1

    .line 332
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v2, :cond_8

    .line 333
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SSH_FILEXFER_ATTR_EXTENDED ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    :goto_0
    if-lez v1, :cond_9

    .line 339
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    .line 340
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_9
    return-object v0
.end method

.method private final readBytes([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_2

    .line 217
    iget-object v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_1

    if-eqz v0, :cond_0

    if-gt v0, p3, :cond_0

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    .line 221
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Underlying stream implementation is bogus!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 219
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unexpected end of sftp stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method private final receiveMessage(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 240
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 242
    invoke-direct {p0, v1, v2, v0}, Lcom/trilead/ssh2/SFTPv3Client;->readBytes([BII)V

    .line 244
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    const/4 v3, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    const/4 v3, 0x3

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    if-gt v0, p1, :cond_0

    if-lez v0, :cond_0

    .line 249
    new-array p1, v0, [B

    .line 251
    invoke-direct {p0, p1, v2, v0}, Lcom/trilead/ssh2/SFTPv3Client;->readBytes([BII)V

    return-object p1

    .line 247
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal sftp packet len: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final scanDirectory([B)Ljava/util/Vector;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 709
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 713
    :cond_0
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v1

    .line 715
    new-instance v2, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v2}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    const/4 v3, 0x0

    .line 716
    array-length v4, p1

    invoke-virtual {v2, p1, v3, v4}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 718
    iget-object v3, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v3, :cond_1

    .line 720
    const-string v4, "Sending SSH_FXP_READDIR..."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 721
    iget-object v3, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->flush()V

    :cond_1
    const/16 v3, 0xc

    .line 724
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v2

    invoke-direct {p0, v3, v1, v2}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    const/high16 v2, 0x10000

    .line 729
    invoke-direct {p0, v2}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object v2

    .line 731
    iget-object v3, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v3, :cond_2

    .line 733
    const-string v4, "Got REPLY."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 734
    iget-object v3, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->flush()V

    .line 737
    :cond_2
    new-instance v3, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v3, v2}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 739
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result v2

    .line 741
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v4

    if-ne v4, v1, :cond_8

    const/16 v1, 0x68

    if-ne v2, v1, :cond_5

    .line 747
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v1

    .line 749
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v2, :cond_3

    .line 750
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Parsing "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name entries..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    :goto_0
    if-lez v1, :cond_0

    .line 754
    new-instance v2, Lcom/trilead/ssh2/SFTPv3DirectoryEntry;

    invoke-direct {v2}, Lcom/trilead/ssh2/SFTPv3DirectoryEntry;-><init>()V

    .line 756
    iget-object v4, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/trilead/ssh2/SFTPv3DirectoryEntry;->filename:Ljava/lang/String;

    .line 757
    iget-object v4, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/trilead/ssh2/SFTPv3DirectoryEntry;->longEntry:Ljava/lang/String;

    .line 759
    invoke-direct {p0, v3}, Lcom/trilead/ssh2/SFTPv3Client;->readAttrs(Lcom/trilead/ssh2/packets/TypesReader;)Lcom/trilead/ssh2/SFTPv3FileAttributes;

    move-result-object v4

    iput-object v4, v2, Lcom/trilead/ssh2/SFTPv3DirectoryEntry;->attributes:Lcom/trilead/ssh2/SFTPv3FileAttributes;

    .line 760
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 762
    iget-object v4, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v4, :cond_4

    .line 763
    iget-object v2, v2, Lcom/trilead/ssh2/SFTPv3DirectoryEntry;->filename:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "File: \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    const/16 p1, 0x65

    if-ne v2, p1, :cond_7

    .line 772
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    return-object v0

    .line 777
    :cond_6
    new-instance v0, Lcom/trilead/ssh2/SFTPException;

    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 770
    :cond_7
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The SFTP server sent an unexpected packet type ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 743
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The server sent an invalid id field."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final sendMessage(II[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    .line 210
    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[BII)V

    return-void
.end method

.method private final sendMessage(II[BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p5, 0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    add-int/lit8 v0, p5, 0x5

    .line 190
    :cond_0
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v3, v0, 0x18

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 191
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v3, v0, 0x10

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 192
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v3, v0, 0x8

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 193
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 194
    iget-object v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    if-eq p1, v1, :cond_1

    .line 198
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v0, p2, 0x18

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 199
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v0, p2, 0x10

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 200
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v0, p2, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 201
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 204
    :cond_1
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    invoke-virtual {p1, p3, p4, p5}, Ljava/io/OutputStream;->write([BII)V

    .line 205
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private statBoth(Ljava/lang/String;I)Lcom/trilead/ssh2/SFTPv3FileAttributes;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 405
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 406
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    .line 410
    const-string v2, "Sending SSH_FXP_STAT/SSH_FXP_LSTAT..."

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 411
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 414
    :cond_0
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    const p1, 0x84d0

    .line 416
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object p1

    .line 418
    iget-object p2, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p2, :cond_1

    .line 420
    const-string v1, "Got REPLY."

    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 421
    iget-object p2, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p2}, Ljava/io/PrintStream;->flush()V

    .line 424
    :cond_1
    new-instance p2, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {p2, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 426
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    .line 428
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v1

    if-ne v1, v0, :cond_4

    const/16 v0, 0x69

    if-ne p1, v0, :cond_2

    .line 434
    invoke-direct {p0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->readAttrs(Lcom/trilead/ssh2/packets/TypesReader;)Lcom/trilead/ssh2/SFTPv3FileAttributes;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v0, 0x65

    if-eq p1, v0, :cond_3

    .line 438
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The SFTP server sent an unexpected packet type ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 440
    :cond_3
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    .line 442
    new-instance v0, Lcom/trilead/ssh2/SFTPException;

    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 430
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The server sent an invalid id field."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public canonicalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 660
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 662
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 663
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    .line 667
    const-string v2, "Sending SSH_FXP_REALPATH..."

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 668
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    :cond_0
    const/16 p1, 0x10

    .line 671
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    const p1, 0x84d0

    .line 673
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object p1

    .line 675
    iget-object v1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v1, :cond_1

    .line 677
    const-string v2, "Got REPLY."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 678
    iget-object v1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 681
    :cond_1
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v1, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 683
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    .line 685
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    if-ne v2, v0, :cond_5

    const/16 v0, 0x68

    if-ne p1, v0, :cond_3

    .line 691
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 696
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 694
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The server sent an invalid SSH_FXP_NAME packet."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/16 v0, 0x65

    if-eq p1, v0, :cond_4

    .line 700
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The SFTP server sent an unexpected packet type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_4
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    .line 704
    new-instance v0, Lcom/trilead/ssh2/SFTPException;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 687
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The server sent an invalid id field."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 1

    .line 919
    iget-object v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->sess:Lcom/trilead/ssh2/Session;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->close()V

    return-void
.end method

.method public closeFile(Lcom/trilead/ssh2/SFTPv3FileHandle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 1379
    :try_start_0
    iget-boolean v1, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->isClosed:Z

    if-nez v1, :cond_0

    .line 1381
    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->fileHandle:[B

    invoke-direct {p0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->closeHandle([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1386
    :cond_0
    iput-boolean v0, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->isClosed:Z

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->isClosed:Z

    .line 1387
    throw v1

    .line 1375
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the handle argument may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createFile(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1057
    invoke-virtual {p0, p1, v0}, Lcom/trilead/ssh2/SFTPv3Client;->createFile(Ljava/lang/String;Lcom/trilead/ssh2/SFTPv3FileAttributes;)Lcom/trilead/ssh2/SFTPv3FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public createFile(Ljava/lang/String;Lcom/trilead/ssh2/SFTPv3FileAttributes;)Lcom/trilead/ssh2/SFTPv3FileHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 1076
    invoke-direct {p0, p1, v0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->openFile(Ljava/lang/String;ILcom/trilead/ssh2/SFTPv3FileAttributes;)Lcom/trilead/ssh2/SFTPv3FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public createFileTruncate(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1089
    invoke-virtual {p0, p1, v0}, Lcom/trilead/ssh2/SFTPv3Client;->createFileTruncate(Ljava/lang/String;Lcom/trilead/ssh2/SFTPv3FileAttributes;)Lcom/trilead/ssh2/SFTPv3FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public createFileTruncate(Ljava/lang/String;Lcom/trilead/ssh2/SFTPv3FileAttributes;)Lcom/trilead/ssh2/SFTPv3FileHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1b

    .line 1108
    invoke-direct {p0, p1, v0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->openFile(Ljava/lang/String;ILcom/trilead/ssh2/SFTPv3FileAttributes;)Lcom/trilead/ssh2/SFTPv3FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public createSymlink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 628
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 634
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 635
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p2, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object p2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    .line 640
    const-string p2, "Sending SSH_FXP_SYMLINK..."

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 641
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    :cond_0
    const/16 p1, 0x14

    .line 644
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 646
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    return-void
.end method

.method public fsetstat(Lcom/trilead/ssh2/SFTPv3FileHandle;Lcom/trilead/ssh2/SFTPv3FileAttributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 599
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->checkHandleValidAndOpen(Lcom/trilead/ssh2/SFTPv3FileHandle;)V

    .line 601
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 603
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 604
    iget-object v2, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->fileHandle:[B

    iget-object p1, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->fileHandle:[B

    array-length p1, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 605
    invoke-direct {p0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->createAttrs(Lcom/trilead/ssh2/SFTPv3FileAttributes;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBytes([B)V

    .line 607
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    .line 609
    const-string p2, "Sending SSH_FXP_FSETSTAT..."

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 610
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    :cond_0
    const/16 p1, 0xa

    .line 613
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 615
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    return-void
.end method

.method public fstat(Lcom/trilead/ssh2/SFTPv3FileHandle;)Lcom/trilead/ssh2/SFTPv3FileAttributes;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->checkHandleValidAndOpen(Lcom/trilead/ssh2/SFTPv3FileHandle;)V

    .line 359
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 361
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 362
    iget-object v2, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->fileHandle:[B

    iget-object p1, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->fileHandle:[B

    array-length p1, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 364
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    .line 366
    const-string v2, "Sending SSH_FXP_FSTAT..."

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 367
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    :cond_0
    const/16 p1, 0x8

    .line 370
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    const p1, 0x84d0

    .line 372
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object p1

    .line 374
    iget-object v1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v1, :cond_1

    .line 376
    const-string v2, "Got REPLY."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 377
    iget-object v1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 380
    :cond_1
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v1, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 382
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    .line 384
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    if-ne v2, v0, :cond_4

    const/16 v0, 0x69

    if-ne p1, v0, :cond_2

    .line 390
    invoke-direct {p0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->readAttrs(Lcom/trilead/ssh2/packets/TypesReader;)Lcom/trilead/ssh2/SFTPv3FileAttributes;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v0, 0x65

    if-eq p1, v0, :cond_3

    .line 394
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The SFTP server sent an unexpected packet type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_3
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    .line 398
    new-instance v0, Lcom/trilead/ssh2/SFTPException;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 386
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The server sent an invalid id field."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolVersion()I
    .locals 1

    .line 905
    iget v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->protocol_version:I

    return v0
.end method

.method public ls(Ljava/lang/String;)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 931
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->openDirectory(Ljava/lang/String;)[B

    move-result-object p1

    .line 932
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->scanDirectory([B)Ljava/util/Vector;

    move-result-object v0

    .line 933
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->closeHandle([B)V

    return-object v0
.end method

.method public lstat(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x7

    .line 472
    invoke-direct {p0, p1, v0}, Lcom/trilead/ssh2/SFTPv3Client;->statBoth(Ljava/lang/String;I)Lcom/trilead/ssh2/SFTPv3FileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public mkdir(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 948
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 950
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 951
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 952
    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 953
    invoke-virtual {v1, p2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    const/16 p1, 0xe

    .line 955
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 957
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    return-void
.end method

.method public mv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1005
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 1007
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 1008
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p2, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x12

    .line 1011
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 1013
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    return-void
.end method

.method public openFileRO(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1025
    invoke-direct {p0, p1, v0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->openFile(Ljava/lang/String;ILcom/trilead/ssh2/SFTPv3FileAttributes;)Lcom/trilead/ssh2/SFTPv3FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public openFileRW(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1037
    invoke-direct {p0, p1, v0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->openFile(Ljava/lang/String;ILcom/trilead/ssh2/SFTPv3FileAttributes;)Lcom/trilead/ssh2/SFTPv3FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/trilead/ssh2/SFTPv3FileHandle;J[BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1231
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->checkHandleValidAndOpen(Lcom/trilead/ssh2/SFTPv3FileHandle;)V

    const v0, 0x8000

    if-gt p6, v0, :cond_8

    if-lez p6, :cond_8

    .line 1236
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 1238
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 1239
    iget-object v2, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->fileHandle:[B

    iget-object p1, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->fileHandle:[B

    array-length p1, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 1240
    invoke-virtual {v1, p2, p3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT64(J)V

    .line 1241
    invoke-virtual {v1, p6}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 1243
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    .line 1245
    const-string p2, "Sending SSH_FXP_READ..."

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1246
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    :cond_0
    const/4 p1, 0x5

    .line 1249
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    const p1, 0x84d0

    .line 1251
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object p1

    .line 1253
    new-instance p2, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {p2, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 1255
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    .line 1257
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p3

    if-ne p3, v0, :cond_7

    const/16 p3, 0x67

    if-ne p1, p3, :cond_3

    .line 1263
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_1

    .line 1265
    const-string p3, "Got SSH_FXP_DATA..."

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1266
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 1269
    :cond_1
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    if-ltz p1, :cond_2

    if-gt p1, p6, :cond_2

    .line 1274
    invoke-virtual {p2, p4, p5, p1}, Lcom/trilead/ssh2/packets/TypesReader;->readBytes([BII)V

    return p1

    .line 1272
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The server sent an invalid length field."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/16 p3, 0x65

    if-ne p1, p3, :cond_6

    .line 1282
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_5

    .line 1286
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_4

    .line 1288
    const-string p2, "Got SSH_FX_EOF."

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1289
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    :cond_4
    const/4 p1, -0x1

    return p1

    .line 1295
    :cond_5
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1297
    new-instance p3, Lcom/trilead/ssh2/SFTPException;

    invoke-direct {p3, p2, p1}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw p3

    .line 1280
    :cond_6
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "The SFTP server sent an unexpected packet type ("

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1259
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The server sent an invalid id field."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1234
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid len argument"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 484
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 486
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 487
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    .line 491
    const-string v2, "Sending SSH_FXP_READLINK..."

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 492
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    :cond_0
    const/16 p1, 0x13

    .line 495
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    const p1, 0x84d0

    .line 497
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object p1

    .line 499
    iget-object v1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v1, :cond_1

    .line 501
    const-string v2, "Got REPLY."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 502
    iget-object v1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 505
    :cond_1
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v1, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 507
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    .line 509
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    if-ne v2, v0, :cond_5

    const/16 v0, 0x68

    if-ne p1, v0, :cond_3

    .line 515
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 520
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 518
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The server sent an invalid SSH_FXP_NAME packet."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/16 v0, 0x65

    if-eq p1, v0, :cond_4

    .line 524
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The SFTP server sent an unexpected packet type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_4
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    .line 528
    new-instance v0, Lcom/trilead/ssh2/SFTPException;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 511
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The server sent an invalid id field."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rm(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 968
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 970
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 971
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xd

    .line 973
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 975
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    return-void
.end method

.method public rmdir(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 986
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 988
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 989
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xf

    .line 991
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 993
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 147
    iput-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    return-void

    .line 153
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    iput-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    return-void

    :catch_0
    move-exception p1

    .line 157
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This charset is not supported"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setstat(Ljava/lang/String;Lcom/trilead/ssh2/SFTPv3FileAttributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 571
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 573
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 574
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-direct {p0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->createAttrs(Lcom/trilead/ssh2/SFTPv3FileAttributes;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBytes([B)V

    .line 577
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    .line 579
    const-string p2, "Sending SSH_FXP_SETSTAT..."

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 580
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    :cond_0
    const/16 p1, 0x9

    .line 583
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 585
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    return-void
.end method

.method public stat(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x11

    .line 457
    invoke-direct {p0, p1, v0}, Lcom/trilead/ssh2/SFTPv3Client;->statBoth(Ljava/lang/String;I)Lcom/trilead/ssh2/SFTPv3FileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/trilead/ssh2/SFTPv3FileHandle;J[BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1313
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->checkHandleValidAndOpen(Lcom/trilead/ssh2/SFTPv3FileHandle;)V

    :goto_0
    if-lez p6, :cond_5

    const v0, 0x8000

    if-le p6, v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, p6

    .line 1322
    :goto_1
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v1

    .line 1324
    new-instance v2, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v2}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 1325
    iget-object v3, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->fileHandle:[B

    iget-object v4, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->fileHandle:[B

    array-length v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 1326
    invoke-virtual {v2, p2, p3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT64(J)V

    .line 1327
    invoke-virtual {v2, p4, p5, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 1329
    iget-object v3, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v3, :cond_1

    .line 1331
    const-string v4, "Sending SSH_FXP_WRITE..."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1332
    iget-object v3, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->flush()V

    :cond_1
    const/4 v3, 0x6

    .line 1335
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v2

    invoke-direct {p0, v3, v1, v2}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    int-to-long v2, v0

    add-long/2addr p2, v2

    add-int/2addr p5, v0

    sub-int/2addr p6, v0

    const v0, 0x84d0

    .line 1342
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object v0

    .line 1344
    new-instance v2, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v2, v0}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 1346
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result v0

    .line 1348
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v3

    if-ne v3, v1, :cond_4

    const/16 v1, 0x65

    if-ne v0, v1, :cond_3

    .line 1355
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1360
    :cond_2
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1362
    new-instance p2, Lcom/trilead/ssh2/SFTPException;

    invoke-direct {p2, p1, v0}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 1353
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The SFTP server sent an unexpected packet type ("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1350
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The server sent an invalid id field."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void
.end method
