.class Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;
.super Ljava/lang/Object;
.source "DPadMouseKeyHandler.java"


# instance fields
.field private canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

.field private isMoving:Z

.field keyboard:Lcom/undatech/opaque/input/RemoteKeyboard;

.field private mouseDown:Z

.field private mouseMover:Lcom/iiordanov/bVNC/input/MouseMover;

.field pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

.field private rotateDpad:Z

.field private useDpadAsArrows:Z


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;Landroid/os/Handler;ZZ)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->useDpadAsArrows:Z

    .line 46
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->rotateDpad:Z

    .line 52
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getCanvas()Lcom/iiordanov/bVNC/RemoteCanvas;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    .line 53
    new-instance v0, Lcom/iiordanov/bVNC/input/MouseMover;

    invoke-direct {v0, p1, p2}, Lcom/iiordanov/bVNC/input/MouseMover;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->mouseMover:Lcom/iiordanov/bVNC/input/MouseMover;

    .line 54
    iput-boolean p3, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->useDpadAsArrows:Z

    .line 55
    iput-boolean p4, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->rotateDpad:Z

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    .line 62
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getKeyboard()Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->keyboard:Lcom/undatech/opaque/input/RemoteKeyboard;

    .line 63
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getPointer()Lcom/iiordanov/bVNC/input/RemotePointer;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    .line 64
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->keyboard:Lcom/undatech/opaque/input/RemoteKeyboard;

    invoke-virtual {v0}, Lcom/undatech/opaque/input/RemoteKeyboard;->getCameraButtonDown()Z

    .line 67
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->rotateDpad:Z

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x14

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x13

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x15

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x16

    .line 85
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->useDpadAsArrows:Z

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->keyboard:Lcom/undatech/opaque/input/RemoteKeyboard;

    invoke-virtual {v0, p1, p2}, Lcom/undatech/opaque/input/RemoteKeyboard;->keyEvent(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_1

    .line 110
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->keyboard:Lcom/undatech/opaque/input/RemoteKeyboard;

    invoke-virtual {v0, p1, p2}, Lcom/undatech/opaque/input/RemoteKeyboard;->keyEvent(ILandroid/view/KeyEvent;)Z

    move-result p1

    move v0, v1

    goto :goto_2

    .line 103
    :pswitch_4
    iget-boolean p1, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->mouseDown:Z

    if-nez p1, :cond_2

    .line 104
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->mouseDown:Z

    .line 106
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/RemotePointer;->getX()I

    move-result v0

    iget-object v3, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {v3}, Lcom/iiordanov/bVNC/input/RemotePointer;->getY()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    invoke-virtual {p1, v0, v3, v4}, Lcom/iiordanov/bVNC/input/RemotePointer;->leftButtonDown(III)V

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_5
    move p1, v2

    move v0, p1

    goto :goto_2

    :goto_1
    :pswitch_6
    move p1, v2

    goto :goto_2

    :pswitch_7
    move v0, v1

    move p1, v2

    move v1, p1

    goto :goto_2

    :pswitch_8
    move p1, v2

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_5

    .line 114
    :cond_3
    iget-boolean v3, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->isMoving:Z

    if-nez v3, :cond_5

    .line 117
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->isMoving:Z

    .line 118
    iget-object v2, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->mouseMover:Lcom/iiordanov/bVNC/input/MouseMover;

    int-to-float v3, v0

    int-to-float v4, v1

    new-instance v5, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler$1;

    invoke-direct {v5, p0, v0, v1}, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler$1;-><init>(Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;II)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/iiordanov/bVNC/input/MouseMover;->start(FFLcom/iiordanov/bVNC/input/Panner$VelocityUpdater;)V

    .line 137
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->mouseDown:Z

    if-eqz v0, :cond_4

    .line 138
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/input/RemotePointer;->getX()I

    move-result v1

    iget-object v2, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/input/RemotePointer;->getY()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p2

    invoke-virtual {v0, v1, v2, p2}, Lcom/iiordanov/bVNC/input/RemotePointer;->moveMouseButtonDown(III)V

    goto :goto_3

    .line 140
    :cond_4
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/input/RemotePointer;->getX()I

    move-result v1

    iget-object v2, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/input/RemotePointer;->getY()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p2

    invoke-virtual {v0, v1, v2, p2}, Lcom/iiordanov/bVNC/input/RemotePointer;->moveMouseButtonUp(III)V

    :cond_5
    :goto_3
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->keyboard:Lcom/undatech/opaque/input/RemoteKeyboard;

    invoke-virtual {v0}, Lcom/undatech/opaque/input/RemoteKeyboard;->getCameraButtonDown()Z

    .line 149
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getPointer()Lcom/iiordanov/bVNC/input/RemotePointer;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    .line 152
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->useDpadAsArrows:Z

    if-eqz v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->keyboard:Lcom/undatech/opaque/input/RemoteKeyboard;

    invoke-virtual {v0, p1, p2}, Lcom/undatech/opaque/input/RemoteKeyboard;->keyEvent(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 175
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->keyboard:Lcom/undatech/opaque/input/RemoteKeyboard;

    invoke-virtual {v0, p1, p2}, Lcom/undatech/opaque/input/RemoteKeyboard;->keyEvent(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 167
    :pswitch_0
    iget-boolean p1, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->mouseDown:Z

    if-eqz p1, :cond_1

    .line 168
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->mouseDown:Z

    .line 169
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/input/RemotePointer;->getX()I

    move-result p1

    iget-object v1, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/input/RemotePointer;->getY()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p2

    invoke-virtual {v0, p1, v1, p2}, Lcom/iiordanov/bVNC/input/RemotePointer;->releaseButton(III)V

    move v1, v2

    goto :goto_0

    .line 162
    :pswitch_1
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->mouseMover:Lcom/iiordanov/bVNC/input/MouseMover;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MouseMover;->stop()V

    .line 163
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->isMoving:Z

    :cond_1
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
