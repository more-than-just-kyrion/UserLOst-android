.class public Lnet/sourceforge/jsocks/ProxyServer;
.super Ljava/lang/Object;
.source "ProxyServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final ABORT_MODE:I = 0x3

.field static final ACCEPT_MODE:I = 0x1

.field static final BUF_SIZE:I = 0x2000

.field static final PIPE_MODE:I = 0x2

.field static final START_MODE:I = 0x0

.field static acceptTimeout:I = 0x2bf20

.field static final command_names:[Ljava/lang/String;

.field protected static iddleTimeout:I = 0x2bf20

.field static log:Ljava/io/PrintStream;

.field static proxy:Lnet/sourceforge/jsocks/Proxy;


# instance fields
.field auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

.field in:Ljava/io/InputStream;

.field lastReadTime:J

.field mode:I

.field msg:Lnet/sourceforge/jsocks/ProxyMessage;

.field out:Ljava/io/OutputStream;

.field pipe_thread1:Ljava/lang/Thread;

.field pipe_thread2:Ljava/lang/Thread;

.field relayServer:Lnet/sourceforge/jsocks/UDPRelayServer;

.field remote_in:Ljava/io/InputStream;

.field remote_out:Ljava/io/OutputStream;

.field remote_sock:Ljava/net/Socket;

.field sock:Ljava/net/Socket;

.field ss:Ljava/net/ServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 62
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CONNECT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "BIND"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "UDP_ASSOCIATE"

    aput-object v2, v0, v1

    sput-object v0, Lnet/sourceforge/jsocks/ProxyServer;->command_names:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnet/sourceforge/jsocks/server/ServerAuthenticator;)V
    .locals 1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->msg:Lnet/sourceforge/jsocks/ProxyMessage;

    .line 36
    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->sock:Ljava/net/Socket;

    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_sock:Ljava/net/Socket;

    .line 37
    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    .line 38
    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->relayServer:Lnet/sourceforge/jsocks/UDPRelayServer;

    .line 174
    iput-object p1, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    return-void
.end method

.method protected constructor <init>(Lnet/sourceforge/jsocks/server/ServerAuthenticator;Ljava/net/Socket;)V
    .locals 1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->msg:Lnet/sourceforge/jsocks/ProxyMessage;

    .line 36
    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_sock:Ljava/net/Socket;

    .line 37
    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    .line 38
    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->relayServer:Lnet/sourceforge/jsocks/UDPRelayServer;

    .line 178
    iput-object p1, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    .line 179
    iput-object p2, p0, Lnet/sourceforge/jsocks/ProxyServer;->sock:Ljava/net/Socket;

    const/4 p1, 0x0

    .line 180
    iput p1, p0, Lnet/sourceforge/jsocks/ProxyServer;->mode:I

    return-void
.end method

