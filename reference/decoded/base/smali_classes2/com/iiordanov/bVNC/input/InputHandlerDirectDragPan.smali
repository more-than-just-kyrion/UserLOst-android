.class public Lcom/iiordanov/bVNC/input/InputHandlerDirectDragPan;
.super Lcom/iiordanov/bVNC/input/InputHandlerGeneric;
.source "InputHandlerDirectDragPan.java"


# static fields
.field public static final ID:Ljava/lang/String; = "TOUCH_ZOOM_MODE_DRAG_PAN"

.field static final TAG:Ljava/lang/String; = "InputHandlerDirectDragPan"


# direct methods
.method public constructor <init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;Lcom/iiordanov/bVNC/RemoteCanvas;Lcom/iiordanov/bVNC/input/RemotePointer;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;Lcom/iiordanov/bVNC/RemoteCanvas;Lcom/iiordanov/bVNC/input/RemotePointer;)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectDragPan;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$string;->input_method_direct_drag_pan_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 61
    const-string v0, "TOUCH_ZOOM_MODE_DRAG_PAN"

    return-object v0
.end method

.method public bridge synthetic onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 37
    invoke-super {p0, p1, p2}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 37
    invoke-super {p0, p1, p2}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 72
    iget-boolean p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectDragPan;->secondPointerWasDown:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectDragPan;->thirdPointerWasDown:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectDragPan;->activity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->sendShortVibration()V

    .line 77
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectDragPan;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectDragPan;->activity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    sget v1, Lcom/undatech/remoteClientUi/R$string;->panning:I

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->displayShortToastMessage(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/input/InputHandlerDirectDragPan;->endDragModesAndScrolling()Z

    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectDragPan;->panMode:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectDragPan;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getPointer()Lcom/iiordanov/bVNC/input/RemotePointer;

    move-result-object v0

    .line 92
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectDragPan;->inScaling:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectDragPan;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getZoomFactor()F

    move-result p1

    .line 94
    iget-object p2, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectDragPan;->activity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-virtual {p2}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->showToolbar()V

    .line 95
    iget-object p2, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectDragPan;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    mul-float/2addr p3, p1

    float-to-int p3, p3

    int-to-float p3, p3

    mul-float/2addr p4, p1

    float-to-int p1, p4

    int-to-float p1, p1

    invoke-virtual {p2, p3, p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->relativePan(FF)Z

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    if-eqz p1, :cond_1

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p4

    if-le p4, v2, :cond_1

    move p4, v2

    goto :goto_0

    :cond_1
    move p4, p3

    :goto_0
    if-eqz p2, :cond_4

    if-nez p4, :cond_2

    .line 107
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p4

    if-le p4, v2, :cond_3

    :cond_2
    move p3, v2

    :cond_3
    move p4, p3

    :cond_4
    if-nez p4, :cond_7

    .line 109
    iget-boolean p3, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectDragPan;->inSwiping:Z

    if-eqz p3, :cond_5

    goto :goto_2

    .line 112
    :cond_5
    iget-object p3, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectDragPan;->activity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-virtual {p3}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->showToolbar()V

    .line 114
    iget-boolean p3, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectDragPan;->dragMode:Z

    if-nez p3, :cond_6

    .line 115
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectDragPan;->dragMode:Z

    .line 116
    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerDirectDragPan;->getX(Landroid/view/MotionEvent;)I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerDirectDragPan;->getY(Landroid/view/MotionEvent;)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result p1

    invoke-virtual {v0, p2, p3, p1}, Lcom/iiordanov/bVNC/input/RemotePointer;->leftButtonDown(III)V

    goto :goto_1

    .line 118
    :cond_6
    invoke-virtual {p0, p2}, Lcom/iiordanov/bVNC/input/InputHandlerDirectDragPan;->getX(Landroid/view/MotionEvent;)I

    move-result p1

    invoke-virtual {p0, p2}, Lcom/iiordanov/bVNC/input/InputHandlerDirectDragPan;->getY(Landroid/view/MotionEvent;)I

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result p2

    invoke-virtual {v0, p1, p3, p2}, Lcom/iiordanov/bVNC/input/RemotePointer;->moveMouseButtonDown(III)V

    .line 121
    :goto_1
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectDragPan;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->movePanToMakePointerVisible()V

    :cond_7
    :goto_2
    return v2
.end method

.method public bridge synthetic onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
