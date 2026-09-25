.class public final Lcom/google/mlkit/md/camera/CameraSourcePreview;
.super Landroid/widget/FrameLayout;
.source "CameraSourcePreview.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/md/camera/CameraSourcePreview$Companion;,
        Lcom/google/mlkit/md/camera/CameraSourcePreview$SurfaceCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCameraSourcePreview.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraSourcePreview.kt\ncom/google/mlkit/md/camera/CameraSourcePreview\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,149:1\n1#2:150\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u0000 \u001e2\u00020\u0001:\u0002\u001e\u001fB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0012\u001a\u00020\u0013H\u0014J0\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0017H\u0014J\u000e\u0010\u001b\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\nJ\u0008\u0010\u001c\u001a\u00020\u0013H\u0002J\u0006\u0010\u001d\u001a\u00020\u0013R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/google/mlkit/md/camera/CameraSourcePreview;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "cameraPreviewSize",
        "Lcom/google/android/gms/common/images/Size;",
        "cameraSource",
        "Lcom/google/mlkit/md/camera/CameraSource;",
        "graphicOverlay",
        "Lcom/google/mlkit/md/camera/GraphicOverlay;",
        "startRequested",
        "",
        "surfaceAvailable",
        "surfaceView",
        "Landroid/view/SurfaceView;",
        "onFinishInflate",
        "",
        "onLayout",
        "changed",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "start",
        "startIfReady",
        "stop",
        "Companion",
        "SurfaceCallback",
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


# static fields
.field public static final Companion:Lcom/google/mlkit/md/camera/CameraSourcePreview$Companion;

.field private static final TAG:Ljava/lang/String; = "CameraSourcePreview"


# instance fields
.field private cameraPreviewSize:Lcom/google/android/gms/common/images/Size;

.field private cameraSource:Lcom/google/mlkit/md/camera/CameraSource;

.field private graphicOverlay:Lcom/google/mlkit/md/camera/GraphicOverlay;

.field private startRequested:Z

.field private surfaceAvailable:Z

