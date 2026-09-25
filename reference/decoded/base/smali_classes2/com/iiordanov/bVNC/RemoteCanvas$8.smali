.class Lcom/iiordanov/bVNC/RemoteCanvas$8;
.super Ljava/lang/Thread;
.source "RemoteCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/RemoteCanvas;->retrieveVvFileFromPve(Ljava/lang/String;Lcom/undatech/opaque/proxmox/ProxmoxClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

.field final synthetic val$api:Lcom/undatech/opaque/proxmox/ProxmoxClient;

.field final synthetic val$hostname:Ljava/lang/String;

.field final synthetic val$node:Ljava/lang/String;

.field final synthetic val$tempVvFile:Ljava/lang/String;

.field final synthetic val$virt:Ljava/lang/String;

.field final synthetic val$vmId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/RemoteCanvas;Lcom/undatech/opaque/proxmox/ProxmoxClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 758
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iput-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->val$api:Lcom/undatech/opaque/proxmox/ProxmoxClient;

    iput-object p3, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->val$node:Ljava/lang/String;

    iput-object p4, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->val$virt:Ljava/lang/String;

    iput-object p5, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->val$vmId:Ljava/lang/String;

    iput-object p6, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->val$tempVvFile:Ljava/lang/String;

    iput-object p7, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->val$hostname:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 762
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->val$api:Lcom/undatech/opaque/proxmox/ProxmoxClient;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->val$node:Ljava/lang/String;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->val$virt:Ljava/lang/String;

    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->val$vmId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->getCurrentStatus(Ljava/lang/String;Ljava/lang/String;I)Lcom/undatech/opaque/proxmox/pojo/VmStatus;

    move-result-object v0

    .line 763
    invoke-virtual {v0}, Lcom/undatech/opaque/proxmox/pojo/VmStatus;->getStatus()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/undatech/opaque/proxmox/pojo/VmStatus;->STOPPED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 764
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->val$api:Lcom/undatech/opaque/proxmox/ProxmoxClient;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->val$node:Ljava/lang/String;

    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->val$virt:Ljava/lang/String;

    iget-object v4, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->val$vmId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->startVm(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 765
    :goto_0
    invoke-virtual {v0}, Lcom/undatech/opaque/proxmox/pojo/VmStatus;->getStatus()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/undatech/opaque/proxmox/pojo/VmStatus;->RUNNING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->val$api:Lcom/undatech/opaque/proxmox/ProxmoxClient;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->val$node:Ljava/lang/String;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->val$virt:Ljava/lang/String;

    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->val$vmId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->getCurrentStatus(Ljava/lang/String;Ljava/lang/String;I)Lcom/undatech/opaque/proxmox/pojo/VmStatus;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 767
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->val$api:Lcom/undatech/opaque/proxmox/ProxmoxClient;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->val$node:Ljava/lang/String;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->val$virt:Ljava/lang/String;

    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->val$vmId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->spiceVm(Ljava/lang/String;Ljava/lang/String;I)Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 772
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->val$tempVvFile:Ljava/lang/String;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->val$hostname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->outputToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 774
    :cond_1
    const-string v0, "RemoteCanvas"

    const-string v1, "PVE returned null data for display."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljavax/security/auth/login/LoginException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 792
    const-string v1, "RemoteCanvas"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PVE API returned error code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    const-string v2, "error"

    .line 794
    invoke-virtual {v0}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x25

    .line 793
    invoke-static {v3, v2, v0}, Lcom/undatech/opaque/OpaqueHandler;->getMessageString(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :catch_1
    move-exception v0

    .line 787
    const-string v1, "RemoteCanvas"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IO Error communicating with PVE API: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    const-string v2, "error"

    .line 789
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x26

    .line 788
    invoke-static {v4, v2, v3}, Lcom/undatech/opaque/OpaqueHandler;->getMessageString(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 790
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 784
    :catch_2
    const-string v0, "RemoteCanvas"

    const-string v1, "Error converting PVE ID to integer."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 781
    :catch_3
    const-string v0, "RemoteCanvas"

    const-string v1, "Failed to parse json from PVE."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 778
    :catch_4
    const-string v0, "RemoteCanvas"

    const-string v1, "Failed to login to PVE."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 797
    :goto_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->val$tempVvFile:Ljava/lang/String;

    monitor-enter v0

    .line 798
    :try_start_1
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$8;->val$tempVvFile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 799
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
