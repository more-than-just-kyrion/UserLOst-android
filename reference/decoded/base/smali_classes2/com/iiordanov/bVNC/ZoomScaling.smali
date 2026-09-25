.class Lcom/iiordanov/bVNC/ZoomScaling;
.super Lcom/iiordanov/bVNC/AbstractScaling;
.source "ZoomScaling.java"


# static fields
.field static final TAG:Ljava/lang/String; = "ZoomScaling"


# instance fields
.field canvasXOffset:I

.field canvasYOffset:I

.field private matrix:Landroid/graphics/Matrix;

.field minimumScale:F

.field scaling:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    sget v0, Lcom/undatech/remoteClientUi/R$id;->itemFitToScreen:I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, v0, v1}, Lcom/iiordanov/bVNC/AbstractScaling;-><init>(ILandroid/widget/ImageView$ScaleType;)V

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/bVNC/ZoomScaling;->matrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 49
    iput v0, p0, Lcom/iiordanov/bVNC/ZoomScaling;->scaling:F

    return-void
.end method

.method private resetMatrix()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/iiordanov/bVNC/ZoomScaling;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 184
    iget-object v0, p0, Lcom/iiordanov/bVNC/ZoomScaling;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/iiordanov/bVNC/ZoomScaling;->canvasXOffset:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iiordanov/bVNC/ZoomScaling;->canvasYOffset:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    return-void
.end method

.method private resolveZoom(Lcom/iiordanov/bVNC/RemoteCanvas;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Lcom/iiordanov/bVNC/ZoomScaling;->resetMatrix()V

    .line 83
    iget-object v0, p0, Lcom/iiordanov/bVNC/ZoomScaling;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/iiordanov/bVNC/ZoomScaling;->scaling:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 84
    iget-object v0, p0, Lcom/iiordanov/bVNC/ZoomScaling;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 85
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->resetScroll()V

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p1, v0, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->relativePan(FF)Z

    return-void
.end method

.method private standardizeScaling()V
    .locals 2

    .line 191
    iget v0, p0, Lcom/iiordanov/bVNC/ZoomScaling;->scaling:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/iiordanov/bVNC/ZoomScaling;->scaling:F

    return-void
.end method


# virtual methods
.method public changeZoom(Lcom/iiordanov/bVNC/RemoteCanvasActivity;FFF)V
    .locals 7

    .line 139
    iget v0, p0, Lcom/iiordanov/bVNC/ZoomScaling;->scaling:F

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p2, p2, v1

    if-gez p2, :cond_0

    .line 141
    iget p2, p0, Lcom/iiordanov/bVNC/ZoomScaling;->minimumScale:F

    cmpg-float v2, v0, p2

    if-gez v2, :cond_1

    goto :goto_0

    :cond_0
    const/high16 p2, 0x40800000    # 4.0f

    cmpl-float v2, v0, p2

    if-lez v2, :cond_1

    :goto_0
    move v0, p2

    .line 151
    :cond_1
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getCanvas()Lcom/iiordanov/bVNC/RemoteCanvas;

    move-result-object p1

    .line 153
    iget p2, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteXPosition:I

    .line 154
    iget v2, p0, Lcom/iiordanov/bVNC/ZoomScaling;->scaling:F

    div-float/2addr p3, v2

    int-to-float p2, p2

    add-float/2addr p3, p2

    mul-float v3, v2, p2

    mul-float/2addr v2, p3

    sub-float/2addr v3, v2

    mul-float/2addr p3, v0

    add-float/2addr v3, p3

    div-float/2addr v3, v0

    .line 156
    iget p3, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteYPosition:I

    .line 157
    iget v2, p0, Lcom/iiordanov/bVNC/ZoomScaling;->scaling:F

    div-float/2addr p4, v2

    int-to-float p3, p3

    add-float/2addr p4, p3

    mul-float v4, v2, p3

    mul-float v5, v2, p4

    sub-float/2addr v4, v5

    mul-float/2addr p4, v0

    add-float/2addr v4, p4

    div-float/2addr v4, v0

    const p4, 0x3f666666    # 0.9f

    cmpl-float v5, v0, p4

    const v6, 0x3f8ccccd    # 1.1f

    if-lez v5, :cond_2

    cmpg-float v5, v0, v1

    if-ltz v5, :cond_3

    :cond_2
    cmpl-float v5, v0, v1

    if-lez v5, :cond_5

    cmpg-float v5, v0, v6

    if-gez v5, :cond_5

    :cond_3
    cmpg-float p4, v2, p4

    if-ltz p4, :cond_4

    cmpl-float p4, v2, v6

    if-lez p4, :cond_6

    .line 167
    :cond_4
    sget p4, Lcom/undatech/remoteClientUi/R$string;->snap_one_to_one:I

    invoke-virtual {p1, p4}, Lcom/iiordanov/bVNC/RemoteCanvas;->displayShortToastMessage(I)V

    goto :goto_1

    :cond_5
    move v1, v0

    .line 170
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/iiordanov/bVNC/ZoomScaling;->resetMatrix()V

    .line 171
    iput v1, p0, Lcom/iiordanov/bVNC/ZoomScaling;->scaling:F

    .line 172
    iget-object p4, p0, Lcom/iiordanov/bVNC/ZoomScaling;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p4, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 173
    iget-object p4, p0, Lcom/iiordanov/bVNC/ZoomScaling;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p4}, Lcom/iiordanov/bVNC/RemoteCanvas;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 174
    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/ZoomScaling;->resolveZoom(Lcom/iiordanov/bVNC/RemoteCanvas;)V

    cmpl-float p4, v2, v1

    if-eqz p4, :cond_7

    sub-float/2addr v3, p2

    float-to-int p2, v3

    int-to-float p2, p2

    sub-float/2addr v4, p3

    float-to-int p3, v4

    int-to-float p3, p3

    .line 178
    invoke-virtual {p1, p2, p3}, Lcom/iiordanov/bVNC/RemoteCanvas;->relativePan(FF)Z

    :cond_7
    return-void
