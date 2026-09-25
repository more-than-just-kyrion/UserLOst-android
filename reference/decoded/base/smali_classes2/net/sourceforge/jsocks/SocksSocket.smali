.class public Lnet/sourceforge/jsocks/SocksSocket;
.super Ljava/net/Socket;
.source "SocksSocket.java"


# instance fields
.field private directSock:Ljava/net/Socket;

.field protected localHost:Ljava/lang/String;

.field protected localIP:Ljava/net/InetAddress;

.field protected localPort:I

.field protected proxy:Lnet/sourceforge/jsocks/Proxy;

.field protected remoteHost:Ljava/lang/String;

.field protected remoteIP:Ljava/net/InetAddress;

.field protected remotePort:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 141
    sget-object v0, Lnet/sourceforge/jsocks/Proxy;->defaultProxy:Lnet/sourceforge/jsocks/Proxy;

    invoke-direct {p0, v0, p1, p2}, Lnet/sourceforge/jsocks/SocksSocket;-><init>(Lnet/sourceforge/jsocks/Proxy;Ljava/lang/String;I)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILnet/sourceforge/jsocks/Proxy;)V
    .locals 1

    .line 148
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->directSock:Ljava/net/Socket;

    .line 149
    iput p2, p0, Lnet/sourceforge/jsocks/SocksSocket;->remotePort:I

    .line 150
    iput-object p3, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    .line 151
    iget-object p2, p3, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p2

    iput-object p2, p0, Lnet/sourceforge/jsocks/SocksSocket;->localIP:Ljava/net/InetAddress;

    .line 152
    iget-object p2, p3, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getLocalPort()I

    move-result p2

    iput p2, p0, Lnet/sourceforge/jsocks/SocksSocket;->localPort:I

    .line 153
    iput-object p1, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteHost:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->directSock:Ljava/net/Socket;

    .line 69
    iput-object p1, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteIP:Ljava/net/InetAddress;

    .line 70
    iput p2, p0, Lnet/sourceforge/jsocks/SocksSocket;->remotePort:I

    .line 71
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteHost:Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Lnet/sourceforge/jsocks/SocksSocket;->doDirect()V

    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILnet/sourceforge/jsocks/Proxy;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->directSock:Ljava/net/Socket;

    .line 76
    iput-object p1, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteIP:Ljava/net/InetAddress;

    .line 77
    iput p2, p0, Lnet/sourceforge/jsocks/SocksSocket;->remotePort:I

    .line 78
    iput-object p3, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    .line 79
    iget-object p1, p3, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/jsocks/SocksSocket;->localIP:Ljava/net/InetAddress;

    .line 80
    iget-object p1, p3, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalPort()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/jsocks/SocksSocket;->localPort:I

    .line 81
    iget-object p1, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteIP:Ljava/net/InetAddress;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteHost:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnet/sourceforge/jsocks/Proxy;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lnet/sourceforge/jsocks/SocksSocket;->directSock:Ljava/net/Socket;

    .line 121
    iput-object p2, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteHost:Ljava/lang/String;

    .line 122
    iput p3, p0, Lnet/sourceforge/jsocks/SocksSocket;->remotePort:I

    .line 123
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteIP:Ljava/net/InetAddress;

    .line 124
    invoke-direct {p0}, Lnet/sourceforge/jsocks/SocksSocket;->doDirect()V

    return-void
.end method

.method private doDirect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;
        }
    .end annotation

    .line 169
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteIP:Ljava/net/InetAddress;

    iget v2, p0, Lnet/sourceforge/jsocks/SocksSocket;->remotePort:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->directSock:Ljava/net/Socket;

    .line 170
    iget-object v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, v1, Lnet/sourceforge/jsocks/Proxy;->out:Ljava/io/OutputStream;

    .line 171
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    iget-object v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->directSock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v0, Lnet/sourceforge/jsocks/Proxy;->in:Ljava/io/InputStream;

    .line 172
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    iget-object v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->directSock:Ljava/net/Socket;

    iput-object v1, v0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    .line 173
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->directSock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->localIP:Ljava/net/InetAddress;

    .line 174
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->directSock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    iput v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->localPort:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 176
    new-instance v1, Lnet/sourceforge/jsocks/SocksException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Direct connect failed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x70000

    invoke-direct {v1, v2, v0}, Lnet/sourceforge/jsocks/SocksException;-><init>(ILjava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lnet/sourceforge/jsocks/Proxy;->endSession()V

    :cond_0
    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    return-void
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteHost:Ljava/lang/String;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .line 201
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteIP:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 203
    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteHost:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteIP:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    return-object v0

    .line 208
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteIP:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 216
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    iget-object v0, v0, Lnet/sourceforge/jsocks/Proxy;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 229
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->localIP:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 231
    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->localHost:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->localIP:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    return-object v0

    .line 236
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->localIP:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getLocalHost()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->localHost:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 258
    iget v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->localPort:I

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 266
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    iget-object v0, v0, Lnet/sourceforge/jsocks/Proxy;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 274
    iget v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->remotePort:I

    return v0
.end method

.method public getSoLinger(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 281
    iget-object p1, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    iget-object p1, p1, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getSoLinger()I

    move-result p1

    return p1
.end method

.method public getSoTimeout(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 288
    iget-object p1, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    iget-object p1, p1, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1

    return p1
.end method

.method public getTcpNoDelay()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    iget-object v0, v0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public setSoLinger(ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    iget-object v0, v0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    iget-object v0, v0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    iget-object v0, v0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 331
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->directSock:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Direct connection:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->directSock:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 333
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Proxy:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";addr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",port:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->remotePort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",localport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->localPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
