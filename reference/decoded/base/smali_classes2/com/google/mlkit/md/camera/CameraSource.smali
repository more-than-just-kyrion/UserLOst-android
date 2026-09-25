.class public final Lcom/google/mlkit/md/camera/CameraSource;
.super Ljava/lang/Object;
.source "CameraSource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/md/camera/CameraSource$Companion;,
        Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 /2\u00020\u0001:\u0002/0B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u001c\u001a\u00020\nH\u0002J\u0010\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0006\u0010\u001e\u001a\u00020\u001fJ\u000e\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u000eJ\u001c\u0010\"\u001a\u00020\u001f2\u0006\u0010\t\u001a\u00020\n2\n\u0010#\u001a\u00060$R\u00020\nH\u0002J\u001c\u0010%\u001a\u00020\u001f2\u0006\u0010\t\u001a\u00020\n2\n\u0010#\u001a\u00060$R\u00020\nH\u0002J\u0015\u0010&\u001a\u00020\u001f2\u0006\u0010\'\u001a\u00020(H\u0000\u00a2\u0006\u0002\u0008)J\r\u0010*\u001a\u00020\u001fH\u0000\u00a2\u0006\u0002\u0008+J\u000e\u0010,\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020.R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0012\u0010\u0014\u001a\u00060\u0015R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcom/google/mlkit/md/camera/CameraSource;",
        "",
        "graphicOverlay",
        "Lcom/google/mlkit/md/camera/GraphicOverlay;",
        "(Lcom/google/mlkit/md/camera/GraphicOverlay;)V",
        "bytesToByteBuffer",
        "Ljava/util/IdentityHashMap;",
        "",
        "Ljava/nio/ByteBuffer;",
        "camera",
        "Landroid/hardware/Camera;",
        "context",
        "Landroid/content/Context;",
        "frameProcessor",
        "Lcom/google/mlkit/md/camera/FrameProcessor;",
        "<set-?>",
        "Lcom/google/android/gms/common/images/Size;",
        "previewSize",
        "getPreviewSize$UserLOstLibrary_UserLOstRelease",
        "()Lcom/google/android/gms/common/images/Size;",
        "processingRunnable",
        "Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;",
        "processingThread",
        "Ljava/lang/Thread;",
        "processorLock",
        "Ljava/lang/Object;",
        "rotationDegrees",
        "",
        "createCamera",
        "createPreviewBuffer",
        "release",
        "",
        "setFrameProcessor",
        "processor",
        "setPreviewAndPictureSize",
        "parameters",
        "Landroid/hardware/Camera$Parameters;",
        "setRotation",
        "start",
        "surfaceHolder",
        "Landroid/view/SurfaceHolder;",
        "start$UserLOstLibrary_UserLOstRelease",
        "stop",
        "stop$UserLOstLibrary_UserLOstRelease",
        "updateFlashMode",
        "flashMode",
        "",
        "Companion",
        "FrameProcessingRunnable",
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
.field public static final CAMERA_FACING_BACK:I = 0x0

.field public static final Companion:Lcom/google/mlkit/md/camera/CameraSource$Companion;

.field private static final DEFAULT_REQUESTED_CAMERA_PREVIEW_HEIGHT:I = 0x168

.field private static final DEFAULT_REQUESTED_CAMERA_PREVIEW_WIDTH:I = 0x280

.field private static final IMAGE_FORMAT:I = 0x11

.field private static final MAX_CAMERA_PREVIEW_WIDTH:I = 0x514

.field private static final MIN_CAMERA_PREVIEW_WIDTH:I = 0x190

.field private static final REQUESTED_CAMERA_FPS:F = 30.0f

.field private static final TAG:Ljava/lang/String; = "CameraSource"


# instance fields
.field private final bytesToByteBuffer:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "[B",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private camera:Landroid/hardware/Camera;

.field private final context:Landroid/content/Context;

.field private frameProcessor:Lcom/google/mlkit/md/camera/FrameProcessor;

.field private final graphicOverlay:Lcom/google/mlkit/md/camera/GraphicOverlay;

.field private previewSize:Lcom/google/android/gms/common/images/Size;

.field private final processingRunnable:Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;

.field private processingThread:Ljava/lang/Thread;

.field private final processorLock:Ljava/lang/Object;

