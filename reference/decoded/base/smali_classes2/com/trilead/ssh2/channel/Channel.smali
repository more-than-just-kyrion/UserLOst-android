.class public Lcom/trilead/ssh2/channel/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


# static fields
.field static final CHANNEL_BUFFER_SIZE:I = 0x7530

.field static final STATE_CLOSED:I = 0x4

.field static final STATE_OPEN:I = 0x2

.field static final STATE_OPENING:I = 0x1


# instance fields
.field EOF:Z

.field final channelSendLock:Ljava/lang/Object;

.field closeMessageRecv:Z

.field closeMessageSent:Z

.field final cm:Lcom/trilead/ssh2/channel/ChannelManager;

.field exit_signal:Ljava/lang/String;

.field exit_status:Ljava/lang/Integer;

.field failedCounter:I

.field hexX11FakeCookie:Ljava/lang/String;

.field localID:I

.field localMaxPacketSize:I

.field localWindow:I

.field final msgWindowAdjust:[B

.field private reasonClosed:Ljava/lang/String;

.field private final reasonClosedLock:Ljava/lang/Object;

.field remoteID:I

.field remoteMaxPacketSize:I

.field remoteWindow:J

.field state:I

.field final stderrBuffer:[B

.field stderrReadpos:I

.field final stderrStream:Lcom/trilead/ssh2/channel/ChannelInputStream;

.field stderrWritepos:I

.field final stdinStream:Lcom/trilead/ssh2/channel/ChannelOutputStream;

.field final stdoutBuffer:[B

.field stdoutReadpos:I

.field final stdoutStream:Lcom/trilead/ssh2/channel/ChannelInputStream;

.field stdoutWritepos:I

.field successCounter:I


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;)V
    .locals 5

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 66
    iput v0, p0, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 91
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 92
    iput-boolean v1, p0, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    const/16 v2, 0x9

    .line 99
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/trilead/ssh2/channel/Channel;->msgWindowAdjust:[B

    const/4 v2, 0x1

    .line 104
    iput v2, p0, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 106
    iput-boolean v1, p0, Lcom/trilead/ssh2/channel/Channel;->closeMessageRecv:Z

    .line 111
    iput v1, p0, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 112
    iput v1, p0, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    .line 114
    iput v1, p0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    const-wide/16 v3, 0x0

    .line 115
    iput-wide v3, p0, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 117
    iput v0, p0, Lcom/trilead/ssh2/channel/Channel;->localMaxPacketSize:I

    .line 118
    iput v0, p0, Lcom/trilead/ssh2/channel/Channel;->remoteMaxPacketSize:I

    const/16 v0, 0x7530

    .line 120
    new-array v3, v0, [B

    iput-object v3, p0, Lcom/trilead/ssh2/channel/Channel;->stdoutBuffer:[B

    .line 121
    new-array v3, v0, [B

    iput-object v3, p0, Lcom/trilead/ssh2/channel/Channel;->stderrBuffer:[B

    .line 123
    iput v1, p0, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    .line 124
    iput v1, p0, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    .line 125
    iput v1, p0, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    .line 126
    iput v1, p0, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    .line 128
    iput-boolean v1, p0, Lcom/trilead/ssh2/channel/Channel;->EOF:Z

    .line 143
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/trilead/ssh2/channel/Channel;->reasonClosedLock:Ljava/lang/Object;

    const/4 v3, 0x0

    .line 144
    iput-object v3, p0, Lcom/trilead/ssh2/channel/Channel;->reasonClosed:Ljava/lang/String;

    .line 148
    iput-object p1, p0, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 150
    iput v0, p0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    const p1, 0x84b8

    .line 151
    iput p1, p0, Lcom/trilead/ssh2/channel/Channel;->localMaxPacketSize:I

    .line 153
    new-instance p1, Lcom/trilead/ssh2/channel/ChannelOutputStream;

    invoke-direct {p1, p0}, Lcom/trilead/ssh2/channel/ChannelOutputStream;-><init>(Lcom/trilead/ssh2/channel/Channel;)V

    iput-object p1, p0, Lcom/trilead/ssh2/channel/Channel;->stdinStream:Lcom/trilead/ssh2/channel/ChannelOutputStream;

    .line 154
    new-instance p1, Lcom/trilead/ssh2/channel/ChannelInputStream;

    invoke-direct {p1, p0, v1}, Lcom/trilead/ssh2/channel/ChannelInputStream;-><init>(Lcom/trilead/ssh2/channel/Channel;Z)V

    iput-object p1, p0, Lcom/trilead/ssh2/channel/Channel;->stdoutStream:Lcom/trilead/ssh2/channel/ChannelInputStream;

    .line 155
    new-instance p1, Lcom/trilead/ssh2/channel/ChannelInputStream;

    invoke-direct {p1, p0, v2}, Lcom/trilead/ssh2/channel/ChannelInputStream;-><init>(Lcom/trilead/ssh2/channel/Channel;Z)V

    iput-object p1, p0, Lcom/trilead/ssh2/channel/Channel;->stderrStream:Lcom/trilead/ssh2/channel/ChannelInputStream;

    return-void
.end method


# virtual methods
.method public getExitSignal()Ljava/lang/String;
    .locals 1

    .line 177
    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->exit_signal:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 180
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getExitStatus()Ljava/lang/Integer;
    .locals 1

    .line 185
    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->exit_status:Ljava/lang/Integer;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 188
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getReasonClosed()Ljava/lang/String;
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->reasonClosedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/channel/Channel;->reasonClosed:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 196
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStderrStream()Lcom/trilead/ssh2/channel/ChannelInputStream;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->stderrStream:Lcom/trilead/ssh2/channel/ChannelInputStream;

    return-object v0
.end method

.method public getStdinStream()Lcom/trilead/ssh2/channel/ChannelOutputStream;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->stdinStream:Lcom/trilead/ssh2/channel/ChannelOutputStream;

    return-object v0
.end method

.method public getStdoutStream()Lcom/trilead/ssh2/channel/ChannelInputStream;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->stdoutStream:Lcom/trilead/ssh2/channel/ChannelInputStream;

    return-object v0
.end method

.method public setReasonClosed(Ljava/lang/String;)V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->reasonClosedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/channel/Channel;->reasonClosed:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 204
    iput-object p1, p0, Lcom/trilead/ssh2/channel/Channel;->reasonClosed:Ljava/lang/String;

    .line 205
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
