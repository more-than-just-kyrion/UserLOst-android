.class public Lcom/trilead/ssh2/channel/ChannelManager;
.super Ljava/lang/Object;
.source "ChannelManager.java"

# interfaces
.implements Lcom/trilead/ssh2/transport/MessageHandler;


# static fields
.field private static final log:Lcom/trilead/ssh2/log/Logger;


# instance fields
.field private authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

.field private final channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/trilead/ssh2/channel/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private globalFailedCounter:I

.field private globalSuccessCounter:I

.field private final listenerThreads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/trilead/ssh2/channel/IChannelWorkerThread;",
            ">;"
        }
    .end annotation
.end field

.field private listenerThreadsAllowed:Z

.field private nextLocalChannel:I

.field private final remoteForwardings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/trilead/ssh2/channel/RemoteForwardingData;",
            ">;"
        }
    .end annotation
.end field

.field private shutdown:Z

.field private tm:Lcom/trilead/ssh2/transport/TransportManager;

.field private final x11_magic_cookies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/trilead/ssh2/channel/X11ServerData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/trilead/ssh2/transport/TransportManager;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/List;

    const/16 v0, 0x64

    .line 49
    iput v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->nextLocalChannel:I

    const/4 v1, 0x0

    .line 50
    iput-boolean v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->shutdown:Z

    .line 51
    iput v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    .line 52
    iput v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreads:Ljava/util/List;

    const/4 v1, 0x1

    .line 60
    iput-boolean v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreadsAllowed:Z

    .line 64
    iput-object p1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    const/16 v1, 0x50

    .line 65
    invoke-virtual {p1, p0, v1, v0}, Lcom/trilead/ssh2/transport/TransportManager;->registerMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V

    return-void
.end method

