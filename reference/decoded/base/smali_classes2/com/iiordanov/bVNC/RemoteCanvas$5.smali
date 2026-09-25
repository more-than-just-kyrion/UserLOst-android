.class Lcom/iiordanov/bVNC/RemoteCanvas$5;
.super Ljava/lang/Thread;
.source "RemoteCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/RemoteCanvas;->initializeCanvas(Lcom/undatech/opaque/Connection;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lcom/iiordanov/bVNC/input/RemotePointer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/RemoteCanvas;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/RemoteCanvas;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$5;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$5;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-boolean v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->sshTunneled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$5;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getSshHostKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$5;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    .line 399
    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getIdHash()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iiordanov/bVNC/Utils;->isNullOrEmptry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$5;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 404
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$5;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 405
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$5;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getSshHostKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 407
    :try_start_2
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$5;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 409
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 412
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 415
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$5;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-boolean v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->isSpice:Z

    if-eqz v0, :cond_2

    .line 416
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$5;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-static {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->-$$Nest$mstartSpiceConnection(Lcom/iiordanov/bVNC/RemoteCanvas;)V

    goto :goto_2

    .line 417
    :cond_2
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$5;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-boolean v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->isRdp:Z

    if-eqz v0, :cond_3

    .line 418
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$5;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-static {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->-$$Nest$mstartRdpConnection(Lcom/iiordanov/bVNC/RemoteCanvas;)V

    goto :goto_2

    .line 420
    :cond_3
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$5;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-static {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->-$$Nest$mstartVncConnection(Lcom/iiordanov/bVNC/RemoteCanvas;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 423
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$5;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-static {v1, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->-$$Nest$mhandleUncaughtException(Lcom/iiordanov/bVNC/RemoteCanvas;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
