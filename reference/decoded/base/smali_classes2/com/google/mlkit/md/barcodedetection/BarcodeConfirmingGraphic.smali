.class public final Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;
.super Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;
.source "BarcodeConfirmingGraphic.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;",
        "Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;",
        "overlay",
        "Lcom/google/mlkit/md/camera/GraphicOverlay;",
        "barcode",
        "Lcom/google/mlkit/vision/barcode/common/Barcode;",
        "(Lcom/google/mlkit/md/camera/GraphicOverlay;Lcom/google/mlkit/vision/barcode/common/Barcode;)V",
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
.field private final barcode:Lcom/google/mlkit/vision/barcode/common/Barcode;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/md/camera/GraphicOverlay;Lcom/google/mlkit/vision/barcode/common/Barcode;)V
    .locals 1

    const-string v0, "overlay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "barcode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;-><init>(Lcom/google/mlkit/md/camera/GraphicOverlay;)V

    .line 26
    iput-object p2, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;->barcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-super {p0, p1}, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;->draw(Landroid/graphics/Canvas;)V

    .line 33
    sget-object v0, Lcom/google/mlkit/md/settings/PreferenceUtils;->INSTANCE:Lcom/google/mlkit/md/settings/PreferenceUtils;

    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;->getOverlay()Lcom/google/mlkit/md/camera/GraphicOverlay;

    move-result-object v1

    iget-object v2, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;->barcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    invoke-virtual {v0, v1, v2}, Lcom/google/mlkit/md/settings/PreferenceUtils;->getProgressToMeetBarcodeSizeRequirement(Lcom/google/mlkit/md/camera/GraphicOverlay;Lcom/google/mlkit/vision/barcode/common/Barcode;)F

    move-result v0

    .line 34
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const v2, 0x3f733333    # 0.95f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 38
    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 39
    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 40
    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 41
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    goto/16 :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 44
    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 45
    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 47
    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 48
    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 49
    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 51
    :goto_0
    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;->getPathPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
