.class public final Lcom/google/android/libraries/vision/visionkit/pipeline/zzcp;
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
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;->zzc()Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzcp;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzy()V

    iget-object p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcp;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    .line 2
    check-cast p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;

    const-string v0, "MobileObjectLocalizerV3_1TfLiteClient"

    invoke-static {p1, v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;->zzd(Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzb(J)Lcom/google/android/libraries/vision/visionkit/pipeline/zzcp;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzy()V

    iget-object p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcp;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    .line 2
    check-cast p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;

    const-wide/32 v0, 0x493e0

    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;->zze(Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;J)V

    return-object p0
.end method
