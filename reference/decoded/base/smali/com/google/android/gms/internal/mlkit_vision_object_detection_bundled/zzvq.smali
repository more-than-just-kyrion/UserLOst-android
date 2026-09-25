.class public final Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvq;
.super Ljava/lang/Object;
.source "com.google.mlkit:object-detection@@17.0.2"


# static fields
.field private static zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvp;


# direct methods
.method public static declared-synchronized zza(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuy;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvf;
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvq;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvq;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvp;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvp;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvp;-><init>(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvo;)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvq;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvp;

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvq;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvp;

    .line 2
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvf;
    .locals 1

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvq;

    monitor-enter p0

    .line 1
    :try_start_0
    const-string v0, "object-detection"

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuy;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzux;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzux;->zzd()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuy;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvq;->zza(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuy;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvf;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