.method private addChannel(Lcom/trilead/ssh2/channel/Channel;)I
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/List;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget p1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->nextLocalChannel:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->nextLocalChannel:I

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 103
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getChannel(I)Lcom/trilead/ssh2/channel/Channel;
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/List;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trilead/ssh2/channel/Channel;

    .line 74
    iget v3, v2, Lcom/trilead/ssh2/channel/Channel;->localID:I

    if-ne v3, p1, :cond_0

    .line 75
    monitor-exit v0

    return-object v2

    .line 77
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private removeChannel(I)V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 85
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 87
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trilead/ssh2/channel/Channel;

    .line 88
    iget v2, v2, Lcom/trilead/ssh2/channel/Channel;->localID:I

    if-ne v2, p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private waitForChannelRequestResult(Lcom/trilead/ssh2/channel/Channel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    monitor-enter p1

    .line 170
    :catch_0
    :goto_0
    :try_start_0
    iget v0, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    if-nez v0, :cond_2

    iget v0, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    if-nez v0, :cond_2

    .line 172
    iget v0, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 174
    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 177
    iget v0, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This SSH2 channel is not open ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 191
    :cond_2
    :try_start_2
    iget v0, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget v0, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    if-ne v0, v1, :cond_3

    .line 192
    monitor-exit p1

    return v1

    .line 194
    :cond_3
    iget v0, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    if-ne v0, v1, :cond_4

    iget v0, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    if-nez v0, :cond_4

    .line 195
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    .line 197
    :cond_4
    new-instance v0, Ljava/io/IOException;

    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal state. The server sent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " SSH_MSG_CHANNEL_SUCCESS and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SSH_MSG_CHANNEL_FAILURE messages."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 199
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private waitForGlobalRequestResult()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/List;

    monitor-enter v0

    .line 139
    :catch_0
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    if-nez v1, :cond_1

    iget v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    if-nez v2, :cond_1

    .line 141
    iget-boolean v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 148
    :try_start_1
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 143
    :cond_0
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "The connection is being shutdown"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_1
    iget v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    const/4 v3, 0x1

    if-nez v2, :cond_2

    if-ne v1, v3, :cond_2

    .line 156
    monitor-exit v0

    return v3

    :cond_2
    if-ne v2, v3, :cond_3

    if-nez v1, :cond_3

    .line 159
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 161
    :cond_3
    new-instance v1, Ljava/io/IOException;

    iget v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    iget v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal state. The server sent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " SSH_MSG_REQUEST_SUCCESS and "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SSH_MSG_REQUEST_FAILURE messages."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 163
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private waitUntilChannelOpen(Lcom/trilead/ssh2/channel/Channel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    monitor-enter p1

    .line 110
    :catch_0
    :goto_0
    :try_start_0
    iget v0, p1, Lcom/trilead/ssh2/channel/Channel;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 114
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    :cond_0
    :try_start_2
    iget v0, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 123
    iget v0, p1, Lcom/trilead/ssh2/channel/Channel;->localID:I

    invoke-direct {p0, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->removeChannel(I)V

    .line 125
    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 128
    iget v0, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not open channel ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public checkX11Cookie(Ljava/lang/String;)Lcom/trilead/ssh2/channel/X11ServerData;
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/trilead/ssh2/channel/X11ServerData;

    monitor-exit v0

    return-object p1

    .line 259
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public closeAllChannels()V
    .locals 5

    .line 265
    sget-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v0}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x32

    .line 266
    const-string v2, "Closing all channels"

    invoke-virtual {v0, v1, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/List;

    monitor-enter v0

    .line 272
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 273
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 275
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 277
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trilead/ssh2/channel/Channel;

    .line 280
    :try_start_1
    const-string v3, "Closing all channels"

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 273
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 290
    new-array v0, v0, [B

    .line 292
    monitor-enter p1

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    .line 296
    :try_start_0
    iput v1, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 297
    iput-boolean v2, p1, Lcom/trilead/ssh2/channel/Channel;->EOF:Z

    .line 300
    :cond_0
    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/channel/Channel;->setReasonClosed(Ljava/lang/String;)V

    const/4 p2, 0x0

    const/16 p3, 0x61

    .line 302
    aput-byte p3, v0, p2

    .line 303
    iget p2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    aput-byte p2, v0, v2

    .line 304
    iget p2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 p2, p2, 0x10

    int-to-byte p2, p2

    const/4 p3, 0x2

    aput-byte p2, v0, p3

    .line 305
    iget p2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    const/4 p3, 0x3

    aput-byte p2, v0, p3

    .line 306
    iget p2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    int-to-byte p2, p2

    aput-byte p2, v0, v1

    .line 308
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 309
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 311
    iget-object p2, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter p2

    .line 313
    :try_start_1
    iget-boolean p3, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-eqz p3, :cond_1

    .line 314
    monitor-exit p2

    return-void

    .line 315
    :cond_1
    iget-object p3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p3, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 316
    iput-boolean v2, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    .line 317
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    sget-object p2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {p2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 320
    iget p1, p1, Lcom/trilead/ssh2/channel/Channel;->localID:I

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Sent SSH_MSG_CHANNEL_CLOSE (channel "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x32

    invoke-virtual {p2, p3, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 317
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p2

    .line 309
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p2
.end method

.method public getAvailable(Lcom/trilead/ssh2/channel/Channel;Z)I
    .locals 1

    .line 998
    monitor-enter p1

    if-eqz p2, :cond_0

    .line 1003
    :try_start_0
    iget p2, p1, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    iget v0, p1, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    goto :goto_0

    .line 1005
    :cond_0
    iget p2, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    iget v0, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    :goto_0
    sub-int/2addr p2, v0

    if-lez p2, :cond_1

    goto :goto_1

    .line 1007
    :cond_1
    iget-boolean p2, p1, Lcom/trilead/ssh2/channel/Channel;->EOF:Z

    if-eqz p2, :cond_2

    const/4 p2, -0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 1008
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public getChannelData(Lcom/trilead/ssh2/channel/Channel;Z[BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1018
    monitor-enter p1

    .line 1030
    :catch_0
    :goto_0
    :try_start_0
    iget v0, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    sub-int/2addr v0, v1

    .line 1031
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    if-nez p2, :cond_0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_b

    if-eqz v1, :cond_b

    :goto_1
    const/4 v3, 0x0

    if-nez p2, :cond_3

    if-le v0, p5, :cond_1

    goto :goto_2

    :cond_1
    move p5, v0

    .line 1058
    :goto_2
    iget-object p2, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutBuffer:[B

    iget v0, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    invoke-static {p2, v0, p3, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1059
    iget p2, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    add-int/2addr p2, p5

    iput p2, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    .line 1061
    iget p2, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    iget p3, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    if-eq p2, p3, :cond_2

    .line 1063
    iget-object p2, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutBuffer:[B

    iget p3, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    iget-object p4, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutBuffer:[B

    iget v0, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    sub-int/2addr v0, v1

    invoke-static {p2, p3, p4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1066
    :cond_2
    iget p2, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    iget p3, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    sub-int/2addr p2, p3

    iput p2, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    .line 1067
    iput v3, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    goto :goto_4

    :cond_3
    if-le v1, p5, :cond_4

    goto :goto_3

    :cond_4
    move p5, v1

    .line 1072
    :goto_3
    iget-object p2, p1, Lcom/trilead/ssh2/channel/Channel;->stderrBuffer:[B

    iget v0, p1, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    invoke-static {p2, v0, p3, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1073
    iget p2, p1, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    add-int/2addr p2, p5

    iput p2, p1, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    .line 1075
    iget p2, p1, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    iget p3, p1, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    if-eq p2, p3, :cond_5

    .line 1077
    iget-object p2, p1, Lcom/trilead/ssh2/channel/Channel;->stderrBuffer:[B

    iget p3, p1, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    iget-object p4, p1, Lcom/trilead/ssh2/channel/Channel;->stderrBuffer:[B

    iget v0, p1, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    sub-int/2addr v0, v1

    invoke-static {p2, p3, p4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1080
    :cond_5
    iget p2, p1, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    iget p3, p1, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    sub-int/2addr p2, p3

    iput p2, p1, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    .line 1081
    iput v3, p1, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    .line 1084
    :goto_4
    iget p2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    if-eq p2, v2, :cond_6

    .line 1085
    monitor-exit p1

    return p5

    .line 1087
    :cond_6
    iget p2, p1, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    const/16 p3, 0x3a98

    if-ge p2, p3, :cond_7

    .line 1089
    iget p2, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    rsub-int p2, p2, 0x7530

    iget p3, p1, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    rsub-int p3, p3, 0x7530

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1092
    iget p3, p1, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    sub-int p3, p2, p3

    .line 1093
    iput p2, p1, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    goto :goto_5

    :cond_7
    move p3, v3

    .line 1096
    :goto_5
    iget p2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 1097
    iget p4, p1, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 1098
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lez p3, :cond_a

    .line 1108
    sget-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v0}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1109
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Sending SSH_MSG_CHANNEL_WINDOW_ADJUST (channel "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, ", "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, ")"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/16 v1, 0x50

    invoke-virtual {v0, v1, p4}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1111
    :cond_8
    iget-object p4, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter p4

    .line 1113
    :try_start_1
    iget-object v0, p1, Lcom/trilead/ssh2/channel/Channel;->msgWindowAdjust:[B

    const/16 v1, 0x5d

    .line 1115
    aput-byte v1, v0, v3

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    const/4 v3, 0x1

    .line 1116
    aput-byte v1, v0, v3

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    .line 1117
    aput-byte v1, v0, v2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x3

    .line 1118
    aput-byte v1, v0, v2

    const/4 v1, 0x4

    int-to-byte p2, p2

    .line 1119
    aput-byte p2, v0, v1

    shr-int/lit8 p2, p3, 0x18

    int-to-byte p2, p2

    const/4 v1, 0x5

    .line 1120
    aput-byte p2, v0, v1

    shr-int/lit8 p2, p3, 0x10

    int-to-byte p2, p2

    const/4 v1, 0x6

    .line 1121
    aput-byte p2, v0, v1

    shr-int/lit8 p2, p3, 0x8

    int-to-byte p2, p2

    const/4 v1, 0x7

    .line 1122
    aput-byte p2, v0, v1

    int-to-byte p2, p3

    const/16 p3, 0x8

    .line 1123
    aput-byte p2, v0, p3

    .line 1125
    iget-boolean p1, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-nez p1, :cond_9

    .line 1126
    iget-object p1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p1, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 1127
    :cond_9
    monitor-exit p4

    goto :goto_6

    :catchall_0
    move-exception p1

    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_a
    :goto_6
    return p5

    .line 1041
    :cond_b
    :try_start_2
    iget-boolean v0, p1, Lcom/trilead/ssh2/channel/Channel;->EOF:Z

    if-nez v0, :cond_d

    iget v0, p1, Lcom/trilead/ssh2/channel/Channel;->state:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eq v0, v2, :cond_c

    goto :goto_7

    .line 1046
    :cond_c
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 1042
    :cond_d
    :goto_7
    :try_start_4
    monitor-exit p1

    const/4 p1, -0x1

    return p1

    :catchall_1
    move-exception p2

    .line 1098
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p2
.end method

.method public handleMessage([BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 1662
    sget-object p1, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {p1}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x32

    .line 1663
    const-string v1, "HandleMessage: got shutdown"

    invoke-virtual {p1, p2, v1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1665
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreads:Ljava/util/List;

    monitor-enter v1

    .line 1667
    :try_start_0
    iget-object p1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreads:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/trilead/ssh2/channel/IChannelWorkerThread;

    .line 1669
    invoke-interface {p2}, Lcom/trilead/ssh2/channel/IChannelWorkerThread;->stopWorking()V

    goto :goto_0

    .line 1671
    :cond_1
    iput-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreadsAllowed:Z

    .line 1672
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1674
    iget-object p1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/List;

    monitor-enter p1

    const/4 p2, 0x1

    .line 1676
    :try_start_1
    iput-boolean p2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->shutdown:Z

    .line 1678
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/trilead/ssh2/channel/Channel;

    .line 1680
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1682
    :try_start_2
    iput-boolean p2, v1, Lcom/trilead/ssh2/channel/Channel;->EOF:Z

    const/4 v2, 0x4

    .line 1683
    iput v2, v1, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 1684
    const-string v2, "The connection is being shutdown"

    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/channel/Channel;->setReasonClosed(Ljava/lang/String;)V

    .line 1685
    iput-boolean p2, v1, Lcom/trilead/ssh2/channel/Channel;->closeMessageRecv:Z

    .line 1691
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1692
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p2

    .line 1695
    :cond_2
    iget-object p2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 1696
    iget-object p2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 1697
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p2

    .line 1698
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p2

    :catchall_2
    move-exception p1

    .line 1672
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    .line 1701
    :cond_3
    aget-byte v1, p1, v0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 1746
    new-instance p2, Ljava/io/IOException;

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot handle unknown channel message "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1731
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelFailure([BI)V

    goto :goto_2

    .line 1728
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelSuccess([BI)V

    goto :goto_2

    .line 1716
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelRequest([BI)V

    goto :goto_2

    .line 1725
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelClose([BI)V

    goto :goto_2

    .line 1719
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelEOF([BI)V

    goto :goto_2

    .line 1713
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelExtendedData([BI)V

    goto :goto_2

    .line 1710
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelData([BI)V

    goto :goto_2

    .line 1707
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelWindowAdjust([BI)V

    goto :goto_2

    .line 1734
    :pswitch_8
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelOpenFailure([BI)V

    goto :goto_2

    .line 1704
    :pswitch_9
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelOpenConfirmation([BI)V

    goto :goto_2

    .line 1722
    :pswitch_a
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelOpen([BI)V

    goto :goto_2

    .line 1743
    :pswitch_b
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/ChannelManager;->msgGlobalFailure()V

    goto :goto_2

    .line 1740
    :pswitch_c
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/ChannelManager;->msgGlobalSuccess()V

    goto :goto_2

    .line 1737
    :pswitch_d
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgGlobalRequest([BI)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public msgChannelClose([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    const/4 p2, 0x1

    .line 1454
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x4

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    .line 1456
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1461
    monitor-enter v0

    .line 1463
    :try_start_0
    iput-boolean p2, v0, Lcom/trilead/ssh2/channel/Channel;->EOF:Z

    .line 1464
    iput v1, v0, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 1465
    const-string v1, "Close requested by remote"

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/channel/Channel;->setReasonClosed(Ljava/lang/String;)V

    .line 1466
    iput-boolean p2, v0, Lcom/trilead/ssh2/channel/Channel;->closeMessageRecv:Z

    .line 1468
    iget p2, v0, Lcom/trilead/ssh2/channel/Channel;->localID:I

    invoke-direct {p0, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->removeChannel(I)V

    .line 1470
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1471
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1473
    sget-object p2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {p2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1474
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got SSH_MSG_CHANNEL_CLOSE (channel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x32

    invoke-virtual {p2, v0, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 1471
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1459
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected SSH_MSG_CHANNEL_CLOSE message for non-existent channel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1452
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SSH_MSG_CHANNEL_CLOSE message has wrong size ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public msgChannelData([BI)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Got SSH_MSG_CHANNEL_DATA, but channel is not in correct state ("

    const/16 v1, 0x9

    if-le p2, v1, :cond_6

    const/4 v2, 0x1

    .line 1138
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x2

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    const/4 v4, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    or-int/2addr v2, v4

    const/4 v4, 0x4

    aget-byte v6, p1, v4

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    const/4 v6, 0x5

    .line 1139
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    const/4 v7, 0x6

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/4 v7, 0x7

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v5

    or-int/2addr v6, v7

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v6

    .line 1141
    invoke-direct {p0, v2}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v6

    if-eqz v6, :cond_5

    sub-int/2addr p2, v1

    if-ne v5, p2, :cond_4

    .line 1150
    sget-object p2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {p2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1151
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Got SSH_MSG_CHANNEL_DATA (channel "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x50

    invoke-virtual {p2, v7, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1153
    :cond_0
    monitor-enter v6

    .line 1155
    :try_start_0
    iget p2, v6, Lcom/trilead/ssh2/channel/Channel;->state:I

    if-ne p2, v4, :cond_1

    .line 1156
    monitor-exit v6

    return-void

    .line 1158
    :cond_1
    iget p2, v6, Lcom/trilead/ssh2/channel/Channel;->state:I

    if-ne p2, v3, :cond_3

    .line 1161
    iget p2, v6, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    if-lt p2, v5, :cond_2

    .line 1164
    iget p2, v6, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    sub-int/2addr p2, v5

    iput p2, v6, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    .line 1166
    iget-object p2, v6, Lcom/trilead/ssh2/channel/Channel;->stdoutBuffer:[B

    iget v0, v6, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    invoke-static {p1, v1, p2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1167
    iget p1, v6, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    add-int/2addr p1, v5

    iput p1, v6, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    .line 1169
    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 1170
    monitor-exit v6

    return-void

    .line 1162
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Remote sent too much data, does not fit into window."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1159
    :cond_3
    new-instance p1, Ljava/io/IOException;

    iget p2, v6, Lcom/trilead/ssh2/channel/Channel;->state:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 1170
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1147
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SSH_MSG_CHANNEL_DATA message has wrong len (calculated "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", got "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1144
    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected SSH_MSG_CHANNEL_DATA message for non-existent channel "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1136
    :cond_6
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SSH_MSG_CHANNEL_DATA message has wrong size ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public msgChannelEOF([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    const/4 p2, 0x1

    .line 1432
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x4

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    .line 1434
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1439
    monitor-enter v0

    .line 1441
    :try_start_0
    iput-boolean p2, v0, Lcom/trilead/ssh2/channel/Channel;->EOF:Z

    .line 1442
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1443
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1445
    sget-object p2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {p2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1446
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got SSH_MSG_CHANNEL_EOF (channel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x32

    invoke-virtual {p2, v0, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 1443
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1437
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected SSH_MSG_CHANNEL_EOF message for non-existent channel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1430
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SSH_MSG_CHANNEL_EOF message has wrong size ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public msgChannelExtendedData([BI)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Got SSH_MSG_CHANNEL_EXTENDED_DATA, but channel is not in correct state ("

    const/16 v1, 0xd

    if-le p2, v1, :cond_7

    const/4 v2, 0x1

    .line 880
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x2

    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v3, v5

    const/4 v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v3, v5

    const/4 v5, 0x4

    aget-byte v7, p1, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v3, v7

    const/4 v7, 0x5

    .line 881
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    const/4 v8, 0x6

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    const/4 v8, 0x7

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v6

    or-int/2addr v7, v8

    aget-byte v8, p1, v6

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    const/16 v8, 0x9

    .line 882
    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    const/16 v9, 0xa

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    const/16 v9, 0xb

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v6, v9, 0x8

    or-int/2addr v6, v8

    const/16 v8, 0xc

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v6, v8

    .line 884
    invoke-direct {p0, v3}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v8

    if-eqz v8, :cond_6

    if-ne v7, v2, :cond_5

    sub-int/2addr p2, v1

    if-ne v6, p2, :cond_4

    .line 896
    sget-object p2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {p2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 897
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Got SSH_MSG_CHANNEL_EXTENDED_DATA (channel "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {p2, v3, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 899
    :cond_0
    monitor-enter v8

    .line 901
    :try_start_0
    iget p2, v8, Lcom/trilead/ssh2/channel/Channel;->state:I

    if-ne p2, v5, :cond_1

    .line 902
    monitor-exit v8

    return-void

    .line 904
    :cond_1
    iget p2, v8, Lcom/trilead/ssh2/channel/Channel;->state:I

    if-ne p2, v4, :cond_3

    .line 908
    iget p2, v8, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    if-lt p2, v6, :cond_2

    .line 911
    iget p2, v8, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    sub-int/2addr p2, v6

    iput p2, v8, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    .line 913
    iget-object p2, v8, Lcom/trilead/ssh2/channel/Channel;->stderrBuffer:[B

    iget v0, v8, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    invoke-static {p1, v1, p2, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 914
    iget p1, v8, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    add-int/2addr p1, v6

    iput p1, v8, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    .line 916
    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 917
    monitor-exit v8

    return-void

    .line 909
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Remote sent too much data, does not fit into window."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 905
    :cond_3
    new-instance p1, Ljava/io/IOException;

    iget p2, v8, Lcom/trilead/ssh2/channel/Channel;->state:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 917
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 893
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SSH_MSG_CHANNEL_EXTENDED_DATA message has wrong len (calculated "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", got "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 890
    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "SSH_MSG_CHANNEL_EXTENDED_DATA message has unknown type ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 887
    :cond_6
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected SSH_MSG_CHANNEL_EXTENDED_DATA message for non-existent channel "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 878
    :cond_7
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SSH_MSG_CHANNEL_EXTENDED_DATA message has wrong size ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public msgChannelFailure([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    const/4 p2, 0x1

    .line 1504
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x4

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    .line 1506
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1511
    monitor-enter v0

    .line 1513
    :try_start_0
    iget v1, v0, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    .line 1514
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1515
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1517
    sget-object p2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {p2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1518
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got SSH_MSG_CHANNEL_FAILURE (channel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x32

    invoke-virtual {p2, v0, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 1515
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1509
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected SSH_MSG_CHANNEL_FAILURE message for non-existent channel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1502
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SSH_MSG_CHANNEL_FAILURE message has wrong size ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public msgChannelOpen([BI)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1206
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    const/4 v2, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-direct {v0, v3, v2, v4}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 1208
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 1209
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1210
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v3

    .line 1211
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v4

    .line 1212
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v5

    .line 1214
    const-string v6, "x11"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-wide v7, 0xffffffffL

    const/16 v9, 0x14

    const/4 v10, 0x1

    if-eqz v6, :cond_2

    .line 1216
    iget-object v6, v1, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    monitor-enter v6

    .line 1220
    :try_start_0
    iget-object v2, v1, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1222
    new-instance v0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;

    const-string v2, "X11 forwarding not activated"

    const-string v4, ""

    invoke-direct {v0, v3, v10, v2, v4}, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 1225
    iget-object v2, v1, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->getPayload()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendAsynchronousMessage([B)V

    .line 1227
    sget-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v0}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1228
    const-string v2, "Unexpected X11 request, denying it!"

    invoke-virtual {v0, v9, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1230
    :cond_0
    monitor-exit v6

    return-void

    .line 1232
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1234
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1235
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v0

    .line 1237
    new-instance v9, Lcom/trilead/ssh2/channel/Channel;

    invoke-direct {v9, v1}, Lcom/trilead/ssh2/channel/Channel;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;)V

    .line 1239
    monitor-enter v9

    .line 1241
    :try_start_1
    iput v3, v9, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    int-to-long v3, v4

    and-long/2addr v3, v7

    .line 1242
    iput-wide v3, v9, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 1243
    iput v5, v9, Lcom/trilead/ssh2/channel/Channel;->remoteMaxPacketSize:I

    .line 1244
    invoke-direct {v1, v9}, Lcom/trilead/ssh2/channel/ChannelManager;->addChannel(Lcom/trilead/ssh2/channel/Channel;)I

    move-result v3

    iput v3, v9, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 1245
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1251
    new-instance v3, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;

    invoke-direct {v3, v9, v2, v0}, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;-><init>(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;I)V

    .line 1252
    invoke-virtual {v3, v10}, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->setDaemon(Z)V

    .line 1253
    invoke-virtual {v3}, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->start()V

    return-void

    :catchall_0
    move-exception v0

    .line 1245
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 1232
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 1258
    :cond_2
    const-string v6, "forwarded-tcpip"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1260
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1261
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v14

    .line 1262
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1263
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v16

    .line 1267
    iget-object v6, v1, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    monitor-enter v6

    .line 1269
    :try_start_4
    iget-object v0, v1, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trilead/ssh2/channel/RemoteForwardingData;

    .line 1270
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v0, :cond_4

    .line 1274
    new-instance v0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;

    const-string v2, "No thanks, unknown port in forwarded-tcpip request"

    const-string v4, ""

    invoke-direct {v0, v3, v10, v2, v4}, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 1280
    iget-object v2, v1, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->getPayload()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendAsynchronousMessage([B)V

    .line 1282
    sget-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v0}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1283
    const-string v2, "Unexpected forwarded-tcpip request, denying it!"

    invoke-virtual {v0, v9, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_3
    return-void

    .line 1288
    :cond_4
    new-instance v12, Lcom/trilead/ssh2/channel/Channel;

    invoke-direct {v12, v1}, Lcom/trilead/ssh2/channel/Channel;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;)V

    .line 1290
    monitor-enter v12

    .line 1292
    :try_start_5
    iput v3, v12, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    int-to-long v2, v4

    and-long/2addr v2, v7

    .line 1293
    iput-wide v2, v12, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 1294
    iput v5, v12, Lcom/trilead/ssh2/channel/Channel;->remoteMaxPacketSize:I

    .line 1295
    invoke-direct {v1, v12}, Lcom/trilead/ssh2/channel/ChannelManager;->addChannel(Lcom/trilead/ssh2/channel/Channel;)I

    move-result v2

    iput v2, v12, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 1296
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1302
    new-instance v2, Lcom/trilead/ssh2/channel/RemoteAcceptThread;

    iget-object v3, v0, Lcom/trilead/ssh2/channel/RemoteForwardingData;->targetAddress:Ljava/lang/String;

    iget v0, v0, Lcom/trilead/ssh2/channel/RemoteForwardingData;->targetPort:I

    move-object v11, v2

    move-object/from16 v17, v3

    move/from16 v18, v0

    invoke-direct/range {v11 .. v18}, Lcom/trilead/ssh2/channel/RemoteAcceptThread;-><init>(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    .line 1305
    invoke-virtual {v2, v10}, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->setDaemon(Z)V

    .line 1306
    invoke-virtual {v2}, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->start()V

    return-void

    :catchall_2
    move-exception v0

    .line 1296
    :try_start_6
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    .line 1270
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 1311
    :cond_5
    const-string v0, "auth-agent@openssh.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1312
    new-instance v6, Lcom/trilead/ssh2/channel/Channel;

    invoke-direct {v6, v1}, Lcom/trilead/ssh2/channel/Channel;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;)V

    .line 1314
    monitor-enter v6

    .line 1316
    :try_start_8
    iput v3, v6, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    int-to-long v2, v4

    and-long/2addr v2, v7

    .line 1317
    iput-wide v2, v6, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 1318
    iput v5, v6, Lcom/trilead/ssh2/channel/Channel;->remoteMaxPacketSize:I

    .line 1319
    invoke-direct {v1, v6}, Lcom/trilead/ssh2/channel/ChannelManager;->addChannel(Lcom/trilead/ssh2/channel/Channel;)I

    move-result v0

    iput v0, v6, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 1320
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1322
    new-instance v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;

    iget-object v2, v1, Lcom/trilead/ssh2/channel/ChannelManager;->authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

    invoke-direct {v0, v6, v2}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;-><init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/AuthAgentCallback;)V

    .line 1324
    invoke-virtual {v0, v10}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->setDaemon(Z)V

    .line 1325
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->start()V

    return-void

    :catchall_4
    move-exception v0

    .line 1320
    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    .line 1332
    :cond_6
    new-instance v0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;

    const-string v4, "Unknown channel type"

    const-string v5, ""

    const/4 v6, 0x3

    invoke-direct {v0, v3, v6, v4, v5}, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 1335
    iget-object v3, v1, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->getPayload()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendAsynchronousMessage([B)V

    .line 1337
    sget-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v0}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1338
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The peer tried to open an unsupported channel type ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public msgChannelOpenConfirmation([BI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Unexpected SSH_MSG_CHANNEL_OPEN_CONFIRMATION message for channel "

    .line 1523
    new-instance v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;-><init>([BII)V

    .line 1525
    iget p1, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->recipientChannelID:I

    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1531
    monitor-enter p1

    .line 1533
    :try_start_0
    iget p2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 1537
    iget p2, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->senderChannelID:I

    iput p2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 1538
    iget p2, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->initialWindowSize:I

    int-to-long v2, p2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    iput-wide v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 1539
    iget p2, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->maxPacketSize:I

    iput p2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteMaxPacketSize:I

    const/4 p2, 0x2

    .line 1540
    iput p2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 1541
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1542
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1544
    sget-object p1, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {p1}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1545
    iget p2, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->recipientChannelID:I

    iget v0, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->senderChannelID:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got SSH_MSG_CHANNEL_OPEN_CONFIRMATION (channel "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " / remote: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x32

    invoke-virtual {p1, v0, p2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 1534
    :cond_1
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    iget v1, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->recipientChannelID:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p2

    .line 1542
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 1528
    :cond_2
    new-instance p1, Ljava/io/IOException;

    iget p2, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->recipientChannelID:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected SSH_MSG_CHANNEL_OPEN_CONFIRMATION message for non-existent channel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public msgChannelOpenFailure([BI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    if-lt p2, v0, :cond_8

    .line 1554
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 1556
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 1557
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    .line 1559
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 1564
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    .line 1565
    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    if-eq v2, v3, :cond_0

    .line 1584
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "UNKNOWN REASON CODE ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1581
    :cond_0
    const-string v2, "SSH_OPEN_RESOURCE_SHORTAGE"

    goto :goto_0

    .line 1578
    :cond_1
    const-string v2, "SSH_OPEN_UNKNOWN_CHANNEL_TYPE"

    goto :goto_0

    .line 1575
    :cond_2
    const-string v2, "SSH_OPEN_CONNECT_FAILED"

    goto :goto_0

    .line 1572
    :cond_3
    const-string v2, "SSH_OPEN_ADMINISTRATIVELY_PROHIBITED"

    .line 1587
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1588
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1590
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 1592
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v6, 0x20

    if-lt v0, v6, :cond_4

    const/16 v6, 0x7e

    if-gt v0, v6, :cond_4

    goto :goto_2

    :cond_4
    const v0, 0xfffd

    .line 1596
    invoke-virtual {v5, v1, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1599
    :cond_5
    monitor-enter p2

    .line 1601
    :try_start_0
    iput-boolean v4, p2, Lcom/trilead/ssh2/channel/Channel;->EOF:Z

    .line 1602
    iput v3, p2, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 1604
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The server refused to open the channel ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1603
    invoke-virtual {p2, v0}, Lcom/trilead/ssh2/channel/Channel;->setReasonClosed(Ljava/lang/String;)V

    .line 1605
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 1606
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1608
    sget-object p2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {p2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1609
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got SSH_MSG_CHANNEL_OPEN_FAILURE (channel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x32

    invoke-virtual {p2, v0, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    .line 1606
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1562
    :cond_7
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected SSH_MSG_CHANNEL_OPEN_FAILURE message for non-existent channel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1552
    :cond_8
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SSH_MSG_CHANNEL_OPEN_FAILURE message has wrong size ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public msgChannelRequest([BI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1343
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 1345
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 1346
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    .line 1348
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 1353
    const-string v2, "US-ASCII"

    invoke-virtual {v0, v2}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1354
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readBoolean()Z

    move-result v3

    .line 1356
    sget-object v4, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v4}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1357
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Got SSH_MSG_CHANNEL_REQUEST (channel "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x50

    invoke-virtual {v4, v6, v5}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1359
    :cond_0
    const-string v5, "exit-status"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0x32

    if-eqz v5, :cond_4

    if-nez v3, :cond_3

    .line 1364
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v1

    .line 1366
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v0

    if-nez v0, :cond_2

    .line 1369
    monitor-enter p2

    .line 1371
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p2, Lcom/trilead/ssh2/channel/Channel;->exit_status:Ljava/lang/Integer;

    .line 1372
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 1373
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1375
    invoke-virtual {v4}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1376
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Got EXIT STATUS (channel "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", status "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v6, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 1373
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1367
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Badly formatted SSH_MSG_CHANNEL_REQUEST message"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1362
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Badly formatted SSH_MSG_CHANNEL_REQUEST message, \'want reply\' is true"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1381
    :cond_4
    const-string v5, "exit-signal"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v3, :cond_7

    .line 1386
    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1387
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readBoolean()Z

    .line 1388
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 1389
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 1391
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v0

    if-nez v0, :cond_6

    .line 1394
    monitor-enter p2

    .line 1396
    :try_start_2
    iput-object v1, p2, Lcom/trilead/ssh2/channel/Channel;->exit_signal:Ljava/lang/String;

    .line 1397
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 1398
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1400
    invoke-virtual {v4}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1401
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Got EXIT SIGNAL (channel "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", signal "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v6, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_5
    return-void

    :catchall_1
    move-exception p1

    .line 1398
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 1392
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Badly formatted SSH_MSG_CHANNEL_REQUEST message"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1384
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Badly formatted SSH_MSG_CHANNEL_REQUEST message, \'want reply\' is true"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    if-eqz v3, :cond_9

    .line 1415
    iget p1, p2, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    .line 1416
    iget v0, p2, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    .line 1417
    iget v3, p2, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    .line 1418
    iget p2, p2, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    int-to-byte p2, p2

    const/4 v5, 0x5

    new-array v5, v5, [B

    const/16 v7, 0x64

    aput-byte v7, v5, v1

    const/4 v1, 0x1

    aput-byte p1, v5, v1

    const/4 p1, 0x2

    aput-byte v0, v5, p1

    const/4 p1, 0x3

    aput-byte v3, v5, p1

    const/4 p1, 0x4

    aput-byte p2, v5, p1

    .line 1420
    iget-object p1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p1, v5}, Lcom/trilead/ssh2/transport/TransportManager;->sendAsynchronousMessage([B)V

    .line 1423
    :cond_9
    invoke-virtual {v4}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1424
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Channel request \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\' is not known, ignoring it"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v6, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_a
    return-void

    .line 1351
    :cond_b
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected SSH_MSG_CHANNEL_REQUEST message for non-existent channel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public msgChannelSuccess([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    const/4 p2, 0x1

    .line 1482
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x4

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    .line 1484
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1489
    monitor-enter v0

    .line 1491
    :try_start_0
    iget v1, v0, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 1492
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1493
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1495
    sget-object p2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {p2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1496
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got SSH_MSG_CHANNEL_SUCCESS (channel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p2, v0, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 1493
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1487
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected SSH_MSG_CHANNEL_SUCCESS message for non-existent channel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1480
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SSH_MSG_CHANNEL_SUCCESS message has wrong size ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public msgChannelWindowAdjust([BI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    if-ne p2, v0, :cond_3

    const/4 p2, 0x1

    .line 1178
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x18

    const/4 v0, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p2, v0

    const/4 v0, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    or-int/2addr p2, v0

    const/4 v0, 0x4

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p2, v0

    const/4 v0, 0x5

    .line 1179
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    const/4 v2, 0x7

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    .line 1181
    invoke-direct {p0, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1186
    monitor-enter v0

    .line 1190
    :try_start_0
    iget-wide v1, v0, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    int-to-long v3, p1

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 1194
    iget-wide v1, v0, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_0

    .line 1195
    iput-wide v5, v0, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 1197
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1198
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1200
    sget-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v0}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1201
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got SSH_MSG_CHANNEL_WINDOW_ADJUST (channel "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x50

    invoke-virtual {v0, p2, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 1198
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1184
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected SSH_MSG_CHANNEL_WINDOW_ADJUST message for non-existent channel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1176
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SSH_MSG_CHANNEL_WINDOW_ADJUST message has wrong size ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public msgGlobalFailure()V
    .locals 3

    .line 1648
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/List;

    monitor-enter v0

    .line 1650
    :try_start_0
    iget v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    .line 1651
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1652
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1654
    sget-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v0}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x50

    .line 1655
    const-string v2, "Got SSH_MSG_REQUEST_FAILURE"

    invoke-virtual {v0, v1, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 1652
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public msgGlobalRequest([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1616
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 1618
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 1619
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1620
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readBoolean()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 1625
    new-array p2, p2, [B

    const/16 v0, 0x52

    aput-byte v0, p2, v1

    .line 1627
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0, p2}, Lcom/trilead/ssh2/transport/TransportManager;->sendAsynchronousMessage([B)V

    .line 1632
    :cond_0
    sget-object p2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {p2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1633
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got SSH_MSG_GLOBAL_REQUEST ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p2, v0, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public msgGlobalSuccess()V
    .locals 3

    .line 1637
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/List;

    monitor-enter v0

    .line 1639
    :try_start_0
    iget v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    .line 1640
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1641
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1643
    sget-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v0}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x50

    .line 1644
    const-string v2, "Got SSH_MSG_REQUEST_SUCCESS"

    invoke-virtual {v0, v1, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 1641
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public openDirectTCPIPChannel(Ljava/lang/String;ILjava/lang/String;I)Lcom/trilead/ssh2/channel/Channel;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 581
    new-instance v0, Lcom/trilead/ssh2/channel/Channel;

    invoke-direct {v0, p0}, Lcom/trilead/ssh2/channel/Channel;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;)V

    .line 583
    monitor-enter v0

    .line 585
    :try_start_0
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->addChannel(Lcom/trilead/ssh2/channel/Channel;)I

    move-result v1

    iput v1, v0, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 587
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    new-instance v1, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;

    iget v3, v0, Lcom/trilead/ssh2/channel/Channel;->localID:I

    iget v4, v0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    iget v5, v0, Lcom/trilead/ssh2/channel/Channel;->localMaxPacketSize:I

    move-object v2, v1

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    move v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;-><init>(IIILjava/lang/String;ILjava/lang/String;I)V

    .line 592
    iget-object p1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->getPayload()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 594
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->waitUntilChannelOpen(Lcom/trilead/ssh2/channel/Channel;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 587
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public openSessionChannel()Lcom/trilead/ssh2/channel/Channel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    new-instance v0, Lcom/trilead/ssh2/channel/Channel;

    invoke-direct {v0, p0}, Lcom/trilead/ssh2/channel/Channel;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;)V

    .line 603
    monitor-enter v0

    .line 605
    :try_start_0
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->addChannel(Lcom/trilead/ssh2/channel/Channel;)I

    move-result v1

    iput v1, v0, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 607
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    sget-object v1, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v1}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 610
    iget v2, v0, Lcom/trilead/ssh2/channel/Channel;->localID:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sending SSH_MSG_CHANNEL_OPEN (Channel "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x32

    invoke-virtual {v1, v3, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 612
    :cond_0
    new-instance v1, Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;

    iget v2, v0, Lcom/trilead/ssh2/channel/Channel;->localID:I

    iget v3, v0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    iget v4, v0, Lcom/trilead/ssh2/channel/Channel;->localMaxPacketSize:I

    invoke-direct {v1, v2, v3, v4}, Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;-><init>(III)V

    .line 613
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;->getPayload()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 615
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->waitUntilChannelOpen(Lcom/trilead/ssh2/channel/Channel;)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 607
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public registerThread(Lcom/trilead/ssh2/channel/IChannelWorkerThread;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreads:Ljava/util/List;

    monitor-enter v0

    .line 572
    :try_start_0
    iget-boolean v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreadsAllowed:Z

    if-eqz v1, :cond_0

    .line 574
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreads:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    monitor-exit v0

    return-void

    .line 573
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Too late, this connection is closed."

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 575
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerX11Cookie(Ljava/lang/String;Lcom/trilead/ssh2/channel/X11ServerData;)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    monitor-enter v0

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public requestCancelGlobalForward(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Sorry, there is no known remote forwarding for remote port "

    .line 499
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    monitor-enter v1

    .line 501
    :try_start_0
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trilead/ssh2/channel/RemoteForwardingData;

    if-eqz v2, :cond_2

    .line 505
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 507
    iget-object p1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/List;

    monitor-enter p1

    const/4 v0, 0x0

    .line 509
    :try_start_1
    iput v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    iput v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    .line 510
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 512
    new-instance p1, Lcom/trilead/ssh2/packets/PacketGlobalCancelForwardRequest;

    iget-object v0, v2, Lcom/trilead/ssh2/channel/RemoteForwardingData;->bindAddress:Ljava/lang/String;

    iget v1, v2, Lcom/trilead/ssh2/channel/RemoteForwardingData;->bindPort:I

    const/4 v3, 0x1

    invoke-direct {p1, v3, v0, v1}, Lcom/trilead/ssh2/packets/PacketGlobalCancelForwardRequest;-><init>(ZLjava/lang/String;I)V

    .line 514
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/PacketGlobalCancelForwardRequest;->getPayload()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 516
    sget-object p1, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {p1}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, v2, Lcom/trilead/ssh2/channel/RemoteForwardingData;->bindAddress:Ljava/lang/String;

    iget v1, v2, Lcom/trilead/ssh2/channel/RemoteForwardingData;->bindPort:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Requesting cancelation of remote forward (\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\', "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {p1, v1, v0}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 521
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForGlobalRequestResult()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_1

    .line 526
    iget-object p1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    monitor-enter p1

    .line 529
    :try_start_3
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    iget v1, v2, Lcom/trilead/ssh2/channel/RemoteForwardingData;->bindPort:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 522
    :cond_1
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The server denied the request."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 526
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    monitor-enter v0

    .line 529
    :try_start_5
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    iget v2, v2, Lcom/trilead/ssh2/channel/RemoteForwardingData;->bindPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 531
    throw p1

    :catchall_2
    move-exception p1

    .line 530
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    :catchall_3
    move-exception v0

    .line 510
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 504
    :cond_2
    :try_start_8
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_4
    move-exception p1

    .line 505
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw p1
.end method

.method public requestChannelAgentForwarding(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/AuthAgentCallback;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    monitor-enter p0

    .line 543
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

    if-nez v0, :cond_2

    .line 546
    iput-object p2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

    .line 547
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 549
    iget-object p2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/List;

    monitor-enter p2

    const/4 v0, 0x0

    .line 551
    :try_start_1
    iput v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    iput v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    .line 552
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 554
    sget-object p2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {p2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x32

    .line 555
    const-string v2, "Requesting agent forwarding"

    invoke-virtual {p2, v1, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 557
    :cond_0
    new-instance p2, Lcom/trilead/ssh2/packets/PacketChannelAuthAgentReq;

    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    invoke-direct {p2, v1}, Lcom/trilead/ssh2/packets/PacketChannelAuthAgentReq;-><init>(I)V

    .line 558
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketChannelAuthAgentReq;->getPayload()[B

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 560
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForChannelRequestResult(Lcom/trilead/ssh2/channel/Channel;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 552
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 544
    :cond_2
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Auth agent already exists"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 547
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public requestChannelTrileadPing(Lcom/trilead/ssh2/channel/Channel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Cannot ping this channel ("

    const-string v1, "Cannot ping this channel ("

    .line 651
    monitor-enter p1

    .line 653
    :try_start_0
    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 656
    new-instance v1, Lcom/trilead/ssh2/packets/PacketChannelTrileadPing;

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    invoke-direct {v1, v2}, Lcom/trilead/ssh2/packets/PacketChannelTrileadPing;-><init>(I)V

    const/4 v2, 0x0

    .line 658
    iput v2, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    iput v2, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 659
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 661
    iget-object v2, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 663
    :try_start_1
    iget-boolean v3, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-nez v3, :cond_1

    .line 665
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketChannelTrileadPing;->getPayload()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 666
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 670
    :try_start_2
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForChannelRequestResult(Lcom/trilead/ssh2/channel/Channel;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 671
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Your server is alive - but buggy. It replied with SSH_MSG_SESSION_SUCCESS when it actually should not."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 677
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The ping request failed."

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 664
    :cond_1
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p1

    .line 666
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 654
    :cond_2
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 659
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public requestExecCommand(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Cannot execute command on this channel ("

    const-string v1, "Cannot execute command on this channel ("

    .line 812
    monitor-enter p1

    .line 814
    :try_start_0
    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 817
    new-instance v1, Lcom/trilead/ssh2/packets/PacketSessionExecCommand;

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p2}, Lcom/trilead/ssh2/packets/PacketSessionExecCommand;-><init>(IZLjava/lang/String;)V

    const/4 v2, 0x0

    .line 819
    iput v2, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    iput v2, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 820
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 822
    iget-object v2, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 824
    :try_start_1
    iget-boolean v3, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-nez v3, :cond_2

    .line 826
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketSessionExecCommand;->getPayload()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 827
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 829
    sget-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v0}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 830
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->localID:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Executing command (channel "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "\')"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x32

    invoke-virtual {v0, v1, p2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 834
    :cond_0
    :try_start_2
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForChannelRequestResult(Lcom/trilead/ssh2/channel/Channel;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 835
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The server denied the request."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 839
    new-instance p2, Ljava/io/IOException;

    const-string v0, "The execute request failed."

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 825
    :cond_2
    :try_start_3
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 827
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 815
    :cond_3
    :try_start_4
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_1
    move-exception p2

    .line 820
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p2
.end method

.method public requestGlobalForward(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "There is already a forwarding for remote port "

    .line 450
    new-instance v1, Lcom/trilead/ssh2/channel/RemoteForwardingData;

    invoke-direct {v1}, Lcom/trilead/ssh2/channel/RemoteForwardingData;-><init>()V

    .line 452
    iput-object p1, v1, Lcom/trilead/ssh2/channel/RemoteForwardingData;->bindAddress:Ljava/lang/String;

    .line 453
    iput p2, v1, Lcom/trilead/ssh2/channel/RemoteForwardingData;->bindPort:I

    .line 454
    iput-object p3, v1, Lcom/trilead/ssh2/channel/RemoteForwardingData;->targetAddress:Ljava/lang/String;

    .line 455
    iput p4, v1, Lcom/trilead/ssh2/channel/RemoteForwardingData;->targetPort:I

    .line 457
    iget-object p3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    monitor-enter p3

    .line 459
    :try_start_0
    iget-object p4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_2

    .line 464
    iget-object p4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 467
    iget-object p4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/List;

    monitor-enter p4

    const/4 p3, 0x0

    .line 469
    :try_start_1
    iput p3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    iput p3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    .line 470
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 472
    new-instance p3, Lcom/trilead/ssh2/packets/PacketGlobalForwardRequest;

    const/4 p4, 0x1

    invoke-direct {p3, p4, p1, p2}, Lcom/trilead/ssh2/packets/PacketGlobalForwardRequest;-><init>(ZLjava/lang/String;I)V

    .line 473
    iget-object p4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p3}, Lcom/trilead/ssh2/packets/PacketGlobalForwardRequest;->getPayload()[B

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 475
    sget-object p3, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {p3}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 476
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Requesting a remote forwarding (\'"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, "\', "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, ")"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p4, 0x32

    invoke-virtual {p3, p4, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 480
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForGlobalRequestResult()Z

    move-result p1

    if-eqz p1, :cond_1

    return p2

    .line 481
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The server denied the request (did you enable port forwarding?)"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 485
    iget-object p2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    monitor-enter p2

    .line 487
    :try_start_3
    iget-object p3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    iget p4, v1, Lcom/trilead/ssh2/channel/RemoteForwardingData;->bindPort:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 489
    throw p1

    :catchall_0
    move-exception p1

    .line 488
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 470
    :try_start_5
    monitor-exit p4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    .line 461
    :cond_2
    :try_start_6
    new-instance p1, Ljava/io/IOException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2
    move-exception p1

    .line 465
    monitor-exit p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method

.method public requestGlobalTrileadPing()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 622
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 624
    :try_start_0
    iput v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    iput v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    .line 625
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    new-instance v0, Lcom/trilead/ssh2/packets/PacketGlobalTrileadPing;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/PacketGlobalTrileadPing;-><init>()V

    .line 629
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketGlobalTrileadPing;->getPayload()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 631
    sget-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v0}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x32

    .line 632
    const-string v2, "Sending SSH_MSG_GLOBAL_REQUEST \'trilead-ping\'."

    invoke-virtual {v0, v1, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 636
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForGlobalRequestResult()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 637
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Your server is alive - but buggy. It replied with SSH_MSG_REQUEST_SUCCESS when it actually should not."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 643
    new-instance v1, Ljava/io/IOException;

    const-string v2, "The ping request failed."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 625
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public requestPTY(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;IIII[B)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p1

    const-string v0, "Cannot request PTY on this channel ("

    const-string v2, "Cannot request PTY on this channel ("

    .line 686
    monitor-enter p1

    .line 688
    :try_start_0
    iget v3, v1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 691
    new-instance v2, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;

    iget v6, v1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    const/4 v7, 0x1

    move-object v5, v2

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    invoke-direct/range {v5 .. v13}, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;-><init>(IZLjava/lang/String;IIII[B)V

    const/4 v3, 0x0

    .line 694
    iput v3, v1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    iput v3, v1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 695
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 697
    iget-object v3, v1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 699
    :try_start_1
    iget-boolean v4, v1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    move-object v4, p0

    .line 701
    :try_start_2
    iget-object v0, v4, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->getPayload()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 702
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 706
    :try_start_3
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForChannelRequestResult(Lcom/trilead/ssh2/channel/Channel;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 707
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The server denied the request."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .line 711
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PTY request failed"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    move-object v4, p0

    .line 700
    :try_start_4
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    move-object v4, p0

    .line 702
    :goto_0
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0

    :cond_2
    move-object v4, p0

    .line 689
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    move-object v4, p0

    .line 695
    :goto_1
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_1
.end method

.method public requestShell(Lcom/trilead/ssh2/channel/Channel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Cannot start shell on this channel ("

    const-string v1, "Cannot start shell on this channel ("

    .line 847
    monitor-enter p1

    .line 849
    :try_start_0
    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 852
    new-instance v1, Lcom/trilead/ssh2/packets/PacketSessionStartShell;

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/trilead/ssh2/packets/PacketSessionStartShell;-><init>(IZ)V

    const/4 v2, 0x0

    .line 854
    iput v2, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    iput v2, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 855
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 857
    iget-object v2, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 859
    :try_start_1
    iget-boolean v3, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-nez v3, :cond_1

    .line 861
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketSessionStartShell;->getPayload()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 862
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 866
    :try_start_2
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForChannelRequestResult(Lcom/trilead/ssh2/channel/Channel;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 867
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The server denied the request."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 871
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The shell request failed."

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 860
    :cond_1
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p1

    .line 862
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 850
    :cond_2
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 855
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public requestSubSystem(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Cannot request subsystem on this channel ("

    const-string v1, "Cannot request subsystem on this channel ("

    .line 780
    monitor-enter p1

    .line 782
    :try_start_0
    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 785
    new-instance v1, Lcom/trilead/ssh2/packets/PacketSessionSubsystemRequest;

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p2}, Lcom/trilead/ssh2/packets/PacketSessionSubsystemRequest;-><init>(IZLjava/lang/String;)V

    const/4 p2, 0x0

    .line 787
    iput p2, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    iput p2, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 788
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 790
    iget-object p2, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter p2

    .line 792
    :try_start_1
    iget-boolean v2, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-nez v2, :cond_1

    .line 794
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketSessionSubsystemRequest;->getPayload()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 795
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 799
    :try_start_2
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForChannelRequestResult(Lcom/trilead/ssh2/channel/Channel;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 800
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The server denied the request."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 804
    new-instance p2, Ljava/io/IOException;

    const-string v0, "The subsystem request failed."

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 793
    :cond_1
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p1

    .line 795
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 783
    :cond_2
    :try_start_4
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_1
    move-exception p2

    .line 788
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p2
.end method

.method public requestX11(Lcom/trilead/ssh2/channel/Channel;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p1

    const-string v0, "Cannot request X11 on this channel ("

    const-string v2, "Cannot request X11 on this channel ("

    .line 744
    monitor-enter p1

    .line 746
    :try_start_0
    iget v3, v1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 749
    new-instance v2, Lcom/trilead/ssh2/packets/PacketSessionX11Request;

    iget v6, v1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    const/4 v7, 0x1

    move-object v5, v2

    move v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v5 .. v11}, Lcom/trilead/ssh2/packets/PacketSessionX11Request;-><init>(IZZLjava/lang/String;Ljava/lang/String;I)V

    const/4 v3, 0x0

    .line 752
    iput v3, v1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    iput v3, v1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 753
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 755
    iget-object v3, v1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 757
    :try_start_1
    iget-boolean v4, v1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_2

    move-object v4, p0

    .line 759
    :try_start_2
    iget-object v0, v4, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->getPayload()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 760
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 762
    sget-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v0}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 763
    iget v2, v1, Lcom/trilead/ssh2/channel/Channel;->localID:I

    iget v3, v1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Requesting X11 forwarding (Channel "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x32

    invoke-virtual {v0, v3, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 767
    :cond_0
    :try_start_3
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForChannelRequestResult(Lcom/trilead/ssh2/channel/Channel;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 768
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The server denied the request."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .line 772
    new-instance v1, Ljava/io/IOException;

    const-string v2, "The X11 request failed."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    move-object v4, p0

    .line 758
    :try_start_4
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    move-object v4, p0

    .line 760
    :goto_0
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0

    :cond_3
    move-object v4, p0

    .line 747
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    move-object v4, p0

    .line 753
    :goto_1
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_1
.end method

.method public resizePTY(Lcom/trilead/ssh2/channel/Channel;IIII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Cannot request PTY on this channel ("

    const-string v1, "Cannot request PTY on this channel ("

    .line 720
    monitor-enter p1

    .line 721
    :try_start_0
    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 725
    new-instance v1, Lcom/trilead/ssh2/packets/PacketSessionPtyResize;

    iget v5, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    move-object v4, v1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/trilead/ssh2/packets/PacketSessionPtyResize;-><init>(IIIII)V

    const/4 p2, 0x0

    .line 727
    iput p2, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    iput p2, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 728
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 730
    iget-object p2, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter p2

    .line 731
    :try_start_1
    iget-boolean p3, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-nez p3, :cond_0

    .line 734
    iget-object p1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketSessionPtyResize;->getPayload()[B

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 735
    monitor-exit p2

    return-void

    .line 732
    :cond_0
    new-instance p3, Ljava/io/IOException;

    .line 733
    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, ")"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3

    :catchall_0
    move-exception p1

    .line 735
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 722
    :cond_1
    :try_start_2
    new-instance p2, Ljava/io/IOException;

    .line 723
    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ")"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_1
    move-exception p2

    .line 728
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p2
.end method

.method public sendData(Lcom/trilead/ssh2/channel/Channel;[BII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p4, :cond_7

    .line 379
    monitor-enter p1

    .line 383
    :catch_0
    :goto_1
    :try_start_0
    iget v0, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    .line 386
    iget v0, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 389
    iget-wide v3, p1, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_4

    .line 403
    iget-wide v3, p1, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    int-to-long v5, p4

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    move v0, p4

    goto :goto_2

    :cond_0
    iget-wide v3, p1, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    long-to-int v0, v3

    .line 405
    :goto_2
    iget v3, p1, Lcom/trilead/ssh2/channel/Channel;->remoteMaxPacketSize:I

    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v4}, Lcom/trilead/ssh2/transport/TransportManager;->getPacketOverheadEstimate()I

    move-result v4

    const/16 v5, 0x9

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    if-gtz v3, :cond_1

    move v3, v4

    :cond_1
    if-le v0, v3, :cond_2

    move v0, v3

    .line 417
    :cond_2
    iget-wide v6, p1, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    int-to-long v8, v0

    sub-long/2addr v6, v8

    iput-wide v6, p1, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    add-int/lit8 v3, v0, 0x9

    .line 419
    new-array v3, v3, [B

    const/4 v6, 0x0

    const/16 v7, 0x5e

    .line 421
    aput-byte v7, v3, v6

    .line 422
    iget v6, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    .line 423
    iget v4, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 424
    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    const/16 v4, 0x8

    shr-int/2addr v2, v4

    int-to-byte v2, v2

    const/4 v6, 0x3

    aput-byte v2, v3, v6

    .line 425
    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    shr-int/lit8 v1, v0, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x5

    .line 426
    aput-byte v1, v3, v2

    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x6

    .line 427
    aput-byte v1, v3, v2

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x7

    .line 428
    aput-byte v1, v3, v2

    int-to-byte v1, v0

    .line 429
    aput-byte v1, v3, v4

    .line 431
    invoke-static {p2, p3, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 432
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 434
    iget-object v1, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v1

    .line 436
    :try_start_1
    iget-boolean v2, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-nez v2, :cond_3

    .line 439
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v2, v3}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 440
    monitor-exit v1

    add-int/2addr p3, v0

    sub-int/2addr p4, v0

    goto/16 :goto_0

    .line 437
    :cond_3
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SSH channel is closed. ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 440
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 394
    :cond_4
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_1

    .line 387
    :cond_5
    :try_start_3
    new-instance p2, Ljava/io/IOException;

    iget p3, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SSH channel in strange state. ("

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ")"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 384
    :cond_6
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SSH channel is closed. ("

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ")"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_1
    move-exception p2

    .line 432
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p2

    :cond_7
    return-void
.end method

.method public sendEOF(Lcom/trilead/ssh2/channel/Channel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 325
    new-array v0, v0, [B

    .line 327
    monitor-enter p1

    .line 329
    :try_start_0
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 330
    monitor-exit p1

    return-void

    :cond_0
    const/4 v1, 0x0

    const/16 v3, 0x60

    .line 332
    aput-byte v3, v0, v1

    .line 333
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 334
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 335
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 336
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 337
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 339
    iget-object v1, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v1

    .line 341
    :try_start_1
    iget-boolean v2, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-eqz v2, :cond_1

    .line 342
    monitor-exit v1

    return-void

    .line 343
    :cond_1
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v2, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 344
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    sget-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v0}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 347
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->localID:I

    iget p1, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sent EOF (Channel "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x32

    invoke-virtual {v0, v1, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 344
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception v0

    .line 337
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public sendOpenConfirmation(Lcom/trilead/ssh2/channel/Channel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    monitor-enter p1

    .line 356
    :try_start_0
    iget v0, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 357
    monitor-exit p1

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 359
    iput v0, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 361
    new-instance v0, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;

    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->localID:I

    iget v3, p1, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    iget v4, p1, Lcom/trilead/ssh2/channel/Channel;->localMaxPacketSize:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;-><init>(IIII)V

    .line 362
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 364
    iget-object v1, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v1

    .line 366
    :try_start_1
    iget-boolean p1, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-eqz p1, :cond_1

    .line 367
    monitor-exit v1

    return-void

    .line 368
    :cond_1
    iget-object p1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->getPayload()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 369
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception v0

    .line 362
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public unRegisterX11Cookie(Ljava/lang/String;Z)V
    .locals 4

    if-eqz p1, :cond_4

    .line 215
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    monitor-enter v0

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez p2, :cond_0

    return-void

    .line 223
    :cond_0
    sget-object p2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {p2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x32

    .line 224
    const-string v1, "Closing all X11 channels for the given fake cookie"

    invoke-virtual {p2, v0, v1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 228
    :cond_1
    iget-object p2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/List;

    monitor-enter p2

    .line 230
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 231
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p2, 0x0

    .line 233
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_3

    .line 235
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/trilead/ssh2/channel/Channel;

    .line 237
    monitor-enter v1

    .line 239
    :try_start_2
    iget-object v2, v1, Lcom/trilead/ssh2/channel/Channel;->hexX11FakeCookie:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 240
    monitor-exit v1

    goto :goto_1

    .line 241
    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    :try_start_3
    const-string v2, "Closing X11 channel since the corresponding session is closing"

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 241
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :cond_3
    return-void

    :catchall_1
    move-exception p1

    .line 231
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 218
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    .line 213
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "hexFakeCookie may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public waitForCondition(Lcom/trilead/ssh2/channel/Channel;JI)I
    .locals 9

    .line 937
    monitor-enter p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v4, v0

    move v3, v2

    .line 943
    :catch_0
    :goto_0
    :try_start_0
    iget v6, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    iget v7, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    sub-int/2addr v6, v7

    .line 944
    iget v7, p1, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    iget v8, p1, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    sub-int/2addr v7, v8

    const/4 v8, 0x4

    if-lez v6, :cond_0

    move v6, v8

    goto :goto_1

    :cond_0
    move v6, v2

    :goto_1
    if-lez v7, :cond_1

    or-int/lit8 v6, v6, 0x8

    .line 952
    :cond_1
    iget-boolean v7, p1, Lcom/trilead/ssh2/channel/Channel;->EOF:Z

    if-eqz v7, :cond_2

    or-int/lit8 v6, v6, 0x10

    .line 955
    :cond_2
    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getExitStatus()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_3

    or-int/lit8 v6, v6, 0x20

    .line 958
    :cond_3
    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getExitSignal()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    or-int/lit8 v6, v6, 0x40

    .line 961
    :cond_4
    iget v7, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    if-ne v7, v8, :cond_5

    or-int/lit8 p2, v6, 0x12

    .line 962
    monitor-exit p1

    return p2

    :cond_5
    and-int v7, v6, p4

    if-eqz v7, :cond_6

    .line 965
    monitor-exit p1

    return v6

    :cond_6
    cmp-long v7, p2, v0

    if-lez v7, :cond_8

    const/4 v7, 0x1

    if-nez v3, :cond_7

    .line 971
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long v4, v3, p2

    move v3, v7

    goto :goto_2

    .line 976
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long p2, v4, p2

    cmp-long v8, p2, v0

    if-gtz v8, :cond_8

    or-int/lit8 p2, v6, 0x1

    .line 979
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p2

    :cond_8
    :goto_2
    cmp-long v6, p2, v0

    if-lez v6, :cond_9

    .line 986
    :try_start_1
    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 988
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 994
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method
