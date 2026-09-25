.class public abstract Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;
.super Lcom/google/mlkit/md/camera/GraphicOverlay$Graphic;
.source "BarcodeGraphicBase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008 \u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0010\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;",
        "Lcom/google/mlkit/md/camera/GraphicOverlay$Graphic;",
        "overlay",
        "Lcom/google/mlkit/md/camera/GraphicOverlay;",
        "(Lcom/google/mlkit/md/camera/GraphicOverlay;)V",
        "boxCornerRadius",
        "",
        "getBoxCornerRadius",
        "()F",
        "boxPaint",
        "Landroid/graphics/Paint;",
        "boxRect",
        "Landroid/graphics/RectF;",
        "getBoxRect",
        "()Landroid/graphics/RectF;",
        "eraserPaint",
        "pathPaint",
        "getPathPaint",
        "()Landroid/graphics/Paint;",
        "scrimPaint",
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
.field private final boxCornerRadius:F

.field private final boxPaint:Landroid/graphics/Paint;

.field private final boxRect:Landroid/graphics/RectF;

.field private final eraserPaint:Landroid/graphics/Paint;

.field private final pathPaint:Landroid/graphics/Paint;

.field private final scrimPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/md/camera/GraphicOverlay;)V
    .locals 4

    const-string v0, "overlay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/google/mlkit/md/camera/GraphicOverlay$Graphic;-><init>(Lcom/google/mlkit/md/camera/GraphicOverlay;)V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 36
    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Ltech/ulo/library/R$color;->barcode_reticle_stroke:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ltech/ulo/library/R$dimen;->barcode_reticle_stroke_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 35
    iput-object v0, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;->boxPaint:Landroid/graphics/Paint;

    .line 41
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 42
    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Ltech/ulo/library/R$color;->barcode_reticle_background:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iput-object v1, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;->scrimPaint:Landroid/graphics/Paint;

    .line 45
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 46
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast v2, Landroid/graphics/Xfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 45
    iput-object v1, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;->eraserPaint:Landroid/graphics/Paint;

    .line 51
    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ltech/ulo/library/R$dimen;->barcode_reticle_corner_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;->boxCornerRadius:F

    .line 53
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, -0x1

    .line 54
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 57
    new-instance v0, Landroid/graphics/CornerPathEffect;

    invoke-direct {v0, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    check-cast v0, Landroid/graphics/PathEffect;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 53
    iput-object v2, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;->pathPaint:Landroid/graphics/Paint;

    .line 60
    sget-object v0, Lcom/google/mlkit/md/settings/PreferenceUtils;->INSTANCE:Lcom/google/mlkit/md/settings/PreferenceUtils;

    invoke-virtual {v0, p1}, Lcom/google/mlkit/md/settings/PreferenceUtils;->getBarcodeReticleBox(Lcom/google/mlkit/md/camera/GraphicOverlay;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;->boxRect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;->scrimPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 67
    iget-object v0, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;->eraserPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    iget-object v0, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;->boxRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;->boxCornerRadius:F

    iget-object v2, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;->eraserPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 69
    iget-object v0, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;->eraserPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object v0, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;->boxRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;->boxCornerRadius:F

    iget-object v2, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;->eraserPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 72
    iget-object v0, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;->boxRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;->boxCornerRadius:F

    iget-object v2, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;->boxPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final getBoxCornerRadius()F
    .locals 1

    .line 50
    iget v0, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;->boxCornerRadius:F

    return v0
.end method

.method public final getBoxRect()Landroid/graphics/RectF;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;->boxRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final getPathPaint()Landroid/graphics/Paint;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;->pathPaint:Landroid/graphics/Paint;

    return-object v0
.end method
