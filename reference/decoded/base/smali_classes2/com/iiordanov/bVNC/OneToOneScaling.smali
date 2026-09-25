.class Lcom/iiordanov/bVNC/OneToOneScaling;
.super Lcom/iiordanov/bVNC/AbstractScaling;
.source "OneToOneScaling.java"


# static fields
.field static final TAG:Ljava/lang/String; = "OneToOneScaling"


# instance fields
.field canvasXOffset:I

.field canvasYOffset:I

.field private matrix:Landroid/graphics/Matrix;

.field scaling:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    sget v0, Lcom/undatech/remoteClientUi/R$id;->itemOneToOne:I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, v0, v1}, Lcom/iiordanov/bVNC/AbstractScaling;-><init>(ILandroid/widget/ImageView$ScaleType;)V

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/bVNC/OneToOneScaling;->matrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 53
    iput v0, p0, Lcom/iiordanov/bVNC/OneToOneScaling;->scaling:F

    return-void
.end method

.method private resetMatrix()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/iiordanov/bVNC/OneToOneScaling;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 101
    iget-object v0, p0, Lcom/iiordanov/bVNC/OneToOneScaling;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/iiordanov/bVNC/OneToOneScaling;->canvasXOffset:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iiordanov/bVNC/OneToOneScaling;->canvasYOffset:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    return-void
.end method

.method private resolveZoom(Lcom/iiordanov/bVNC/RemoteCanvas;)V
    .locals 0

    .line 86
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
    iget v0, p0, Lcom/iiordanov/bVNC/OneToOneScaling;->scaling:F

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
    .locals 2

    .line 109
    invoke-super {p0, p1}, Lcom/iiordanov/bVNC/AbstractScaling;->setScaleTypeForActivity(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    .line 110
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getCanvas()Lcom/iiordanov/bVNC/RemoteCanvas;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 111
    iget-object v0, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    if-nez v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getCenteredXOffset()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/iiordanov/bVNC/OneToOneScaling;->canvasXOffset:I

    .line 114
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getCenteredYOffset()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/iiordanov/bVNC/OneToOneScaling;->canvasYOffset:I

    .line 115
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->computeShiftFromFullToView()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 116
    iput v0, p0, Lcom/iiordanov/bVNC/OneToOneScaling;->scaling:F

    .line 117
    invoke-direct {p0}, Lcom/iiordanov/bVNC/OneToOneScaling;->resetMatrix()V

    .line 118
    iget-object v0, p0, Lcom/iiordanov/bVNC/OneToOneScaling;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/iiordanov/bVNC/OneToOneScaling;->scaling:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 119
    iget-object v0, p0, Lcom/iiordanov/bVNC/OneToOneScaling;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 120
    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/OneToOneScaling;->resolveZoom(Lcom/iiordanov/bVNC/RemoteCanvas;)V

    :cond_1
    :goto_0
    return-void
.end method
