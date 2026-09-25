.class Lcom/iiordanov/bVNC/RemoteCanvas$9;
.super Ljava/lang/Thread;
.source "RemoteCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/RemoteCanvas;->startFromVvFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

.field final synthetic val$vvFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/RemoteCanvas;Ljava/lang/String;)V
    .locals 0

    .line 825
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$9;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iput-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$9;->val$vvFileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 829
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$9;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$9;->val$vvFileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$9;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v2, v2, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v2}, Lcom/undatech/opaque/Connection;->isAudioPlaybackEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/undatech/opaque/SpiceCommunicator;->startSessionFromVvFile(Ljava/lang/String;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 831
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$9;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-static {v1, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->-$$Nest$mhandleUncaughtException(Lcom/iiordanov/bVNC/RemoteCanvas;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
