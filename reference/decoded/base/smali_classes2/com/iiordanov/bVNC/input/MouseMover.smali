.class Lcom/iiordanov/bVNC/input/MouseMover;
.super Lcom/iiordanov/bVNC/input/Panner;
.source "MouseMover.java"


# direct methods
.method public constructor <init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;Landroid/os/Handler;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/iiordanov/bVNC/input/Panner;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 46
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iiordanov/bVNC/input/MouseMover;->lastSent:J

    sub-long/2addr v0, v2

    .line 47
    iget-wide v2, p0, Lcom/iiordanov/bVNC/input/MouseMover;->lastSent:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/iiordanov/bVNC/input/MouseMover;->lastSent:J

    long-to-double v2, v0

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    div-double/2addr v2, v4

    .line 49
    iget-object v4, p0, Lcom/iiordanov/bVNC/input/MouseMover;->activity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-virtual {v4}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getCanvas()Lcom/iiordanov/bVNC/RemoteCanvas;

    move-result-object v4

    .line 50
    invoke-virtual {v4}, Lcom/iiordanov/bVNC/RemoteCanvas;->getPointer()Lcom/iiordanov/bVNC/input/RemotePointer;

    move-result-object v4

    .line 53
    invoke-virtual {v4}, Lcom/iiordanov/bVNC/input/RemotePointer;->getX()I

    move-result v5

    int-to-double v5, v5

    iget-object v7, p0, Lcom/iiordanov/bVNC/input/MouseMover;->velocity:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    float-to-double v7, v7

    mul-double/2addr v7, v2

    add-double/2addr v5, v7

    double-to-int v5, v5

    .line 54
    invoke-virtual {v4}, Lcom/iiordanov/bVNC/input/RemotePointer;->getY()I

    move-result v6

    int-to-double v6, v6

    iget-object v8, p0, Lcom/iiordanov/bVNC/input/MouseMover;->velocity:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    float-to-double v8, v8

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    double-to-int v2, v6

    const/4 v3, 0x0

    .line 53
    invoke-virtual {v4, v5, v2, v3}, Lcom/iiordanov/bVNC/input/RemotePointer;->moveMouseButtonUp(III)V

    .line 55
    iget-object v2, p0, Lcom/iiordanov/bVNC/input/MouseMover;->updater:Lcom/iiordanov/bVNC/input/Panner$VelocityUpdater;

    iget-object v3, p0, Lcom/iiordanov/bVNC/input/MouseMover;->velocity:Landroid/graphics/PointF;

    invoke-interface {v2, v3, v0, v1}, Lcom/iiordanov/bVNC/input/Panner$VelocityUpdater;->updateVelocity(Landroid/graphics/PointF;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/MouseMover;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/input/MouseMover;->stop()V

    :goto_0
    return-void
.end method
