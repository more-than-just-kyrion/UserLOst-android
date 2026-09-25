.class Lcom/iiordanov/bVNC/RemoteCanvas$10;
.super Ljava/lang/Thread;
.source "RemoteCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/RemoteCanvas;->startPve()V
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

    .line 845
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 850
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getPassword()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    const-string v0, "RemoteCanvas"

    const-string v1, "Displaying a dialog to obtain user\'s password."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 853
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    monitor-enter v0
    :try_end_0
    .catch Ljavax/security/auth/login/LoginException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 854
    :try_start_1
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 855
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 858
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 859
    const-string v1, "pam"

    .line 862
    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v2, v2, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v2}, Lcom/undatech/opaque/Connection;->getUserName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    add-int/lit8 v1, v2, 0x1

    .line 864
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 865
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 869
    :cond_1
    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v2, v2, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v2}, Lcom/undatech/opaque/Connection;->getHostname()Ljava/lang/String;

    move-result-object v2

    .line 870
    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 871
    const-string v3, "%s%s"

    const-string v5, "https://"

    filled-new-array {v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 873
    :cond_2
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 874
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 875
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 876
    invoke-virtual {v2}, Landroid/net/Uri;->getPort()I

    move-result v2

    if-gez v2, :cond_3

    const/16 v2, 0x1f46

    .line 880
    :cond_3
    const-string v5, "%s://%s:%d"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v3, v6, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 882
    new-instance v7, Lcom/undatech/opaque/proxmox/ProxmoxClient;

    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v3, v3, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    iget-object v5, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v5, v5, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    invoke-direct {v7, v2, v3, v5}, Lcom/undatech/opaque/proxmox/ProxmoxClient;-><init>(Ljava/lang/String;Lcom/undatech/opaque/Connection;Landroid/os/Handler;)V

    .line 883
    invoke-virtual {v7}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->getAvailableRealms()Ljava/util/HashMap;

    move-result-object v2

    .line 886
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/undatech/opaque/proxmox/pojo/PveRealm;

    invoke-virtual {v2}, Lcom/undatech/opaque/proxmox/pojo/PveRealm;->getTfa()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 887
    const-string v2, "RemoteCanvas"

    const-string v3, "Displaying a dialog to obtain OTP/TFA."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v2, v2, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 889
    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v2, v2, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    monitor-enter v2
    :try_end_2
    .catch Ljavax/security/auth/login/LoginException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 890
    :try_start_3
    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v3, v3, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 891
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 895
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v2, v2, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v2}, Lcom/undatech/opaque/Connection;->getPassword()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v3, v3, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v3}, Lcom/undatech/opaque/Connection;->getOtpCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    invoke-virtual {v7}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->getResources()Ljava/util/Map;

    move-result-object v0

    .line 900
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 901
    const-string v0, "RemoteCanvas"

    const-string v1, "No available VMs found for user in PVE cluster"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_no_vm_found_for_user:I

    sget v2, Lcom/undatech/remoteClientUi/R$string;->error_dialog_title:I

    invoke-virtual {v0, v1, v2}, Lcom/iiordanov/bVNC/RemoteCanvas;->disconnectAndShowMessage(II)V

    return-void

    .line 906
    :cond_5
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getVmname()Ljava/lang/String;

    move-result-object v1

    .line 907
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 908
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getVmname()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".*/"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 909
    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v2, v2, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v2, v1}, Lcom/undatech/opaque/Connection;->setVmname(Ljava/lang/String;)V

    .line 910
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/undatech/opaque/Connection;->save(Landroid/content/Context;)V

    .line 917
    :cond_6
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 918
    const-string v1, "RemoteCanvas"

    const-string v2, "A single VM was found, so picking it."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v4

    check-cast v1, Ljava/lang/String;

    .line 920
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/undatech/opaque/proxmox/pojo/PveResource;

    .line 921
    invoke-virtual {v0}, Lcom/undatech/opaque/proxmox/pojo/PveResource;->getNode()Ljava/lang/String;

    move-result-object v1

    .line 922
    invoke-virtual {v0}, Lcom/undatech/opaque/proxmox/pojo/PveResource;->getType()Ljava/lang/String;

    move-result-object v2

    .line 923
    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v3, v3, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-virtual {v0}, Lcom/undatech/opaque/proxmox/pojo/PveResource;->getVmid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/undatech/opaque/Connection;->setVmname(Ljava/lang/String;)V

    .line 924
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v3}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/undatech/opaque/Connection;->save(Landroid/content/Context;)V

    move-object v9, v1

    move-object v10, v2

    goto/16 :goto_4

    .line 926
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getVmname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 927
    const-string v1, "RemoteCanvas"

    const-string v2, "PVE: Displaying a dialog with VMs to the user."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 930
    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v3, v3, Lcom/iiordanov/bVNC/RemoteCanvas;->vmNameToId:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/undatech/opaque/proxmox/pojo/PveResource;

    invoke-virtual {v5}, Lcom/undatech/opaque/proxmox/pojo/PveResource;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 933
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v2, v2, Lcom/iiordanov/bVNC/RemoteCanvas;->vmNameToId:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 934
    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v2, v2, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    const-string v3, "vms"

    const/16 v4, 0x2c

    invoke-static {v4, v3, v1}, Lcom/undatech/opaque/OpaqueHandler;->getMessageStringList(ILjava/lang/String;Ljava/util/ArrayList;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 936
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    monitor-enter v1
    :try_end_4
    .catch Ljavax/security/auth/login/LoginException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 937
    :try_start_5
    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v2, v2, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 938
    monitor-exit v1

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0

    .line 942
    :cond_9
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getVmname()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 943
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getVmname()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/undatech/opaque/proxmox/pojo/PveResource;

    invoke-virtual {v1}, Lcom/undatech/opaque/proxmox/pojo/PveResource;->getNode()Ljava/lang/String;

    move-result-object v1

    .line 944
    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v2, v2, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v2}, Lcom/undatech/opaque/Connection;->getVmname()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/undatech/opaque/proxmox/pojo/PveResource;

    invoke-virtual {v0}, Lcom/undatech/opaque/proxmox/pojo/PveResource;->getType()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    move-object v9, v1

    .line 952
    :goto_4
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getVmname()Ljava/lang/String;

    move-result-object v8

    .line 954
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 955
    iget-object v5, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual/range {v5 .. v10}, Lcom/iiordanov/bVNC/RemoteCanvas;->retrieveVvFileFromPve(Ljava/lang/String;Lcom/undatech/opaque/proxmox/ProxmoxClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 957
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v1, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->startFromVvFile(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 946
    :cond_a
    const-string v0, "RemoteCanvas"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No VM with the following ID was found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v2, v2, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v2}, Lcom/undatech/opaque/Connection;->getVmname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_no_such_vm_found_for_user:I

    sget v2, Lcom/undatech/remoteClientUi/R$string;->error_dialog_title:I

    invoke-virtual {v0, v1, v2}, Lcom/iiordanov/bVNC/RemoteCanvas;->disconnectAndShowMessage(II)V
    :try_end_6
    .catch Ljavax/security/auth/login/LoginException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    return-void

    :catchall_3
    move-exception v0

    .line 976
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-static {v1, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->-$$Nest$mhandleUncaughtException(Lcom/iiordanov/bVNC/RemoteCanvas;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :catch_0
    move-exception v0

    .line 972
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

    .line 973
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    const-string v2, "error"

    .line 974
    invoke-virtual {v0}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x25

    .line 973
    invoke-static {v3, v2, v0}, Lcom/undatech/opaque/OpaqueHandler;->getMessageString(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    :catch_1
    move-exception v0

    .line 967
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

    .line 968
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    const-string v2, "error"

    .line 969
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x26

    .line 968
    invoke-static {v4, v2, v3}, Lcom/undatech/opaque/OpaqueHandler;->getMessageString(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 970
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 964
    :catch_2
    const-string v0, "RemoteCanvas"

    const-string v1, "Failed to parse json from PVE."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 961
    :catch_3
    const-string v0, "RemoteCanvas"

    const-string v1, "Failed to login to PVE."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$10;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_b
    :goto_5
    return-void
.end method
