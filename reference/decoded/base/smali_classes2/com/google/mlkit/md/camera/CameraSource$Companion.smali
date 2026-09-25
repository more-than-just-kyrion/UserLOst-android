.class public final Lcom/google/mlkit/md/camera/CameraSource$Companion;
.super Ljava/lang/Object;
.source "CameraSource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/md/camera/CameraSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u000bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/google/mlkit/md/camera/CameraSource$Companion;",
        "",
        "()V",
        "CAMERA_FACING_BACK",
        "",
        "DEFAULT_REQUESTED_CAMERA_PREVIEW_HEIGHT",
        "DEFAULT_REQUESTED_CAMERA_PREVIEW_WIDTH",
        "IMAGE_FORMAT",
        "MAX_CAMERA_PREVIEW_WIDTH",
        "MIN_CAMERA_PREVIEW_WIDTH",
        "REQUESTED_CAMERA_FPS",
        "",
        "TAG",
        "",
        "selectPreviewFpsRange",
        "",
        "camera",
        "Landroid/hardware/Camera;",
        "selectSizePair",
        "Lcom/google/mlkit/md/camera/CameraSizePair;",
        "displayAspectRatioInLandscape",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/mlkit/md/camera/CameraSource$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$selectPreviewFpsRange(Lcom/google/mlkit/md/camera/CameraSource$Companion;Landroid/hardware/Camera;)[I
    .locals 0

    .line 418
    invoke-direct {p0, p1}, Lcom/google/mlkit/md/camera/CameraSource$Companion;->selectPreviewFpsRange(Landroid/hardware/Camera;)[I

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$selectSizePair(Lcom/google/mlkit/md/camera/CameraSource$Companion;Landroid/hardware/Camera;F)Lcom/google/mlkit/md/camera/CameraSizePair;
    .locals 0

    .line 418
    invoke-direct {p0, p1, p2}, Lcom/google/mlkit/md/camera/CameraSource$Companion;->selectSizePair(Landroid/hardware/Camera;F)Lcom/google/mlkit/md/camera/CameraSizePair;

    move-result-object p0

    return-object p0
.end method

.method private final selectPreviewFpsRange(Landroid/hardware/Camera;)[I
    .locals 5

    .line 515
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7fffffff

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v3, 0x0

    .line 516
    aget v3, v2, v3

    rsub-int v3, v3, 0x7530

    const/4 v4, 0x1

    .line 517
    aget v4, v2, v4

    rsub-int v4, v4, 0x7530

    .line 518
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v1, :cond_0

    move-object v0, v2

    move v1, v3

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final selectSizePair(Landroid/hardware/Camera;F)Lcom/google/mlkit/md/camera/CameraSizePair;
    .locals 7

    .line 454
    sget-object v0, Lcom/google/mlkit/md/Utils;->INSTANCE:Lcom/google/mlkit/md/Utils;

    invoke-virtual {v0, p1}, Lcom/google/mlkit/md/Utils;->generateValidPreviewSizeList(Landroid/hardware/Camera;)Ljava/util/List;

    move-result-object p1

    .line 460
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/mlkit/md/camera/CameraSizePair;

    .line 461
    invoke-virtual {v3}, Lcom/google/mlkit/md/camera/CameraSizePair;->getPreview()Lcom/google/android/gms/common/images/Size;

    move-result-object v4

    .line 462
    invoke-virtual {v4}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v5

    const/16 v6, 0x190

    if-lt v5, v6, :cond_0

    invoke-virtual {v4}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v5

    const/16 v6, 0x514

    if-le v5, v6, :cond_1

    goto :goto_0

    .line 466
    :cond_1
    invoke-virtual {v4}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v5, v4

    sub-float v4, p2, v5

    .line 467
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v5, v4, v2

    .line 468
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3c23d70a    # 0.01f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    if-eqz v1, :cond_2

    .line 469
    invoke-virtual {v1}, Lcom/google/mlkit/md/camera/CameraSizePair;->getPreview()Lcom/google/android/gms/common/images/Size;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Lcom/google/mlkit/md/camera/CameraSizePair;->getPreview()Lcom/google/android/gms/common/images/Size;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v5

    if-ge v4, v5, :cond_0

    :cond_2
    move-object v1, v3

    goto :goto_0

    :cond_3
    cmpg-float v5, v4, v2

    if-gez v5, :cond_0

    move-object v1, v3

    move v2, v4

    goto :goto_0

    :cond_4
    if-nez v1, :cond_6

    .line 482
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const p2, 0x7fffffff

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/md/camera/CameraSizePair;

    .line 483
    invoke-virtual {v0}, Lcom/google/mlkit/md/camera/CameraSizePair;->getPreview()Lcom/google/android/gms/common/images/Size;

    move-result-object v2

    .line 485
    invoke-virtual {v2}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v3

    add-int/lit16 v3, v3, -0x280

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 486
    invoke-virtual {v2}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v2

    add-int/lit16 v2, v2, -0x168

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v2, v3

    if-ge v2, p2, :cond_5

    move-object v1, v0

    move p2, v2

    goto :goto_1

    :cond_6
    return-object v1
.end method
