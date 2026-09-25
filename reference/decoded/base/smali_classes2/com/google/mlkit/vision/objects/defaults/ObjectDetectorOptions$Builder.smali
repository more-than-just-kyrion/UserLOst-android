.class public Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions$Builder;
.super Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase$Builder;
.source "com.google.mlkit:object-detection@@17.0.2"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase$Builder<",
        "Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions$Builder;->build()Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions;-><init>(Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions$Builder;Lcom/google/mlkit/vision/objects/defaults/zza;)V

    return-object v0
.end method

.method public final bridge synthetic enableClassification()Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions$Builder;->enableClassification()Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public enableClassification()Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions$Builder;
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase$Builder;->enableClassification()Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions$Builder;

    return-object v0
.end method

.method public final bridge synthetic enableMultipleObjects()Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions$Builder;->enableMultipleObjects()Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public enableMultipleObjects()Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions$Builder;
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase$Builder;->enableMultipleObjects()Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions$Builder;

    return-object v0
.end method

.method public final bridge synthetic setDetectorMode(I)Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions$Builder;->setDetectorMode(I)Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDetectorMode(I)Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase$Builder;->setDetectorMode(I)Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic setExecutor(Ljava/util/concurrent/Executor;)Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions$Builder;->setExecutor(Ljava/util/concurrent/Executor;)Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase$Builder;->setExecutor(Ljava/util/concurrent/Executor;)Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions$Builder;

    return-object p1
.end method
