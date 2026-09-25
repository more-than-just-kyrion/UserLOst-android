.class Lcom/iiordanov/bVNC/RemoteCanvasActivity$24;
.super Ljava/util/TimerTask;
.source "RemoteCanvasActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/RemoteCanvasActivity;->showPanningState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

.field final synthetic val$t:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;Landroid/widget/Toast;)V
    .locals 0

    .line 1532
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$24;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    iput-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$24;->val$t:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1535
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$24;->val$t:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-wide/16 v0, 0x7d0

    .line 1536
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1537
    :catch_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$24;->val$t:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
