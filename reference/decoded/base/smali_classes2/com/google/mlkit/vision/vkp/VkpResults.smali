.class public abstract Lcom/google/mlkit/vision/vkp/VkpResults;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/mlkit/vision/vkp/VkpStatus;)Lcom/google/mlkit/vision/vkp/VkpResults;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;->zzh()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;

    move-result-object v2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;->zzh()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;-><init>(Lcom/google/mlkit/vision/vkp/VkpStatus;Ljava/util/List;Ljava/util/List;ZLjava/lang/Boolean;)V

    return-object v6
.end method


# virtual methods
.method public abstract getDetectedObjects()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/vkp/VkpDetectedObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImageLabels()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/vkp/VkpImageLabel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStatus()Lcom/google/mlkit/vision/vkp/VkpStatus;
.end method

.method public abstract isAccelerated()Ljava/lang/Boolean;
.end method

.method public abstract isFromColdCall()Z
.end method
