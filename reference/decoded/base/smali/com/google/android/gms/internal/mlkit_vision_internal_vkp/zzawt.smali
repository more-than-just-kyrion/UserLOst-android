.class final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawt;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# direct methods
.method public static final zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaws;
    .locals 7

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbys;->zze()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyr;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyr;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyr;

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyr;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyr;

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyr;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyr;

    sget v1, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyr;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyr;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyv;->zze()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyu;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzt()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbys;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyu;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbys;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyu;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyy;->zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyx;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyx;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyx;

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyx;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyx;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyx;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyx;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyx;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyx;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyx;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyx;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzt()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyy;

    .line 16
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyu;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyy;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyu;

    .line 17
    invoke-static {}, Lcom/google/android/libraries/intelligence/acceleration/zzd;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbkr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbkr;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyu;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyu;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzt()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyv;

    .line 19
    invoke-static {}, Lcom/google/android/libraries/intelligence/acceleration/zzd;->zzb()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzblq;

    move-result-object v1

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbze;->zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbzd;

    move-result-object v2

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzblq;->zzf()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzblp;

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbzb;->zze()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbza;

    move-result-object v4

    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzblp;->zzf()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbza;

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzblp;->zzg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbza;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbza;

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzblp;->zzc()J

    move-result-wide v5

    long-to-int v3, v5

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbza;->zzb(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbza;

    .line 26
    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzt()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbzb;

    .line 27
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbzd;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbzb;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbzd;

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzt()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbze;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawu;

    .line 29
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawu;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyv;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbze;)V

    return-object v2
.end method
