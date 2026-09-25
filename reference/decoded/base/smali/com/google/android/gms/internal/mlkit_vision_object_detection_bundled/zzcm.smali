.class public final Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcm;
.super Ljava/lang/Object;
.source "com.google.mlkit:object-detection@@17.0.2"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdg;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzch;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzci;,
            Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzco;
        }
    .end annotation

    .line 1
    const-string v0, " to Json"

    .line 0
    const-string v1, "Failed parsing JSON source: "

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdg;->zzb()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;

    if-ne v2, v3, :cond_0

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdg;->zzk(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;)V

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdc;->zza(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdg;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzch;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdg;->zzk(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 6
    :try_start_1
    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcl;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v3

    .line 5
    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcl;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdg;->zzk(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;)V

    .line 6
    throw v0
.end method

.method public static zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzch;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzco;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdg;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdg;-><init>(Ljava/io/Reader;)V

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcm;->zza(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdg;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzch;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcj;

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdg;->zzn()I

    move-result p0

    const/16 v1, 0xa

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzco;

    const-string v0, "Did not consume the entire document."

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzco;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdj; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzco;

    .line 6
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzco;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzci;

    .line 7
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzci;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzco;

    .line 8
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzco;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
