.class public final Lcom/google/android/libraries/vision/visionkit/pipeline/zzco;
.super Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbft;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zzcn;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcv;->zzc()Lcom/google/android/libraries/vision/visionkit/pipeline/zzcv;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/vision/visionkit/pipeline/zzcp;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzco;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzy()V

    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzco;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    .line 2
    check-cast v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzt()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;

    invoke-static {v0, p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcv;->zzd(Lcom/google/android/libraries/vision/visionkit/pipeline/zzcv;Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;)V

    return-object p0
.end method
