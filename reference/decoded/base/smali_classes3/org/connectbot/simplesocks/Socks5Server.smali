.class public Lorg/connectbot/simplesocks/Socks5Server;
.super Ljava/lang/Object;
.source "Socks5Server.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;,
        Lorg/connectbot/simplesocks/Socks5Server$Command;
    }
.end annotation


# static fields
.field private static final ATYPE_DNS:I = 0x3

.field private static final ATYPE_IPV4:I = 0x1

.field private static final ATYPE_IPV6:I = 0x4


# instance fields
.field private address:Ljava/net/InetAddress;

.field private command:Lorg/connectbot/simplesocks/Socks5Server$Command;

.field private hostName:Ljava/lang/String;

.field private final in:Ljava/io/DataInputStream;

.field private final out:Ljava/io/DataOutputStream;

.field private port:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 161
    iput v0, p0, Lorg/connectbot/simplesocks/Socks5Server;->port:I

    .line 164
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/connectbot/simplesocks/Socks5Server;->in:Ljava/io/DataInputStream;

    .line 165
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-direct {p1, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lorg/connectbot/simplesocks/Socks5Server;->out:Ljava/io/DataOutputStream;

    return-void
.end method

.method private checkProtocolVersion()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lorg/connectbot/simplesocks/Socks5Server;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    return-void

    .line 203
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported protocol"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public acceptAuthentication()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Lorg/connectbot/simplesocks/Socks5Server;->checkProtocolVersion()V

    .line 178
    iget-object v0, p0, Lorg/connectbot/simplesocks/Socks5Server;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 179
    new-array v1, v0, [B

    .line 180
    iget-object v2, p0, Lorg/connectbot/simplesocks/Socks5Server;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_1

    .line 183
    aget-byte v5, v1, v3

    if-nez v5, :cond_0

    move v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    const/4 v1, 0x2

    .line 190
    new-array v1, v1, [B

    const/4 v3, 0x5

    .line 191
    aput-byte v3, v1, v2

    if-eqz v0, :cond_2

    .line 193
    aput-byte v2, v1, v4

    goto :goto_2

    :cond_2
    const/4 v2, -0x1

    .line 195
    aput-byte v2, v1, v4

    .line 197
    :goto_2
    iget-object v2, p0, Lorg/connectbot/simplesocks/Socks5Server;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    return v0
.end method

.method public getAddress()Ljava/net/InetAddress;
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/connectbot/simplesocks/Socks5Server;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getCommand()Lorg/connectbot/simplesocks/Socks5Server$Command;
    .locals 1

    .line 279
    iget-object v0, p0, Lorg/connectbot/simplesocks/Socks5Server;->command:Lorg/connectbot/simplesocks/Socks5Server$Command;

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lorg/connectbot/simplesocks/Socks5Server;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 291
    iget v0, p0, Lorg/connectbot/simplesocks/Socks5Server;->port:I

    return v0
.end method

.method public readRequest()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    invoke-direct {p0}, Lorg/connectbot/simplesocks/Socks5Server;->checkProtocolVersion()V

    .line 221
    iget-object v0, p0, Lorg/connectbot/simplesocks/Socks5Server;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    invoke-static {v0}, Lorg/connectbot/simplesocks/Socks5Server$Command;->fromCommandNumber(I)Lorg/connectbot/simplesocks/Socks5Server$Command;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/simplesocks/Socks5Server;->command:Lorg/connectbot/simplesocks/Socks5Server$Command;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 226
    :goto_0
    iget-object v3, p0, Lorg/connectbot/simplesocks/Socks5Server;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 230
    :cond_1
    iget-object v3, p0, Lorg/connectbot/simplesocks/Socks5Server;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v2, :cond_2

    .line 232
    new-array v1, v4, [B

    .line 233
    iget-object v2, p0, Lorg/connectbot/simplesocks/Socks5Server;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 234
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lorg/connectbot/simplesocks/Socks5Server;->address:Ljava/net/InetAddress;

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    if-ne v3, v2, :cond_3

    .line 236
    iget-object v1, p0, Lorg/connectbot/simplesocks/Socks5Server;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 237
    new-array v1, v1, [B

    .line 238
    iget-object v2, p0, Lorg/connectbot/simplesocks/Socks5Server;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 241
    const-string v2, "US-ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    .line 242
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 244
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/connectbot/simplesocks/Socks5Server;->hostName:Ljava/lang/String;

    goto :goto_1

    :cond_3
    if-ne v3, v4, :cond_4

    const/16 v1, 0x10

    .line 246
    new-array v1, v1, [B

    .line 247
    iget-object v2, p0, Lorg/connectbot/simplesocks/Socks5Server;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 248
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lorg/connectbot/simplesocks/Socks5Server;->address:Ljava/net/InetAddress;

    :goto_1
    move v1, v0

    .line 253
    :cond_4
    iget-object v0, p0, Lorg/connectbot/simplesocks/Socks5Server;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    iget-object v2, p0, Lorg/connectbot/simplesocks/Socks5Server;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lorg/connectbot/simplesocks/Socks5Server;->port:I

    return v1
.end method

.method public sendReply(Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    invoke-virtual {p1}, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;->getCode()B

    move-result p1

    const/16 v0, 0xa

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/4 v3, 0x1

    aput-byte p1, v0, v3

    const/4 p1, 0x2

    aput-byte v1, v0, p1

    const/4 p1, 0x3

    aput-byte v3, v0, p1

    const/4 p1, 0x4

    aput-byte v1, v0, p1

    aput-byte v1, v0, v2

    const/4 p1, 0x6

    aput-byte v1, v0, p1

    const/4 p1, 0x7

    aput-byte v1, v0, p1

    const/16 p1, 0x8

    aput-byte v1, v0, p1

    const/16 p1, 0x9

    aput-byte v1, v0, p1

    .line 275
    iget-object p1, p0, Lorg/connectbot/simplesocks/Socks5Server;->out:Ljava/io/DataOutputStream;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method
