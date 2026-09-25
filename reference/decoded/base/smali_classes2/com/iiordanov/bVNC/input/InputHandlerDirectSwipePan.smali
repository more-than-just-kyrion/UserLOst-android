.class public Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;
.super Lcom/iiordanov/bVNC/input/InputHandlerGeneric;
.source "InputHandlerDirectSwipePan.java"


# static fields
.field public static final ID:Ljava/lang/String; = "TOUCH_ZOOM_MODE"

.field static final TAG:Ljava/lang/String; = "InputHandlerDirectSwipePan"


# direct methods
.method public constructor <init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;Lcom/iiordanov/bVNC/RemoteCanvas;Lcom/iiordanov/bVNC/input/RemotePointer;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;Lcom/iiordanov/bVNC/RemoteCanvas;Lcom/iiordanov/bVNC/input/RemotePointer;)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$string;->input_method_direct_swipe_pan_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "TOUCH_ZOOM_MODE"

    return-object v0
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

    .line 69
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;->panRepeater:Lcom/iiordanov/bVNC/input/PanRepeater;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/PanRepeater;->stop()V

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    .line 85
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-le p1, v0, :cond_2

    :cond_1
    move v1, v0

    :cond_2
    move p1, v1

    :cond_3
    if-nez p1, :cond_5

    .line 93
    iget-boolean p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;->disregardNextOnFling:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;->inSwiping:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;->inScaling:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;->scalingJustFinished:Z

    if-eqz p1, :cond_4

    goto :goto_1

    .line 97
    :cond_4
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;->activity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->showToolbar()V

    .line 98
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;->panRepeater:Lcom/iiordanov/bVNC/input/PanRepeater;

    neg-float p2, p3

    neg-float p3, p4

    invoke-virtual {p1, p2, p3}, Lcom/iiordanov/bVNC/input/PanRepeater;->start(FF)V

    :cond_5
    :goto_1
    return v0
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
    .locals 2

    .line 109
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;->inScaling:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-le p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    .line 120
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-le p1, v1, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    move p1, v0

    :cond_3
    if-nez p1, :cond_4

    .line 122
    iget-boolean p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;->inSwiping:Z

    if-eqz p1, :cond_5

    :cond_4
    return v1

    .line 126
    :cond_5
    iget-boolean p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;->inScrolling:Z

    if-nez p1, :cond_6

    .line 127
    iput-boolean v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;->inScrolling:Z

    .line 128
    invoke-virtual {p0, p3}, Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;->getSign(F)F

    move-result p3

    .line 129
    invoke-virtual {p0, p4}, Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;->getSign(F)F

    move-result p4

    .line 130
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;->distXQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    .line 131
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;->distYQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    .line 134
    :cond_6
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;->distXQueue:Ljava/util/Queue;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;->distYQueue:Ljava/util/Queue;

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;->distXQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    const/4 p2, 0x2

    if-le p1, p2, :cond_7

    .line 141
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;->distXQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 142
    iget-object p2, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;->distYQueue:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 147
    iget-object p3, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p3}, Lcom/iiordanov/bVNC/RemoteCanvas;->getZoomFactor()F

    move-result p3

    .line 148
    iget-object p4, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;->activity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-virtual {p4}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->showToolbar()V

    .line 149
    iget-object p4, p0, Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    mul-float/2addr p1, p3

    float-to-int p1, p1

    int-to-float p1, p1

    mul-float/2addr p2, p3

    float-to-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p4, p1, p2}, Lcom/iiordanov/bVNC/RemoteCanvas;->relativePan(FF)Z

    :cond_7
    return v1
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
