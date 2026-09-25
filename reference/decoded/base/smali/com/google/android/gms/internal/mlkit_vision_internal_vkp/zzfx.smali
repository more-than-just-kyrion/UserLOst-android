.class public final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfx;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# direct methods
.method public static zza(Ljava/lang/String;FILjava/lang/String;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhm;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;

    .line 2
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhm;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;

    .line 3
    :goto_0
    invoke-static {v0, p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfx;->zzd(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;FILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;FILjava/lang/String;Landroid/content/Context;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhm;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;

    .line 2
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhm;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;

    move-result-object p0

    .line 4
    invoke-virtual {p4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzp(Ljava/io/InputStream;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;

    .line 5
    :goto_0
    invoke-static {v0, p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfx;->zzd(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;FILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;

    move-result-object p0

    return-object p0
.end method

.method public static zzc(Landroid/content/Context;FI)Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhm;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "mlkit_label_default_model/mobile_ica_8bit_with_metadata_tflite"

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzp(Ljava/io/InputStream;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    move-result-object p0

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;

    const/4 p0, 0x0

    .line 4
    invoke-static {v0, p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfx;->zzd(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;FILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;

    move-result-object p0

    return-object p0
.end method

.method private static zzd(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;FILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;->zze(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;

    .line 3
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;->zzg(F)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;

    :cond_0
    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;->zzh(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;

    .line 6
    :cond_1
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzc()Lcom/google/android/libraries/vision/visionkit/pipeline/zzcf;

    move-result-object p0

    .line 7
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzdu;->zza()Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;

    const/4 p2, 0x1

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;->zzf(Z)Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcf;->zzc(Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzcf;

    .line 11
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzfi;->zza()Lcom/google/android/libraries/vision/visionkit/pipeline/zzfh;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzfh;->zzb(I)Lcom/google/android/libraries/vision/visionkit/pipeline/zzfh;

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcf;->zzd(Lcom/google/android/libraries/vision/visionkit/pipeline/zzfh;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzcf;

    .line 13
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzj;->zza()Lcom/google/android/libraries/vision/visionkit/pipeline/zzi;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzi;->zza(I)Lcom/google/android/libraries/vision/visionkit/pipeline/zzi;

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcf;->zzb(Lcom/google/android/libraries/vision/visionkit/pipeline/zzi;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzcf;

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzt()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;

    return-object p0
.end method
