.class public abstract Lcom/google/mlkit/vision/vkp/VkpStatus;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/vision/vkp/VkpStatus$VkpError;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Lcom/google/mlkit/common/MlKitException;)Lcom/google/mlkit/vision/vkp/VkpStatus;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus;

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzld;->zzj()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzld;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus;-><init>(ZLcom/google/mlkit/common/MlKitException;Ljava/util/Set;)V

    return-object v0
.end method

.method public static zzb()Lcom/google/mlkit/vision/vkp/VkpStatus;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus;

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzld;->zzj()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzld;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus;-><init>(ZLcom/google/mlkit/common/MlKitException;Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public abstract getErrors()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/mlkit/vision/vkp/VkpStatus$VkpError;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMlKitException()Lcom/google/mlkit/common/MlKitException;
.end method

.method public abstract isSuccess()Z
.end method

.method public throwsMlKitExceptionIfPresent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/mlkit/vision/vkp/VkpStatus;->getMlKitException()Lcom/google/mlkit/common/MlKitException;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    throw v0
.end method
