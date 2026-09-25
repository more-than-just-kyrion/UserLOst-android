.class Lcom/iiordanov/bVNC/RemoteCanvasActivity$4;
.super Ljava/lang/Object;
.source "RemoteCanvasActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/RemoteCanvasActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 281
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$4;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$4;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->setModes()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
