.class public final Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;
.super Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;
.source "BarcodeLoadingGraphic.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\nR\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0008X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u000e\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;",
        "Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;",
        "overlay",
        "Lcom/google/mlkit/md/camera/GraphicOverlay;",
        "loadingAnimator",
        "Landroid/animation/ValueAnimator;",
        "(Lcom/google/mlkit/md/camera/GraphicOverlay;Landroid/animation/ValueAnimator;)V",
        "boxClockwiseCoordinates",
        "",
        "Landroid/graphics/PointF;",
        "[Landroid/graphics/PointF;",
        "coordinateOffsetBits",
        "Landroid/graphics/Point;",
        "[Landroid/graphics/Point;",
        "lastPathPoint",
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
.field private final boxClockwiseCoordinates:[Landroid/graphics/PointF;

.field private final coordinateOffsetBits:[Landroid/graphics/Point;

.field private final lastPathPoint:Landroid/graphics/PointF;

.field private final loadingAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/md/camera/GraphicOverlay;Landroid/animation/ValueAnimator;)V
    .locals 6

    const-string v0, "overlay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadingAnimator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;-><init>(Lcom/google/mlkit/md/camera/GraphicOverlay;)V

    .line 27
    iput-object p2, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->loadingAnimator:Landroid/animation/ValueAnimator;

    const/4 p1, 0x4

    .line 31
    new-array p2, p1, [Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 32
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x1

    aput-object v0, p2, v2

    .line 33
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x2

    aput-object v0, p2, v3

    .line 34
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x3

    aput-object v0, p2, v4

    .line 30
    iput-object p2, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->boxClockwiseCoordinates:[Landroid/graphics/PointF;

    .line 37
    new-array p1, p1, [Landroid/graphics/Point;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object p2, p1, v1

    .line 38
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    aput-object p2, p1, v2

    .line 39
    new-instance p2, Landroid/graphics/Point;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object p2, p1, v3

    .line 40
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    aput-object p2, p1, v4

    .line 36
    iput-object p1, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->coordinateOffsetBits:[Landroid/graphics/Point;

    .line 42
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->lastPathPoint:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-super {p0, p1}, Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;->draw(Landroid/graphics/Canvas;)V

    .line 47
    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    add-float/2addr v0, v1

    const/4 v1, 0x2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 48
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 50
    iget-object v2, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->loadingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v0

    rem-float/2addr v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    .line 53
    rem-int/lit8 v6, v4, 0x2

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    :goto_1
    cmpg-float v7, v2, v6

    if-gtz v7, :cond_1

    .line 55
    iget-object v6, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->lastPathPoint:Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->boxClockwiseCoordinates:[Landroid/graphics/PointF;

    aget-object v7, v7, v4

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->coordinateOffsetBits:[Landroid/graphics/Point;

    aget-object v8, v8, v4

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/PointF;->x:F

    .line 56
    iget-object v6, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->lastPathPoint:Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->boxClockwiseCoordinates:[Landroid/graphics/PointF;

    aget-object v7, v7, v4

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget-object v8, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->coordinateOffsetBits:[Landroid/graphics/Point;

    aget-object v8, v8, v4

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/PointF;->y:F

    .line 57
    iget-object v2, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->lastPathPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->lastPathPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_2

    :cond_1
    sub-float/2addr v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v2

    :goto_3
    if-ge v3, v5, :cond_4

    add-int v2, v4, v3

    .line 68
    rem-int/lit8 v6, v2, 0x4

    add-int/lit8 v2, v2, 0x1

    .line 69
    rem-int/2addr v2, v5

    .line 71
    iget-object v7, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->boxClockwiseCoordinates:[Landroid/graphics/PointF;

    aget-object v7, v7, v2

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->lastPathPoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 72
    iget-object v8, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->boxClockwiseCoordinates:[Landroid/graphics/PointF;

    aget-object v8, v8, v2

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->lastPathPoint:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float/2addr v7, v8

    cmpl-float v8, v7, v0

    if-ltz v8, :cond_3

    .line 75
    iget-object v2, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->lastPathPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->coordinateOffsetBits:[Landroid/graphics/Point;

    aget-object v3, v3, v6

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    .line 76
    iget-object v3, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->lastPathPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->coordinateOffsetBits:[Landroid/graphics/Point;

    aget-object v4, v4, v6

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v3, v0

    .line 74
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_4

    .line 81
    :cond_3
    iget-object v6, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->lastPathPoint:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->boxClockwiseCoordinates:[Landroid/graphics/PointF;

    aget-object v8, v8, v2

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iput v8, v6, Landroid/graphics/PointF;->x:F

    .line 82
    iget-object v6, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->lastPathPoint:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->boxClockwiseCoordinates:[Landroid/graphics/PointF;

    aget-object v2, v8, v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v6, Landroid/graphics/PointF;->y:F

    .line 83
    iget-object v2, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->lastPathPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->lastPathPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float/2addr v0, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 87
    :cond_4
    :goto_4
    invoke-virtual {p0}, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;->getPathPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
