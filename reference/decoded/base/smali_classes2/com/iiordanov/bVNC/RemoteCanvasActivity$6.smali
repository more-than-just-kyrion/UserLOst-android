.class Lcom/iiordanov/bVNC/RemoteCanvasActivity$6;
.super Ljava/lang/Object;
.source "RemoteCanvasActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/RemoteCanvasActivity;->continueConnecting()V
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

    .line 450
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$6;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$6;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    iget-object v1, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->rootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->relayoutViews(Landroid/view/View;)V

    return-void
.end method
