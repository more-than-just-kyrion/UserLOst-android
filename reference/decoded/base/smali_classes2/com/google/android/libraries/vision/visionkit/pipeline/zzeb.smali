.class public final Lcom/google/android/libraries/vision/visionkit/pipeline/zzeb;
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

.method synthetic constructor <init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zzea;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;->zzc()Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/vision/visionkit/pipeline/zzcv;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzeb;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzy()V

    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzeb;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    .line 2
    check-cast v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;

    invoke-static {v0, p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;->zzd(Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;Lcom/google/android/libraries/vision/visionkit/pipeline/zzcv;)V

    return-object p0
.end method