.method private declared-synchronized abort()V
    .locals 2

    monitor-enter p0

    .line 184
    :try_start_0
    iget v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->mode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 185
    monitor-exit p0

    return-void

    .line 186
    :cond_0
    :try_start_1
    iput v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->mode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    :try_start_2
    const-string v0, "Aborting operation"

    invoke-static {v0}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_sock:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 191
    :cond_1
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->sock:Ljava/net/Socket;

    if-eqz v0, :cond_2

    .line 192
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 193
    :cond_2
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->relayServer:Lnet/sourceforge/jsocks/UDPRelayServer;

    if-eqz v0, :cond_3

    .line 194
    invoke-virtual {v0}, Lnet/sourceforge/jsocks/UDPRelayServer;->stop()V

    .line 195
    :cond_3
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    if-eqz v0, :cond_4

    .line 196
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 197
    :cond_4
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->pipe_thread1:Ljava/lang/Thread;

    if-eqz v0, :cond_5

    .line 198
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 199
    :cond_5
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->pipe_thread2:Ljava/lang/Thread;

    if-eqz v0, :cond_6

    .line 200
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    :catch_0
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method static final command2String(I)Ljava/lang/String;
    .locals 2

    if-lez p0, :cond_0

    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    .line 69
    sget-object v0, Lnet/sourceforge/jsocks/ProxyServer;->command_names:[Ljava/lang/String;

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown Command "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private doAccept()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 210
    :goto_0
    iget-object v2, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    .line 211
    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    iget-object v4, p0, Lnet/sourceforge/jsocks/ProxyServer;->msg:Lnet/sourceforge/jsocks/ProxyMessage;

    iget-object v4, v4, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 214
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 234
    iput-object v2, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_sock:Ljava/net/Socket;

    .line 235
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_in:Ljava/io/InputStream;

    .line 236
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_out:Ljava/io/OutputStream;

    .line 239
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_sock:Ljava/net/Socket;

    sget v1, Lnet/sourceforge/jsocks/ProxyServer;->iddleTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Accepted from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/net/Socket;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->msg:Lnet/sourceforge/jsocks/ProxyMessage;

    iget v0, v0, Lnet/sourceforge/jsocks/ProxyMessage;->version:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 246
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Message;

    .line 247
    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v2}, Ljava/net/Socket;->getPort()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(ILjava/net/InetAddress;I)V

    goto :goto_1

    .line 249
    :cond_0
    new-instance v0, Lnet/sourceforge/jsocks/Socks4Message;

    .line 250
    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v2}, Ljava/net/Socket;->getPort()I

    move-result v2

    const/16 v3, 0x5a

    invoke-direct {v0, v3, v1, v2}, Lnet/sourceforge/jsocks/Socks4Message;-><init>(ILjava/net/InetAddress;I)V

    .line 251
    :goto_1
    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lnet/sourceforge/jsocks/ProxyMessage;->write(Ljava/io/OutputStream;)V

    return-void

    .line 216
    :cond_1
    iget-object v3, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    instance-of v3, v3, Lnet/sourceforge/jsocks/SocksServerSocket;

    if-nez v3, :cond_4

    .line 222
    sget v3, Lnet/sourceforge/jsocks/ProxyServer;->acceptTimeout:I

    if-eqz v3, :cond_3

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    long-to-int v4, v4

    sub-int/2addr v3, v4

    if-lez v3, :cond_2

    .line 227
    iget-object v4, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v4, v3}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    goto :goto_2

    .line 226
    :cond_2
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "In doAccept()"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    goto/16 :goto_0

    .line 218
    :cond_4
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 219
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 220
    new-instance v0, Lnet/sourceforge/jsocks/SocksException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw v0
.end method

.method public static getProxy()Lnet/sourceforge/jsocks/Proxy;
    .locals 1

    .line 83
    sget-object v0, Lnet/sourceforge/jsocks/ProxyServer;->proxy:Lnet/sourceforge/jsocks/Proxy;

    return-object v0
.end method

.method private handleException(Ljava/io/IOException;)V
    .locals 2

    .line 256
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->msg:Lnet/sourceforge/jsocks/ProxyMessage;

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    iget v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    return-void

    .line 268
    :cond_2
    instance-of v0, p1, Lnet/sourceforge/jsocks/SocksException;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 269
    check-cast p1, Lnet/sourceforge/jsocks/SocksException;

    iget p1, p1, Lnet/sourceforge/jsocks/SocksException;->errCode:I

    goto :goto_0

    .line 270
    :cond_3
    instance-of v0, p1, Ljava/net/NoRouteToHostException;

    if-eqz v0, :cond_4

    const/4 p1, 0x4

    goto :goto_0

    .line 272
    :cond_4
    instance-of v0, p1, Ljava/net/ConnectException;

    if-eqz v0, :cond_5

    const/4 p1, 0x5

    goto :goto_0

    .line 274
    :cond_5
    instance-of p1, p1, Ljava/io/InterruptedIOException;

    if-eqz p1, :cond_6

    const/4 p1, 0x6

    goto :goto_0

    :cond_6
    move p1, v1

    :goto_0
    const/16 v0, 0x8

    if-gt p1, v0, :cond_8

    if-gez p1, :cond_7

    goto :goto_1

    :cond_7
    move v1, p1

    .line 281
    :cond_8
    :goto_1
    invoke-direct {p0, v1}, Lnet/sourceforge/jsocks/ProxyServer;->sendErrorMessage(I)V

    return-void
.end method

