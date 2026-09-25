.class Lcom/iiordanov/bVNC/RemoteCanvasActivity$16;
.super Ljava/lang/Object;
.source "RemoteCanvasActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/RemoteCanvasActivity;->initializeOnScreenKeys()V
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

    .line 856
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$16;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 859
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$16;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-static {p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->-$$Nest$fgetcanvas(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)Lcom/iiordanov/bVNC/RemoteCanvas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getKeyboard()Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/RemoteKeyboard;->onScreenShiftToggle()Z

    move-result p1

    .line 860
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$16;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keyShiftToggled:Z

    if-eqz p1, :cond_0

    .line 862
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$16;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    iget-object p1, p1, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keyShift:Landroid/widget/ImageButton;

    sget v0, Lcom/undatech/remoteClientUi/R$drawable;->shifton:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 864
    :cond_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$16;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    iget-object p1, p1, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keyShift:Landroid/widget/ImageButton;

    sget v0, Lcom/undatech/remoteClientUi/R$drawable;->shiftoff:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    return-void
.end method
