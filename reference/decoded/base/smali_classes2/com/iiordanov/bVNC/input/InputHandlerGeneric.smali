.class abstract Lcom/iiordanov/bVNC/input/InputHandlerGeneric;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "InputHandlerGeneric.java"

# interfaces
.implements Lcom/iiordanov/bVNC/input/InputHandler;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "InputHandlerGeneric"


# instance fields
.field protected activity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

.field baseSwipeDist:F

.field final baseSwipeTime:J

.field protected canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

.field displayDensity:F

.field disregardNextOnFling:Z

.field distXQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field distYQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected dragMode:Z

.field protected dragX:F

.field protected dragY:F

.field protected gestureDetector:Landroid/view/GestureDetector;

.field immersiveSwipe:Z

.field immersiveSwipeDistance:F

.field inScaling:Z

.field inScrolling:Z

.field inSwiping:Z

.field final maxSwipeSpeed:I

.field protected middleDragMode:Z

.field final minScaleFactor:D

.field protected panMode:Z

.field protected panRepeater:Lcom/iiordanov/bVNC/input/PanRepeater;

.field protected pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

.field prevMouseOrStylusAction:I

.field protected rightDragMode:Z

.field rotateDpad:Z

.field protected scalingGestureDetector:Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;

.field scalingJustFinished:Z

.field scrollDown:Z

.field scrollLeft:Z

.field scrollRight:Z

.field scrollUp:Z

.field protected secondPointerWasDown:Z

.field protected singleHandedGesture:Z

.field protected singleHandedJustEnded:Z

.field startSwipeDist:F

.field swipeSpeed:J

.field protected thirdPointerWasDown:Z

.field useDpadAsArrows:Z

.field xCurrentFocus:F

.field xInitialFocus:F

.field xPreviousFocus:F

.field yCurrentFocus:F

.field yInitialFocus:F

