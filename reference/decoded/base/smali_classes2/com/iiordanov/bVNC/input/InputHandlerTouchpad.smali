.class public Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;
.super Lcom/iiordanov/bVNC/input/InputHandlerGeneric;
.source "InputHandlerTouchpad.java"


# static fields
.field public static final ID:Ljava/lang/String; = "TOUCHPAD_MODE"

.field static final TAG:Ljava/lang/String; = "InputHandlerTouchpad"


# direct methods
.method public constructor <init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;Lcom/iiordanov/bVNC/RemoteCanvas;Lcom/iiordanov/bVNC/input/RemotePointer;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;Lcom/iiordanov/bVNC/RemoteCanvas;Lcom/iiordanov/bVNC/input/RemotePointer;)V

    return-void
.end method

.method private computeAcceleration(F)F
    .locals 3

    .line 193
    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->getSign(F)F

    move-result v0

    .line 194
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 195
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/input/RemotePointer;->isAccelerated()Z

    move-result v1

    const/high16 v2, 0x41700000    # 15.0f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    const/high16 v1, 0x3f400000    # 0.75f

    :goto_0
    mul-float/2addr p1, v1

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    const/high16 v2, 0x428c0000    # 70.0f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    mul-float/2addr p1, p1

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr p1, v1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    const/high16 v1, 0x40900000    # 4.5f

    goto :goto_0

    :cond_2
    :goto_1
    mul-float/2addr v0, p1

    return v0
.end method

.method private getDelta(F)F
    .locals 4

    float-to-double v0, p1

    .line 183
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getZoomFactor()F

    move-result p1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 184
    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->computeAcceleration(F)F

    move-result p1

    return p1
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$string;->input_method_touchpad_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "TOUCHPAD_MODE"

    return-object v0
.end method

.method protected getX(Landroid/view/MotionEvent;)I
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getPointer()Lcom/iiordanov/bVNC/input/RemotePointer;

    move-result-object v0

    .line 151
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->dragMode:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->rightDragMode:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->middleDragMode:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->dragX:F

    .line 158
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/input/RemotePointer;->getX()I

    move-result p1

    return p1

    .line 152
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->dragX:F

    sub-float/2addr v1, v2

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->dragX:F

    .line 155
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/input/RemotePointer;->getX()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, v1}, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->getDelta(F)F

    move-result v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method protected getY(Landroid/view/MotionEvent;)I
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getPointer()Lcom/iiordanov/bVNC/input/RemotePointer;

    move-result-object v0

    .line 167
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->dragMode:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->rightDragMode:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->middleDragMode:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->dragY:F

    .line 174
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/input/RemotePointer;->getY()I

    move-result p1

    return p1

    .line 168
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->dragY:F

    sub-float/2addr v1, v2

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->dragY:F

    .line 171
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/input/RemotePointer;->getY()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, v1}, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->getDelta(F)F

    move-result v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public bridge synthetic onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 141
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->panRepeater:Lcom/iiordanov/bVNC/input/PanRepeater;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/PanRepeater;->stop()V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 36
    invoke-super {p0, p1, p2}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 36
    invoke-super {p0, p1, p2}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public bridge synthetic onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 69
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    .line 73
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->inScaling:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getZoomFactor()F

    move-result p1

    .line 75
    iget-object p2, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->activity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-virtual {p2}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->showToolbar()V

    .line 76
    iget-object p2, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    mul-float/2addr p3, p1

    float-to-int p3, p3

    int-to-float p3, p3

    mul-float/2addr p4, p1

    float-to-int p1, p4

    int-to-float p1, p1

    invoke-virtual {p2, p3, p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->relativePan(FF)Z

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-le p1, v2, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p2, :cond_4

    if-nez p1, :cond_2

    .line 83
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-le p1, v2, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move p1, v1

    :cond_4
    if-nez p1, :cond_7

    .line 91
    iget-boolean p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->inSwiping:Z

    if-eqz p1, :cond_5

    goto/16 :goto_2

    .line 95
    :cond_5
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->activity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->showToolbar()V

    .line 99
    iget-boolean p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->inScrolling:Z

    if-nez p1, :cond_6

    .line 100
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->inScrolling:Z

    .line 101
    invoke-virtual {p0, p3}, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->getSign(F)F

    move-result p3

    .line 102
    invoke-virtual {p0, p4}, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->getSign(F)F

    move-result p4

    .line 103
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->distXQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    .line 104
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->distYQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    .line 107
    :cond_6
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->distXQueue:Ljava/util/Queue;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->distYQueue:Ljava/util/Queue;

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->distXQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    const/4 p2, 0x2

    if-le p1, p2, :cond_7

    .line 114
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->distXQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 115
    iget-object p2, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->distYQueue:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 121
    iget-object p3, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {p3}, Lcom/iiordanov/bVNC/input/RemotePointer;->getSensitivity()F

    move-result p3

    mul-float/2addr p1, p3

    .line 122
    iget p4, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->displayDensity:F

    div-float/2addr p1, p4

    mul-float/2addr p3, p2

    .line 123
    iget p2, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->displayDensity:F

    div-float/2addr p3, p2

    .line 126
    iget-object p2, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {p2}, Lcom/iiordanov/bVNC/input/RemotePointer;->getX()I

    move-result p2

    int-to-float p2, p2

    neg-float p1, p1

    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->getDelta(F)F

    move-result p1

    add-float/2addr p2, p1

    float-to-int p1, p2

    .line 127
    iget-object p2, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {p2}, Lcom/iiordanov/bVNC/input/RemotePointer;->getY()I

    move-result p2

    int-to-float p2, p2

    neg-float p3, p3

    invoke-direct {p0, p3}, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->getDelta(F)F

    move-result p3

    add-float/2addr p2, p3

    float-to-int p2, p2

    .line 129
    iget-object p3, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {p3, p1, p2, v0}, Lcom/iiordanov/bVNC/input/RemotePointer;->moveMouse(III)V

    .line 131
    :goto_1
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->movePanToMakePointerVisible()V

    :cond_7
    :goto_2
    return v2
.end method

.method public bridge synthetic onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
