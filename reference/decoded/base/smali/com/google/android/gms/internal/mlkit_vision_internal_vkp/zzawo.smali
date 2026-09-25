.class final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawo;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzayl;


# instance fields
.field private zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhx;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;

.field private final zzf:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaws;

.field private final zzg:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxc;

.field private final zzh:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawz;

.field private final zzi:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaws;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxc;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawz;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawo;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawo;->zzc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawo;->zzd:Ljava/lang/String;

    const-string p1, "com.google.perception"

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawo;->zze:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawo;->zzf:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaws;

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawo;->zzg:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxc;

    iput-object p8, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawo;->zzh:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawz;

    iput-object p9, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawo;->zzi:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawq;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawo;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhx;

    return-object v0
.end method

.method public final zzb()Z
    .locals 10

    .line 1
    const-string v0, "AccelerationAllowlist"

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawo;->zze:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;->zzf()V

    :try_start_0
    const-string v2, "Calling goldblum client"

    .line 2
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawo;->zzh:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawz;

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawo;->zzf:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaws;

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawo;->zzg:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxc;

    iget-object v6, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawo;->zzc:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawo;->zzd:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawo;->zze:Ljava/lang/String;

    const/4 v9, 0x2

    .line 3
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawz;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaws;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhx;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawo;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhx;
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxa; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 8
    :try_start_1
    const-string v3, "Exception calling goldblum"

    .line 4
    invoke-static {v0, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawo;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxa;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    move-result-object v3

    .line 5
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxa;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    move-result-object v0

    .line 6
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;->zzd(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;->zze()V

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawo;->zzi:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawq;

    .line 8
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawq;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;)V

    return v0

    .line 7
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;->zze()V

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawo;->zzi:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawq;

    .line 8
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawq;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;)V

    .line 9
    throw v0
.end method