.field yPreviousFocus:F


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;Lcom/iiordanov/bVNC/RemoteCanvas;Lcom/iiordanov/bVNC/input/RemotePointer;)V
    .locals 3

    .line 123
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->inSwiping:Z

    .line 60
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scrollUp:Z

    .line 61
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scrollDown:Z

    .line 62
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scrollLeft:Z

    .line 63
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scrollRight:Z

    const-wide/16 v1, 0x1

    .line 72
    iput-wide v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->swipeSpeed:J

    const/4 v1, 0x7

    .line 73
    iput v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->maxSwipeSpeed:I

    const-wide/16 v1, 0x190

    .line 77
    iput-wide v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->baseSwipeTime:J

    const/high16 v1, 0x41700000    # 15.0f

    .line 80
    iput v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->startSwipeDist:F

    const/high16 v1, 0x41200000    # 10.0f

    .line 81
    iput v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->baseSwipeDist:F

    .line 84
    iput v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->immersiveSwipeDistance:F

    .line 85
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->immersiveSwipe:Z

    .line 88
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->inScrolling:Z

    .line 89
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->inScaling:Z

    .line 90
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scalingJustFinished:Z

    const-wide v1, 0x3fb999999999999aL    # 0.1

    .line 93
    iput-wide v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->minScaleFactor:D

    .line 96
    iput v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->prevMouseOrStylusAction:I

    .line 99
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->panMode:Z

    .line 100
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->dragMode:Z

    .line 101
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->rightDragMode:Z

    .line 102
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->middleDragMode:Z

    .line 104
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->singleHandedGesture:Z

    .line 105
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->singleHandedJustEnded:Z

    .line 108
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->secondPointerWasDown:Z

    .line 109
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->thirdPointerWasDown:Z

    const/4 v1, 0x0

    .line 112
    iput v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->displayDensity:F

    .line 115
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->disregardNextOnFling:Z

    .line 124
    iput-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->activity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    .line 125
    iput-object p2, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    .line 126
    iput-object p3, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    const/4 p3, 0x1

    .line 129
    iput-boolean p3, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->useDpadAsArrows:Z

    .line 130
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->rotateDpad:Z

    .line 132
    new-instance p3, Landroid/view/GestureDetector;

    invoke-direct {p3, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->gestureDetector:Landroid/view/GestureDetector;

    .line 133
    new-instance p3, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;

    invoke-direct {p3, p1, p0}, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p3, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scalingGestureDetector:Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;

    .line 135
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 137
    new-instance p1, Lcom/iiordanov/bVNC/input/PanRepeater;

    iget-object p3, p2, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    invoke-direct {p1, p2, p3}, Lcom/iiordanov/bVNC/input/PanRepeater;-><init>(Lcom/iiordanov/bVNC/RemoteCanvas;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->panRepeater:Lcom/iiordanov/bVNC/input/PanRepeater;

    .line 139
    invoke-virtual {p2}, Lcom/iiordanov/bVNC/RemoteCanvas;->getDisplayDensity()F

    move-result p1

    iput p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->displayDensity:F

    .line 141
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->distXQueue:Ljava/util/Queue;

    .line 142
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->distYQueue:Ljava/util/Queue;

    .line 144
    iget p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->baseSwipeDist:F

    iget p2, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->displayDensity:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->baseSwipeDist:F

    .line 145
    iget p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->startSwipeDist:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->startSwipeDist:F

    .line 146
    iget p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->immersiveSwipeDistance:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->immersiveSwipeDistance:F

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "displayDensity, baseSwipeDist, immersiveSwipeDistance: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->displayDensity:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->baseSwipeDist:F

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->immersiveSwipeDistance:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "InputHandlerGeneric"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private detectImmersiveSwipe(F)V
    .locals 2

    .line 382
    sget v0, Lcom/iiordanov/bVNC/Constants;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->immersiveSwipeDistance:F

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    .line 383
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->immersiveSwipeDistance:F

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 384
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->inSwiping:Z

    .line 385
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->immersiveSwipe:Z

    goto :goto_0

    .line 386
    :cond_1
    iget-boolean p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->singleHandedGesture:Z

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 387
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->inSwiping:Z

    .line 388
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->immersiveSwipe:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private sendScrollEvents(III)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    int-to-long v1, v0

    .line 282
    iget-wide v3, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->swipeSpeed:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    const/4 v1, 0x7

    if-ge v0, v1, :cond_4

    .line 283
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scrollDown:Z

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/iiordanov/bVNC/input/RemotePointer;->scrollDown(III)V

    .line 285
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/iiordanov/bVNC/input/RemotePointer;->moveMouseButtonUp(III)V

    goto :goto_1

    .line 286
    :cond_0
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scrollUp:Z

    if-eqz v1, :cond_1

    .line 287
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/iiordanov/bVNC/input/RemotePointer;->scrollUp(III)V

    .line 288
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/iiordanov/bVNC/input/RemotePointer;->moveMouseButtonUp(III)V

    goto :goto_1

    .line 289
    :cond_1
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scrollRight:Z

    if-eqz v1, :cond_2

    .line 290
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/iiordanov/bVNC/input/RemotePointer;->scrollRight(III)V

    .line 291
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/iiordanov/bVNC/input/RemotePointer;->moveMouseButtonUp(III)V

    goto :goto_1

    .line 292
    :cond_2
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scrollLeft:Z

    if-eqz v1, :cond_3

    .line 293
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/iiordanov/bVNC/input/RemotePointer;->scrollLeft(III)V

    .line 294
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/iiordanov/bVNC/input/RemotePointer;->moveMouseButtonUp(III)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_4
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iiordanov/bVNC/input/RemotePointer;->releaseButton(III)V

    return-void
.end method

.method private setEventCoordinates(Landroid/view/MotionEvent;FF)V
    .locals 0

    .line 377
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->setLocation(FF)V

    return-void
.end method


# virtual methods
.method protected endDragModesAndScrolling()Z
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->cursorBeingMoved:Z

    .line 355
    iput-boolean v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->panMode:Z

    .line 356
    iput-boolean v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->inScaling:Z

    .line 357
    iput-boolean v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->inSwiping:Z

    .line 358
    iput-boolean v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->inScrolling:Z

    .line 359
    iput-boolean v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->immersiveSwipe:Z

    .line 360
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->dragMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->rightDragMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->middleDragMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 361
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->dragMode:Z

    .line 362
    iput-boolean v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->rightDragMode:Z

    .line 363
    iput-boolean v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->middleDragMode:Z

    const/4 v0, 0x1

    return v0
.end method

.method protected getSign(F)F
    .locals 1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    :goto_0
    return p1
.end method

.method protected getX(Landroid/view/MotionEvent;)I
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getZoomFactor()F

    move-result v0

    .line 157
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getAbsX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    div-float/2addr p1, v0

    add-float/2addr v1, p1

    float-to-int p1, v1

    return p1
.end method

.method protected getY(Landroid/view/MotionEvent;)I
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getZoomFactor()F

    move-result v0

    .line 166
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getAbsY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/RemoteCanvas;->getTop()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    sub-float/2addr p1, v2

    div-float/2addr p1, v0

    add-float/2addr v1, p1

    float-to-int p1, v1

    return p1
.end method

.method protected handleMouseActions(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v1

    .line 178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    .line 179
    iget-object v3, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v3}, Lcom/iiordanov/bVNC/RemoteCanvas;->getZoomFactor()F

    move-result v3

    .line 180
    iget-object v4, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v4}, Lcom/iiordanov/bVNC/RemoteCanvas;->getAbsX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    div-float/2addr v5, v3

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 181
    iget-object v5, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v5}, Lcom/iiordanov/bVNC/RemoteCanvas;->getAbsY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v7}, Lcom/iiordanov/bVNC/RemoteCanvas;->getTop()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    div-float/2addr v6, v3

    add-float/2addr v5, v6

    float-to-int v3, v5

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_c

    if-eq v0, v7, :cond_9

    if-eq v0, v6, :cond_c

    const/4 v9, 0x7

    if-eq v0, v9, :cond_5

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x9

    .line 223
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    const/16 v5, 0xa

    .line 224
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    .line 225
    iput-boolean v8, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scrollDown:Z

    .line 226
    iput-boolean v8, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scrollUp:Z

    .line 227
    iput-boolean v8, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scrollRight:Z

    .line 228
    iput-boolean v8, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scrollLeft:Z

    const/4 v5, 0x0

    cmpg-float v6, v2, v5

    const/high16 v9, -0x40800000    # -1.0f

    if-gez v6, :cond_1

    mul-float/2addr v2, v9

    float-to-int p1, v2

    int-to-long v5, p1

    .line 231
    iput-wide v5, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->swipeSpeed:J

    .line 232
    iput-boolean v7, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scrollDown:Z

    goto :goto_0

    :cond_1
    cmpl-float v6, v2, v5

    if-lez v6, :cond_2

    float-to-int p1, v2

    int-to-long v5, p1

    .line 234
    iput-wide v5, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->swipeSpeed:J

    .line 235
    iput-boolean v7, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scrollUp:Z

    goto :goto_0

    :cond_2
    cmpg-float v2, p1, v5

    if-gez v2, :cond_3

    mul-float/2addr p1, v9

    float-to-int p1, p1

    int-to-long v5, p1

    .line 237
    iput-wide v5, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->swipeSpeed:J

    .line 238
    iput-boolean v7, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scrollRight:Z

    goto :goto_0

    :cond_3
    cmpl-float v2, p1, v5

    if-lez v2, :cond_4

    float-to-int p1, p1

    int-to-long v5, p1

    .line 240
    iput-wide v5, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->swipeSpeed:J

    .line 241
    iput-boolean v7, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scrollLeft:Z

    .line 245
    :goto_0
    invoke-direct {p0, v4, v3, v1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->sendScrollEvents(III)V

    goto/16 :goto_3

    :cond_4
    :goto_1
    move v7, v8

    goto/16 :goto_3

    .line 251
    :cond_5
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->activity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->showToolbar()V

    .line 252
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->movePanToMakePointerVisible()V

    if-eq v2, v7, :cond_8

    if-eq v2, v6, :cond_7

    if-eq v2, v5, :cond_6

    .line 264
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {p1, v4, v3, v1}, Lcom/iiordanov/bVNC/input/RemotePointer;->moveMouseButtonUp(III)V

    goto :goto_3

    .line 261
    :cond_6
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {p1, v4, v3, v1}, Lcom/iiordanov/bVNC/input/RemotePointer;->middleButtonDown(III)V

    goto :goto_3

    .line 258
    :cond_7
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {p1, v4, v3, v1}, Lcom/iiordanov/bVNC/input/RemotePointer;->rightButtonDown(III)V

    goto :goto_3

    .line 255
    :cond_8
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {p1, v4, v3, v1}, Lcom/iiordanov/bVNC/input/RemotePointer;->leftButtonDown(III)V

    goto :goto_3

    :cond_9
    if-eqz v2, :cond_a

    if-eq v2, v7, :cond_b

    if-eq v2, v6, :cond_b

    if-eq v2, v5, :cond_b

    goto :goto_2

    .line 209
    :cond_a
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_b

    :goto_2
    goto :goto_1

    .line 215
    :cond_b
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->movePanToMakePointerVisible()V

    .line 216
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {p1, v4, v3, v1}, Lcom/iiordanov/bVNC/input/RemotePointer;->releaseButton(III)V

    goto :goto_3

    :cond_c
    if-eq v2, v7, :cond_f

    if-eq v2, v6, :cond_e

    if-eq v2, v5, :cond_d

    goto :goto_1

    .line 199
    :cond_d
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->movePanToMakePointerVisible()V

    .line 200
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {p1, v4, v3, v1}, Lcom/iiordanov/bVNC/input/RemotePointer;->middleButtonDown(III)V

    goto :goto_3

    .line 194
    :cond_e
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->movePanToMakePointerVisible()V

    .line 195
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {p1, v4, v3, v1}, Lcom/iiordanov/bVNC/input/RemotePointer;->rightButtonDown(III)V

    goto :goto_3

    .line 189
    :cond_f
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->movePanToMakePointerVisible()V

    .line 190
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {p1, v4, v3, v1}, Lcom/iiordanov/bVNC/input/RemotePointer;->leftButtonDown(III)V

    .line 270
    :goto_3
    iput v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->prevMouseOrStylusAction:I

    return v7
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 320
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    .line 321
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->getX(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->getY(Landroid/view/MotionEvent;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/iiordanov/bVNC/input/RemotePointer;->leftButtonDown(III)V

    const-wide/16 v1, 0x32

    .line 322
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 323
    iget-object v3, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->getX(Landroid/view/MotionEvent;)I

    move-result v4

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->getY(Landroid/view/MotionEvent;)I

    move-result v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/iiordanov/bVNC/input/RemotePointer;->releaseButton(III)V

    .line 324
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 325
    iget-object v3, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->getX(Landroid/view/MotionEvent;)I

    move-result v4

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->getY(Landroid/view/MotionEvent;)I

    move-result v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/iiordanov/bVNC/input/RemotePointer;->leftButtonDown(III)V

    .line 326
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 327
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->getX(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->getY(Landroid/view/MotionEvent;)I

    move-result p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/iiordanov/bVNC/input/RemotePointer;->releaseButton(III)V

    .line 328
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->movePanToMakePointerVisible()V

    const/4 p1, 0x1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getKeyboard()Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/iiordanov/bVNC/input/RemoteKeyboard;->keyEvent(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getKeyboard()Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/iiordanov/bVNC/input/RemoteKeyboard;->keyEvent(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    .line 340
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->secondPointerWasDown:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->thirdPointerWasDown:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->activity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->sendShortVibration()V

    const/4 v1, 0x1

    .line 345
    iput-boolean v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->dragMode:Z

    .line 346
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->getX(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->getY(Landroid/view/MotionEvent;)I

    move-result p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/iiordanov/bVNC/input/RemotePointer;->leftButtonDown(III)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8

    .line 550
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->xCurrentFocus:F

    .line 551
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->yCurrentFocus:F

    .line 555
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->inScaling:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_7

    .line 557
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->inSwiping:Z

    if-nez v1, :cond_1

    .line 558
    iget v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->yInitialFocus:F

    iget v4, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->startSwipeDist:F

    sub-float v5, v1, v4

    cmpg-float v5, v0, v5

    if-ltz v5, :cond_0

    add-float/2addr v1, v4

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->xCurrentFocus:F

    iget v5, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->xInitialFocus:F

    sub-float v6, v5, v4

    cmpg-float v6, v1, v6

    if-ltz v6, :cond_0

    add-float/2addr v5, v4

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1

    .line 562
    :cond_0
    iput-boolean v3, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->inSwiping:Z

    .line 563
    iget v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->xCurrentFocus:F

    iput v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->xPreviousFocus:F

    .line 564
    iput v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->yPreviousFocus:F

    .line 569
    :cond_1
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->inSwiping:Z

    if-eqz v1, :cond_7

    .line 570
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scrollDown:Z

    .line 571
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scrollUp:Z

    .line 572
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scrollRight:Z

    .line 573
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scrollLeft:Z

    .line 574
    iget v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->yPreviousFocus:F

    iget v4, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->baseSwipeDist:F

    sub-float v5, v1, v4

    cmpg-float v5, v0, v5

    if-gez v5, :cond_2

    .line 575
    iput-boolean v3, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scrollDown:Z

    .line 576
    iget v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->xCurrentFocus:F

    iput v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->xPreviousFocus:F

    .line 577
    iput v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->yPreviousFocus:F

    goto :goto_0

    :cond_2
    add-float/2addr v1, v4

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    .line 579
    iput-boolean v3, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scrollUp:Z

    .line 580
    iget v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->xCurrentFocus:F

    iput v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->xPreviousFocus:F

    .line 581
    iput v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->yPreviousFocus:F

    goto :goto_0

    .line 582
    :cond_3
    iget v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->xCurrentFocus:F

    iget v5, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->xPreviousFocus:F

    sub-float v6, v5, v4

    cmpg-float v6, v1, v6

    if-gez v6, :cond_4

    .line 583
    iput-boolean v3, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scrollRight:Z

    .line 584
    iput v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->xPreviousFocus:F

    .line 585
    iput v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->yPreviousFocus:F

    goto :goto_0

    :cond_4
    add-float/2addr v5, v4

    cmpl-float v4, v1, v5

    if-lez v4, :cond_5

    .line 587
    iput-boolean v3, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scrollLeft:Z

    .line 588
    iput v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->xPreviousFocus:F

    .line 589
    iput v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->yPreviousFocus:F

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_5
    move v0, v2

    .line 596
    :goto_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getTimeDelta()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    cmp-long v1, v4, v6

    if-gez v1, :cond_6

    move-wide v4, v6

    :cond_6
    const-wide/16 v6, 0x190

    .line 599
    div-long/2addr v6, v4

    iput-wide v6, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->swipeSpeed:J

    const-wide/16 v4, 0x0

    cmp-long v1, v6, v4

    if-nez v1, :cond_8

    const-wide/16 v4, 0x1

    .line 600
    iput-wide v4, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->swipeSpeed:J

    goto :goto_2

    :cond_7
    move v0, v3

    .line 605
    :cond_8
    :goto_2
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->inSwiping:Z

    if-nez v1, :cond_c

    .line 606
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->inScaling:Z

    if-nez v1, :cond_9

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    float-to-double v4, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, v4, v6

    if-gez v1, :cond_9

    goto :goto_3

    :cond_9
    move v2, v0

    :goto_3
    if-eqz v2, :cond_b

    .line 611
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->canvasZoomer:Lcom/iiordanov/bVNC/AbstractScaling;

    if-eqz v0, :cond_b

    .line 612
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->inScaling:Z

    if-nez v0, :cond_a

    .line 613
    iput-boolean v3, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->inScaling:Z

    .line 616
    :cond_a
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->canvasZoomer:Lcom/iiordanov/bVNC/AbstractScaling;

    iget-object v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->activity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    iget v3, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->xCurrentFocus:F

    iget v4, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->yCurrentFocus:F

    invoke-virtual {v0, v1, p1, v3, v4}, Lcom/iiordanov/bVNC/AbstractScaling;->changeZoom(Lcom/iiordanov/bVNC/RemoteCanvasActivity;FFF)V

    :cond_b
    move v0, v2

    :cond_c
    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x0

    .line 628
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->inScaling:Z

    .line 629
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scalingJustFinished:Z

    .line 631
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->inSwiping:Z

    .line 632
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scrollDown:Z

    .line 633
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scrollUp:Z

    .line 634
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scrollRight:Z

    .line 635
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scrollLeft:Z

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    const/4 p1, 0x0

    .line 645
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->inScaling:Z

    .line 646
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->inSwiping:Z

    const/4 p1, 0x1

    .line 647
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scalingJustFinished:Z

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    .line 307
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->activity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->showToolbar()V

    .line 308
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->getX(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->getY(Landroid/view/MotionEvent;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/iiordanov/bVNC/input/RemotePointer;->leftButtonDown(III)V

    const-wide/16 v1, 0x32

    .line 309
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 310
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->getX(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->getY(Landroid/view/MotionEvent;)I

    move-result p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/iiordanov/bVNC/input/RemotePointer;->releaseButton(III)V

    .line 311
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->movePanToMakePointerVisible()V

    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 397
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 399
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 400
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    .line 402
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    const/high16 v4, 0x42480000    # 50.0f

    div-float/2addr v3, v4

    :cond_0
    const v4, 0x3f6b851f    # 0.92f

    cmpl-float v3, v3, v4

    const/4 v4, 0x1

    if-lez v3, :cond_1

    .line 406
    iput-boolean v4, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->disregardNextOnFling:Z

    .line 411
    :cond_1
    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->handleMouseActions(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v4

    :cond_2
    if-ne v0, v4, :cond_3

    .line 417
    iget-object v3, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v3, v3, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget-object v3, v3, Lcom/iiordanov/bVNC/AbstractBitmapData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 418
    iget-object v3, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v3}, Lcom/iiordanov/bVNC/RemoteCanvas;->invalidate()V

    :cond_3
    const/4 v3, 0x2

    const/4 v5, 0x0

    if-eqz v1, :cond_9

    const/4 v6, 0x5

    if-eq v1, v4, :cond_6

    if-eq v1, v3, :cond_4

    goto/16 :goto_1

    :cond_4
    if-eq v0, v6, :cond_5

    goto/16 :goto_1

    .line 526
    :cond_5
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->inScaling:Z

    if-nez v0, :cond_13

    .line 528
    iput-boolean v4, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->thirdPointerWasDown:Z

    .line 529
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->getX(Landroid/view/MotionEvent;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->getY(Landroid/view/MotionEvent;)I

    move-result v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/iiordanov/bVNC/input/RemotePointer;->middleButtonDown(III)V

    .line 531
    iput-boolean v4, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->middleDragMode:Z

    goto/16 :goto_1

    :cond_6
    if-eq v0, v6, :cond_8

    const/4 v1, 0x6

    if-eq v0, v1, :cond_7

    goto/16 :goto_1

    .line 506
    :cond_7
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->inSwiping:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->inScaling:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->thirdPointerWasDown:Z

    if-nez v0, :cond_13

    .line 513
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->getX(Landroid/view/MotionEvent;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->getY(Landroid/view/MotionEvent;)I

    move-result v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/iiordanov/bVNC/input/RemotePointer;->rightButtonDown(III)V

    .line 515
    iput-boolean v4, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->rightDragMode:Z

    goto/16 :goto_1

    .line 496
    :cond_8
    iget v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->dragX:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->xInitialFocus:F

    .line 497
    iget v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->dragY:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->yInitialFocus:F

    .line 499
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->endDragModesAndScrolling()Z

    .line 501
    iput-boolean v4, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->secondPointerWasDown:Z

    .line 503
    iput-boolean v5, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->thirdPointerWasDown:Z

    goto/16 :goto_1

    :cond_9
    if-eqz v0, :cond_11

    if-eq v0, v4, :cond_f

    if-eq v0, v3, :cond_a

    goto/16 :goto_1

    .line 466
    :cond_a
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->panMode:Z

    if-eqz v0, :cond_b

    .line 467
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getZoomFactor()F

    move-result v0

    .line 468
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->dragX:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    float-to-int v2, v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v5, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->dragY:F

    sub-float/2addr v3, v5

    mul-float/2addr v3, v0

    float-to-int v0, v3

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->relativePan(FF)Z

    .line 469
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->dragX:F

    .line 470
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->dragY:F

    return v4

    .line 472
    :cond_b
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->dragMode:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->rightDragMode:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->middleDragMode:Z

    if-eqz v0, :cond_c

    goto :goto_0

    .line 476
    :cond_c
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->inSwiping:Z

    if-eqz v0, :cond_d

    .line 478
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 479
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 481
    iget v3, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->xInitialFocus:F

    iget v4, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->yInitialFocus:F

    invoke-direct {p0, p1, v3, v4}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->setEventCoordinates(Landroid/view/MotionEvent;FF)V

    .line 482
    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->getX(Landroid/view/MotionEvent;)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->getY(Landroid/view/MotionEvent;)I

    move-result v4

    invoke-direct {p0, v3, v4, v2}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->sendScrollEvents(III)V

    .line 484
    invoke-direct {p0, p1, v0, v1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->setEventCoordinates(Landroid/view/MotionEvent;FF)V

    goto :goto_1

    .line 485
    :cond_d
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->immersiveSwipe:Z

    if-eqz v0, :cond_13

    return v4

    .line 473
    :cond_e
    :goto_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->movePanToMakePointerVisible()V

    .line 474
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->getX(Landroid/view/MotionEvent;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->getY(Landroid/view/MotionEvent;)I

    move-result p1

    invoke-virtual {v0, v1, p1, v2}, Lcom/iiordanov/bVNC/input/RemotePointer;->moveMouseButtonDown(III)V

    return v4

    .line 449
    :cond_f
    iput-boolean v5, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->singleHandedGesture:Z

    .line 450
    iput-boolean v4, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->singleHandedJustEnded:Z

    .line 453
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->immersiveSwipe:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->dragY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->immersiveSwipeDistance:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_10

    .line 454
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->endDragModesAndScrolling()Z

    return v4

    .line 459
    :cond_10
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->endDragModesAndScrolling()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 460
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->getX(Landroid/view/MotionEvent;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->getY(Landroid/view/MotionEvent;)I

    move-result p1

    invoke-virtual {v0, v1, p1, v2}, Lcom/iiordanov/bVNC/input/RemotePointer;->releaseButton(III)V

    return v4

    .line 426
    :cond_11
    iput-boolean v5, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->disregardNextOnFling:Z

    .line 427
    iput-boolean v5, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->singleHandedJustEnded:Z

    .line 430
    iput-boolean v5, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->secondPointerWasDown:Z

    .line 432
    iput-boolean v5, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->thirdPointerWasDown:Z

    .line 434
    iput-boolean v5, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scalingJustFinished:Z

    .line 436
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->singleHandedGesture:Z

    if-nez v0, :cond_12

    .line 437
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->endDragModesAndScrolling()Z

    .line 438
    :cond_12
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iput-boolean v4, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->cursorBeingMoved:Z

    .line 440
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget-object v0, v0, Lcom/iiordanov/bVNC/AbstractBitmapData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 442
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->dragX:F

    .line 443
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->dragY:F

    .line 446
    invoke-direct {p0, v0}, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->detectImmersiveSwipe(F)V

    .line 537
    :cond_13
    :goto_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->scalingGestureDetector:Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;

    invoke-virtual {v0, p1}, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 538
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerGeneric;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
