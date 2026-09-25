.class public final Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;
.super Ljava/lang/Object;
.source "com.google.mlkit:object-detection@@17.0.2"


# instance fields
.field zza:Z

.field private zzb:J

.field private zzc:J

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;

.field private final zzf:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;

.field private zzg:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzf:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsv;
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzb:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzd;->zzd(Z)V

    iget-wide v5, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzc:J

    cmp-long v0, v5, v2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    .line 2
    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzd;->zzd(Z)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzc:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzb:J

    sub-long/2addr v0, v2

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsv;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsv;-><init>()V

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsv;->zzd(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsv;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;->zzc()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsv;->zzh(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsv;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;->zzc()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsv;->zzg(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsv;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzf:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;->zzc()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsv;->zze(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsv;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzg:I

    if-eqz v0, :cond_2

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsv;->zzf(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsv;

    :cond_2
    return-object v2
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzf:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zza:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzan;

    return-void
.end method

.method public final zze()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzc:J

    return-void
.end method

.method public final zzf(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzg:I

    return-void
.end method

.method public final zzg()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzb:J

    return-void
.end method

.method public final zzh()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zza:Z

    return-void
.end method
