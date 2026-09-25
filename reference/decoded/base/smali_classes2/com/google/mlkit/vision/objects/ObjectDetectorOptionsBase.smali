.class public abstract Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase;
.super Ljava/lang/Object;
.source "com.google.mlkit:object-detection-common@@18.0.0"

# interfaces
.implements Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$DetectorOptions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase$Builder;,
        Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase$DetectorMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$DetectorOptions<",
        "Lcom/google/mlkit/vision/objects/ObjectDetector;",
        ">;"
    }
.end annotation


# static fields
.field public static final SINGLE_IMAGE_MODE:I = 0x2

.field public static final STREAM_MODE:I = 0x1


# instance fields
.field private final zza:I

.field private final zzb:Z

.field private final zzc:Z

.field private final zzd:Ljava/util/concurrent/Executor;


# direct methods
.method protected constructor <init>(Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase$Builder;->zza(Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase;->zza:I

    .line 2
    invoke-static {p1}, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase$Builder;->zzd(Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase;->zzb:Z

    .line 3
    invoke-static {p1}, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase$Builder;->zzc(Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase;->zzc:Z

    .line 4
    invoke-static {p1}, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase$Builder;->zzb(Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase$Builder;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase;->zzd:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase;->zza:I

    iget v3, p0, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase;->zza:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p1, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase;->zzc:Z

    iget-boolean v3, p0, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase;->zzc:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p1, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase;->zzb:Z

    iget-boolean v3, p0, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase;->zzb:Z

    if-ne v1, v3, :cond_2

    iget-object p1, p1, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase;->zzd:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase;->zzd:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getDetectorMode()I
    .locals 1

    iget v0, p0, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase;->zza:I

    return v0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase;->zzd:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase;->zza:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase;->zzc:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase;->zzb:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase;->zzd:Ljava/util/concurrent/Executor;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isClassificationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase;->zzc:Z

    return v0
.end method

.method public isMultipleObjectsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase;->zzb:Z

    return v0
.end method
