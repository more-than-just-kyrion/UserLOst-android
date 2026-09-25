.class public Lcom/trilead/ssh2/channel/RemoteAcceptThread;
.super Ljava/lang/Thread;
.source "RemoteAcceptThread.java"


# static fields
.field private static final log:Lcom/trilead/ssh2/log/Logger;


# instance fields
.field c:Lcom/trilead/ssh2/channel/Channel;

.field remoteConnectedAddress:Ljava/lang/String;

.field remoteConnectedPort:I

.field remoteOriginatorAddress:Ljava/lang/String;

.field remoteOriginatorPort:I

.field s:Ljava/net/Socket;

.field targetAddress:Ljava/lang/String;

.field targetPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->log:Lcom/trilead/ssh2/log/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 35
    iput-object p2, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->remoteConnectedAddress:Ljava/lang/String;

    .line 36
    iput p3, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->remoteConnectedPort:I

    .line 37
    iput-object p4, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->remoteOriginatorAddress:Ljava/lang/String;

    .line 38
    iput p5, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->remoteOriginatorPort:I

    .line 39
    iput-object p6, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->targetAddress:Ljava/lang/String;

    .line 40
    iput p7, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->targetPort:I

    .line 42
    sget-object p1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {p1}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result p6

    if-eqz p6, :cond_0

    .line 43
    new-instance p6, Ljava/lang/StringBuilder;

    const-string p7, "RemoteAcceptThread: "

    invoke-direct {p6, p7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p6, "/"

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", R: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x14

    invoke-virtual {p1, p3, p2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v1, p0

    const/4 v2, 0x1

    .line 51
    :try_start_0
    iget-object v0, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v0, v0, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v3, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, v3}, Lcom/trilead/ssh2/channel/ChannelManager;->sendOpenConfirmation(Lcom/trilead/ssh2/channel/Channel;)V

    .line 53
    new-instance v0, Ljava/net/Socket;

    iget-object v3, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->targetAddress:Ljava/lang/String;

    iget v4, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->targetPort:I

    invoke-direct {v0, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->s:Ljava/net/Socket;

    .line 55
    new-instance v0, Lcom/trilead/ssh2/channel/StreamForwarder;

    iget-object v6, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v8, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->s:Ljava/net/Socket;

    invoke-virtual {v6}, Lcom/trilead/ssh2/channel/Channel;->getStdoutStream()Lcom/trilead/ssh2/channel/ChannelInputStream;

    move-result-object v9

    iget-object v3, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->s:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    const-string v11, "RemoteToLocal"

    const/4 v7, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lcom/trilead/ssh2/channel/StreamForwarder;-><init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 57
    new-instance v3, Lcom/trilead/ssh2/channel/StreamForwarder;

    iget-object v13, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v4, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->s:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    iget-object v4, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v4}, Lcom/trilead/ssh2/channel/Channel;->getStdinStream()Lcom/trilead/ssh2/channel/ChannelOutputStream;

    move-result-object v17

    const-string v18, "LocalToRemote"

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v12, v3

    invoke-direct/range {v12 .. v18}, Lcom/trilead/ssh2/channel/StreamForwarder;-><init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v2}, Lcom/trilead/ssh2/channel/StreamForwarder;->setDaemon(Z)V

    .line 63
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/StreamForwarder;->start()V

    .line 64
    invoke-virtual {v3}, Lcom/trilead/ssh2/channel/StreamForwarder;->run()V

    .line 66
    :catch_0
    :goto_0
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/StreamForwarder;->isAlive()Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    .line 70
    :try_start_1
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/StreamForwarder;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 79
    :cond_0
    :try_start_2
    iget-object v0, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v0, v0, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v3, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    const-string v4, "EOF on both streams reached."

    invoke-virtual {v0, v3, v4, v2}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V

    .line 80
    iget-object v0, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->s:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 84
    sget-object v3, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IOException in proxy code: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x32

    invoke-virtual {v3, v5, v4}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 88
    :try_start_3
    iget-object v3, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v3, v3, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v4, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException in proxy code ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0, v2}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 95
    :catch_2
    :try_start_4
    iget-object v0, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->s:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_1
    :goto_1
    return-void
.end method
