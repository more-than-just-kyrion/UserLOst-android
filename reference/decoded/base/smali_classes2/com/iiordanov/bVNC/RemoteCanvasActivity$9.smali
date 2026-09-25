.class Lcom/iiordanov/bVNC/RemoteCanvasActivity$9;
.super Ljava/lang/Object;
.source "RemoteCanvasActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 754
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$9;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 757
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$9;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-static {p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->-$$Nest$fgetcanvas(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)Lcom/iiordanov/bVNC/RemoteCanvas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getKeyboard()Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    move-result-object p1

    .line 759
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 760
    invoke-static {}, Lcom/iiordanov/android/bc/BCFactory;->getInstance()Lcom/iiordanov/android/bc/BCFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iiordanov/android/bc/BCFactory;->getBCHaptic()Lcom/iiordanov/android/bc/IBCHaptic;

    move-result-object v0

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$9;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-static {v2}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->-$$Nest$fgetcanvas(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)Lcom/iiordanov/bVNC/RemoteCanvas;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/iiordanov/android/bc/IBCHaptic;->performLongPressHaptic(Landroid/view/View;)Z

    .line 761
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$9;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keyEsc:Landroid/widget/ImageButton;

    sget v2, Lcom/undatech/remoteClientUi/R$drawable;->escon:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 762
    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/16 v2, 0x6f

    invoke-direct {v0, p2, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v2, v0}, Lcom/iiordanov/bVNC/input/RemoteKeyboard;->repeatKeyEvent(ILandroid/view/KeyEvent;)V

    return v1

    .line 764
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    if-ne p2, v1, :cond_1

    .line 765
    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$9;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    iget-object p2, p2, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keyEsc:Landroid/widget/ImageButton;

    sget v2, Lcom/undatech/remoteClientUi/R$drawable;->escoff:I

    invoke-virtual {p2, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 766
    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$9;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-static {p2, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->-$$Nest$mresetOnScreenKeys(Lcom/iiordanov/bVNC/RemoteCanvasActivity;I)V

    .line 767
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/RemoteKeyboard;->stopRepeatingKeyEvent()V

    return v1

    :cond_1
    return v0
.end method
