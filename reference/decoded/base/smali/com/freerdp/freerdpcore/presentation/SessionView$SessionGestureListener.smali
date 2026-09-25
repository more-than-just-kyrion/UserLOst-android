.class Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;
.super Lcom/freerdp/freerdpcore/utils/GestureDetector$SimpleOnGestureListener;
.source "SessionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freerdp/freerdpcore/presentation/SessionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionGestureListener"
.end annotation


# instance fields
.field longPressInProgress:Z

.field final synthetic this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;


# direct methods
.method private constructor <init>(Lcom/freerdp/freerdpcore/presentation/SessionView;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-direct {p0}, Lcom/freerdp/freerdpcore/utils/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 p1, 0x0

    .line 275
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;->longPressInProgress:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/freerdp/freerdpcore/presentation/SessionView;Lcom/freerdp/freerdpcore/presentation/SessionView$1;)V
    .locals 0

    .line 273
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;-><init>(Lcom/freerdp/freerdpcore/presentation/SessionView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 322
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-static {v0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->access$300(Lcom/freerdp/freerdpcore/presentation/SessionView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 323
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-static {v0}, Lcom/freerdp/freerdpcore/presentation/SessionView;->access$200(Lcom/freerdp/freerdpcore/presentation/SessionView;)Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x1

    .line 323
    invoke-interface {v0, v1, v2, v3}, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;->onSessionViewLeftTouch(IIZ)V

    .line 325
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-static {v0}, Lcom/freerdp/freerdpcore/presentation/SessionView;->access$200(Lcom/freerdp/freerdpcore/presentation/SessionView;)Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 326
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    const/4 v2, 0x0

    .line 325
    invoke-interface {v0, v1, p1, v2}, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;->onSessionViewLeftTouch(IIZ)V

    return v3
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-static {v0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->access$300(Lcom/freerdp/freerdpcore/presentation/SessionView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 291
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-static {v0}, Lcom/freerdp/freerdpcore/presentation/SessionView;->access$200(Lcom/freerdp/freerdpcore/presentation/SessionView;)Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;->onSessionViewBeginTouch()V

    .line 292
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-static {v0}, Lcom/freerdp/freerdpcore/presentation/SessionView;->access$200(Lcom/freerdp/freerdpcore/presentation/SessionView;)Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 293
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    const/4 v2, 0x1

    .line 292
    invoke-interface {v0, v1, p1, v2}, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;->onSessionViewLeftTouch(IIZ)V

    .line 294
    iput-boolean v2, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;->longPressInProgress:Z

    return-void
.end method

.method public onLongPressUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-static {v0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->access$300(Lcom/freerdp/freerdpcore/presentation/SessionView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 300
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-static {v0}, Lcom/freerdp/freerdpcore/presentation/SessionView;->access$200(Lcom/freerdp/freerdpcore/presentation/SessionView;)Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 301
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    const/4 v2, 0x0

    .line 300
    invoke-interface {v0, v1, p1, v2}, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;->onSessionViewLeftTouch(IIZ)V

    .line 302
    iput-boolean v2, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;->longPressInProgress:Z

    .line 303
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->access$200(Lcom/freerdp/freerdpcore/presentation/SessionView;)Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;->onSessionViewEndTouch()V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 308
    iget-boolean p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;->longPressInProgress:Z

    if-eqz p1, :cond_0

    .line 310
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-static {p1, p2}, Lcom/freerdp/freerdpcore/presentation/SessionView;->access$300(Lcom/freerdp/freerdpcore/presentation/SessionView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 311
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-static {p2}, Lcom/freerdp/freerdpcore/presentation/SessionView;->access$200(Lcom/freerdp/freerdpcore/presentation/SessionView;)Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    float-to-int p3, p3

    .line 312
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 311
    invoke-interface {p2, p3, p1}, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;->onSessionViewMove(II)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 333
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-static {v0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->access$300(Lcom/freerdp/freerdpcore/presentation/SessionView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-static {v1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->access$200(Lcom/freerdp/freerdpcore/presentation/SessionView;)Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;->onSessionViewBeginTouch()V

    .line 335
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->access$200(Lcom/freerdp/freerdpcore/presentation/SessionView;)Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;

    move-result-object p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 345
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 344
    invoke-interface {p1, v3, v4, v2}, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;->onSessionViewRightTouch(IIZ)V

    .line 346
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->access$200(Lcom/freerdp/freerdpcore/presentation/SessionView;)Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;

    move-result-object p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 347
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 346
    invoke-interface {p1, v3, v4, v1}, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;->onSessionViewRightTouch(IIZ)V

    .line 348
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->access$200(Lcom/freerdp/freerdpcore/presentation/SessionView;)Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;

    move-result-object p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 349
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 348
    invoke-interface {p1, v3, v4, v2}, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;->onSessionViewLeftTouch(IIZ)V

    .line 350
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->access$200(Lcom/freerdp/freerdpcore/presentation/SessionView;)Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;

    move-result-object p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 351
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 350
    invoke-interface {p1, v3, v0, v1}, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;->onSessionViewLeftTouch(IIZ)V

    goto :goto_0

    .line 338
    :cond_1
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->access$200(Lcom/freerdp/freerdpcore/presentation/SessionView;)Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;

    move-result-object p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 339
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 338
    invoke-interface {p1, v3, v4, v2}, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;->onSessionViewLeftTouch(IIZ)V

    .line 340
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->access$200(Lcom/freerdp/freerdpcore/presentation/SessionView;)Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;

    move-result-object p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 341
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 340
    invoke-interface {p1, v3, v0, v1}, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;->onSessionViewLeftTouch(IIZ)V

    .line 354
    :goto_0
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->access$200(Lcom/freerdp/freerdpcore/presentation/SessionView;)Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;->onSessionViewEndTouch()V

    return v2
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 284
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->access$200(Lcom/freerdp/freerdpcore/presentation/SessionView;)Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;->onSessionViewEndTouch()V

    const/4 p1, 0x1

    return p1
.end method
