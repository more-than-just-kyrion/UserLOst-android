.class public Lcom/trilead/ssh2/HTTPProxyData;
.super Ljava/lang/Object;
.source "HTTPProxyData.java"

# interfaces
.implements Lcom/trilead/ssh2/ProxyData;


# instance fields
.field private final proxyHost:Ljava/lang/String;

.field private final proxyPass:Ljava/lang/String;

.field private final proxyPort:I

.field private final proxyUser:Ljava/lang/String;

.field private final requestHeaderLines:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/trilead/ssh2/HTTPProxyData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 54
    invoke-direct/range {v0 .. v5}, Lcom/trilead/ssh2/HTTPProxyData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    .line 88
    iput-object p1, p0, Lcom/trilead/ssh2/HTTPProxyData;->proxyHost:Ljava/lang/String;

    .line 89
    iput p2, p0, Lcom/trilead/ssh2/HTTPProxyData;->proxyPort:I

    .line 90
    iput-object p3, p0, Lcom/trilead/ssh2/HTTPProxyData;->proxyUser:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Lcom/trilead/ssh2/HTTPProxyData;->proxyPass:Ljava/lang/String;

    .line 92
    iput-object p5, p0, Lcom/trilead/ssh2/HTTPProxyData;->requestHeaderLines:[Ljava/lang/String;

    return-void

    .line 86
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "proxyPort must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "proxyHost must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public openConnection(Ljava/lang/String;II)Ljava/net/Socket;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 99
    iget-object v1, p0, Lcom/trilead/ssh2/HTTPProxyData;->proxyHost:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 100
    new-instance v2, Ljava/net/InetSocketAddress;

    iget v3, p0, Lcom/trilead/ssh2/HTTPProxyData;->proxyPort:I

    invoke-direct {v2, v1, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    const/4 p3, 0x0

    .line 101
    invoke-virtual {v0, p3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 105
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "CONNECT "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x3a

    .line 109
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 110
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 111
    const-string p1, " HTTP/1.0\r\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    iget-object p1, p0, Lcom/trilead/ssh2/HTTPProxyData;->proxyUser:Ljava/lang/String;

    const-string p2, "ISO-8859-1"

    const-string v2, "\r\n"

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/trilead/ssh2/HTTPProxyData;->proxyPass:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 118
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    move-result-object p1

    .line 122
    :goto_0
    const-string v3, "Proxy-Authorization: Basic "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/trilead/ssh2/HTTPProxyData;->requestHeaderLines:[Ljava/lang/String;

    if-eqz p1, :cond_2

    move p1, p3

    .line 129
    :goto_1
    iget-object v3, p0, Lcom/trilead/ssh2/HTTPProxyData;->requestHeaderLines:[Ljava/lang/String;

    array-length v4, v3

    if-ge p1, v4, :cond_2

    .line 131
    aget-object v3, v3, p1

    if-eqz v3, :cond_1

    .line 133
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 139
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 144
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 146
    :catch_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 148
    :goto_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    const/16 p1, 0x400

    .line 152
    new-array p1, p1, [B

    .line 153
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 155
    invoke-static {v1, p1}, Lcom/trilead/ssh2/transport/ClientServerHello;->readLineRN(Ljava/io/InputStream;[B)I

    move-result v2

    .line 159
    :try_start_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p3, v2, p2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 161
    :catch_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p3, v2}, Ljava/lang/String;-><init>([BII)V

    .line 164
    :goto_3
    const-string p2, "HTTP/"

    invoke-virtual {v3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const-string p3, "The proxy did not send back a valid HTTP response."

    if-eqz p2, :cond_7

    .line 169
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v2, 0xe

    if-lt p2, v2, :cond_6

    const/16 p2, 0x8

    invoke-virtual {v3, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v2, 0x20

    if-ne p2, v2, :cond_6

    const/16 p2, 0xc

    invoke-virtual {v3, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_6

    const/16 v2, 0x9

    .line 176
    :try_start_3
    invoke-virtual {v3, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    if-ltz p2, :cond_5

    const/16 v2, 0x3e7

    if-gt p2, v2, :cond_5

    const/16 p3, 0xc8

    if-ne p2, p3, :cond_4

    .line 195
    :cond_3
    invoke-static {v1, p1}, Lcom/trilead/ssh2/transport/ClientServerHello;->readLineRN(Ljava/io/InputStream;[B)I

    move-result p2

    if-nez p2, :cond_3

    return-object v0

    .line 188
    :cond_4
    new-instance p1, Lcom/trilead/ssh2/HTTPProxyException;

    const/16 p3, 0xd

    invoke-virtual {v3, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Lcom/trilead/ssh2/HTTPProxyException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 184
    :cond_5
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 180
    :catch_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 170
    :cond_6
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    :cond_7
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
