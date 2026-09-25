.class public final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# instance fields
.field private zza:J

.field private zzb:J

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;

.field private zzf:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavd;
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zza:J

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
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkj;->zzf(Z)V

    iget-wide v5, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zzb:J

    cmp-long v0, v5, v2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    .line 2
    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkj;->zzf(Z)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zzb:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zza:J

    sub-long/2addr v0, v2

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavd;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavd;-><init>()V

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavd;->zzd(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavd;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;->zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavd;->zzh(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavd;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;->zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavd;->zzg(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavd;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;->zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavd;->zze(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavd;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zzf:I

    if-eqz v0, :cond_2

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavd;->zzf(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavd;

    :cond_2
    return-object v2
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;

    return-void
.end method

.method public final zze()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zzb:J

    return-void
.end method

.method public final zzf(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zzf:I

    return-void
.end method

.method public final zzg()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zza:J

    return-void
.end method