.end method

.method getDefaultHandlerId()I
    .locals 1

    .line 57
    sget v0, Lcom/undatech/remoteClientUi/R$id;->itemInputTouchPanZoomMouse:I

    return v0
.end method

.method public getZoomFactor()F
    .locals 1

    .line 111
    iget v0, p0, Lcom/iiordanov/bVNC/ZoomScaling;->scaling:F

    return v0
.end method

.method isAbleToPan()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isValidInputMode(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method setScaleTypeForActivity(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V
    .locals 1

    .line 199
    invoke-super {p0, p1}, Lcom/iiordanov/bVNC/AbstractScaling;->setScaleTypeForActivity(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    .line 200
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getCanvas()Lcom/iiordanov/bVNC/RemoteCanvas;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 201
    iget-object v0, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    if-nez v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getCenteredXOffset()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/iiordanov/bVNC/ZoomScaling;->canvasXOffset:I

    .line 204
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getCenteredYOffset()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/iiordanov/bVNC/ZoomScaling;->canvasYOffset:I

    .line 205
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->computeShiftFromFullToView()V

    .line 206
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getMinimumScale()F

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/ZoomScaling;->minimumScale:F

    .line 207
    iput v0, p0, Lcom/iiordanov/bVNC/ZoomScaling;->scaling:F

    .line 208
    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/ZoomScaling;->resolveZoom(Lcom/iiordanov/bVNC/RemoteCanvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method zoomIn(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V
    .locals 4

    .line 94
    invoke-direct {p0}, Lcom/iiordanov/bVNC/ZoomScaling;->resetMatrix()V

    .line 95
    invoke-direct {p0}, Lcom/iiordanov/bVNC/ZoomScaling;->standardizeScaling()V

    .line 96
    iget v0, p0, Lcom/iiordanov/bVNC/ZoomScaling;->scaling:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/iiordanov/bVNC/ZoomScaling;->scaling:F

    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 98
    iput v1, p0, Lcom/iiordanov/bVNC/ZoomScaling;->scaling:F

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/ZoomScaling;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/iiordanov/bVNC/ZoomScaling;->scaling:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 102
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getCanvas()Lcom/iiordanov/bVNC/RemoteCanvas;

    move-result-object v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/ZoomScaling;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 103
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getCanvas()Lcom/iiordanov/bVNC/RemoteCanvas;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/ZoomScaling;->resolveZoom(Lcom/iiordanov/bVNC/RemoteCanvas;)V

    return-void
.end method

.method zoomOut(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V
    .locals 4

    .line 119
    invoke-direct {p0}, Lcom/iiordanov/bVNC/ZoomScaling;->resetMatrix()V

    .line 120
    invoke-direct {p0}, Lcom/iiordanov/bVNC/ZoomScaling;->standardizeScaling()V

    .line 121
    iget v0, p0, Lcom/iiordanov/bVNC/ZoomScaling;->scaling:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/iiordanov/bVNC/ZoomScaling;->scaling:F

    .line 122
    iget v1, p0, Lcom/iiordanov/bVNC/ZoomScaling;->minimumScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 123
    iput v1, p0, Lcom/iiordanov/bVNC/ZoomScaling;->scaling:F

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/ZoomScaling;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/iiordanov/bVNC/ZoomScaling;->scaling:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 127
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getCanvas()Lcom/iiordanov/bVNC/RemoteCanvas;

    move-result-object v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/ZoomScaling;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 129
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getCanvas()Lcom/iiordanov/bVNC/RemoteCanvas;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/ZoomScaling;->resolveZoom(Lcom/iiordanov/bVNC/RemoteCanvas;)V

    return-void
.end method
