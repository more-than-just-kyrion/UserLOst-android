.class public Lcom/trilead/ssh2/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field cm:Lcom/trilead/ssh2/channel/ChannelManager;

.field cn:Lcom/trilead/ssh2/channel/Channel;

.field flag_closed:Z

.field flag_execution_started:Z

.field flag_pty_requested:Z

.field flag_x11_requested:Z

.field final rnd:Ljava/security/SecureRandom;

.field x11FakeCookie:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_pty_requested:Z

    .line 29
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_x11_requested:Z

    .line 30
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    .line 31
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/trilead/ssh2/Session;->x11FakeCookie:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 40
    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/ChannelManager;->openSessionChannel()Lcom/trilead/ssh2/channel/Channel;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    .line 41
    iput-object p2, p0, Lcom/trilead/ssh2/Session;->rnd:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 510
    monitor-enter p0

    .line 512
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-eqz v0, :cond_0

    .line 513
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 515
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    .line 517
    iget-object v1, p0, Lcom/trilead/ssh2/Session;->x11FakeCookie:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 518
    iget-object v2, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-virtual {v2, v1, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->unRegisterX11Cookie(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v2, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    const-string v3, "Closed due to user request"

    invoke-virtual {v1, v2, v3, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    :catch_0
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public execCommand(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 267
    monitor-enter p0

    .line 270
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-nez v0, :cond_1

    .line 273
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 276
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    .line 277
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, v1, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->requestExecCommand(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;)V

    return-void

    .line 274
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "A remote execution has already started."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 271
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "This session is closed."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 277
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 265
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cmd argument may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getExitSignal()Ljava/lang/String;
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getExitSignal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExitStatus()Ljava/lang/Integer;
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getExitStatus()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getStderr()Ljava/io/InputStream;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getStderrStream()Lcom/trilead/ssh2/channel/ChannelInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getStdin()Ljava/io/OutputStream;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getStdinStream()Lcom/trilead/ssh2/channel/ChannelOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getStdout()Ljava/io/InputStream;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getStdoutStream()Lcom/trilead/ssh2/channel/ChannelInputStream;

    move-result-object v0

    return-object v0
.end method

.method public ping()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    monitor-enter p0

    .line 350
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-nez v0, :cond_0

    .line 352
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->requestChannelTrileadPing(Lcom/trilead/ssh2/channel/Channel;)V

    return-void

    .line 351
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This session is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 352
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized requestAuthAgentForwarding(Lcom/trilead/ssh2/AuthAgentCallback;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 365
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 371
    :try_start_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-nez v0, :cond_0

    .line 373
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    :try_start_2
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, v1, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->requestChannelAgentForwarding(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/AuthAgentCallback;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return p1

    .line 372
    :cond_0
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "This session is closed."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 373
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public requestDumbPTY()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 52
    const-string v1, "dumb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/trilead/ssh2/Session;->requestPTY(Ljava/lang/String;IIII[B)V

    return-void
.end method

.method public requestPTY(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 63
    invoke-virtual/range {v0 .. v6}, Lcom/trilead/ssh2/Session;->requestPTY(Ljava/lang/String;IIII[B)V

    return-void
.end method

.method public requestPTY(Ljava/lang/String;IIII[B)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p6

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 105
    array-length v3, v0

    if-lez v3, :cond_1

    .line 107
    array-length v3, v0

    sub-int/2addr v3, v2

    aget-byte v3, v0, v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Illegal terminal modes description, does not end in zero byte"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    new-array v0, v2, [B

    const/4 v3, 0x0

    aput-byte v3, v0, v3

    :goto_0
    move-object v9, v0

    .line 113
    monitor-enter p0

    .line 116
    :try_start_0
    iget-boolean v0, v1, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-nez v0, :cond_4

    .line 119
    iget-boolean v0, v1, Lcom/trilead/ssh2/Session;->flag_pty_requested:Z

    if-nez v0, :cond_3

    .line 122
    iget-boolean v0, v1, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    if-nez v0, :cond_2

    .line 126
    iput-boolean v2, v1, Lcom/trilead/ssh2/Session;->flag_pty_requested:Z

    .line 127
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v2, v1, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v3, v1, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/trilead/ssh2/channel/ChannelManager;->requestPTY(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;IIII[B)V

    return-void

    .line 123
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Cannot request PTY at this stage anymore, a remote execution has already started."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "A PTY was already requested."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "This session is closed."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 127
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 103
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "TERM cannot be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestX11Forwarding(Ljava/lang/String;I[BZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 185
    monitor-enter p0

    .line 188
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-nez v0, :cond_6

    .line 191
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_x11_requested:Z

    if-nez v0, :cond_5

    .line 194
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_x11_requested:Z

    .line 199
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 203
    new-instance v0, Lcom/trilead/ssh2/channel/X11ServerData;

    invoke-direct {v0}, Lcom/trilead/ssh2/channel/X11ServerData;-><init>()V

    .line 205
    iput-object p1, v0, Lcom/trilead/ssh2/channel/X11ServerData;->hostname:Ljava/lang/String;

    .line 206
    iput p2, v0, Lcom/trilead/ssh2/channel/X11ServerData;->port:I

    .line 207
    iput-object p3, v0, Lcom/trilead/ssh2/channel/X11ServerData;->x11_magic_cookie:[B

    const/16 p1, 0x10

    .line 211
    new-array p2, p1, [B

    .line 218
    :cond_0
    iget-object p3, p0, Lcom/trilead/ssh2/Session;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {p3, p2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 222
    new-instance p3, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {p3, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 225
    aget-byte v2, p2, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    :cond_2
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    .line 232
    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-virtual {v1, p3}, Lcom/trilead/ssh2/channel/ChannelManager;->checkX11Cookie(Ljava/lang/String;)Lcom/trilead/ssh2/channel/X11ServerData;

    move-result-object v1

    if-nez v1, :cond_0

    .line 238
    iget-object v2, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v3, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    const-string v5, "MIT-MAGIC-COOKIE-1"

    const/4 v7, 0x0

    move v4, p4

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/trilead/ssh2/channel/ChannelManager;->requestX11(Lcom/trilead/ssh2/channel/Channel;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 243
    monitor-enter p0

    .line 245
    :try_start_1
    iget-boolean p1, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-nez p1, :cond_3

    .line 247
    iput-object p3, p0, Lcom/trilead/ssh2/Session;->x11FakeCookie:Ljava/lang/String;

    .line 248
    iget-object p1, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-virtual {p1, p3, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->registerX11Cookie(Ljava/lang/String;Lcom/trilead/ssh2/channel/X11ServerData;)V

    .line 250
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 195
    :cond_4
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot request X11 forwarding at this stage anymore, a remote execution has already started."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 192
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "X11 forwarding was already requested."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 189
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "This session is closed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 199
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 183
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "hostname argument may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resizePTY(IIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    monitor-enter p0

    .line 156
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-nez v0, :cond_0

    .line 158
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v2, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/trilead/ssh2/channel/ChannelManager;->resizePTY(Lcom/trilead/ssh2/channel/Channel;IIII)V

    return-void

    .line 157
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "This session is closed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 158
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public startShell()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    monitor-enter p0

    .line 292
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-nez v0, :cond_1

    .line 295
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 298
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    .line 299
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->requestShell(Lcom/trilead/ssh2/channel/Channel;)V

    return-void

    .line 296
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "A remote execution has already started."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This session is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 299
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startSubSystem(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 316
    monitor-enter p0

    .line 319
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-nez v0, :cond_1

    .line 322
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 325
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    .line 326
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, v1, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->requestSubSystem(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;)V

    return-void

    .line 323
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "A remote execution has already started."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 320
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "This session is closed."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 326
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 314
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "name argument may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public waitForCondition(IJ)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForCondition(Lcom/trilead/ssh2/channel/Channel;JI)I

    move-result p1

    return p1

    .line 465
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "timeout must be non-negative!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public waitUntilDataAvailable(J)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    .line 421
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForCondition(Lcom/trilead/ssh2/channel/Channel;JI)I

    move-result p1

    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    and-int/lit8 p2, p1, 0xc

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    return p1

    .line 435
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected condition result ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 419
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "timeout must not be negative!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
