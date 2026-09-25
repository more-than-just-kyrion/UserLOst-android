.class Lcom/iiordanov/bVNC/RemoteCanvasActivity$2;
.super Ljava/lang/Object;
.source "RemoteCanvasActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iiordanov/bVNC/RemoteCanvasActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$2;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 209
    :try_start_0
    sget v0, Lcom/iiordanov/bVNC/Constants;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$2;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-static {v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->-$$Nest$fgetcanvas(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)Lcom/iiordanov/bVNC/RemoteCanvas;

    move-result-object v0

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
