.class public Lcom/iiordanov/bVNC/input/PanRepeater;
.super Ljava/lang/Object;
.source "PanRepeater.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final speedFactor:F = 0.008f


# instance fields
.field private canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

.field delay:I

.field private handler:Landroid/os/Handler;

.field private velocityX:F

.field private velocityY:F


# direct methods
.method public constructor <init>(Lcom/iiordanov/bVNC/RemoteCanvas;Landroid/os/Handler;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 35
    iput v0, p0, Lcom/iiordanov/bVNC/input/PanRepeater;->delay:I

    .line 40
    iput-object p1, p0, Lcom/iiordanov/bVNC/input/PanRepeater;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    .line 41
    iput-object p2, p0, Lcom/iiordanov/bVNC/input/PanRepeater;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 58
    iget v0, p0, Lcom/iiordanov/bVNC/input/PanRepeater;->velocityX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 59
    iget v1, p0, Lcom/iiordanov/bVNC/input/PanRepeater;->velocityY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    cmpl-float v0, v1, v2

    if-ltz v0, :cond_1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/PanRepeater;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget v1, p0, Lcom/iiordanov/bVNC/input/PanRepeater;->velocityX:F

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/iiordanov/bVNC/input/PanRepeater;->velocityY:F

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iiordanov/bVNC/RemoteCanvas;->relativePan(FF)Z

    .line 63
    iget v0, p0, Lcom/iiordanov/bVNC/input/PanRepeater;->velocityX:F

    const v1, 0x3f9d70a4    # 1.23f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/iiordanov/bVNC/input/PanRepeater;->velocityX:F

    .line 64
    iget v0, p0, Lcom/iiordanov/bVNC/input/PanRepeater;->velocityY:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/iiordanov/bVNC/input/PanRepeater;->velocityY:F

    .line 65
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/PanRepeater;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/iiordanov/bVNC/input/PanRepeater;->delay:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public start(FF)V
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/input/PanRepeater;->stop()V

    const v0, 0x3c03126f    # 0.008f

    mul-float/2addr p1, v0

    .line 46
    iput p1, p0, Lcom/iiordanov/bVNC/input/PanRepeater;->velocityX:F

    mul-float/2addr p2, v0

    .line 47
    iput p2, p0, Lcom/iiordanov/bVNC/input/PanRepeater;->velocityY:F

    .line 49
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/PanRepeater;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/PanRepeater;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
