.class public abstract Lcom/google/mlkit/vision/vkp/VkpImageLabel;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzha;)Lcom/google/mlkit/vision/vkp/VkpImageLabel;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzha;->zzf()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzha;->zze()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/google/mlkit/vision/vkp/AutoValue_VkpImageLabel;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzha;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzha;->zza()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzha;->zzc()I

    move-result p0

    invoke-direct {v1, v2, v0, v3, p0}, Lcom/google/mlkit/vision/vkp/AutoValue_VkpImageLabel;-><init>(Ljava/lang/String;Ljava/lang/String;FI)V

    return-object v1
.end method


# virtual methods
.method public abstract getClassName()Ljava/lang/String;
.end method

.method public abstract getIndex()I
.end method

.method public abstract getScore()F
.end method

.method public abstract getText()Ljava/lang/String;
.end method