.field private final surfaceView:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/mlkit/md/camera/CameraSourcePreview$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/mlkit/md/camera/CameraSourcePreview$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/mlkit/md/camera/CameraSourcePreview;->Companion:Lcom/google/mlkit/md/camera/CameraSourcePreview$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance p2, Landroid/view/SurfaceView;

    invoke-direct {p2, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance v0, Lcom/google/mlkit/md/camera/CameraSourcePreview$SurfaceCallback;

    invoke-direct {v0, p0}, Lcom/google/mlkit/md/camera/CameraSourcePreview$SurfaceCallback;-><init>(Lcom/google/mlkit/md/camera/CameraSourcePreview;)V

    check-cast v0, Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 35
    move-object p1, p2

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/google/mlkit/md/camera/CameraSourcePreview;->addView(Landroid/view/View;)V

    .line 33
    iput-object p2, p0, Lcom/google/mlkit/md/camera/CameraSourcePreview;->surfaceView:Landroid/view/SurfaceView;

    return-void
.end method

.method public static final synthetic access$setSurfaceAvailable$p(Lcom/google/mlkit/md/camera/CameraSourcePreview;Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/google/mlkit/md/camera/CameraSourcePreview;->surfaceAvailable:Z

    return-void
.end method

.method public static final synthetic access$startIfReady(Lcom/google/mlkit/md/camera/CameraSourcePreview;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/google/mlkit/md/camera/CameraSourcePreview;->startIfReady()V

    return-void
.end method

.method private final startIfReady()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-boolean v0, p0, Lcom/google/mlkit/md/camera/CameraSourcePreview;->startRequested:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/mlkit/md/camera/CameraSourcePreview;->surfaceAvailable:Z

    if-eqz v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/google/mlkit/md/camera/CameraSourcePreview;->cameraSource:Lcom/google/mlkit/md/camera/CameraSource;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/mlkit/md/camera/CameraSourcePreview;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const-string v2, "getHolder(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/mlkit/md/camera/CameraSource;->start$UserLOstLibrary_UserLOstRelease(Landroid/view/SurfaceHolder;)V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/google/mlkit/md/camera/CameraSourcePreview;->requestLayout()V

    .line 68
    iget-object v0, p0, Lcom/google/mlkit/md/camera/CameraSourcePreview;->graphicOverlay:Lcom/google/mlkit/md/camera/GraphicOverlay;

    if-eqz v0, :cond_2

    .line 69
    iget-object v1, p0, Lcom/google/mlkit/md/camera/CameraSourcePreview;->cameraSource:Lcom/google/mlkit/md/camera/CameraSource;

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {v0, v1}, Lcom/google/mlkit/md/camera/GraphicOverlay;->setCameraInfo(Lcom/google/mlkit/md/camera/CameraSource;)V

    .line 72
    :cond_1
    invoke-virtual {v0}, Lcom/google/mlkit/md/camera/GraphicOverlay;->clear()V

    :cond_2
    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/google/mlkit/md/camera/CameraSourcePreview;->startRequested:Z

    :cond_3
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 44
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 45
    sget v0, Ltech/ulo/library/R$id;->camera_preview_graphic_overlay:I

    invoke-virtual {p0, v0}, Lcom/google/mlkit/md/camera/CameraSourcePreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/md/camera/GraphicOverlay;

    iput-object v0, p0, Lcom/google/mlkit/md/camera/CameraSourcePreview;->graphicOverlay:Lcom/google/mlkit/md/camera/GraphicOverlay;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 82
    iget-object p1, p0, Lcom/google/mlkit/md/camera/CameraSourcePreview;->cameraSource:Lcom/google/mlkit/md/camera/CameraSource;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/mlkit/md/camera/CameraSource;->getPreviewSize$UserLOstLibrary_UserLOstRelease()Lcom/google/android/gms/common/images/Size;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/mlkit/md/camera/CameraSourcePreview;->cameraPreviewSize:Lcom/google/android/gms/common/images/Size;

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/google/mlkit/md/camera/CameraSourcePreview;->cameraPreviewSize:Lcom/google/android/gms/common/images/Size;

    if-eqz p1, :cond_2

    .line 85
    sget-object p2, Lcom/google/mlkit/md/Utils;->INSTANCE:Lcom/google/mlkit/md/Utils;

    invoke-virtual {p0}, Lcom/google/mlkit/md/camera/CameraSourcePreview;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "getContext(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/google/mlkit/md/Utils;->isPortraitMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 87
    invoke-virtual {p1}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result p1

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result p1

    :goto_0
    int-to-float p1, p1

    div-float/2addr p2, p1

    goto :goto_1

    :cond_2
    int-to-float p1, p4

    int-to-float p2, p5

    div-float p2, p1, p2

    :goto_1
    int-to-float p1, p4

    div-float/2addr p1, p2

    float-to-int p1, p1

    const/4 p2, 0x0

    if-gt p1, p5, :cond_3

    .line 96
    invoke-virtual {p0}, Lcom/google/mlkit/md/camera/CameraSourcePreview;->getChildCount()I

    move-result p3

    move p5, p2

    :goto_2
    if-ge p5, p3, :cond_5

    .line 97
    invoke-virtual {p0, p5}, Lcom/google/mlkit/md/camera/CameraSourcePreview;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2, p2, p4, p1}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_3
    sub-int/2addr p1, p5

    .line 104
    div-int/lit8 p1, p1, 0x2

    .line 105
    invoke-virtual {p0}, Lcom/google/mlkit/md/camera/CameraSourcePreview;->getChildCount()I

    move-result p3

    move v0, p2

    :goto_3
    if-ge v0, p3, :cond_5

    .line 106
    invoke-virtual {p0, v0}, Lcom/google/mlkit/md/camera/CameraSourcePreview;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    .line 108
    sget v3, Ltech/ulo/library/R$id;->static_overlay_container:I

    if-ne v2, v3, :cond_4

    .line 109
    invoke-virtual {v1, p2, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    :cond_4
    neg-int v2, p1

    add-int v3, p5, p1

    .line 112
    invoke-virtual {v1, p2, v2, p4, v3}, Landroid/view/View;->layout(IIII)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 121
    :cond_5
    :try_start_0
    invoke-direct {p0}, Lcom/google/mlkit/md/camera/CameraSourcePreview;->startIfReady()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 123
    const-string p2, "Could not start camera source."

    check-cast p1, Ljava/lang/Throwable;

    const-string p3, "CameraSourcePreview"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void
.end method

.method public final start(Lcom/google/mlkit/md/camera/CameraSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "cameraSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/google/mlkit/md/camera/CameraSourcePreview;->cameraSource:Lcom/google/mlkit/md/camera/CameraSource;

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lcom/google/mlkit/md/camera/CameraSourcePreview;->startRequested:Z

    .line 52
    invoke-direct {p0}, Lcom/google/mlkit/md/camera/CameraSourcePreview;->startIfReady()V

    return-void
.end method

.method public final stop()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/mlkit/md/camera/CameraSourcePreview;->cameraSource:Lcom/google/mlkit/md/camera/CameraSource;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/google/mlkit/md/camera/CameraSource;->stop$UserLOstLibrary_UserLOstRelease()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/google/mlkit/md/camera/CameraSourcePreview;->cameraSource:Lcom/google/mlkit/md/camera/CameraSource;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/google/mlkit/md/camera/CameraSourcePreview;->startRequested:Z

    :cond_0
    return-void
.end method
