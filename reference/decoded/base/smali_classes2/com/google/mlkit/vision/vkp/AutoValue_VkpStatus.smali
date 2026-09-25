.class final Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus;
.super Lcom/google/mlkit/vision/vkp/VkpStatus;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# instance fields
.field private final zza:Z

.field private final zzb:Lcom/google/mlkit/common/MlKitException;

.field private final zzc:Ljava/util/Set;


# direct methods
.method constructor <init>(ZLcom/google/mlkit/common/MlKitException;Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/mlkit/vision/vkp/VkpStatus;-><init>()V

    iput-boolean p1, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus;->zza:Z

    iput-object p2, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus;->zzb:Lcom/google/mlkit/common/MlKitException;

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus;->zzc:Ljava/util/Set;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null errors"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/mlkit/vision/vkp/VkpStatus;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/google/mlkit/vision/vkp/VkpStatus;

    iget-boolean v1, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus;->zza:Z

    .line 2
    invoke-virtual {p1}, Lcom/google/mlkit/vision/vkp/VkpStatus;->isSuccess()Z

    move-result v3

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus;->zzb:Lcom/google/mlkit/common/MlKitException;

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/mlkit/vision/vkp/VkpStatus;->getMlKitException()Lcom/google/mlkit/common/MlKitException;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/mlkit/vision/vkp/VkpStatus;->getMlKitException()Lcom/google/mlkit/common/MlKitException;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus;->zzc:Ljava/util/Set;

    .line 4
    invoke-virtual {p1}, Lcom/google/mlkit/vision/vkp/VkpStatus;->getErrors()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    :goto_1
    return v2
.end method

.method public getErrors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/mlkit/vision/vkp/VkpStatus$VkpError;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus;->zzc:Ljava/util/Set;

    return-object v0
.end method

.method public getMlKitException()Lcom/google/mlkit/common/MlKitException;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus;->zzb:Lcom/google/mlkit/common/MlKitException;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus;->zzb:Lcom/google/mlkit/common/MlKitException;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    .line 2
    iget-boolean v2, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus;->zza:Z

    if-eq v1, v2, :cond_1

    const/16 v1, 0x4d5

    goto :goto_1

    :cond_1
    const/16 v1, 0x4cf

    :goto_1
    const v2, 0xf4243

    xor-int/2addr v1, v2

    mul-int/2addr v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus;->zzc:Ljava/util/Set;

    mul-int/2addr v0, v2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus;->zza:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus;->zzc:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus;->zzb:Lcom/google/mlkit/common/MlKitException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VkpStatus{success="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus;->zza:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mlKitException="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errors="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
