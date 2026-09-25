.class public final Lcom/google/mlkit/vision/objects/defaults/internal/zzi;
.super Ljava/lang/Object;
.source "com.google.mlkit:object-detection@@17.0.2"


# direct methods
.method public static zza(Lcom/google/mlkit/vision/vkp/VkpStatus;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;-><init>()V

    invoke-virtual {p0}, Lcom/google/mlkit/vision/vkp/VkpStatus;->getErrors()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/vision/vkp/VkpStatus$VkpError;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsq;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsq;-><init>()V

    .line 2
    invoke-virtual {v1}, Lcom/google/mlkit/vision/vkp/VkpStatus$VkpError;->getErrorSpaceNumber()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;->zzb(I)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsq;->zzb(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsq;

    .line 3
    invoke-virtual {v1}, Lcom/google/mlkit/vision/vkp/VkpStatus$VkpError;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsq;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsq;->zzd()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzst;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;->zzc()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrs;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrp;-><init>()V

    invoke-virtual {p0}, Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions;->getDetectorMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected detector mode: "

    .line 2
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ObjectsLoggingUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;->zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;

    .line 1
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrp;->zzb(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrp;

    .line 3
    invoke-virtual {p0}, Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions;->isMultipleObjectsEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrp;->zzc(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrp;

    .line 4
    invoke-virtual {p0}, Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions;->isClassificationEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrp;->zza(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrp;->zze()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrs;

    move-result-object p0

    return-object p0
.end method
