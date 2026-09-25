.class public final Lcom/google/mlkit/md/barcodedetection/BarcodeReticleGraphic;
.super Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;
.source "BarcodeReticleGraphic.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/google/mlkit/md/barcodedetection/BarcodeReticleGraphic;",
        "Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;",
        "overlay",
        "Lcom/google/mlkit/md/camera/GraphicOverlay;",
        "animator",
        "Lcom/google/mlkit/md/camera/CameraReticleAnimator;",
        "(Lcom/google/mlkit/md/camera/GraphicOverlay;Lcom/google/mlkit/md/camera/CameraReticleAnimator;)V",
        "rippleAlpha",
        "",
        "ripplePaint",
        "Landroid/graphics/Paint;",
        "rippleSizeOffset",
        "rippleStrokeWidth",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "UserLOstLibrary_UserLOstRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final animator:Lcom/google/mlkit/md/camera/CameraReticleAnimator;

.field private final rippleAlpha:I

.field private final ripplePaint:Landroid/graphics/Paint;

.field private final rippleSizeOffset:I

.field private final rippleStrokeWidth:I


# direct methods
.method public constructor <init>(Lcom/google/mlkit/md/camera/GraphicOverlay;Lcom/google/mlkit/md/camera/CameraReticleAnimator;)V
    .locals 2

    const-string v0, "overlay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;-><init>(Lcom/google/mlkit/md/camera/GraphicOverlay;)V

    .line 32
    iput-object p2, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeReticleGraphic;->animator:Lcom/google/mlkit/md/camera/CameraReticleAnimator;

    .line 41
    invoke-virtual {p1}, Lcom/google/mlkit/md/camera/GraphicOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 42
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeReticleGraphic;->ripplePaint:Landroid/graphics/Paint;

    .line 43
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeReticleGraphic;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Ltech/ulo/library/R$color;->reticle_ripple:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    sget v0, Ltech/ulo/library/R$dimen;->barcode_reticle_ripple_size_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeReticleGraphic;->rippleSizeOffset:I

    .line 46
    sget v0, Ltech/ulo/library/R$dimen;->barcode_reticle_ripple_stroke_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeReticleGraphic;->rippleStrokeWidth:I

    .line 47
    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result p1

    iput p1, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeReticleGraphic;->rippleAlpha:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-super {p0, p1}, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;->draw(Landroid/graphics/Canvas;)V

    .line 53
    iget-object v0, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeReticleGraphic;->ripplePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeReticleGraphic;->rippleAlpha:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeReticleGraphic;->animator:Lcom/google/mlkit/md/camera/CameraReticleAnimator;

    invoke-virtual {v2}, Lcom/google/mlkit/md/camera/CameraReticleAnimator;->getRippleAlphaScale()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 54
    iget-object v0, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeReticleGraphic;->ripplePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeReticleGraphic;->rippleStrokeWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeReticleGraphic;->animator:Lcom/google/mlkit/md/camera/CameraReticleAnimator;

    invoke-virtual {v2}, Lcom/google/mlkit/md/camera/CameraReticleAnimator;->getRippleStrokeWidthScale()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    iget v0, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeReticleGraphic;->rippleSizeOffset:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeReticleGraphic;->animator:Lcom/google/mlkit/md/camera/CameraReticleAnimator;

    invoke-virtual {v1}, Lcom/google/mlkit/md/camera/CameraReticleAnimator;->getRippleSizeScale()F

    move-result v1

    mul-float/2addr v0, v1

    .line 56
    new-instance v1, Landroid/graphics/RectF;

    .line 57
    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeReticleGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v0

    .line 58
    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeReticleGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v0

    .line 59
    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeReticleGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v0

    .line 60
    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeReticleGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v0

    .line 56
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 62
    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeReticleGraphic;->getBoxCornerRadius()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeReticleGraphic;->getBoxCornerRadius()F

    move-result v2

    iget-object v3, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeReticleGraphic;->ripplePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