.field private rotationDegrees:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/mlkit/md/camera/CameraSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/mlkit/md/camera/CameraSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/mlkit/md/camera/CameraSource;->Companion:Lcom/google/mlkit/md/camera/CameraSource$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/google/mlkit/md/camera/GraphicOverlay;)V
    .locals 1

    const-string v0, "graphicOverlay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/mlkit/md/camera/CameraSource;->graphicOverlay:Lcom/google/mlkit/md/camera/GraphicOverlay;

    .line 63
    new-instance v0, Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;

    invoke-direct {v0, p0}, Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;-><init>(Lcom/google/mlkit/md/camera/CameraSource;)V

    iput-object v0, p0, Lcom/google/mlkit/md/camera/CameraSource;->processingRunnable:Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/md/camera/CameraSource;->processorLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/md/camera/CameraSource;->bytesToByteBuffer:Ljava/util/IdentityHashMap;

    .line 79
    invoke-virtual {p1}, Lcom/google/mlkit/md/camera/GraphicOverlay;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/mlkit/md/camera/CameraSource;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getBytesToByteBuffer$p(Lcom/google/mlkit/md/camera/CameraSource;)Ljava/util/IdentityHashMap;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/mlkit/md/camera/CameraSource;->bytesToByteBuffer:Ljava/util/IdentityHashMap;

    return-object p0
.end method

.method public static final synthetic access$getCamera$p(Lcom/google/mlkit/md/camera/CameraSource;)Landroid/hardware/Camera;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/mlkit/md/camera/CameraSource;->camera:Landroid/hardware/Camera;

    return-object p0
.end method

.method public static final synthetic access$getFrameProcessor$p(Lcom/google/mlkit/md/camera/CameraSource;)Lcom/google/mlkit/md/camera/FrameProcessor;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/mlkit/md/camera/CameraSource;->frameProcessor:Lcom/google/mlkit/md/camera/FrameProcessor;

    return-object p0
.end method

.method public static final synthetic access$getGraphicOverlay$p(Lcom/google/mlkit/md/camera/CameraSource;)Lcom/google/mlkit/md/camera/GraphicOverlay;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/mlkit/md/camera/CameraSource;->graphicOverlay:Lcom/google/mlkit/md/camera/GraphicOverlay;

    return-object p0
.end method

