.class public Lcom/undatech/opaque/util/OnTouchViewMover;
.super Ljava/lang/Object;
.source "OnTouchViewMover.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static TAG:Ljava/lang/String; = "OnTouchViewMover"


# instance fields
.field dX:F

.field dY:F

.field delay:J

.field handler:Landroid/os/Handler;

.field runnable:Ljava/lang/Runnable;

.field viewToMove:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/os/Handler;Ljava/lang/Runnable;J)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/undatech/opaque/util/OnTouchViewMover;->viewToMove:Landroid/view/View;

    .line 27
    iput-object p2, p0, Lcom/undatech/opaque/util/OnTouchViewMover;->handler:Landroid/os/Handler;

    .line 28
    iput-object p3, p0, Lcom/undatech/opaque/util/OnTouchViewMover;->runnable:Ljava/lang/Runnable;

    .line 29
    iput-wide p4, p0, Lcom/undatech/opaque/util/OnTouchViewMover;->delay:J

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 34
    sget-object p1, Lcom/undatech/opaque/util/OnTouchViewMover;->TAG:Ljava/lang/String;

    const-string v0, "onTouch called"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    sget-object p1, Lcom/undatech/opaque/util/OnTouchViewMover;->TAG:Ljava/lang/String;

    const-string v0, "Moving toolbar"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object p1, p0, Lcom/undatech/opaque/util/OnTouchViewMover;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/undatech/opaque/util/OnTouchViewMover;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 39
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    .line 53
    sget-object p1, Lcom/undatech/opaque/util/OnTouchViewMover;->TAG:Ljava/lang/String;

    const-string p2, "onTouch called default"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object p1, p0, Lcom/undatech/opaque/util/OnTouchViewMover;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 55
    sget-object p1, Lcom/undatech/opaque/util/OnTouchViewMover;->TAG:Ljava/lang/String;

    const-string p2, "onTouch called default, handler not null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object p1, p0, Lcom/undatech/opaque/util/OnTouchViewMover;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/undatech/opaque/util/OnTouchViewMover;->runnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/undatech/opaque/util/OnTouchViewMover;->delay:J

    add-long/2addr v1, v3

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 58
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 p2, 0x15

    .line 59
    iput p2, p1, Landroid/os/Message;->what:I

    .line 60
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 61
    iget-object v1, p0, Lcom/undatech/opaque/util/OnTouchViewMover;->viewToMove:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v1, v1

    const-string v2, "useLastPositionToolbarX"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    sget-object v1, Lcom/undatech/opaque/util/OnTouchViewMover;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onTouch called default, handler not null, x coordinate"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/undatech/opaque/util/OnTouchViewMover;->viewToMove:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v1, p0, Lcom/undatech/opaque/util/OnTouchViewMover;->viewToMove:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    const-string v2, "useLastPositionToolbarY"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    const-string v1, "useLastPositionToolbarMoved"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    sget-object v0, Lcom/undatech/opaque/util/OnTouchViewMover;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Moving toolbar, default, handler not null, y coordinate"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/undatech/opaque/util/OnTouchViewMover;->viewToMove:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 68
    iget-object p2, p0, Lcom/undatech/opaque/util/OnTouchViewMover;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 46
    :cond_2
    sget-object p1, Lcom/undatech/opaque/util/OnTouchViewMover;->TAG:Ljava/lang/String;

    const-string v1, "onTouch called ACTION_MOVE"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object p1, p0, Lcom/undatech/opaque/util/OnTouchViewMover;->viewToMove:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/undatech/opaque/util/OnTouchViewMover;->dX:F

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v1, p0, Lcom/undatech/opaque/util/OnTouchViewMover;->dY:F

    add-float/2addr p2, v1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 48
    iget-object p1, p0, Lcom/undatech/opaque/util/OnTouchViewMover;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_4

    .line 49
    iget-object p2, p0, Lcom/undatech/opaque/util/OnTouchViewMover;->runnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/undatech/opaque/util/OnTouchViewMover;->delay:J

    add-long/2addr v1, v3

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 41
    :cond_3
    sget-object p1, Lcom/undatech/opaque/util/OnTouchViewMover;->TAG:Ljava/lang/String;

    const-string v1, "onTouch called ACTION_DOWN"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object p1, p0, Lcom/undatech/opaque/util/OnTouchViewMover;->viewToMove:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr p1, v1

    iput p1, p0, Lcom/undatech/opaque/util/OnTouchViewMover;->dX:F

    .line 43
    iget-object p1, p0, Lcom/undatech/opaque/util/OnTouchViewMover;->viewToMove:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/undatech/opaque/util/OnTouchViewMover;->dY:F

    :cond_4
    :goto_0
    return v0
.end method
