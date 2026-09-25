.class Lcom/iiordanov/bVNC/RemoteCanvas$7;
.super Ljava/lang/Thread;
.source "RemoteCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/RemoteCanvas;->startOvirt()V
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

    .line 671
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 676
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getPassword()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    const-string v0, "RemoteCanvas"

    const-string v1, "Displaying a dialog to obtain user\'s password."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 679
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 680
    :try_start_1
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 681
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 685
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->isUsingCustomOvirtCa()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getOvirtCaFile()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 688
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "ssl/certs/ca-certificates.crt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 692
    :goto_1
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getVmname()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 693
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v2, v2, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v2}, Lcom/undatech/opaque/Connection;->getHostname()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v3, v3, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v3}, Lcom/undatech/opaque/Connection;->getUserName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v4, v4, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    .line 694
    invoke-interface {v4}, Lcom/undatech/opaque/Connection;->getPassword()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v5, v5, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    .line 695
    invoke-interface {v5}, Lcom/undatech/opaque/Connection;->isSslStrict()Z

    move-result v6

    move-object v5, v0

    .line 693
    invoke-virtual/range {v1 .. v6}, Lcom/undatech/opaque/SpiceCommunicator;->fetchOvirtVmNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    .line 697
    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v2, v2, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    invoke-virtual {v2}, Lcom/undatech/opaque/SpiceCommunicator;->getVmNames()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v1, :cond_5

    .line 698
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_4

    .line 702
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 703
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/undatech/opaque/Connection;->setVmname(Ljava/lang/String;)V

    .line 704
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/undatech/opaque/Connection;->save(Landroid/content/Context;)V

    goto :goto_5

    .line 706
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getVmname()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 707
    const-string v1, "RemoteCanvas"

    const-string v3, "Displaying a dialog with VMs to the user."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 710
    iget-object v4, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v4, v4, Lcom/iiordanov/bVNC/RemoteCanvas;->vmNameToId:Ljava/util/Map;

    invoke-interface {v4, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 712
    :cond_4
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    const-string v3, "vms"

    const/16 v4, 0x2c

    invoke-static {v4, v3, v2}, Lcom/undatech/opaque/OpaqueHandler;->getMessageStringList(ILjava/lang/String;Ljava/util/ArrayList;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 714
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 715
    :try_start_3
    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v3, v3, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 716
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_5
    :goto_4
    return-void

    .line 721
    :cond_6
    :goto_5
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v2, v2, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/undatech/opaque/SpiceCommunicator;->setHandler(Landroid/os/Handler;)V

    .line 722
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v2, v2, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v2}, Lcom/undatech/opaque/Connection;->getHostname()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v3, v3, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    .line 723
    invoke-interface {v3}, Lcom/undatech/opaque/Connection;->getVmname()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v4, v4, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    .line 724
    invoke-interface {v4}, Lcom/undatech/opaque/Connection;->getUserName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v5, v5, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    .line 725
    invoke-interface {v5}, Lcom/undatech/opaque/Connection;->getPassword()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v6, v6, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    .line 727
    invoke-interface {v6}, Lcom/undatech/opaque/Connection;->isAudioPlaybackEnabled()Z

    move-result v7

    iget-object v6, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v6, v6, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v6}, Lcom/undatech/opaque/Connection;->isSslStrict()Z

    move-result v8

    move-object v6, v0

    .line 722
    invoke-virtual/range {v1 .. v8}, Lcom/undatech/opaque/SpiceCommunicator;->connectOvirt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 730
    :try_start_5
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    monitor-enter v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 731
    :try_start_6
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    const-wide/32 v2, 0x88b8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 732
    monitor-exit v0

    goto :goto_6

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 735
    :catch_0
    :goto_6
    :try_start_8
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-boolean v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->spiceUpdateReceived:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-boolean v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->maintainConnection:Z

    if-eqz v0, :cond_7

    .line 736
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    .line 740
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-static {v1, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->-$$Nest$mhandleUncaughtException(Lcom/iiordanov/bVNC/RemoteCanvas;Ljava/lang/Throwable;)V

    :cond_7
    :goto_7
    return-void
.end method
