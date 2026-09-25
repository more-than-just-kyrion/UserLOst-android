.class public Lnet/sourceforge/jsocks/Socks5DatagramSocket;
.super Ljava/net/DatagramSocket;
.source "Socks5DatagramSocket.java"


# instance fields
.field encapsulation:Lnet/sourceforge/jsocks/UDPEncapsulation;

.field proxy:Lnet/sourceforge/jsocks/Socks5Proxy;

.field relayIP:Ljava/net/InetAddress;

.field relayPort:I

.field private server_mode:Z


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    sget-object v0, Lnet/sourceforge/jsocks/Proxy;->defaultProxy:Lnet/sourceforge/jsocks/Proxy;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lnet/sourceforge/jsocks/Socks5DatagramSocket;-><init>(Lnet/sourceforge/jsocks/Proxy;ILjava/net/InetAddress;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    sget-object v0, Lnet/sourceforge/jsocks/Proxy;->defaultProxy:Lnet/sourceforge/jsocks/Proxy;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lnet/sourceforge/jsocks/Socks5DatagramSocket;-><init>(Lnet/sourceforge/jsocks/Proxy;ILjava/net/InetAddress;)V

    return-void
.end method

.method public constructor <init>(ILjava/net/InetAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    sget-object v0, Lnet/sourceforge/jsocks/Proxy;->defaultProxy:Lnet/sourceforge/jsocks/Proxy;

    invoke-direct {p0, v0, p1, p2}, Lnet/sourceforge/jsocks/Socks5DatagramSocket;-><init>(Lnet/sourceforge/jsocks/Proxy;ILjava/net/InetAddress;)V

    return-void
.end method

.method public constructor <init>(Lnet/sourceforge/jsocks/Proxy;ILjava/net/InetAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-direct {p0, p2, p3}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    const/4 p2, 0x0

    .line 41
    iput-boolean p2, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->server_mode:Z

    if-eqz p1, :cond_3

    .line 109
    instance-of p2, p1, Lnet/sourceforge/jsocks/Socks5Proxy;

    if-eqz p2, :cond_2

    .line 113
    iget-object p2, p1, Lnet/sourceforge/jsocks/Proxy;->chainProxy:Lnet/sourceforge/jsocks/Proxy;

    if-nez p2, :cond_1

    .line 117
    invoke-virtual {p1}, Lnet/sourceforge/jsocks/Proxy;->copy()Lnet/sourceforge/jsocks/Proxy;

    move-result-object p1

    check-cast p1, Lnet/sourceforge/jsocks/Socks5Proxy;

    iput-object p1, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->proxy:Lnet/sourceforge/jsocks/Socks5Proxy;

    .line 119
    invoke-super {p0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p2

    .line 120
    invoke-super {p0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result p3

    .line 119
    invoke-virtual {p1, p2, p3}, Lnet/sourceforge/jsocks/Socks5Proxy;->udpAssociate(Ljava/net/InetAddress;I)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object p1

    .line 121
    iget-object p2, p1, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    iput-object p2, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->relayIP:Ljava/net/InetAddress;

    .line 122
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    const-string p3, "0.0.0.0"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 123
    iget-object p2, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->proxy:Lnet/sourceforge/jsocks/Socks5Proxy;

    iget-object p2, p2, Lnet/sourceforge/jsocks/Socks5Proxy;->proxyIP:Ljava/net/InetAddress;

    iput-object p2, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->relayIP:Ljava/net/InetAddress;

    .line 124
    :cond_0
    iget p1, p1, Lnet/sourceforge/jsocks/ProxyMessage;->port:I

    iput p1, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->relayPort:I

    .line 126
    iget-object p1, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->proxy:Lnet/sourceforge/jsocks/Socks5Proxy;

    iget-object p1, p1, Lnet/sourceforge/jsocks/Socks5Proxy;->udp_encapsulation:Lnet/sourceforge/jsocks/UDPEncapsulation;

    iput-object p1, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->encapsulation:Lnet/sourceforge/jsocks/UDPEncapsulation;

    return-void

    .line 114
    :cond_1
    new-instance p1, Lnet/sourceforge/jsocks/SocksException;

    const/high16 p2, 0x60000

    const-string p3, "Datagram Sockets do not support proxy chaining."

    invoke-direct {p1, p2, p3}, Lnet/sourceforge/jsocks/SocksException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 110
    :cond_2
    new-instance p1, Lnet/sourceforge/jsocks/SocksException;

    const/4 p2, -0x1

    const-string p3, "Datagram Socket needs Proxy version 5"

    invoke-direct {p1, p2, p3}, Lnet/sourceforge/jsocks/SocksException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 108
    :cond_3
    new-instance p1, Lnet/sourceforge/jsocks/SocksException;

    const/high16 p2, 0x10000

    invoke-direct {p1, p2}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw p1
.end method

.method constructor <init>(ZLnet/sourceforge/jsocks/UDPEncapsulation;Ljava/net/InetAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/net/DatagramSocket;-><init>()V

    .line 61
    iput-boolean p1, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->server_mode:Z

    .line 62
    iput-object p3, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->relayIP:Ljava/net/InetAddress;

    .line 63
    iput p4, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->relayPort:I

    .line 64
    iput-object p2, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->encapsulation:Lnet/sourceforge/jsocks/UDPEncapsulation;

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->proxy:Lnet/sourceforge/jsocks/Socks5Proxy;

    return-void
.end method

.method private formHeader(Ljava/net/InetAddress;I)[B
    .locals 2

    .line 143
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Message;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(ILjava/net/InetAddress;I)V

    .line 144
    iget-object p1, v0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    aput-byte v1, p1, v1

    .line 145
    iget-object p1, v0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 137
    iget-boolean v0, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->server_mode:Z

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->proxy:Lnet/sourceforge/jsocks/Socks5Proxy;

    invoke-virtual {v0}, Lnet/sourceforge/jsocks/Socks5Proxy;->endSession()V

    .line 139
    :cond_0
    invoke-super {p0}, Ljava/net/DatagramSocket;->close()V

    return-void
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 157
    iget-boolean v0, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->server_mode:Z

    if-eqz v0, :cond_0

    .line 158
    invoke-super {p0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 159
    :cond_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->relayIP:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 171
    iget-boolean v0, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->server_mode:Z

    if-eqz v0, :cond_0

    .line 172
    invoke-super {p0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v0

    return v0

    .line 173
    :cond_0
    iget v0, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->relayPort:I

    return v0
.end method

.method public isProxyAlive(I)Z
    .locals 3

    .line 203
    iget-boolean v0, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->server_mode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 205
    :cond_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->proxy:Lnet/sourceforge/jsocks/Socks5Proxy;

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 207
    :try_start_0
    iget-object v0, v0, Lnet/sourceforge/jsocks/Socks5Proxy;->proxySocket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 209
    iget-object p1, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->proxy:Lnet/sourceforge/jsocks/Socks5Proxy;

    iget-object p1, p1, Lnet/sourceforge/jsocks/Socks5Proxy;->in:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez p1, :cond_1

    return v1

    :cond_1
    return v2

    :catch_0
    return v1

    :catch_1
    return v2

    :cond_2
    return v1
.end method

.method public receive(Ljava/net/DatagramPacket;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 240
    iget-boolean v0, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->server_mode:Z

    if-eqz v0, :cond_4

    .line 242
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    .line 243
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->getSoTimeout()I

    move-result v1

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 246
    :goto_0
    iget-object v4, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->relayIP:Ljava/net/InetAddress;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->relayPort:I

    .line 247
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v5

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_5

    .line 269
    invoke-virtual {p0, v1}, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->setSoTimeout(I)V

    goto :goto_3

    .line 250
    :cond_1
    :goto_1
    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setLength(I)V

    if-eqz v1, :cond_3

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-int v4, v4

    sub-int v4, v1, v4

    if-lez v4, :cond_2

    .line 261
    invoke-virtual {p0, v4}, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->setSoTimeout(I)V

    goto :goto_2

    .line 259
    :cond_2
    new-instance p1, Ljava/io/InterruptedIOException;

    const-string v0, "In Socks5DatagramSocket->receive()"

    invoke-direct {p1, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 264
    :cond_3
    :goto_2
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    goto :goto_0

    .line 271
    :cond_4
    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->relayIP:Ljava/net/InetAddress;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->relayPort:I

    .line 272
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    if-eq v0, v1, :cond_5

    goto :goto_4

    .line 277
    :cond_5
    :goto_3
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    .line 279
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->encapsulation:Lnet/sourceforge/jsocks/UDPEncapsulation;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 280
    invoke-interface {v1, v0, v2}, Lnet/sourceforge/jsocks/UDPEncapsulation;->udpEncapsulate([BZ)[B

    move-result-object v0

    .line 285
    :cond_6
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 286
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 288
    new-instance v3, Lnet/sourceforge/jsocks/Socks5Message;

    invoke-direct {v3, v1}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(Ljava/io/InputStream;)V

    .line 289
    iget v4, v3, Lnet/sourceforge/jsocks/ProxyMessage;->port:I

    invoke-virtual {p1, v4}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 290
    invoke-virtual {v3}, Lnet/sourceforge/jsocks/ProxyMessage;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 293
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 295
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setLength(I)V

    :cond_7
    :goto_4
    return-void
.end method

.method public send(Ljava/net/DatagramPacket;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    iget-boolean v0, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->server_mode:Z

    if-nez v0, :cond_0

    .line 321
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    return-void

    .line 326
    :cond_0
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->formHeader(Ljava/net/InetAddress;I)[B

    move-result-object v0

    .line 327
    array-length v1, v0

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 328
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    .line 330
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    array-length v0, v0

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result p1

    invoke-static {v2, v4, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    iget-object p1, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->encapsulation:Lnet/sourceforge/jsocks/UDPEncapsulation;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 335
    invoke-interface {p1, v1, v0}, Lnet/sourceforge/jsocks/UDPEncapsulation;->udpEncapsulate([BZ)[B

    move-result-object v1

    .line 337
    :cond_1
    new-instance p1, Ljava/net/DatagramPacket;

    array-length v0, v1

    iget-object v2, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->relayIP:Ljava/net/InetAddress;

    iget v3, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->relayPort:I

    invoke-direct {p1, v1, v0, v2, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    return-void
.end method

.method public send(Ljava/net/DatagramPacket;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 364
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    return-void
.end method