.method static final log(Ljava/lang/String;)V
    .locals 1

    .line 94
    sget-object v0, Lnet/sourceforge/jsocks/ProxyServer;->log:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    sget-object p0, Lnet/sourceforge/jsocks/ProxyServer;->log:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    :cond_0
    return-void
.end method

.method static final log(Lnet/sourceforge/jsocks/ProxyMessage;)V
    .locals 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request version:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->command:I

    .line 88
    invoke-static {v1}, Lnet/sourceforge/jsocks/ProxyServer;->command2String(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IP:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tPort:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    iget v1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->version:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tUser:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sourceforge/jsocks/ProxyMessage;->user:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 89
    invoke-static {p0}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    return-void
.end method

.method private onBind(Lnet/sourceforge/jsocks/ProxyMessage;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    sget-object v0, Lnet/sourceforge/jsocks/ProxyServer;->proxy:Lnet/sourceforge/jsocks/Proxy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    goto :goto_0

    .line 317
    :cond_0
    new-instance v0, Lnet/sourceforge/jsocks/SocksServerSocket;

    sget-object v2, Lnet/sourceforge/jsocks/ProxyServer;->proxy:Lnet/sourceforge/jsocks/Proxy;

    iget-object v3, p1, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    iget v4, p1, Lnet/sourceforge/jsocks/ProxyMessage;->port:I

    invoke-direct {v0, v2, v3, v4}, Lnet/sourceforge/jsocks/SocksServerSocket;-><init>(Lnet/sourceforge/jsocks/Proxy;Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    .line 319
    :goto_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    sget v2, Lnet/sourceforge/jsocks/ProxyServer;->acceptTimeout:I

    invoke-virtual {v0, v2}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Trying accept on "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    .line 323
    iget p1, p1, Lnet/sourceforge/jsocks/ProxyMessage;->version:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 324
    new-instance p1, Lnet/sourceforge/jsocks/Socks5Message;

    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    .line 325
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    iget-object v2, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-direct {p1, v1, v0, v2}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(ILjava/net/InetAddress;I)V

    goto :goto_1

    .line 327
    :cond_1
    new-instance p1, Lnet/sourceforge/jsocks/Socks4Message;

    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    .line 328
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    iget-object v2, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    const/16 v3, 0x5a

    invoke-direct {p1, v3, v0, v2}, Lnet/sourceforge/jsocks/Socks4Message;-><init>(ILjava/net/InetAddress;I)V

    .line 329
    :goto_1
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lnet/sourceforge/jsocks/ProxyMessage;->write(Ljava/io/OutputStream;)V

    const/4 p1, 0x1

    .line 331
    iput p1, p0, Lnet/sourceforge/jsocks/ProxyServer;->mode:I

    .line 333
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->pipe_thread1:Ljava/lang/Thread;

    .line 334
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->pipe_thread2:Ljava/lang/Thread;

    .line 335
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 338
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->sock:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_2
    const/4 v0, 0x2

    .line 342
    :try_start_0
    iget-object v2, p0, Lnet/sourceforge/jsocks/ProxyServer;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_4

    .line 343
    iget v2, p0, Lnet/sourceforge/jsocks/ProxyServer;->mode:I

    if-eq v2, p1, :cond_2

    if-eq v2, v0, :cond_3

    return-void

    .line 347
    :cond_3
    iget-object p1, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_out:Ljava/io/OutputStream;

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 361
    throw p1

    .line 357
    :catch_0
    iget p1, p0, Lnet/sourceforge/jsocks/ProxyServer;->mode:I

    if-eq p1, v0, :cond_4

    return-void

    :cond_4
    :goto_2
    if-gez v1, :cond_5

    return-void

    .line 369
    :cond_5
    iget-object p1, p0, Lnet/sourceforge/jsocks/ProxyServer;->in:Ljava/io/InputStream;

    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_out:Ljava/io/OutputStream;

    invoke-direct {p0, p1, v0}, Lnet/sourceforge/jsocks/ProxyServer;->pipe(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    :catch_1
    return-void
.end method

.method private onConnect(Lnet/sourceforge/jsocks/ProxyMessage;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p1, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    iget v2, p1, Lnet/sourceforge/jsocks/ProxyMessage;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connected to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    .line 380
    instance-of p1, p1, Lnet/sourceforge/jsocks/Socks5Message;

    if-eqz p1, :cond_0

    .line 381
    new-instance p1, Lnet/sourceforge/jsocks/Socks5Message;

    .line 382
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p1, v3, v1, v2}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(ILjava/net/InetAddress;I)V

    goto :goto_0

    .line 384
    :cond_0
    new-instance p1, Lnet/sourceforge/jsocks/Socks4Message;

    .line 385
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v2

    const/16 v3, 0x5a

    invoke-direct {p1, v3, v1, v2}, Lnet/sourceforge/jsocks/Socks4Message;-><init>(ILjava/net/InetAddress;I)V

    .line 388
    :goto_0
    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v1}, Lnet/sourceforge/jsocks/ProxyMessage;->write(Ljava/io/OutputStream;)V

    .line 389
    invoke-direct {p0, v0}, Lnet/sourceforge/jsocks/ProxyServer;->startPipe(Ljava/net/Socket;)V

    return-void
.end method

.method private onUDP(Lnet/sourceforge/jsocks/ProxyMessage;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    iget-object v0, p1, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0.0.0.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->sock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p1, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    .line 398
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Creating UDP relay server for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lnet/sourceforge/jsocks/ProxyMessage;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    .line 399
    new-instance v0, Lnet/sourceforge/jsocks/UDPRelayServer;

    iget-object v2, p1, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    iget v3, p1, Lnet/sourceforge/jsocks/ProxyMessage;->port:I

    .line 400
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iget-object v5, p0, Lnet/sourceforge/jsocks/ProxyServer;->sock:Ljava/net/Socket;

    iget-object v6, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lnet/sourceforge/jsocks/UDPRelayServer;-><init>(Ljava/net/InetAddress;ILjava/lang/Thread;Ljava/net/Socket;Lnet/sourceforge/jsocks/server/ServerAuthenticator;)V

    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->relayServer:Lnet/sourceforge/jsocks/UDPRelayServer;

    .line 404
    new-instance p1, Lnet/sourceforge/jsocks/Socks5Message;

    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->relayServer:Lnet/sourceforge/jsocks/UDPRelayServer;

    iget-object v0, v0, Lnet/sourceforge/jsocks/UDPRelayServer;->relayIP:Ljava/net/InetAddress;

    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->relayServer:Lnet/sourceforge/jsocks/UDPRelayServer;

    iget v1, v1, Lnet/sourceforge/jsocks/UDPRelayServer;->relayPort:I

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0, v1}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(ILjava/net/InetAddress;I)V

    .line 407
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lnet/sourceforge/jsocks/ProxyMessage;->write(Ljava/io/OutputStream;)V

    .line 409
    iget-object p1, p0, Lnet/sourceforge/jsocks/ProxyServer;->relayServer:Lnet/sourceforge/jsocks/UDPRelayServer;

    invoke-virtual {p1}, Lnet/sourceforge/jsocks/UDPRelayServer;->start()V

    .line 412
    iget-object p1, p0, Lnet/sourceforge/jsocks/ProxyServer;->sock:Ljava/net/Socket;

    invoke-virtual {p1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 414
    :goto_0
    :try_start_0
    iget-object p1, p0, Lnet/sourceforge/jsocks/ProxyServer;->in:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_1

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method private pipe(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->lastReadTime:J

    const/16 v0, 0x2000

    .line 422
    new-array v0, v0, [B

    const/4 v1, 0x0

    :cond_0
    move v2, v1

    :goto_0
    if-ltz v2, :cond_3

    if-eqz v2, :cond_1

    .line 427
    :try_start_0
    invoke-virtual {p2, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 428
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 430
    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lnet/sourceforge/jsocks/ProxyServer;->lastReadTime:J
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 433
    :catch_0
    sget v2, Lnet/sourceforge/jsocks/ProxyServer;->iddleTimeout:I

    if-nez v2, :cond_2

    return-void

    .line 435
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lnet/sourceforge/jsocks/ProxyServer;->lastReadTime:J

    sub-long/2addr v2, v4

    .line 436
    sget v4, Lnet/sourceforge/jsocks/ProxyServer;->iddleTimeout:I

    add-int/lit16 v4, v4, -0x3e8

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    :cond_3
    return-void
.end method

.method private sendErrorMessage(I)V
    .locals 1

    .line 518
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->msg:Lnet/sourceforge/jsocks/ProxyMessage;

    instance-of v0, v0, Lnet/sourceforge/jsocks/Socks4Message;

    if-eqz v0, :cond_0

    .line 519
    new-instance p1, Lnet/sourceforge/jsocks/Socks4Message;

    const/16 v0, 0x5b

    invoke-direct {p1, v0}, Lnet/sourceforge/jsocks/Socks4Message;-><init>(I)V

    goto :goto_0

    .line 521
    :cond_0
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Message;

    invoke-direct {v0, p1}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(I)V

    move-object p1, v0

    .line 523
    :goto_0
    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lnet/sourceforge/jsocks/ProxyMessage;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setAcceptTimeout(I)V
    .locals 0

    .line 107
    sput p0, Lnet/sourceforge/jsocks/ProxyServer;->acceptTimeout:I

    return-void
.end method

.method public static setDatagramSize(I)V
    .locals 0

    .line 116
    invoke-static {p0}, Lnet/sourceforge/jsocks/UDPRelayServer;->setDatagramSize(I)V

    return-void
.end method

.method public static setIddleTimeout(I)V
    .locals 0

    .line 126
    sput p0, Lnet/sourceforge/jsocks/ProxyServer;->iddleTimeout:I

    return-void
.end method

.method public static setLog(Ljava/io/OutputStream;)V
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 134
    sput-object p0, Lnet/sourceforge/jsocks/ProxyServer;->log:Ljava/io/PrintStream;

    goto :goto_0

    .line 136
    :cond_0
    new-instance v0, Ljava/io/PrintStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    sput-object v0, Lnet/sourceforge/jsocks/ProxyServer;->log:Ljava/io/PrintStream;

    .line 139
    :goto_0
    sget-object p0, Lnet/sourceforge/jsocks/ProxyServer;->log:Ljava/io/PrintStream;

    sput-object p0, Lnet/sourceforge/jsocks/UDPRelayServer;->log:Ljava/io/PrintStream;

    return-void
.end method

.method public static setProxy(Lnet/sourceforge/jsocks/Proxy;)V
    .locals 0

    .line 154
    sput-object p0, Lnet/sourceforge/jsocks/ProxyServer;->proxy:Lnet/sourceforge/jsocks/Proxy;

    .line 155
    sput-object p0, Lnet/sourceforge/jsocks/UDPRelayServer;->proxy:Lnet/sourceforge/jsocks/Proxy;

    return-void
.end method

.method public static setUDPTimeout(I)V
    .locals 0

    .line 164
    invoke-static {p0}, Lnet/sourceforge/jsocks/UDPRelayServer;->setTimeout(I)V

    return-void
.end method

.method private startPipe(Ljava/net/Socket;)V
    .locals 1

    const/4 v0, 0x2

    .line 565
    iput v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->mode:I

    .line 566
    iput-object p1, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_sock:Ljava/net/Socket;

    .line 568
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_in:Ljava/io/InputStream;

    .line 569
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_out:Ljava/io/OutputStream;

    .line 570
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/jsocks/ProxyServer;->pipe_thread1:Ljava/lang/Thread;

    .line 571
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lnet/sourceforge/jsocks/ProxyServer;->pipe_thread2:Ljava/lang/Thread;

    .line 572
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 573
    iget-object p1, p0, Lnet/sourceforge/jsocks/ProxyServer;->in:Ljava/io/InputStream;

    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_out:Ljava/io/OutputStream;

    invoke-direct {p0, p1, v0}, Lnet/sourceforge/jsocks/ProxyServer;->pipe(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private startSession()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->sock:Ljava/net/Socket;

    sget v1, Lnet/sourceforge/jsocks/ProxyServer;->iddleTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 584
    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->sock:Ljava/net/Socket;

    invoke-interface {v0, v1}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->startSession(Ljava/net/Socket;)Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 592
    const-string v0, "Authentication failed"

    invoke-static {v0}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    return-void

    .line 596
    :cond_0
    invoke-interface {v0}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->in:Ljava/io/InputStream;

    .line 597
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    invoke-interface {v0}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->out:Ljava/io/OutputStream;

    .line 599
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->in:Ljava/io/InputStream;

    invoke-virtual {p0, v0}, Lnet/sourceforge/jsocks/ProxyServer;->readMsg(Ljava/io/InputStream;)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->msg:Lnet/sourceforge/jsocks/ProxyMessage;

    .line 600
    invoke-virtual {p0, v0}, Lnet/sourceforge/jsocks/ProxyServer;->handleRequest(Lnet/sourceforge/jsocks/ProxyMessage;)V

    return-void

    :catch_0
    move-exception v0

    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Auth throwed exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 587
    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    return-void
.end method


# virtual methods
.method protected handleRequest(Lnet/sourceforge/jsocks/ProxyMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    invoke-interface {v0, p1}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->checkRequest(Lnet/sourceforge/jsocks/ProxyMessage;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 288
    iget-object v0, p1, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    if-nez v0, :cond_1

    .line 289
    instance-of v0, p1, Lnet/sourceforge/jsocks/Socks5Message;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p1, Lnet/sourceforge/jsocks/ProxyMessage;->host:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p1, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    goto :goto_0

    .line 292
    :cond_0
    new-instance p1, Lnet/sourceforge/jsocks/SocksException;

    invoke-direct {p1, v1}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw p1

    .line 294
    :cond_1
    :goto_0
    invoke-static {p1}, Lnet/sourceforge/jsocks/ProxyServer;->log(Lnet/sourceforge/jsocks/ProxyMessage;)V

    .line 296
    iget v0, p1, Lnet/sourceforge/jsocks/ProxyMessage;->command:I

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 304
    invoke-direct {p0, p1}, Lnet/sourceforge/jsocks/ProxyServer;->onUDP(Lnet/sourceforge/jsocks/ProxyMessage;)V

    goto :goto_1

    .line 307
    :cond_2
    new-instance p1, Lnet/sourceforge/jsocks/SocksException;

    const/4 v0, 0x7

    invoke-direct {p1, v0}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw p1

    .line 301
    :cond_3
    invoke-direct {p0, p1}, Lnet/sourceforge/jsocks/ProxyServer;->onBind(Lnet/sourceforge/jsocks/ProxyMessage;)V

    goto :goto_1

    .line 298
    :cond_4
    invoke-direct {p0, p1}, Lnet/sourceforge/jsocks/ProxyServer;->onConnect(Lnet/sourceforge/jsocks/ProxyMessage;)V

    :goto_1
    return-void

    .line 286
    :cond_5
    new-instance p1, Lnet/sourceforge/jsocks/SocksException;

    invoke-direct {p1, v1}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw p1
.end method

.method protected readMsg(Ljava/io/InputStream;)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    instance-of v0, p1, Ljava/io/PushbackInputStream;

    if-eqz v0, :cond_0

    .line 447
    check-cast p1, Ljava/io/PushbackInputStream;

    goto :goto_0

    .line 449
    :cond_0
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-direct {v0, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    .line 451
    :goto_0
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 452
    invoke-virtual {p1, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 457
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Message;

    invoke-direct {v0, p1, v2}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(Ljava/io/InputStream;Z)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 459
    new-instance v0, Lnet/sourceforge/jsocks/Socks4Message;

    invoke-direct {v0, p1, v2}, Lnet/sourceforge/jsocks/Socks4Message;-><init>(Ljava/io/InputStream;Z)V

    :goto_1
    return-object v0

    .line 461
    :cond_2
    new-instance p1, Lnet/sourceforge/jsocks/SocksException;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw p1
.end method

.method public run()V
    .locals 5

    .line 470
    const-string v0, "Support thread(remote->client) stopped"

    const-string v1, "Accept thread(remote->client) stopped"

    const-string v2, "Main thread(client->remote)stopped."

    iget v3, p0, Lnet/sourceforge/jsocks/ProxyServer;->mode:I

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    const/4 v4, 0x2

    if-eq v3, v2, :cond_1

    if-eq v3, v4, :cond_0

    const/4 v0, 0x3

    if-eq v3, v0, :cond_4

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected MODE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 502
    :cond_0
    :try_start_0
    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_in:Ljava/io/InputStream;

    iget-object v2, p0, Lnet/sourceforge/jsocks/ProxyServer;->out:Ljava/io/OutputStream;

    invoke-direct {p0, v1, v2}, Lnet/sourceforge/jsocks/ProxyServer;->pipe(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 505
    invoke-direct {p0}, Lnet/sourceforge/jsocks/ProxyServer;->abort()V

    .line 506
    invoke-static {v0}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    .line 507
    throw v1

    .line 505
    :catch_0
    :goto_0
    invoke-direct {p0}, Lnet/sourceforge/jsocks/ProxyServer;->abort()V

    .line 506
    invoke-static {v0}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 486
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lnet/sourceforge/jsocks/ProxyServer;->doAccept()V

    .line 487
    iput v4, p0, Lnet/sourceforge/jsocks/ProxyServer;->mode:I

    .line 488
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->pipe_thread1:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 491
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_in:Ljava/io/InputStream;

    iget-object v2, p0, Lnet/sourceforge/jsocks/ProxyServer;->out:Ljava/io/OutputStream;

    invoke-direct {p0, v0, v2}, Lnet/sourceforge/jsocks/ProxyServer;->pipe(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 494
    :try_start_2
    invoke-direct {p0, v0}, Lnet/sourceforge/jsocks/ProxyServer;->handleException(Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 496
    :goto_1
    invoke-direct {p0}, Lnet/sourceforge/jsocks/ProxyServer;->abort()V

    .line 497
    invoke-static {v1}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 496
    :goto_2
    invoke-direct {p0}, Lnet/sourceforge/jsocks/ProxyServer;->abort()V

    .line 497
    invoke-static {v1}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    .line 498
    throw v0

    .line 473
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lnet/sourceforge/jsocks/ProxyServer;->startSession()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 478
    invoke-direct {p0}, Lnet/sourceforge/jsocks/ProxyServer;->abort()V

    .line 479
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    if-eqz v0, :cond_3

    .line 480
    :goto_3
    invoke-interface {v0}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->endSession()V

    .line 481
    :cond_3
    invoke-static {v2}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    .line 475
    :try_start_4
    invoke-direct {p0, v0}, Lnet/sourceforge/jsocks/ProxyServer;->handleException(Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 478
    invoke-direct {p0}, Lnet/sourceforge/jsocks/ProxyServer;->abort()V

    .line 479
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    if-eqz v0, :cond_3

    .line 480
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    goto :goto_3

    :cond_4
    :goto_4
    return-void

    .line 478
    :goto_5
    invoke-direct {p0}, Lnet/sourceforge/jsocks/ProxyServer;->abort()V

    .line 479
    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    if-eqz v1, :cond_5

    .line 480
    invoke-interface {v1}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->endSession()V

    .line 481
    :cond_5
    invoke-static {v2}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    .line 482
    throw v0
.end method

.method public start(I)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 533
    invoke-virtual {p0, p1, v0, v1}, Lnet/sourceforge/jsocks/ProxyServer;->start(IILjava/net/InetAddress;)V

    return-void
.end method

.method public start(IILjava/net/InetAddress;)V
    .locals 3

    .line 547
    const-string v0, ":"

    .line 0
    const-string v1, "Starting SOCKS Proxy on:"

    .line 547
    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    invoke-direct {v2, p1, p2, p3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v2, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    .line 548
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    .line 549
    invoke-virtual {p2}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    .line 550
    invoke-virtual {p2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 548
    invoke-static {p1}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    .line 552
    :goto_0
    iget-object p1, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    invoke-virtual {p1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object p1

    .line 553
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Accepted from:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p3

    invoke-virtual {p3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 554
    invoke-virtual {p1}, Ljava/net/Socket;->getPort()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 553
    invoke-static {p2}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    .line 555
    new-instance p2, Lnet/sourceforge/jsocks/ProxyServer;

    iget-object p3, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    invoke-direct {p2, p3, p1}, Lnet/sourceforge/jsocks/ProxyServer;-><init>(Lnet/sourceforge/jsocks/server/ServerAuthenticator;Ljava/net/Socket;)V

    .line 556
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 561
    throw p1

    :catch_0
    move-exception p1

    .line 559
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 609
    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
