.class public final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzayj;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# static fields
.field private static zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzayi;


# direct methods
.method public static declared-synchronized zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxu;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxz;
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzayj;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzayj;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzayi;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzayi;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzayi;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzayh;)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzayj;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzayi;

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzayj;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzayi;

    .line 2
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzayi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxz;
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

.method public static declared-synchronized zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxz;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzayj;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxu;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxt;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxt;->zzd()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxu;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzayj;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxu;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxz;

    move-result-object p0
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
