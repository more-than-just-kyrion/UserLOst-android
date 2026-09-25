.class Lcom/iiordanov/bVNC/RemoteCanvasActivity$7;
.super Ljava/lang/Thread;
.source "RemoteCanvasActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/RemoteCanvasActivity;->retrieveVvFileFromIntent(Landroid/content/Intent;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

.field final synthetic val$data:Landroid/net/Uri;

.field final synthetic val$dataString:Ljava/lang/String;

.field final synthetic val$tempVvFile:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    iput-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$7;->val$data:Landroid/net/Uri;

    iput-object p3, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$7;->val$tempVvFile:Ljava/lang/String;

    iput-object p4, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$7;->val$dataString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 624
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$7;->val$data:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 625
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$7;->val$tempVvFile:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 627
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 628
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$7;->val$tempVvFile:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/undatech/opaque/util/FileUtils;->outputToFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 630
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    :try_start_1
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 632
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 635
    :catch_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$7;->val$dataString:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f

    .line 639
    :goto_0
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$7;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method
