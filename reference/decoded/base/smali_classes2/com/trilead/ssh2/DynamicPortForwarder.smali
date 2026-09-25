.class public Lcom/trilead/ssh2/DynamicPortForwarder;
.super Ljava/lang/Object;
.source "DynamicPortForwarder.java"


# instance fields
.field cm:Lcom/trilead/ssh2/channel/ChannelManager;

.field dat:Lcom/trilead/ssh2/channel/DynamicAcceptThread;


# direct methods
.method constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/trilead/ssh2/DynamicPortForwarder;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 57
    new-instance v0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    invoke-direct {v0, p1, p2}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;I)V

    iput-object v0, p0, Lcom/trilead/ssh2/DynamicPortForwarder;->dat:Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    const/4 p1, 0x1

    .line 58
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->setDaemon(Z)V

    .line 59
    iget-object p1, p0, Lcom/trilead/ssh2/DynamicPortForwarder;->dat:Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->start()V

    return-void
.end method

.method constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/net/InetSocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/trilead/ssh2/DynamicPortForwarder;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 65
    new-instance v0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    invoke-direct {v0, p1, p2}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/net/InetSocketAddress;)V

    iput-object v0, p0, Lcom/trilead/ssh2/DynamicPortForwarder;->dat:Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    const/4 p1, 0x1

    .line 66
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->setDaemon(Z)V

    .line 67
    iget-object p1, p0, Lcom/trilead/ssh2/DynamicPortForwarder;->dat:Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->start()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/trilead/ssh2/DynamicPortForwarder;->dat:Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->stopWorking()V

    return-void
.end method
