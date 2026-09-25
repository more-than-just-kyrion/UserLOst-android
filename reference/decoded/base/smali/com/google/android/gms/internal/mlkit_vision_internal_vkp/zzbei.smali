.class final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdz;


# instance fields
.field final zza:I

.field final zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeo;ILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x1ea8e13

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;->zza:I

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;

    .line 2
    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;->zza:I

    const/4 p1, 0x0

    return p1
.end method

.method public final zza()I
    .locals 1

    const v0, 0x1ea8e13

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfr;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfr;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzs(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfx;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfx;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfx;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;->zzb()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhr;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
