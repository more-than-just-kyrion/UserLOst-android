.class public Lcom/google/mlkit/vision/objects/internal/ObjectDetectorImpl;
.super Lcom/google/mlkit/vision/common/internal/MobileVisionBase;
.source "com.google.mlkit:object-detection-common@@18.0.0"

# interfaces
.implements Lcom/google/mlkit/vision/objects/ObjectDetector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mlkit/vision/common/internal/MobileVisionBase<",
        "Ljava/util/List<",
        "Lcom/google/mlkit/vision/objects/DetectedObject;",
        ">;>;",
        "Lcom/google/mlkit/vision/objects/ObjectDetector;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/mlkit/common/sdkinternal/MLTask;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;-><init>(Lcom/google/mlkit/common/sdkinternal/MLTask;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static newInstance(Lcom/google/mlkit/common/sdkinternal/MLTask;Ljava/util/concurrent/Executor;)Lcom/google/mlkit/vision/objects/internal/ObjectDetectorImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mlkit/common/sdkinternal/MLTask<",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/objects/DetectedObject;",
            ">;",
            "Lcom/google/mlkit/vision/common/InputImage;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/mlkit/vision/objects/internal/ObjectDetectorImpl;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/mlkit/vision/objects/internal/ObjectDetectorImpl;

    invoke-direct {v0, p0, p1}, Lcom/google/mlkit/vision/objects/internal/ObjectDetectorImpl;-><init>(Lcom/google/mlkit/common/sdkinternal/MLTask;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public final getDetectorType()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public final process(Lcom/google/android/odml/image/MlImage;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/odml/image/MlImage;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/objects/DetectedObject;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/mlkit/vision/objects/internal/ObjectDetectorImpl;->processBase(Lcom/google/android/odml/image/MlImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mlkit/vision/common/InputImage;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/objects/DetectedObject;",
            ">;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->getInstance()Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->cloneByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getWidth()I

    move-result v1

    .line 5
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getHeight()I

    move-result v2

    .line 6
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getRotationDegrees()I

    move-result v3

    .line 7
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getFormat()I

    move-result p1

    .line 8
    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/mlkit/vision/common/InputImage;->fromByteBuffer(Ljava/nio/ByteBuffer;IIII)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object p1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/mlkit/vision/objects/internal/ObjectDetectorImpl;->processBase(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
