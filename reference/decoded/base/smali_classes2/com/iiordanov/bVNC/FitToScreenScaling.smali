.class Lcom/iiordanov/bVNC/FitToScreenScaling;
.super Lcom/iiordanov/bVNC/AbstractScaling;
.source "FitToScreenScaling.java"


# static fields
.field static final TAG:Ljava/lang/String; = "FitToScreenScaling"


# instance fields
.field canvasXOffset:I

.field canvasYOffset:I

.field private matrix:Landroid/graphics/Matrix;

.field minimumScale:F

.field scaling:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    sget v0, Lcom/undatech/remoteClientUi/R$id;->itemFitToScreen:I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, v0, v1}, Lcom/iiordanov/bVNC/AbstractScaling;-><init>(ILandroid/widget/ImageView$ScaleType;)V

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/bVNC/FitToScreenScaling;->matrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/iiordanov/bVNC/FitToScreenScaling;->scaling:F

    return-void
.end method

.method private resetMatrix()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/iiordanov/bVNC/FitToScreenScaling;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 101
    iget-object v0, p0, Lcom/iiordanov/bVNC/FitToScreenScaling;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/iiordanov/bVNC/FitToScreenScaling;->canvasXOffset:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iiordanov/bVNC/FitToScreenScaling;->canvasYOffset:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    return-void
.end method

.method private resolveZoom(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V
    .locals 0

    .line 86
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getCanvas()Lcom/iiordanov/bVNC/RemoteCanvas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->resetScroll()V

    return-void
.end method


# virtual methods
.method getDefaultHandlerId()I
    .locals 1

    .line 61
    sget v0, Lcom/undatech/remoteClientUi/R$id;->itemInputTouchPanZoomMouse:I

    return v0
.end method

.method public getZoomFactor()F
    .locals 1

    .line 95
    iget v0, p0, Lcom/iiordanov/bVNC/FitToScreenScaling;->scaling:F

    return v0
.end method

.method isAbleToPan()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isValidInputMode(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method setScaleTypeForActivity(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V
    .locals 5

    .line 109
    invoke-super {p0, p1}, Lcom/iiordanov/bVNC/AbstractScaling;->setScaleTypeForActivity(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    .line 110
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getCanvas()Lcom/iiordanov/bVNC/RemoteCanvas;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 111
    iget-object v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    if-nez v1, :cond_0

    goto :goto_1

    .line 113
    :cond_0
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getCenteredXOffset()I

    move-result v1

    neg-int v1, v1

    iput v1, p0, Lcom/iiordanov/bVNC/FitToScreenScaling;->canvasXOffset:I

    .line 114
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getCenteredYOffset()I

    move-result v1

    neg-int v1, v1

    iput v1, p0, Lcom/iiordanov/bVNC/FitToScreenScaling;->canvasYOffset:I

    .line 115
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->computeShiftFromFullToView()V

    .line 116
    iget-object v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/AbstractBitmapData;->getMinimumScale()F

    move-result v1

    iput v1, p0, Lcom/iiordanov/bVNC/FitToScreenScaling;->minimumScale:F

    .line 117
    iput v1, p0, Lcom/iiordanov/bVNC/FitToScreenScaling;->scaling:F

    .line 118
    invoke-direct {p0}, Lcom/iiordanov/bVNC/FitToScreenScaling;->resetMatrix()V

    .line 119
    iget-object v1, p0, Lcom/iiordanov/bVNC/FitToScreenScaling;->matrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/iiordanov/bVNC/FitToScreenScaling;->scaling:F

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 120
    iget-object v1, p0, Lcom/iiordanov/bVNC/FitToScreenScaling;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->setImageMatrix(Landroid/graphics/Matrix;)V

    const/4 v1, 0x0

    .line 122
    iput v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteXPosition:I

    .line 123
    iput v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteYPosition:I

    .line 124
    iget-object v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/AbstractBitmapData;->widthRatioLessThanHeightRatio()Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v1, :cond_1

    .line 125
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v3}, Lcom/undatech/opaque/RfbConnectable;->framebufferWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/iiordanov/bVNC/FitToScreenScaling;->minimumScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    div-float/2addr v1, v4

    float-to-int v1, v1

    neg-int v1, v1

    iput v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteXPosition:I

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v3}, Lcom/undatech/opaque/RfbConnectable;->framebufferHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/iiordanov/bVNC/FitToScreenScaling;->minimumScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    div-float/2addr v1, v4

    float-to-int v1, v1

    neg-int v1, v1

    iput v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteYPosition:I

    .line 129
    :goto_0
    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/FitToScreenScaling;->resolveZoom(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    const/4 p1, 0x0

    .line 130
    invoke-virtual {v0, p1, p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->relativePan(FF)Z

    :cond_2
    :goto_1
    return-void
.end method
