.class public Lnet/sourceforge/jsocks/SocksServerSocket;
.super Ljava/net/ServerSocket;
.source "SocksServerSocket.java"


# instance fields
.field doing_direct:Z

.field protected localHost:Ljava/lang/String;

.field protected localIP:Ljava/net/InetAddress;

.field protected localPort:I

.field protected proxy:Lnet/sourceforge/jsocks/Proxy;

.field remoteAddr:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    .line 67
    invoke-direct {p0, p2}, Ljava/net/ServerSocket;-><init>(I)V

    .line 21
    iput-boolean p2, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->doing_direct:Z

    .line 68
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->remoteAddr:Ljava/net/InetAddress;

    .line 69
    invoke-direct {p0}, Lnet/sourceforge/jsocks/SocksServerSocket;->doDirect()V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    sget-object v0, Lnet/sourceforge/jsocks/Proxy;->defaultProxy:Lnet/sourceforge/jsocks/Proxy;

    invoke-direct {p0, v0, p1, p2}, Lnet/sourceforge/jsocks/SocksServerSocket;-><init>(Lnet/sourceforge/jsocks/Proxy;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public constructor <init>(Lnet/sourceforge/jsocks/Proxy;Ljava/net/InetAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 49
    invoke-direct {p0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    .line 21
    iput-boolean p1, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->doing_direct:Z

    .line 51
    iput-object p2, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->remoteAddr:Ljava/net/InetAddress;

    .line 52
    invoke-direct {p0}, Lnet/sourceforge/jsocks/SocksServerSocket;->doDirect()V

    return-void
.end method

.method private doDirect()V
    .locals 1

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->doing_direct:Z

    .line 123
    invoke-super {p0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    iput v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->localPort:I

    .line 124
    invoke-super {p0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->localIP:Ljava/net/InetAddress;

    .line 125
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->localHost:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-boolean v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->doing_direct:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 80
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    if-nez v0, :cond_0

    return-object v1

    .line 83
    :cond_0
    invoke-virtual {v0}, Lnet/sourceforge/jsocks/Proxy;->accept()Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object v0

    .line 84
    iget-object v2, v0, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    if-nez v2, :cond_1

    new-instance v2, Lnet/sourceforge/jsocks/SocksSocket;

    iget-object v3, v0, Lnet/sourceforge/jsocks/ProxyMessage;->host:Ljava/lang/String;

    iget v0, v0, Lnet/sourceforge/jsocks/ProxyMessage;->port:I

    iget-object v4, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    invoke-direct {v2, v3, v0, v4}, Lnet/sourceforge/jsocks/SocksSocket;-><init>(Ljava/lang/String;ILnet/sourceforge/jsocks/Proxy;)V

    goto :goto_0

    .line 85
    :cond_1
    new-instance v2, Lnet/sourceforge/jsocks/SocksSocket;

    iget-object v3, v0, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    iget v0, v0, Lnet/sourceforge/jsocks/ProxyMessage;->port:I

    iget-object v4, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    invoke-direct {v2, v3, v0, v4}, Lnet/sourceforge/jsocks/SocksSocket;-><init>(Ljava/net/InetAddress;ILnet/sourceforge/jsocks/Proxy;)V

    .line 87
    :goto_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    iget-object v0, v0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_2

    .line 93
    :cond_2
    :goto_1
    invoke-super {p0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    .line 94
    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    iget-object v3, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->remoteAddr:Ljava/net/InetAddress;

    invoke-virtual {v0, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    :goto_2
    iput-object v1, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    return-object v2

    .line 99
    :cond_3
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    goto :goto_1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-super {p0}, Ljava/net/ServerSocket;->close()V

    .line 116
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Lnet/sourceforge/jsocks/Proxy;->endSession()V

    :cond_0
    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    return-void
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->localHost:Ljava/lang/String;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .line 147
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->localIP:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 149
    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->localHost:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->localIP:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    return-object v0

    .line 154
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->localIP:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 163
    iget v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->localPort:I

    return v0
.end method

.method public setSoTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 179
    invoke-super {p0, p1}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 180
    iget-boolean v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->doing_direct:Z

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    iget-object v0, v0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_0
    return-void
.end method
