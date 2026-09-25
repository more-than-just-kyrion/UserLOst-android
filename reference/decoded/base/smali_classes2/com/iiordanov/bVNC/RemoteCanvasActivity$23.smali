.class Lcom/iiordanov/bVNC/RemoteCanvasActivity$23;
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

    .line 1135
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$23;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1137
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$23;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-static {v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->-$$Nest$mcorrectAfterRotation(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
