.class public Lcom/google/mlkit/vision/objects/ObjectDetection;
.super Ljava/lang/Object;
.source "com.google.mlkit:object-detection-common@@18.0.0"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClient(Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase;)Lcom/google/mlkit/vision/objects/ObjectDetector;
    .locals 1

    .line 1
    const-string v0, "options cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator;->getInstance()Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator;->create(Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$DetectorOptions;)Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$MultiFlavorDetector;

    move-result-object p0

    check-cast p0, Lcom/google/mlkit/vision/objects/ObjectDetector;

    return-object p0
.end method
