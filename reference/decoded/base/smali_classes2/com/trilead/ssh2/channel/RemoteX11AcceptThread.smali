.class public Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;
.super Ljava/lang/Thread;
.source "RemoteX11AcceptThread.java"


# static fields
.field private static final log:Lcom/trilead/ssh2/log/Logger;


# instance fields
.field c:Lcom/trilead/ssh2/channel/Channel;

.field remoteOriginatorAddress:Ljava/lang/String;

.field remoteOriginatorPort:I

.field s:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->log:Lcom/trilead/ssh2/log/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 33
    iput-object p2, p0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->remoteOriginatorAddress:Ljava/lang/String;

    .line 34
    iput p3, p0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->remoteOriginatorPort:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v1, p0

    .line 43
    :try_start_0
    iget-object v0, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v0, v0, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v3, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, v3}, Lcom/trilead/ssh2/channel/ChannelManager;->sendOpenConfirmation(Lcom/trilead/ssh2/channel/Channel;)V

    .line 47
    iget-object v0, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getStdinStream()Lcom/trilead/ssh2/channel/ChannelOutputStream;

    move-result-object v8

    .line 48
    iget-object v0, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getStdoutStream()Lcom/trilead/ssh2/channel/ChannelInputStream;

    move-result-object v13

    const/4 v0, 0x6

    .line 82
    new-array v3, v0, [B

    .line 84
    invoke-virtual {v13, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v4, v0, :cond_11

    const/4 v4, 0x0

    .line 87
    aget-byte v5, v3, v4

    const/16 v6, 0x42

    if-eq v5, v6, :cond_1

    const/16 v7, 0x6c

    if-ne v5, v7, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Unknown endian format in X11 message!"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-ne v5, v6, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    .line 96
    :goto_1
    new-array v6, v0, [B

    .line 98
    invoke-virtual {v13, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-ne v7, v0, :cond_10

    .line 101
    aget-byte v7, v6, v5

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    rsub-int/lit8 v9, v5, 0x1

    aget-byte v9, v6, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v7, v9

    add-int/lit8 v9, v5, 0x2

    .line 102
    aget-byte v9, v6, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    rsub-int/lit8 v5, v5, 0x3

    aget-byte v5, v6, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v9

    const/16 v9, 0x100

    if-gt v7, v9, :cond_f

    if-gt v5, v9, :cond_f

    .line 107
    rem-int/lit8 v9, v7, 0x4

    const/4 v10, 0x4

    rsub-int/lit8 v9, v9, 0x4

    rem-int/2addr v9, v10

    .line 108
    rem-int/lit8 v11, v5, 0x4

    rsub-int/lit8 v11, v11, 0x4

    rem-int/2addr v11, v10

    .line 110
    new-array v12, v7, [B

    .line 111
    new-array v14, v5, [B

    .line 113
    new-array v10, v10, [B

    .line 115
    invoke-virtual {v13, v12}, Ljava/io/InputStream;->read([B)I

    move-result v15

    if-ne v15, v7, :cond_e

    .line 118
    invoke-virtual {v13, v10, v4, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-ne v7, v9, :cond_d

    .line 121
    invoke-virtual {v13, v14}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-ne v7, v5, :cond_c

    .line 124
    invoke-virtual {v13, v10, v4, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v7, v11, :cond_b

    .line 129
    :try_start_1
    new-instance v7, Ljava/lang/String;

    const-string v15, "ISO-8859-1"

    invoke-direct {v7, v12, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 131
    :catch_0
    :try_start_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v12}, Ljava/lang/String;-><init>([B)V

    .line 133
    :goto_2
    const-string v15, "MIT-MAGIC-COOKIE-1"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/16 v7, 0x10

    if-ne v5, v7, :cond_9

    .line 139
    new-instance v15, Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-direct {v15, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    move v2, v4

    :goto_3
    if-ge v2, v5, :cond_4

    .line 142
    aget-byte v4, v14, v2

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v0, 0x2

    if-ne v7, v0, :cond_3

    goto :goto_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x6

    const/4 v4, 0x0

    const/16 v7, 0x10

    goto :goto_3

    .line 145
    :cond_4
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    iget-object v2, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    monitor-enter v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 154
    :try_start_3
    iget-object v4, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    iput-object v0, v4, Lcom/trilead/ssh2/channel/Channel;->hexX11FakeCookie:Ljava/lang/String;

    .line 155
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    :try_start_4
    iget-object v2, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v2, v2, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-virtual {v2, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->checkX11Cookie(Ljava/lang/String;)Lcom/trilead/ssh2/channel/X11ServerData;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 169
    new-instance v2, Ljava/net/Socket;

    iget-object v4, v0, Lcom/trilead/ssh2/channel/X11ServerData;->hostname:Ljava/lang/String;

    iget v5, v0, Lcom/trilead/ssh2/channel/X11ServerData;->port:I

    invoke-direct {v2, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v2, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->s:Ljava/net/Socket;

    .line 171
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    .line 172
    iget-object v2, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->s:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 176
    invoke-virtual {v14, v3}, Ljava/io/OutputStream;->write([B)V

    .line 178
    iget-object v2, v0, Lcom/trilead/ssh2/channel/X11ServerData;->x11_magic_cookie:[B

    if-nez v2, :cond_5

    const/4 v2, 0x6

    .line 180
    new-array v0, v2, [B

    .line 182
    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_5

    .line 186
    :cond_5
    iget-object v2, v0, Lcom/trilead/ssh2/channel/X11ServerData;->x11_magic_cookie:[B

    array-length v2, v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_7

    .line 190
    invoke-virtual {v14, v6}, Ljava/io/OutputStream;->write([B)V

    .line 191
    invoke-virtual {v14, v12}, Ljava/io/OutputStream;->write([B)V

    const/4 v2, 0x0

    .line 192
    invoke-virtual {v14, v10, v2, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 193
    iget-object v0, v0, Lcom/trilead/ssh2/channel/X11ServerData;->x11_magic_cookie:[B

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    .line 194
    invoke-virtual {v14, v10, v2, v11}, Ljava/io/OutputStream;->write([BII)V

    .line 197
    :goto_5
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    .line 201
    new-instance v0, Lcom/trilead/ssh2/channel/StreamForwarder;

    iget-object v10, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v12, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->s:Ljava/net/Socket;

    const-string v15, "RemoteToX11"

    const/4 v11, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/trilead/ssh2/channel/StreamForwarder;-><init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 202
    new-instance v2, Lcom/trilead/ssh2/channel/StreamForwarder;

    iget-object v4, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    const-string v9, "X11ToRemote"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/trilead/ssh2/channel/StreamForwarder;-><init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 206
    invoke-virtual {v0, v3}, Lcom/trilead/ssh2/channel/StreamForwarder;->setDaemon(Z)V

    .line 207
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/StreamForwarder;->start()V

    .line 208
    invoke-virtual {v2}, Lcom/trilead/ssh2/channel/StreamForwarder;->run()V

    .line 210
    :catch_1
    :goto_6
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/StreamForwarder;->isAlive()Z

    move-result v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v2, :cond_6

    .line 214
    :try_start_5
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/StreamForwarder;->join()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    .line 223
    :cond_6
    :try_start_6
    iget-object v0, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v0, v0, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v2, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    const-string v3, "EOF on both X11 streams reached."

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V

    .line 224
    iget-object v0, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->s:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto/16 :goto_7

    .line 187
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v2, "The real X11 cookie has an invalid length!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid X11 cookie received."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catchall_0
    move-exception v0

    .line 155
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0

    .line 137
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Wrong data length for X11 authorization data!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unknown X11 authorization protocol!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unexpected EOF on X11 startup! (authProtocolDataPadding)"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unexpected EOF on X11 startup! (authProtocolData)"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unexpected EOF on X11 startup! (authProtocolNamePadding)"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unexpected EOF on X11 startup! (authProtocolName)"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Buggy X11 authorization data"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unexpected EOF on X11 startup!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unexpected EOF on X11 startup!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v0

    .line 228
    sget-object v2, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IOException in X11 proxy code: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x32

    invoke-virtual {v2, v4, v3}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 232
    :try_start_9
    iget-object v2, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v2, v2, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v3, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException in X11 proxy code ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 239
    :catch_3
    :try_start_a
    iget-object v0, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->s:Ljava/net/Socket;

    if-eqz v0, :cond_12

    .line 240
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :catch_4
    :cond_12
    :goto_7
    return-void
.end method
