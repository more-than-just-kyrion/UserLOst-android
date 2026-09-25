.class public Lnet/sourceforge/jsocks/Socks4Proxy;
.super Lnet/sourceforge/jsocks/Proxy;
.source "Socks4Proxy.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/jsocks/Proxy;-><init>(Ljava/lang/String;I)V

    .line 69
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lnet/sourceforge/jsocks/Socks4Proxy;->user:Ljava/lang/String;

    const/4 p1, 0x4

    .line 70
    iput p1, p0, Lnet/sourceforge/jsocks/Socks4Proxy;->version:I

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, v0, p1, p2, p3}, Lnet/sourceforge/jsocks/Socks4Proxy;-><init>(Lnet/sourceforge/jsocks/Proxy;Ljava/net/InetAddress;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnet/sourceforge/jsocks/Proxy;Ljava/net/InetAddress;ILjava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lnet/sourceforge/jsocks/Proxy;-><init>(Lnet/sourceforge/jsocks/Proxy;Ljava/net/InetAddress;I)V

    .line 48
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lnet/sourceforge/jsocks/Socks4Proxy;->user:Ljava/lang/String;

    const/4 p1, 0x4

    .line 49
    iput p1, p0, Lnet/sourceforge/jsocks/Socks4Proxy;->version:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .line 82
    new-instance v0, Lnet/sourceforge/jsocks/Socks4Proxy;

    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks4Proxy;->proxyIP:Ljava/net/InetAddress;

    iget v2, p0, Lnet/sourceforge/jsocks/Socks4Proxy;->proxyPort:I

    iget-object v3, p0, Lnet/sourceforge/jsocks/Socks4Proxy;->user:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lnet/sourceforge/jsocks/Socks4Proxy;-><init>(Ljava/net/InetAddress;ILjava/lang/String;)V

    .line 83
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks4Proxy;->chainProxy:Lnet/sourceforge/jsocks/Proxy;

    iput-object v1, v0, Lnet/sourceforge/jsocks/Socks4Proxy;->chainProxy:Lnet/sourceforge/jsocks/Proxy;

    return-object v0
.end method

.method protected copy()Lnet/sourceforge/jsocks/Proxy;
    .locals 4

    .line 95
    new-instance v0, Lnet/sourceforge/jsocks/Socks4Proxy;

    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks4Proxy;->proxyIP:Ljava/net/InetAddress;

    iget v2, p0, Lnet/sourceforge/jsocks/Socks4Proxy;->proxyPort:I

    iget-object v3, p0, Lnet/sourceforge/jsocks/Socks4Proxy;->user:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lnet/sourceforge/jsocks/Socks4Proxy;-><init>(Ljava/net/InetAddress;ILjava/lang/String;)V

    .line 96
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks4Proxy;->chainProxy:Lnet/sourceforge/jsocks/Proxy;

    iput-object v1, v0, Lnet/sourceforge/jsocks/Socks4Proxy;->chainProxy:Lnet/sourceforge/jsocks/Proxy;

    return-object v0
.end method

.method protected formMessage(ILjava/lang/String;I)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 124
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lnet/sourceforge/jsocks/Socks4Proxy;->formMessage(ILjava/net/InetAddress;I)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object p1

    return-object p1
.end method

.method protected formMessage(ILjava/net/InetAddress;I)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 118
    :cond_0
    new-instance p1, Lnet/sourceforge/jsocks/Socks4Message;

    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks4Proxy;->user:Ljava/lang/String;

    invoke-direct {p1, v0, p2, p3, v1}, Lnet/sourceforge/jsocks/Socks4Message;-><init>(ILjava/net/InetAddress;ILjava/lang/String;)V

    return-object p1
.end method

.method protected formMessage(Ljava/io/InputStream;)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    new-instance v0, Lnet/sourceforge/jsocks/Socks4Message;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lnet/sourceforge/jsocks/Socks4Message;-><init>(Ljava/io/InputStream;Z)V

    return-object v0
.end method
