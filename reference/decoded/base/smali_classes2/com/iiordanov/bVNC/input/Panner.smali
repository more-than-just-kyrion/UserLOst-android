.class public Lcom/iiordanov/bVNC/input/Panner;
.super Ljava/lang/Object;
.source "Panner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iiordanov/bVNC/input/Panner$DefaultUpdater;,
        Lcom/iiordanov/bVNC/input/Panner$VelocityUpdater;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PANNER"


# instance fields
.field activity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

.field final freq:I

.field handler:Landroid/os/Handler;

.field lastSent:J

.field updater:Lcom/iiordanov/bVNC/input/Panner$VelocityUpdater;

.field velocity:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;Landroid/os/Handler;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 41
    iput v0, p0, Lcom/iiordanov/bVNC/input/Panner;->freq:I

    .line 74
    iput-object p1, p0, Lcom/iiordanov/bVNC/input/Panner;->activity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    .line 75
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/iiordanov/bVNC/input/Panner;->velocity:Landroid/graphics/PointF;

    .line 76
    iput-object p2, p0, Lcom/iiordanov/bVNC/input/Panner;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iiordanov/bVNC/input/Panner;->lastSent:J

    sub-long/2addr v0, v2

    add-long/2addr v2, v0

    .line 103
    iput-wide v2, p0, Lcom/iiordanov/bVNC/input/Panner;->lastSent:J

    long-to-double v2, v0

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    div-double/2addr v2, v4

    .line 105
    iget-object v4, p0, Lcom/iiordanov/bVNC/input/Panner;->activity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-virtual {v4}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getCanvas()Lcom/iiordanov/bVNC/RemoteCanvas;

    move-result-object v4

    .line 107
    iget-object v5, p0, Lcom/iiordanov/bVNC/input/Panner;->velocity:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    float-to-double v5, v5

    mul-double/2addr v5, v2

    double-to-int v5, v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/iiordanov/bVNC/input/Panner;->velocity:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    float-to-double v6, v6

    mul-double/2addr v6, v2

    double-to-int v2, v6

    int-to-float v2, v2

    invoke-virtual {v4, v5, v2}, Lcom/iiordanov/bVNC/RemoteCanvas;->relativePan(FF)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/iiordanov/bVNC/input/Panner;->updater:Lcom/iiordanov/bVNC/input/Panner$VelocityUpdater;

    iget-object v5, p0, Lcom/iiordanov/bVNC/input/Panner;->velocity:Landroid/graphics/PointF;

    invoke-interface {v2, v5, v0, v1}, Lcom/iiordanov/bVNC/input/Panner$VelocityUpdater;->updateVelocity(Landroid/graphics/PointF;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/Panner;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, v4, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget-object v0, v0, Lcom/iiordanov/bVNC/AbstractBitmapData;->drawable:Lcom/iiordanov/bVNC/AbstractBitmapDrawable;

    iget-object v0, v0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->_defaultPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 112
    invoke-virtual {v4}, Lcom/iiordanov/bVNC/RemoteCanvas;->invalidate()V

    .line 113
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/input/Panner;->stop()V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, v4, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget-object v0, v0, Lcom/iiordanov/bVNC/AbstractBitmapData;->drawable:Lcom/iiordanov/bVNC/AbstractBitmapDrawable;

    iget-object v0, v0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->_defaultPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 117
    invoke-virtual {v4}, Lcom/iiordanov/bVNC/RemoteCanvas;->invalidate()V

    .line 118
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/input/Panner;->stop()V

    :goto_0
    return-void
.end method

.method public start(FFLcom/iiordanov/bVNC/input/Panner$VelocityUpdater;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/Panner;->activity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getCanvas()Lcom/iiordanov/bVNC/RemoteCanvas;

    move-result-object v0

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget-object v0, v0, Lcom/iiordanov/bVNC/AbstractBitmapData;->drawable:Lcom/iiordanov/bVNC/AbstractBitmapDrawable;

    iget-object v0, v0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->_defaultPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    if-nez p3, :cond_0

    .line 87
    sget-object p3, Lcom/iiordanov/bVNC/input/Panner$DefaultUpdater;->instance:Lcom/iiordanov/bVNC/input/Panner$DefaultUpdater;

    .line 88
    :cond_0
    iput-object p3, p0, Lcom/iiordanov/bVNC/input/Panner;->updater:Lcom/iiordanov/bVNC/input/Panner$VelocityUpdater;

    .line 89
    iget-object p3, p0, Lcom/iiordanov/bVNC/input/Panner;->velocity:Landroid/graphics/PointF;

    iput p1, p3, Landroid/graphics/PointF;->x:F

    .line 90
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/Panner;->velocity:Landroid/graphics/PointF;

    iput p2, p1, Landroid/graphics/PointF;->y:F

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/iiordanov/bVNC/input/Panner;->lastSent:J

    .line 94
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/Panner;->handler:Landroid/os/Handler;

    const-wide/16 p2, 0xa

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stop()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/Panner;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
