.class public Lnet/sourceforge/jsocks/Socks5Proxy;
.super Lnet/sourceforge/jsocks/Proxy;
.source "Socks5Proxy.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private authMethods:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lnet/sourceforge/jsocks/Authentication;",
            ">;"
        }
    .end annotation
.end field

.field resolveAddrLocally:Z

.field private selectedMethod:I

.field udp_encapsulation:Lnet/sourceforge/jsocks/UDPEncapsulation;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/jsocks/Proxy;-><init>(Ljava/lang/String;I)V

    .line 20
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->authMethods:Ljava/util/Hashtable;

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->resolveAddrLocally:Z

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->udp_encapsulation:Lnet/sourceforge/jsocks/UDPEncapsulation;

    const/4 p1, 0x5

    .line 56
    iput p1, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->version:I

    .line 57
    new-instance p1, Lnet/sourceforge/jsocks/AuthenticationNone;

    invoke-direct {p1}, Lnet/sourceforge/jsocks/AuthenticationNone;-><init>()V

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lnet/sourceforge/jsocks/Socks5Proxy;->setAuthenticationMethod(ILnet/sourceforge/jsocks/Authentication;)Z

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/jsocks/Proxy;-><init>(Ljava/net/InetAddress;I)V

    .line 20
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->authMethods:Ljava/util/Hashtable;

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->resolveAddrLocally:Z

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->udp_encapsulation:Lnet/sourceforge/jsocks/UDPEncapsulation;

    const/4 p1, 0x5

    .line 39
    iput p1, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->version:I

    .line 40
    new-instance p1, Lnet/sourceforge/jsocks/AuthenticationNone;

    invoke-direct {p1}, Lnet/sourceforge/jsocks/AuthenticationNone;-><init>()V

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lnet/sourceforge/jsocks/Socks5Proxy;->setAuthenticationMethod(ILnet/sourceforge/jsocks/Authentication;)Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .line 69
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Proxy;

    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->proxyIP:Ljava/net/InetAddress;

    iget v2, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->proxyPort:I

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/jsocks/Socks5Proxy;-><init>(Ljava/net/InetAddress;I)V

    .line 70
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->authMethods:Ljava/util/Hashtable;

    .line 71
    invoke-virtual {v1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    iput-object v1, v0, Lnet/sourceforge/jsocks/Socks5Proxy;->authMethods:Ljava/util/Hashtable;

    .line 72
    iget-boolean v1, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->resolveAddrLocally:Z

    iput-boolean v1, v0, Lnet/sourceforge/jsocks/Socks5Proxy;->resolveAddrLocally:Z

    .line 73
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->chainProxy:Lnet/sourceforge/jsocks/Proxy;

    iput-object v1, v0, Lnet/sourceforge/jsocks/Socks5Proxy;->chainProxy:Lnet/sourceforge/jsocks/Proxy;

    return-object v0
.end method

.method protected copy()Lnet/sourceforge/jsocks/Proxy;
    .locals 3

    .line 79
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Proxy;

    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->proxyIP:Ljava/net/InetAddress;

    iget v2, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->proxyPort:I

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/jsocks/Socks5Proxy;-><init>(Ljava/net/InetAddress;I)V

    .line 80
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->authMethods:Ljava/util/Hashtable;

    iput-object v1, v0, Lnet/sourceforge/jsocks/Socks5Proxy;->authMethods:Ljava/util/Hashtable;

    .line 81
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->chainProxy:Lnet/sourceforge/jsocks/Proxy;

    iput-object v1, v0, Lnet/sourceforge/jsocks/Socks5Proxy;->chainProxy:Lnet/sourceforge/jsocks/Proxy;

    .line 82
    iget-boolean v1, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->resolveAddrLocally:Z

    iput-boolean v1, v0, Lnet/sourceforge/jsocks/Socks5Proxy;->resolveAddrLocally:Z

    return-object v0
.end method

.method protected formMessage(ILjava/lang/String;I)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 100
    iget-boolean v0, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->resolveAddrLocally:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lnet/sourceforge/jsocks/Socks5Proxy;->formMessage(ILjava/net/InetAddress;I)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object p1

    return-object p1

    .line 103
    :cond_0
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Message;

    invoke-direct {v0, p1, p2, p3}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(ILjava/lang/String;I)V

    return-object v0
.end method

.method protected formMessage(ILjava/net/InetAddress;I)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 1

    .line 94
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Message;

    invoke-direct {v0, p1, p2, p3}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(ILjava/net/InetAddress;I)V

    return-object v0
.end method

.method protected formMessage(Ljava/io/InputStream;)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Message;

    invoke-direct {v0, p1}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getAuthenticationMethod(I)Lnet/sourceforge/jsocks/Authentication;
    .locals 2

    .line 120
    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->authMethods:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 123
    :cond_0
    check-cast p1, Lnet/sourceforge/jsocks/Authentication;

    return-object p1
.end method

.method public resolveAddrLocally()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->resolveAddrLocally:Z

    return v0
.end method

.method public resolveAddrLocally(Z)Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->resolveAddrLocally:Z

    .line 149
    iput-boolean p1, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->resolveAddrLocally:Z

    return v0
.end method

.method public setAuthenticationMethod(ILnet/sourceforge/jsocks/Authentication;)Z
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    const/16 v1, 0xff

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_2

    .line 167
    iget-object p2, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->authMethods:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 169
    :cond_2
    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->authMethods:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_3
    :goto_0
    return v0
.end method

.method protected startSession()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;
        }
    .end annotation

    .line 180
    invoke-super {p0}, Lnet/sourceforge/jsocks/Proxy;->startSession()V

    .line 182
    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->proxySocket:Ljava/net/Socket;

    const/high16 v1, 0x30000

    const/high16 v2, 0x20000

    .line 186
    :try_start_0
    iget-object v3, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->authMethods:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    int-to-byte v3, v3

    add-int/lit8 v4, v3, 0x2

    .line 188
    new-array v4, v4, [B

    .line 189
    iget v5, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->version:I

    int-to-byte v5, v5

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    const/4 v5, 0x1

    .line 190
    aput-byte v3, v4, v5

    .line 193
    iget-object v3, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->authMethods:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    const/4 v7, 0x2

    move v8, v7

    .line 194
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v9, v8, 0x1

    .line 195
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v4, v8

    move v8, v9

    goto :goto_0

    .line 197
    :cond_0
    iget-object v3, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 198
    iget-object v3, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 200
    iget-object v3, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 201
    iget-object v4, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    iput v4, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->selectedMethod:I

    if-ltz v3, :cond_5

    if-ltz v4, :cond_5

    .line 209
    iget v3, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->version:I

    .line 212
    iget v3, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->selectedMethod:I

    const/16 v4, 0xff

    if-eq v3, v4, :cond_4

    .line 217
    invoke-virtual {p0, v3}, Lnet/sourceforge/jsocks/Socks5Proxy;->getAuthenticationMethod(I)Lnet/sourceforge/jsocks/Authentication;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 224
    iget v4, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->selectedMethod:I

    invoke-interface {v3, v4, v0}, Lnet/sourceforge/jsocks/Authentication;->doSocksAuthentication(ILjava/net/Socket;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 235
    aget-object v3, v0, v6

    check-cast v3, Ljava/io/InputStream;

    iput-object v3, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->in:Ljava/io/InputStream;

    .line 236
    aget-object v3, v0, v5

    check-cast v3, Ljava/io/OutputStream;

    iput-object v3, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->out:Ljava/io/OutputStream;

    .line 237
    array-length v3, v0

    if-le v3, v7, :cond_1

    .line 238
    aget-object v0, v0, v7

    check-cast v0, Lnet/sourceforge/jsocks/UDPEncapsulation;

    iput-object v0, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->udp_encapsulation:Lnet/sourceforge/jsocks/UDPEncapsulation;

    :cond_1
    return-void

    .line 227
    :cond_2
    new-instance v0, Lnet/sourceforge/jsocks/SocksException;

    const/high16 v3, 0x50000

    invoke-direct {v0, v3}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw v0

    .line 221
    :cond_3
    new-instance v0, Lnet/sourceforge/jsocks/SocksException;

    const-string v3, "Speciefied Authentication not found!"

    const/high16 v4, 0x60000

    invoke-direct {v0, v4, v3}, Lnet/sourceforge/jsocks/SocksException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 213
    :cond_4
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 214
    new-instance v0, Lnet/sourceforge/jsocks/SocksException;

    const/high16 v3, 0x40000

    invoke-direct {v0, v3}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw v0

    .line 205
    :cond_5
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Socks5Proxy;->endSession()V

    .line 206
    new-instance v0, Lnet/sourceforge/jsocks/SocksException;

    const-string v3, "Connection to proxy lost."

    invoke-direct {v0, v1, v3}, Lnet/sourceforge/jsocks/SocksException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lnet/sourceforge/jsocks/SocksException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 248
    new-instance v2, Lnet/sourceforge/jsocks/SocksException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lnet/sourceforge/jsocks/SocksException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 245
    :catch_1
    new-instance v0, Lnet/sourceforge/jsocks/SocksException;

    invoke-direct {v0, v2}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw v0

    .line 243
    :catch_2
    new-instance v0, Lnet/sourceforge/jsocks/SocksException;

    invoke-direct {v0, v2}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw v0

    :catch_3
    move-exception v0

    .line 241
    throw v0
.end method
