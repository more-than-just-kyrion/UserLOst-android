.class public Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;
.super Ljava/lang/Object;
.source "ServerAuthenticatorNone.java"

# interfaces
.implements Lnet/sourceforge/jsocks/server/ServerAuthenticator;


# static fields
.field static final socks5response:[B


# instance fields
.field in:Ljava/io/InputStream;

.field out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 39
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;->socks5response:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x5t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;->in:Ljava/io/InputStream;

    .line 95
    iput-object v0, p0, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;->out:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;->in:Ljava/io/InputStream;

    .line 109
    iput-object p2, p0, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;->out:Ljava/io/OutputStream;

    return-void
.end method

.method public static selectSocks5Authentication(Ljava/io/InputStream;Ljava/io/OutputStream;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 65
    :cond_0
    new-array v2, v0, [B

    const/4 v3, 0x2

    .line 66
    new-array v3, v3, [B

    const/4 v4, 0x5

    .line 69
    aput-byte v4, v3, v1

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 70
    aput-byte v4, v3, v5

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_1

    sub-int v6, v0, v4

    .line 74
    invoke-virtual {p0, v2, v4, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_1
    if-ge p0, v0, :cond_3

    .line 77
    aget-byte v4, v2, p0

    if-ne v4, p2, :cond_2

    int-to-byte p0, p2

    .line 79
    aput-byte p0, v3, v5

    move v1, v5

    goto :goto_2

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 83
    :cond_3
    :goto_2
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    return v1
.end method


# virtual methods
.method public checkRequest(Ljava/net/DatagramPacket;Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public checkRequest(Lnet/sourceforge/jsocks/ProxyMessage;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public endSession()V
    .locals 0

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 142
    iget-object v0, p0, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 152
    iget-object v0, p0, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getUdpEncapsulation()Lnet/sourceforge/jsocks/UDPEncapsulation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public startSession(Ljava/net/Socket;)Lnet/sourceforge/jsocks/server/ServerAuthenticator;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 174
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 176
    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 178
    invoke-static {v0, p1, v1}, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;->selectSocks5Authentication(Ljava/io/InputStream;Ljava/io/OutputStream;I)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v3

    :cond_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 182
    invoke-virtual {v0, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 186
    :cond_1
    new-instance v1, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;

    invoke-direct {v1, v0, p1}, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v1

    :cond_2
    return-object v3
.end method
