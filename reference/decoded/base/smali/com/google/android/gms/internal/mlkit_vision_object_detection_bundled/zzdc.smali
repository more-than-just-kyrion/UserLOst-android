.class public final Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdc;
.super Ljava/lang/Object;
.source "com.google.mlkit:object-detection@@17.0.2"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdg;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzch;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcl;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdg;->zzn()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdj; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzde;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcq;

    .line 2
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcq;->zza(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdg;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzch;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdj; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzco;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzco;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzci;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzci;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p0

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzco;

    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzco;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcj;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcj;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzco;

    .line 6
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzco;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