.method public static final synthetic access$getProcessorLock$p(Lcom/google/mlkit/md/camera/CameraSource;)Ljava/lang/Object;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/mlkit/md/camera/CameraSource;->processorLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getRotationDegrees$p(Lcom/google/mlkit/md/camera/CameraSource;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/google/mlkit/md/camera/CameraSource;->rotationDegrees:I

    return p0
.end method

.method private final createCamera()Landroid/hardware/Camera;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 175
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 176
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/google/mlkit/md/camera/CameraSource;->setPreviewAndPictureSize(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    .line 177
    invoke-direct {p0, v0, v1}, Lcom/google/mlkit/md/camera/CameraSource;->setRotation(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    .line 179
    sget-object v2, Lcom/google/mlkit/md/camera/CameraSource;->Companion:Lcom/google/mlkit/md/camera/CameraSource$Companion;

    invoke-static {v2, v0}, Lcom/google/mlkit/md/camera/CameraSource$Companion;->access$selectPreviewFpsRange(Lcom/google/mlkit/md/camera/CameraSource$Companion;Landroid/hardware/Camera;)[I

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    .line 182
    aget v3, v2, v3

    const/4 v4, 0x1

    .line 183
    aget v2, v2, v4

    .line 181
    invoke-virtual {v1, v3, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    const/16 v2, 0x11

    .line 186
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 188
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    const-string v3, "continuous-video"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_0
    const-string v2, "CameraSource"

    const-string v3, "Camera auto focus is not supported on this device."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 196
    iget-object v1, p0, Lcom/google/mlkit/md/camera/CameraSource;->processingRunnable:Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;

    new-instance v2, Lcom/google/mlkit/md/camera/CameraSource$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/google/mlkit/md/camera/CameraSource$$ExternalSyntheticLambda0;-><init>(Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;)V

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 209
    iget-object v1, p0, Lcom/google/mlkit/md/camera/CameraSource;->previewSize:Lcom/google/android/gms/common/images/Size;

    if-eqz v1, :cond_1

    .line 210
    invoke-direct {p0, v1}, Lcom/google/mlkit/md/camera/CameraSource;->createPreviewBuffer(Lcom/google/android/gms/common/images/Size;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 211
    invoke-direct {p0, v1}, Lcom/google/mlkit/md/camera/CameraSource;->createPreviewBuffer(Lcom/google/android/gms/common/images/Size;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 212
    invoke-direct {p0, v1}, Lcom/google/mlkit/md/camera/CameraSource;->createPreviewBuffer(Lcom/google/android/gms/common/images/Size;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 213
    invoke-direct {p0, v1}, Lcom/google/mlkit/md/camera/CameraSource;->createPreviewBuffer(Lcom/google/android/gms/common/images/Size;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    :cond_1
    return-object v0

    .line 180
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not find suitable preview frames per second range."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "There is no back-facing camera."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final createPreviewBuffer(Lcom/google/android/gms/common/images/Size;)[B
    .locals 5

    const/16 v0, 0x11

    .line 284
    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v0

    .line 285
    invoke-virtual {p1}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result p1

    int-to-long v3, p1

    mul-long/2addr v1, v3

    int-to-long v3, v0

    mul-long/2addr v1, v3

    long-to-double v0, v1

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    .line 286
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    add-int/lit8 p1, p1, 0x1

    .line 290
    new-array p1, p1, [B

    .line 291
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/google/mlkit/md/camera/CameraSource;->bytesToByteBuffer:Ljava/util/IdentityHashMap;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 292
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to create valid buffer for camera source."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final setPreviewAndPictureSize(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    sget-object v0, Lcom/google/mlkit/md/settings/PreferenceUtils;->INSTANCE:Lcom/google/mlkit/md/settings/PreferenceUtils;

    iget-object v1, p0, Lcom/google/mlkit/md/camera/CameraSource;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/mlkit/md/settings/PreferenceUtils;->getUserSpecifiedPreviewSize(Landroid/content/Context;)Lcom/google/mlkit/md/camera/CameraSizePair;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/google/mlkit/md/camera/CameraSource;

    .line 227
    sget-object v0, Lcom/google/mlkit/md/Utils;->INSTANCE:Lcom/google/mlkit/md/Utils;

    iget-object v1, p0, Lcom/google/mlkit/md/camera/CameraSource;->graphicOverlay:Lcom/google/mlkit/md/camera/GraphicOverlay;

    invoke-virtual {v1}, Lcom/google/mlkit/md/camera/GraphicOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/mlkit/md/Utils;->isPortraitMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/google/mlkit/md/camera/CameraSource;->graphicOverlay:Lcom/google/mlkit/md/camera/GraphicOverlay;

    invoke-virtual {v0}, Lcom/google/mlkit/md/camera/GraphicOverlay;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/mlkit/md/camera/CameraSource;->graphicOverlay:Lcom/google/mlkit/md/camera/GraphicOverlay;

    invoke-virtual {v1}, Lcom/google/mlkit/md/camera/GraphicOverlay;->getWidth()I

    move-result v1

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/md/camera/CameraSource;->graphicOverlay:Lcom/google/mlkit/md/camera/GraphicOverlay;

    invoke-virtual {v0}, Lcom/google/mlkit/md/camera/GraphicOverlay;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/mlkit/md/camera/CameraSource;->graphicOverlay:Lcom/google/mlkit/md/camera/GraphicOverlay;

    invoke-virtual {v1}, Lcom/google/mlkit/md/camera/GraphicOverlay;->getHeight()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 232
    sget-object v1, Lcom/google/mlkit/md/camera/CameraSource;->Companion:Lcom/google/mlkit/md/camera/CameraSource$Companion;

    invoke-static {v1, p1, v0}, Lcom/google/mlkit/md/camera/CameraSource$Companion;->access$selectSizePair(Lcom/google/mlkit/md/camera/CameraSource$Companion;Landroid/hardware/Camera;F)Lcom/google/mlkit/md/camera/CameraSizePair;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 233
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Could not find suitable preview size."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 235
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/google/mlkit/md/camera/CameraSizePair;->getPreview()Lcom/google/android/gms/common/images/Size;

    move-result-object p1

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Camera preview size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraSource"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p1}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 238
    sget-object v1, Lcom/google/mlkit/md/settings/PreferenceUtils;->INSTANCE:Lcom/google/mlkit/md/settings/PreferenceUtils;

    iget-object v3, p0, Lcom/google/mlkit/md/camera/CameraSource;->context:Landroid/content/Context;

    sget v4, Ltech/ulo/library/R$string;->pref_key_rear_camera_preview_size:I

    invoke-virtual {p1}, Lcom/google/android/gms/common/images/Size;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/google/mlkit/md/settings/PreferenceUtils;->saveStringPreference(Landroid/content/Context;ILjava/lang/String;)V

    .line 235
    iput-object p1, p0, Lcom/google/mlkit/md/camera/CameraSource;->previewSize:Lcom/google/android/gms/common/images/Size;

    .line 241
    invoke-virtual {v0}, Lcom/google/mlkit/md/camera/CameraSizePair;->getPicture()Lcom/google/android/gms/common/images/Size;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Camera picture size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p1}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 244
    sget-object p2, Lcom/google/mlkit/md/settings/PreferenceUtils;->INSTANCE:Lcom/google/mlkit/md/settings/PreferenceUtils;

    .line 245
    iget-object v0, p0, Lcom/google/mlkit/md/camera/CameraSource;->context:Landroid/content/Context;

    sget v1, Ltech/ulo/library/R$string;->pref_key_rear_camera_picture_size:I

    invoke-virtual {p1}, Lcom/google/android/gms/common/images/Size;->toString()Ljava/lang/String;

    move-result-object p1

    .line 244
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/mlkit/md/settings/PreferenceUtils;->saveStringPreference(Landroid/content/Context;ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method private final setRotation(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    .locals 4

    .line 257
    iget-object v0, p0, Lcom/google/mlkit/md/camera/CameraSource;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    .line 258
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad device rotation value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraSource"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/16 v0, 0x10e

    goto :goto_1

    :cond_1
    const/16 v0, 0xb4

    goto :goto_1

    :cond_2
    const/16 v0, 0x5a

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    .line 269
    :goto_1
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 270
    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 271
    iget v1, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    .line 272
    iput v1, p0, Lcom/google/mlkit/md/camera/CameraSource;->rotationDegrees:I

    .line 273
    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 274
    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    return-void
.end method


# virtual methods
.method public final getPreviewSize$UserLOstLibrary_UserLOstRelease()Lcom/google/android/gms/common/images/Size;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/mlkit/md/camera/CameraSource;->previewSize:Lcom/google/android/gms/common/images/Size;

    return-object v0
.end method

.method public final release()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/google/mlkit/md/camera/CameraSource;->graphicOverlay:Lcom/google/mlkit/md/camera/GraphicOverlay;

    invoke-virtual {v0}, Lcom/google/mlkit/md/camera/GraphicOverlay;->clear()V

    .line 147
    iget-object v0, p0, Lcom/google/mlkit/md/camera/CameraSource;->processorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/google/mlkit/md/camera/CameraSource;->stop$UserLOstLibrary_UserLOstRelease()V

    .line 149
    iget-object v1, p0, Lcom/google/mlkit/md/camera/CameraSource;->frameProcessor:Lcom/google/mlkit/md/camera/FrameProcessor;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/google/mlkit/md/camera/FrameProcessor;->stop()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final setFrameProcessor(Lcom/google/mlkit/md/camera/FrameProcessor;)V
    .locals 2

    const-string v0, "processor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/google/mlkit/md/camera/CameraSource;->graphicOverlay:Lcom/google/mlkit/md/camera/GraphicOverlay;

    invoke-virtual {v0}, Lcom/google/mlkit/md/camera/GraphicOverlay;->clear()V

    .line 155
    iget-object v0, p0, Lcom/google/mlkit/md/camera/CameraSource;->processorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/google/mlkit/md/camera/CameraSource;->frameProcessor:Lcom/google/mlkit/md/camera/FrameProcessor;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/google/mlkit/md/camera/FrameProcessor;->stop()V

    .line 157
    :cond_0
    iput-object p1, p0, Lcom/google/mlkit/md/camera/CameraSource;->frameProcessor:Lcom/google/mlkit/md/camera/FrameProcessor;

    .line 158
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final declared-synchronized start$UserLOstLibrary_UserLOstRelease(Landroid/view/SurfaceHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "surfaceHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/google/mlkit/md/camera/CameraSource;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 93
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/mlkit/md/camera/CameraSource;->createCamera()Landroid/hardware/Camera;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 95
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 93
    iput-object v0, p0, Lcom/google/mlkit/md/camera/CameraSource;->camera:Landroid/hardware/Camera;

    .line 98
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/mlkit/md/camera/CameraSource;->processingRunnable:Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 99
    iget-object v0, p0, Lcom/google/mlkit/md/camera/CameraSource;->processingRunnable:Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;->setActive$UserLOstLibrary_UserLOstRelease(Z)V

    .line 100
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 98
    iput-object p1, p0, Lcom/google/mlkit/md/camera/CameraSource;->processingThread:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized stop$UserLOstLibrary_UserLOstRelease()V
    .locals 6

    const-string v0, "Failed to clear camera preview: "

    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/google/mlkit/md/camera/CameraSource;->processingRunnable:Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;->setActive$UserLOstLibrary_UserLOstRelease(Z)V

    .line 117
    iget-object v1, p0, Lcom/google/mlkit/md/camera/CameraSource;->processingThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 121
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    :catch_0
    :try_start_2
    const-string v1, "CameraSource"

    const-string v3, "Frame processing thread interrupted on stop."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_0
    iput-object v2, p0, Lcom/google/mlkit/md/camera/CameraSource;->processingThread:Ljava/lang/Thread;

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/google/mlkit/md/camera/CameraSource;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 130
    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    :try_start_3
    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v3

    .line 134
    :try_start_4
    const-string v4, "CameraSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_1
    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 137
    iput-object v2, p0, Lcom/google/mlkit/md/camera/CameraSource;->camera:Landroid/hardware/Camera;

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/google/mlkit/md/camera/CameraSource;->bytesToByteBuffer:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public final updateFlashMode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "flashMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/google/mlkit/md/camera/CameraSource;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 163
    :cond_1
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 164
    :goto_1
    iget-object p1, p0, Lcom/google/mlkit/md/camera/CameraSource;->camera:Landroid/hardware/Camera;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :goto_2
    return-void
.end method
