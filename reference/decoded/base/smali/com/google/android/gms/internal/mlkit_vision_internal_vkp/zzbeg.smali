.class public Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeg;
.super Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbft;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;)V

    return-void
.end method


# virtual methods
.method public final zzk()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeg;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzU()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeg;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeg;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zzh()V

    .line 4
    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzu()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;

    return-object v0
.end method

.method public final bridge synthetic zzu()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeg;->zzk()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzw()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeg;->zzk()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;

    move-result-object v0

    return-object v0
.end method

.method protected final zzz()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzz()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeg;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zze()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeg;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zzd()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;

    :cond_0
    return-void
.end method
