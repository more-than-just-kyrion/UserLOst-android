.class Lcom/freerdp/freerdpcore/presentation/SessionView$SessionDoubleGestureListener;
.super Ljava/lang/Object;
.source "SessionView.java"

# interfaces
.implements Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$OnDoubleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freerdp/freerdpcore/presentation/SessionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionDoubleGestureListener"
.end annotation


# instance fields
.field private prevEvent:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;


# direct methods
.method private constructor <init>(Lcom/freerdp/freerdpcore/presentation/SessionView;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionDoubleGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 362
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionDoubleGestureListener;->prevEvent:Landroid/view/MotionEvent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/freerdp/freerdpcore/presentation/SessionView;Lcom/freerdp/freerdpcore/presentation/SessionView$1;)V
    .locals 0

    .line 359
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionDoubleGestureListener;-><init>(Lcom/freerdp/freerdpcore/presentation/SessionView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTouchDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionDoubleGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-static {v0}, Lcom/freerdp/freerdpcore/presentation/SessionView;->access$200(Lcom/freerdp/freerdpcore/presentation/SessionView;)Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;->onSessionViewBeginTouch()V

    .line 367
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionDoubleGestureListener;->prevEvent:Landroid/view/MotionEvent;

    const/4 p1, 0x1

    return p1
.end method

.method public onDoubleTouchScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 385
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionDoubleGestureListener;->prevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr p1, v0

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 388
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionDoubleGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->access$200(Lcom/freerdp/freerdpcore/presentation/SessionView;)Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;->onSessionViewScroll(Z)V

    .line 389
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionDoubleGestureListener;->prevEvent:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 390
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionDoubleGestureListener;->prevEvent:Landroid/view/MotionEvent;

    goto :goto_0

    :cond_0
    const/high16 v0, -0x3ee00000    # -10.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 394
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionDoubleGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->access$200(Lcom/freerdp/freerdpcore/presentation/SessionView;)Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;->onSessionViewScroll(Z)V

    .line 395
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionDoubleGestureListener;->prevEvent:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 396
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionDoubleGestureListener;->prevEvent:Landroid/view/MotionEvent;

    :cond_1
    :goto_0
    return v1
.end method

.method public onDoubleTouchSingleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 404
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionDoubleGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-static {v0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->access$400(Lcom/freerdp/freerdpcore/presentation/SessionView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 405
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionDoubleGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-static {v0}, Lcom/freerdp/freerdpcore/presentation/SessionView;->access$200(Lcom/freerdp/freerdpcore/presentation/SessionView;)Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 406
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x1

    .line 405
    invoke-interface {v0, v1, v2, v3}, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;->onSessionViewRightTouch(IIZ)V

    .line 407
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionDoubleGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-static {v0}, Lcom/freerdp/freerdpcore/presentation/SessionView;->access$200(Lcom/freerdp/freerdpcore/presentation/SessionView;)Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 408
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    const/4 v2, 0x0

    .line 407
    invoke-interface {v0, v1, p1, v2}, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;->onSessionViewRightTouch(IIZ)V

    return v3
.end method

.method public onDoubleTouchUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 373
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionDoubleGestureListener;->prevEvent:Landroid/view/MotionEvent;

    if-eqz p1, :cond_0

    .line 375
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    const/4 p1, 0x0

    .line 376
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionDoubleGestureListener;->prevEvent:Landroid/view/MotionEvent;

    .line 378
    :cond_0
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionDoubleGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->access$200(Lcom/freerdp/freerdpcore/presentation/SessionView;)Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;->onSessionViewEndTouch()V

    const/4 p1, 0x1

    return p1
.end method
