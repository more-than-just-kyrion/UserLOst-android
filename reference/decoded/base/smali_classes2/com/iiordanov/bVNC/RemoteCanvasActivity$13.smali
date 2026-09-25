.class Lcom/iiordanov/bVNC/RemoteCanvasActivity$13;
.super Ljava/lang/Object;
.source "RemoteCanvasActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 814
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$13;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 817
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$13;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->sendShortVibration()V

    .line 818
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$13;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-static {p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->-$$Nest$fgetcanvas(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)Lcom/iiordanov/bVNC/RemoteCanvas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getKeyboard()Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/RemoteKeyboard;->onScreenSuperToggle()Z

    move-result p1

    .line 819
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$13;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keySuperToggled:Z

    if-eqz p1, :cond_0

    .line 821
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$13;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    iget-object p1, p1, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keySuper:Landroid/widget/ImageButton;

    sget v0, Lcom/undatech/remoteClientUi/R$drawable;->superon:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 823
    :cond_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$13;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    iget-object p1, p1, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keySuper:Landroid/widget/ImageButton;

    sget v0, Lcom/undatech/remoteClientUi/R$drawable;->superoff:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    return v1
.end method
