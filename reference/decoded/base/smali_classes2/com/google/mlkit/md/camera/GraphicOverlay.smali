.class public final Lcom/google/mlkit/md/camera/GraphicOverlay;
.super Landroid/view/View;
.source "GraphicOverlay.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/md/camera/GraphicOverlay$Graphic;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGraphicOverlay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GraphicOverlay.kt\ncom/google/mlkit/md/camera/GraphicOverlay\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,121:1\n1855#2,2:122\n*S KotlinDebug\n*F\n+ 1 GraphicOverlay.kt\ncom/google/mlkit/md/camera/GraphicOverlay\n*L\n117#1:122,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001$B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\tJ\u0006\u0010\u0015\u001a\u00020\u0013J\u0010\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0018H\u0014J\u000e\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fJ\u000e\u0010 \u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u000bJ\u000e\u0010\"\u001a\u00020\u000b2\u0006\u0010#\u001a\u00020\u000bR\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/google/mlkit/md/camera/GraphicOverlay;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "graphics",
        "Ljava/util/ArrayList;",
        "Lcom/google/mlkit/md/camera/GraphicOverlay$Graphic;",
        "heightScaleFactor",
        "",
        "lock",
        "",
        "previewHeight",
        "",
        "previewWidth",
        "widthScaleFactor",
        "add",
        "",
        "graphic",
        "clear",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "setCameraInfo",
        "cameraSource",
        "Lcom/google/mlkit/md/camera/CameraSource;",
        "translateRect",
        "Landroid/graphics/RectF;",
        "rect",
        "Landroid/graphics/Rect;",
        "translateX",
        "x",
        "translateY",
        "y",
        "Graphic",
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
.field private final graphics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/mlkit/md/camera/GraphicOverlay$Graphic;",
            ">;"
        }
    .end annotation
.end field

.field private heightScaleFactor:F

.field private final lock:Ljava/lang/Object;

.field private previewHeight:I

.field private previewWidth:I

.field private widthScaleFactor:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/md/camera/GraphicOverlay;->lock:Ljava/lang/Object;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 45
    iput p1, p0, Lcom/google/mlkit/md/camera/GraphicOverlay;->widthScaleFactor:F

    .line 47
    iput p1, p0, Lcom/google/mlkit/md/camera/GraphicOverlay;->heightScaleFactor:F

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/md/camera/GraphicOverlay;->graphics:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final add(Lcom/google/mlkit/md/camera/GraphicOverlay$Graphic;)V
    .locals 2

    const-string v0, "graphic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/google/mlkit/md/camera/GraphicOverlay;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/google/mlkit/md/camera/GraphicOverlay;->graphics:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final clear()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/google/mlkit/md/camera/GraphicOverlay;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/google/mlkit/md/camera/GraphicOverlay;->graphics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 66
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit v0

    .line 67
    invoke-virtual {p0}, Lcom/google/mlkit/md/camera/GraphicOverlay;->postInvalidate()V

    return-void

    :catchall_0
    move-exception v1

    .line 64
    monitor-exit v0

    throw v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 111
    iget v0, p0, Lcom/google/mlkit/md/camera/GraphicOverlay;->previewWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/mlkit/md/camera/GraphicOverlay;->previewHeight:I

    if-lez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/google/mlkit/md/camera/GraphicOverlay;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/mlkit/md/camera/GraphicOverlay;->previewWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/mlkit/md/camera/GraphicOverlay;->widthScaleFactor:F

    .line 113
    invoke-virtual {p0}, Lcom/google/mlkit/md/camera/GraphicOverlay;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/mlkit/md/camera/GraphicOverlay;->previewHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/mlkit/md/camera/GraphicOverlay;->heightScaleFactor:F

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/md/camera/GraphicOverlay;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/google/mlkit/md/camera/GraphicOverlay;->graphics:Ljava/util/ArrayList;

    check-cast v1, Ljava/lang/Iterable;

    .line 122
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/mlkit/md/camera/GraphicOverlay$Graphic;

    .line 117
    invoke-virtual {v2, p1}, Lcom/google/mlkit/md/camera/GraphicOverlay$Graphic;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 118
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final setCameraInfo(Lcom/google/mlkit/md/camera/CameraSource;)V
    .locals 3

    const-string v0, "cameraSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/google/mlkit/md/camera/CameraSource;->getPreviewSize$UserLOstLibrary_UserLOstRelease()Lcom/google/android/gms/common/images/Size;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 83
    :cond_0
    sget-object v0, Lcom/google/mlkit/md/Utils;->INSTANCE:Lcom/google/mlkit/md/Utils;

    invoke-virtual {p0}, Lcom/google/mlkit/md/camera/GraphicOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/mlkit/md/Utils;->isPortraitMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p1}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/mlkit/md/camera/GraphicOverlay;->previewWidth:I

    .line 86
    invoke-virtual {p1}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/google/mlkit/md/camera/GraphicOverlay;->previewHeight:I

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/mlkit/md/camera/GraphicOverlay;->previewWidth:I

    .line 89
    invoke-virtual {p1}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/google/mlkit/md/camera/GraphicOverlay;->previewHeight:I

    :goto_0
    return-void
.end method

.method public final translateRect(Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 4

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    new-instance v0, Landroid/graphics/RectF;

    .line 101
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/google/mlkit/md/camera/GraphicOverlay;->translateX(F)F

    move-result v1

    .line 102
    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/google/mlkit/md/camera/GraphicOverlay;->translateY(F)F

    move-result v2

    .line 103
    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/google/mlkit/md/camera/GraphicOverlay;->translateX(F)F

    move-result v3

    .line 104
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/google/mlkit/md/camera/GraphicOverlay;->translateY(F)F

    move-result p1

    .line 100
    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public final translateX(F)F
    .locals 1

    .line 93
    iget v0, p0, Lcom/google/mlkit/md/camera/GraphicOverlay;->widthScaleFactor:F

    mul-float/2addr p1, v0

    return p1
.end method

.method public final translateY(F)F
    .locals 1

    .line 94
    iget v0, p0, Lcom/google/mlkit/md/camera/GraphicOverlay;->heightScaleFactor:F

    mul-float/2addr p1, v0

    return p1
.end method
