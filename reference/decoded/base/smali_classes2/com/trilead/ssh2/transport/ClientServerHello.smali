.class public Lcom/trilead/ssh2/transport/ClientServerHello;
.super Ljava/lang/Object;
.source "ClientServerHello.java"


# instance fields
.field client_line:Ljava/lang/String;

.field server_line:Ljava/lang/String;

.field server_versioncomment:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    const-string v0, "ISO-8859-1"

    const-string v1, "\r\n"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v2, "SSH-2.0-TrileadSSH2Java_213"

    iput-object v2, p0, Lcom/trilead/ssh2/transport/ClientServerHello;->client_line:Ljava/lang/String;

    .line 62
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    iget-object v2, p0, Lcom/trilead/ssh2/transport/ClientServerHello;->client_line:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 66
    :goto_0
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    const/16 p2, 0x200

    .line 68
    new-array p2, p2, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    const/16 v3, 0x32

    .line 70
    const-string v4, "SSH-"

    if-ge v2, v3, :cond_1

    .line 72
    invoke-static {p1, p2}, Lcom/trilead/ssh2/transport/ClientServerHello;->readLineRN(Ljava/io/InputStream;[B)I

    move-result v3

    .line 75
    :try_start_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p2, v1, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v5, p0, Lcom/trilead/ssh2/transport/ClientServerHello;->server_line:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 77
    :catch_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p2, v1, v3}, Ljava/lang/String;-><init>([BII)V

    iput-object v5, p0, Lcom/trilead/ssh2/transport/ClientServerHello;->server_line:Ljava/lang/String;

    .line 80
    :goto_2
    iget-object v3, p0, Lcom/trilead/ssh2/transport/ClientServerHello;->server_line:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 84
    :cond_1
    :goto_3
    iget-object p1, p0, Lcom/trilead/ssh2/transport/ClientServerHello;->server_line:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 88
    iget-object p1, p0, Lcom/trilead/ssh2/transport/ClientServerHello;->server_line:Ljava/lang/String;

    const-string p2, "SSH-1.99-"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 89
    iget-object p1, p0, Lcom/trilead/ssh2/transport/ClientServerHello;->server_line:Ljava/lang/String;

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/transport/ClientServerHello;->server_versioncomment:Ljava/lang/String;

    goto :goto_4

    .line 90
    :cond_2
    iget-object p1, p0, Lcom/trilead/ssh2/transport/ClientServerHello;->server_line:Ljava/lang/String;

    const-string p2, "SSH-2.0-"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 91
    iget-object p1, p0, Lcom/trilead/ssh2/transport/ClientServerHello;->server_line:Ljava/lang/String;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/transport/ClientServerHello;->server_versioncomment:Ljava/lang/String;

    :goto_4
    return-void

    .line 93
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Server uses incompatible protocol, it is not SSH-2 compatible."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Malformed server identification string. There was no line starting with \'SSH-\' amongst the first 50 lines."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final readLineRN(Ljava/io/InputStream;[B)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 31
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    add-int/lit8 v4, v0, 0x1

    int-to-byte v5, v3

    .line 35
    aput-byte v5, p1, v0

    const/16 v0, 0xd

    if-ne v3, v0, :cond_0

    const/4 v1, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    if-ne v3, v0, :cond_1

    return v2

    :cond_1
    if-nez v1, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 50
    array-length v0, p1

    if-ge v4, v0, :cond_2

    goto :goto_1

    .line 51
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "The server sent a too long line."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Malformed line sent by the server, the line does not end correctly."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Premature connection close"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getClientString()[B
    .locals 2

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/transport/ClientServerHello;->client_line:Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    iget-object v0, p0, Lcom/trilead/ssh2/transport/ClientServerHello;->client_line:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getServerString()[B
    .locals 2

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/transport/ClientServerHello;->server_line:Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    iget-object v0, p0, Lcom/trilead/ssh2/transport/ClientServerHello;->server_line:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_0
    return-object v0
.end method
