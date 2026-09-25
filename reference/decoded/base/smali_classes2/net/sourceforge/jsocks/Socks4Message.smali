.class public Lnet/sourceforge/jsocks/Socks4Message;
.super Lnet/sourceforge/jsocks/ProxyMessage;
.source "Socks4Message.java"


# static fields
.field public static final REPLY_BAD_IDENTD:I = 0x5d

.field public static final REPLY_NO_CONNECT:I = 0x5c

.field public static final REPLY_OK:I = 0x5a

.field public static final REPLY_REJECTED:I = 0x5b

.field public static final REQUEST_BIND:I = 0x2

.field public static final REQUEST_CONNECT:I = 0x1

.field static final SOCKS_VERSION:I = 0x4

.field static final replyMessage:[Ljava/lang/String;


# instance fields
.field private msgBytes:[B

.field private msgLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    .line 19
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Request Granted"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Request Rejected or Failed"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Failed request, can\'t connect to Identd"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Failed request, bad user name"

    aput-object v2, v0, v1

    sput-object v0, Lnet/sourceforge/jsocks/Socks4Message;->replyMessage:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, v0, v1}, Lnet/sourceforge/jsocks/ProxyMessage;-><init>(ILjava/net/InetAddress;I)V

    .line 64
    iput-object v0, p0, Lnet/sourceforge/jsocks/Socks4Message;->user:Ljava/lang/String;

    const/4 p1, 0x2

    .line 66
    iput p1, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgLength:I

    .line 67
    new-array p1, p1, [B

    iput-object p1, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgBytes:[B

    .line 69
    aput-byte v1, p1, v1

    .line 70
    iget v0, p0, Lnet/sourceforge/jsocks/Socks4Message;->command:I

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p1, v1

    return-void
.end method

.method public constructor <init>(IILjava/net/InetAddress;ILjava/lang/String;)V
    .locals 4

    .line 91
    invoke-direct {p0, p2, p3, p4}, Lnet/sourceforge/jsocks/ProxyMessage;-><init>(ILjava/net/InetAddress;I)V

    .line 92
    iput-object p5, p0, Lnet/sourceforge/jsocks/Socks4Message;->user:Ljava/lang/String;

    .line 93
    iput p1, p0, Lnet/sourceforge/jsocks/Socks4Message;->version:I

    const/16 p2, 0x8

    if-nez p5, :cond_0

    move v0, p2

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    :goto_0
    iput v0, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgLength:I

    .line 96
    new-array v0, v0, [B

    iput-object v0, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgBytes:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    .line 98
    aput-byte p1, v0, v1

    .line 99
    iget p1, p0, Lnet/sourceforge/jsocks/Socks4Message;->command:I

    int-to-byte p1, p1

    const/4 v2, 0x1

    aput-byte p1, v0, v2

    .line 100
    iget-object p1, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgBytes:[B

    shr-int/lit8 v0, p4, 0x8

    int-to-byte v0, v0

    const/4 v3, 0x2

    aput-byte v0, p1, v3

    int-to-byte p4, p4

    const/4 v0, 0x3

    .line 101
    aput-byte p4, p1, v0

    const/4 p1, 0x4

    if-eqz p3, :cond_1

    .line 106
    invoke-virtual {p3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p3

    goto :goto_1

    .line 108
    :cond_1
    new-array p3, p1, [B

    .line 109
    aput-byte v1, p3, v0

    aput-byte v1, p3, v3

    aput-byte v1, p3, v2

    aput-byte v1, p3, v1

    .line 111
    :goto_1
    iget-object p4, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgBytes:[B

    invoke-static {p3, v1, p4, p1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p5, :cond_2

    .line 114
    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 115
    iget-object p3, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgBytes:[B

    array-length p4, p1

    invoke-static {p1, v1, p3, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    iget-object p1, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgBytes:[B

    array-length p2, p1

    sub-int/2addr p2, v2

    aput-byte v1, p1, p2

    :cond_2
    return-void
.end method

.method public constructor <init>(ILjava/net/InetAddress;I)V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    .line 77
    invoke-direct/range {v0 .. v5}, Lnet/sourceforge/jsocks/Socks4Message;-><init>(IILjava/net/InetAddress;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/net/InetAddress;ILjava/lang/String;)V
    .locals 6

    const/4 v1, 0x4

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 83
    invoke-direct/range {v0 .. v5}, Lnet/sourceforge/jsocks/Socks4Message;-><init>(IILjava/net/InetAddress;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lnet/sourceforge/jsocks/ProxyMessage;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgBytes:[B

    .line 56
    invoke-virtual {p0, p1, p2}, Lnet/sourceforge/jsocks/Socks4Message;->read(Ljava/io/InputStream;Z)V

    return-void
.end method

.method static bytes2IP([B)Ljava/net/InetAddress;
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-static {p0, v0}, Lnet/sourceforge/jsocks/Socks4Message;->bytes2IPV4([BI)Ljava/lang/String;

    move-result-object p0

    .line 42
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 121
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/jsocks/Socks4Message;->read(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public read(Ljava/io/InputStream;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 127
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    iput v1, p0, Lnet/sourceforge/jsocks/Socks4Message;->version:I

    .line 128
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    iput v1, p0, Lnet/sourceforge/jsocks/Socks4Message;->command:I

    if-eqz p2, :cond_1

    .line 129
    iget v1, p0, Lnet/sourceforge/jsocks/Socks4Message;->command:I

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_1

    .line 131
    iget p1, p0, Lnet/sourceforge/jsocks/Socks4Message;->command:I

    if-le p1, v2, :cond_0

    iget p1, p0, Lnet/sourceforge/jsocks/Socks4Message;->command:I

    const/16 p2, 0x5d

    if-ge p1, p2, :cond_0

    .line 132
    sget-object p1, Lnet/sourceforge/jsocks/Socks4Message;->replyMessage:[Ljava/lang/String;

    iget p2, p0, Lnet/sourceforge/jsocks/Socks4Message;->command:I

    sub-int/2addr p2, v2

    aget-object p1, p1, p2

    goto :goto_0

    .line 134
    :cond_0
    const-string p1, "Unknown Reply Code"

    .line 135
    :goto_0
    new-instance p2, Lnet/sourceforge/jsocks/SocksException;

    iget v0, p0, Lnet/sourceforge/jsocks/Socks4Message;->command:I

    invoke-direct {p2, v0, p1}, Lnet/sourceforge/jsocks/SocksException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 137
    :cond_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Lnet/sourceforge/jsocks/Socks4Message;->port:I

    const/4 v1, 0x4

    .line 138
    new-array v1, v1, [B

    .line 139
    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    const/4 v0, 0x0

    .line 140
    aget-byte v2, v1, v0

    if-nez v2, :cond_2

    const/4 v2, 0x1

    aget-byte v3, v1, v2

    if-nez v3, :cond_2

    const/4 v3, 0x2

    aget-byte v3, v1, v3

    if-nez v3, :cond_2

    const/4 v3, 0x3

    aget-byte v3, v1, v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 143
    :cond_2
    invoke-static {v1}, Lnet/sourceforge/jsocks/Socks4Message;->bytes2IP([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lnet/sourceforge/jsocks/Socks4Message;->ip:Ljava/net/InetAddress;

    .line 144
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks4Message;->ip:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/sourceforge/jsocks/Socks4Message;->host:Ljava/lang/String;

    move v2, v0

    :goto_1
    if-nez p2, :cond_5

    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    :goto_2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eqz v1, :cond_3

    int-to-char v1, v1

    .line 150
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 151
    :cond_3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/sourceforge/jsocks/Socks4Message;->user:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 153
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 154
    :goto_3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eqz v0, :cond_4

    int-to-char v0, v0

    .line 155
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 156
    :cond_4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/jsocks/Socks4Message;->host:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgBytes:[B

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lnet/sourceforge/jsocks/Socks4Message;

    iget v2, p0, Lnet/sourceforge/jsocks/Socks4Message;->version:I

    iget v3, p0, Lnet/sourceforge/jsocks/Socks4Message;->command:I

    iget-object v4, p0, Lnet/sourceforge/jsocks/Socks4Message;->ip:Ljava/net/InetAddress;

    iget v5, p0, Lnet/sourceforge/jsocks/Socks4Message;->port:I

    iget-object v6, p0, Lnet/sourceforge/jsocks/Socks4Message;->user:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lnet/sourceforge/jsocks/Socks4Message;-><init>(IILjava/net/InetAddress;ILjava/lang/String;)V

    .line 165
    iget-object v1, v0, Lnet/sourceforge/jsocks/Socks4Message;->msgBytes:[B

    iput-object v1, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgBytes:[B

    .line 166
    iget v0, v0, Lnet/sourceforge/jsocks/Socks4Message;->msgLength:I

    iput v0, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgLength:I

    .line 168
    :cond_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgBytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
