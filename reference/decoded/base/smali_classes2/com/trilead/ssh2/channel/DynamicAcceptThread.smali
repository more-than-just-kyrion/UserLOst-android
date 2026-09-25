.class public Lcom/trilead/ssh2/channel/DynamicAcceptThread;
.super Ljava/lang/Thread;
.source "DynamicAcceptThread.java"

# interfaces
.implements Lcom/trilead/ssh2/channel/IChannelWorkerThread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;
    }
.end annotation


# instance fields
.field private cm:Lcom/trilead/ssh2/channel/ChannelManager;

.field private ss:Ljava/net/ServerSocket;


# direct methods
.method static bridge synthetic -$$Nest$fgetcm(Lcom/trilead/ssh2/channel/DynamicAcceptThread;)Lcom/trilead/ssh2/channel/ChannelManager;
    .locals 0

    iget-object p0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    return-object p0
.end method

.method public constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 55
    const-string p1, "DynamicAcceptThread"

    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->setName(Ljava/lang/String;)V

    .line 57
    new-instance p1, Ljava/net/ServerSocket;

    invoke-direct {p1, p2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object p1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->ss:Ljava/net/ServerSocket;

    return-void
.end method

.method public constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/net/InetSocketAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 64
    new-instance p1, Ljava/net/ServerSocket;

    invoke-direct {p1}, Ljava/net/ServerSocket;-><init>()V

    iput-object p1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->ss:Ljava/net/ServerSocket;

    .line 65
    invoke-virtual {p1, p2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-virtual {v0, p0}, Lcom/trilead/ssh2/channel/ChannelManager;->registerThread(Lcom/trilead/ssh2/channel/IChannelWorkerThread;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    new-instance v1, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;

    invoke-direct {v1, p0, v0}, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;-><init>(Lcom/trilead/ssh2/channel/DynamicAcceptThread;Ljava/net/Socket;)V

    .line 87
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 89
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 82
    :catch_0
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->stopWorking()V

    return-void

    .line 73
    :catch_1
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->stopWorking()V

    return-void
.end method

.method public stopWorking()V
    .locals 1

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
