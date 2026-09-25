.class Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;
.super Ljava/lang/Object;
.source "DynamicAcceptThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/channel/DynamicAcceptThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DynamicAcceptRunnable"
.end annotation


# static fields
.field private static final idleTimeout:I = 0x2bf20


# instance fields
.field private in:Ljava/io/InputStream;

.field private out:Ljava/io/OutputStream;

.field private sock:Ljava/net/Socket;

.field final synthetic this$0:Lcom/trilead/ssh2/channel/DynamicAcceptThread;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/channel/DynamicAcceptThread;Ljava/net/Socket;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->this$0:Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p2, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->sock:Ljava/net/Socket;

    .line 112
    const-string p2, "DynamicAcceptRunnable"

    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private onConnect(Lorg/connectbot/simplesocks/Socks5Server;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-virtual {p1}, Lorg/connectbot/simplesocks/Socks5Server;->getHostName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p1}, Lorg/connectbot/simplesocks/Socks5Server;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 163
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->this$0:Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    invoke-static {v1}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->-$$Nest$fgetcm(Lcom/trilead/ssh2/channel/DynamicAcceptThread;)Lcom/trilead/ssh2/channel/ChannelManager;

    move-result-object v1

    invoke-virtual {p1}, Lorg/connectbot/simplesocks/Socks5Server;->getPort()I

    move-result v2

    const-string v3, "127.0.0.1"

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/trilead/ssh2/channel/ChannelManager;->openDirectTCPIPChannel(Ljava/lang/String;ILjava/lang/String;I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    sget-object v1, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;->SUCCESS:Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

    invoke-virtual {p1, v1}, Lorg/connectbot/simplesocks/Socks5Server;->sendReply(Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;)V

    .line 185
    new-instance p1, Lcom/trilead/ssh2/channel/StreamForwarder;

    iget-object v8, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->sock:Ljava/net/Socket;

    iget-object v9, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutStream:Lcom/trilead/ssh2/channel/ChannelInputStream;

    iget-object v10, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->out:Ljava/io/OutputStream;

    const-string v11, "RemoteToLocal"

    const/4 v7, 0x0

    move-object v5, p1

    move-object v6, v0

    invoke-direct/range {v5 .. v11}, Lcom/trilead/ssh2/channel/StreamForwarder;-><init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 186
    new-instance v1, Lcom/trilead/ssh2/channel/StreamForwarder;

    iget-object v8, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->sock:Ljava/net/Socket;

    iget-object v9, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->in:Ljava/io/InputStream;

    iget-object v10, v0, Lcom/trilead/ssh2/channel/Channel;->stdinStream:Lcom/trilead/ssh2/channel/ChannelOutputStream;

    const-string v11, "LocalToRemote"

    move-object v5, v1

    move-object v7, p1

    invoke-direct/range {v5 .. v11}, Lcom/trilead/ssh2/channel/StreamForwarder;-><init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 188
    invoke-virtual {p1, v0}, Lcom/trilead/ssh2/channel/StreamForwarder;->setDaemon(Z)V

    .line 189
    invoke-virtual {v1, v0}, Lcom/trilead/ssh2/channel/StreamForwarder;->setDaemon(Z)V

    .line 190
    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/StreamForwarder;->start()V

    .line 191
    invoke-virtual {v1}, Lcom/trilead/ssh2/channel/StreamForwarder;->start()V

    return-void

    .line 171
    :catch_0
    :try_start_1
    sget-object v0, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;->GENERAL_FAILURE:Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

    invoke-virtual {p1, v0}, Lorg/connectbot/simplesocks/Socks5Server;->sendReply(Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    :catch_1
    :try_start_2
    iget-object p1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->sock:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

.method private startSession()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->sock:Ljava/net/Socket;

    const v1, 0x2bf20

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 129
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->sock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->in:Ljava/io/InputStream;

    .line 130
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->sock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->out:Ljava/io/OutputStream;

    .line 131
    new-instance v0, Lorg/connectbot/simplesocks/Socks5Server;

    iget-object v1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v1, v2}, Lorg/connectbot/simplesocks/Socks5Server;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 133
    :try_start_0
    invoke-virtual {v0}, Lorg/connectbot/simplesocks/Socks5Server;->acceptAuthentication()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/connectbot/simplesocks/Socks5Server;->readRequest()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 142
    :cond_0
    invoke-virtual {v0}, Lorg/connectbot/simplesocks/Socks5Server;->getCommand()Lorg/connectbot/simplesocks/Socks5Server$Command;

    move-result-object v1

    sget-object v2, Lorg/connectbot/simplesocks/Socks5Server$Command;->CONNECT:Lorg/connectbot/simplesocks/Socks5Server$Command;

    if-ne v1, v2, :cond_1

    .line 143
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->onConnect(Lorg/connectbot/simplesocks/Socks5Server;)V

    goto :goto_0

    .line 145
    :cond_1
    sget-object v1, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;->COMMAND_NOT_SUPPORTED:Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

    invoke-virtual {v0, v1}, Lorg/connectbot/simplesocks/Socks5Server;->sendReply(Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;)V

    :goto_0
    return-void

    .line 134
    :cond_2
    :goto_1
    :try_start_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Could not start SOCKS session"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 138
    :catch_0
    sget-object v1, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;->GENERAL_FAILURE:Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

    invoke-virtual {v0, v1}, Lorg/connectbot/simplesocks/Socks5Server;->sendReply(Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 117
    :try_start_0
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->startSession()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->sock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method
