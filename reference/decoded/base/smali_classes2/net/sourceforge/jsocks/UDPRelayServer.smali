.class Lnet/sourceforge/jsocks/UDPRelayServer;
.super Ljava/lang/Object;
.source "UDPRelayServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static datagramSize:I = 0xffff

.field static iddleTimeout:I = 0x2bf20

.field static log:Ljava/io/PrintStream;

.field static proxy:Lnet/sourceforge/jsocks/Proxy;


# instance fields
.field auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

.field client_sock:Ljava/net/DatagramSocket;

.field controlConnection:Ljava/net/Socket;

.field lastReadTime:J

.field master_thread:Ljava/lang/Thread;

.field pipe_thread1:Ljava/lang/Thread;

.field pipe_thread2:Ljava/lang/Thread;

.field relayIP:Ljava/net/InetAddress;

.field relayPort:I

.field remote_sock:Ljava/net/DatagramSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILjava/lang/Thread;Ljava/net/Socket;Lnet/sourceforge/jsocks/server/ServerAuthenticator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p3, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->master_thread:Ljava/lang/Thread;

    .line 90
    iput-object p4, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->controlConnection:Ljava/net/Socket;

    .line 91
    iput-object p5, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    .line 93
    new-instance p3, Lnet/sourceforge/jsocks/Socks5DatagramSocket;

    const/4 p4, 0x1

    .line 94
    invoke-interface {p5}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->getUdpEncapsulation()Lnet/sourceforge/jsocks/UDPEncapsulation;

    move-result-object p5

    invoke-direct {p3, p4, p5, p1, p2}, Lnet/sourceforge/jsocks/Socks5DatagramSocket;-><init>(ZLnet/sourceforge/jsocks/UDPEncapsulation;Ljava/net/InetAddress;I)V

    iput-object p3, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->client_sock:Ljava/net/DatagramSocket;

    .line 95
    invoke-virtual {p3}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->relayPort:I

    .line 96
    iget-object p1, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->client_sock:Ljava/net/DatagramSocket;

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->relayIP:Ljava/net/InetAddress;

    .line 98
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    const-string p2, "0.0.0.0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 99
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->relayIP:Ljava/net/InetAddress;

    .line 101
    :cond_0
    sget-object p1, Lnet/sourceforge/jsocks/UDPRelayServer;->proxy:Lnet/sourceforge/jsocks/Proxy;

    if-nez p1, :cond_1

    .line 102
    new-instance p1, Ljava/net/DatagramSocket;

    invoke-direct {p1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->remote_sock:Ljava/net/DatagramSocket;

    goto :goto_0

    .line 104
    :cond_1
    new-instance p1, Lnet/sourceforge/jsocks/Socks5DatagramSocket;

    sget-object p2, Lnet/sourceforge/jsocks/UDPRelayServer;->proxy:Lnet/sourceforge/jsocks/Proxy;

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-direct {p1, p2, p3, p4}, Lnet/sourceforge/jsocks/Socks5DatagramSocket;-><init>(Lnet/sourceforge/jsocks/Proxy;ILjava/net/InetAddress;)V

    iput-object p1, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->remote_sock:Ljava/net/DatagramSocket;

    :goto_0
    return-void
.end method

.method private declared-synchronized abort()V
    .locals 1

    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->pipe_thread1:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 111
    monitor-exit p0

    return-void

    .line 113
    :cond_0
    :try_start_1
    const-string v0, "Aborting UDP Relay Server"

    invoke-static {v0}, Lnet/sourceforge/jsocks/UDPRelayServer;->log(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->remote_sock:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 116
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->client_sock:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 118
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->controlConnection:Ljava/net/Socket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 120
    :try_start_2
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    :catch_0
    :cond_1
    :try_start_3
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->master_thread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 127
    :cond_2
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->pipe_thread1:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 128
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->pipe_thread2:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->pipe_thread1:Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    .line 40
    sget-object v0, Lnet/sourceforge/jsocks/UDPRelayServer;->log:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    sget-object p0, Lnet/sourceforge/jsocks/UDPRelayServer;->log:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    :cond_0
    return-void
.end method

.method private pipe(Ljava/net/DatagramSocket;Ljava/net/DatagramSocket;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    sget v0, Lnet/sourceforge/jsocks/UDPRelayServer;->datagramSize:I

    new-array v1, v0, [B

    .line 150
    new-instance v2, Ljava/net/DatagramPacket;

    invoke-direct {v2, v1, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 154
    :goto_0
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->lastReadTime:J

    .line 157
    iget-object v1, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    invoke-interface {v1, v2, p3}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->checkRequest(Ljava/net/DatagramPacket;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    invoke-virtual {p2, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 165
    :catch_0
    sget v1, Lnet/sourceforge/jsocks/UDPRelayServer;->iddleTimeout:I

    if-nez v1, :cond_0

    return-void

    .line 169
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->lastReadTime:J

    sub-long/2addr v3, v5

    .line 170
    sget v1, Lnet/sourceforge/jsocks/UDPRelayServer;->iddleTimeout:I

    add-int/lit8 v1, v1, -0x64

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-ltz v1, :cond_1

    return-void

    .line 161
    :catch_1
    const-string v1, "Dropping datagram for unknown host"

    invoke-static {v1}, Lnet/sourceforge/jsocks/UDPRelayServer;->log(Ljava/lang/String;)V

    .line 173
    :cond_1
    :goto_1
    invoke-virtual {v2, v0}, Ljava/net/DatagramPacket;->setLength(I)V

    goto :goto_0
.end method

.method public static setDatagramSize(I)V
    .locals 0

    .line 55
    sput p0, Lnet/sourceforge/jsocks/UDPRelayServer;->datagramSize:I

    return-void
.end method

.method public static setTimeout(I)V
    .locals 0

    .line 65
    sput p0, Lnet/sourceforge/jsocks/UDPRelayServer;->iddleTimeout:I

    return-void
.end method


# virtual methods
.method public getRelayIP()Ljava/net/InetAddress;
    .locals 1

    .line 137
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->relayIP:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getRelayPort()I
    .locals 1

    .line 144
    iget v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->relayPort:I

    return v0
.end method

.method public run()V
    .locals 5

    .line 182
    const-string v0, " stopped."

    const-string v1, "UDP Pipe thread "

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pipe1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    iget-object v2, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->remote_sock:Ljava/net/DatagramSocket;

    iget-object v3, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->client_sock:Ljava/net/DatagramSocket;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lnet/sourceforge/jsocks/UDPRelayServer;->pipe(Ljava/net/DatagramSocket;Ljava/net/DatagramSocket;Z)V

    goto :goto_0

    .line 185
    :cond_0
    iget-object v2, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->client_sock:Ljava/net/DatagramSocket;

    iget-object v3, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->remote_sock:Ljava/net/DatagramSocket;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lnet/sourceforge/jsocks/UDPRelayServer;->pipe(Ljava/net/DatagramSocket;Ljava/net/DatagramSocket;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :goto_0
    invoke-direct {p0}, Lnet/sourceforge/jsocks/UDPRelayServer;->abort()V

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 188
    invoke-direct {p0}, Lnet/sourceforge/jsocks/UDPRelayServer;->abort()V

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/jsocks/UDPRelayServer;->log(Ljava/lang/String;)V

    .line 191
    throw v2

    .line 188
    :catch_0
    invoke-direct {p0}, Lnet/sourceforge/jsocks/UDPRelayServer;->abort()V

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/jsocks/UDPRelayServer;->log(Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->remote_sock:Ljava/net/DatagramSocket;

    sget v1, Lnet/sourceforge/jsocks/UDPRelayServer;->iddleTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 200
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->client_sock:Ljava/net/DatagramSocket;

    sget v1, Lnet/sourceforge/jsocks/UDPRelayServer;->iddleTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting UDP relay server on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->relayIP:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->relayPort:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/jsocks/UDPRelayServer;->log(Ljava/lang/String;)V

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Remote socket "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->remote_sock:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->remote_sock:Ljava/net/DatagramSocket;

    .line 204
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {v0}, Lnet/sourceforge/jsocks/UDPRelayServer;->log(Ljava/lang/String;)V

    .line 206
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "pipe1"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->pipe_thread1:Ljava/lang/Thread;

    .line 207
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "pipe2"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->pipe_thread2:Ljava/lang/Thread;

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->lastReadTime:J

    .line 211
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->pipe_thread1:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 212
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->pipe_thread2:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 221
    :try_start_0
    iput-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->master_thread:Ljava/lang/Thread;

    .line 222
    iput-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->controlConnection:Ljava/net/Socket;

    .line 223
    invoke-direct {p0}, Lnet/sourceforge/jsocks/UDPRelayServer;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
