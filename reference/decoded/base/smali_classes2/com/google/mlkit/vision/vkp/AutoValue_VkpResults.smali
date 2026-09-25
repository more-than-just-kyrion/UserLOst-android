.class final Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;
.super Lcom/google/mlkit/vision/vkp/VkpResults;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# instance fields
.field private final zza:Lcom/google/mlkit/vision/vkp/VkpStatus;

.field private final zzb:Ljava/util/List;

.field private final zzc:Ljava/util/List;

.field private final zzd:Z

.field private final zze:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/google/mlkit/vision/vkp/VkpStatus;Ljava/util/List;Ljava/util/List;ZLjava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/mlkit/vision/vkp/VkpResults;-><init>()V

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;->zza:Lcom/google/mlkit/vision/vkp/VkpStatus;

    if-eqz p2, :cond_1

    .line 2
    iput-object p2, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;->zzb:Ljava/util/List;

    if-eqz p3, :cond_0

    .line 3
    iput-object p3, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;->zzc:Ljava/util/List;

    iput-boolean p4, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;->zzd:Z

    iput-object p5, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;->zze:Ljava/lang/Boolean;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null getImageLabels"

    .line 3
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null getDetectedObjects"

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null getStatus"

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
    instance-of v1, p1, Lcom/google/mlkit/vision/vkp/VkpResults;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/google/mlkit/vision/vkp/VkpResults;

    iget-object v1, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;->zza:Lcom/google/mlkit/vision/vkp/VkpStatus;

    .line 2
    invoke-virtual {p1}, Lcom/google/mlkit/vision/vkp/VkpResults;->getStatus()Lcom/google/mlkit/vision/vkp/VkpStatus;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;->zzb:Ljava/util/List;

    .line 3
    invoke-virtual {p1}, Lcom/google/mlkit/vision/vkp/VkpResults;->getDetectedObjects()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;->zzc:Ljava/util/List;

    .line 4
    invoke-virtual {p1}, Lcom/google/mlkit/vision/vkp/VkpResults;->getImageLabels()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;->zzd:Z

    .line 5
    invoke-virtual {p1}, Lcom/google/mlkit/vision/vkp/VkpResults;->isFromColdCall()Z

    move-result v3

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;->zze:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/google/mlkit/vision/vkp/VkpResults;->isAccelerated()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/mlkit/vision/vkp/VkpResults;->isAccelerated()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return v0

    :cond_3
    :goto_1
    return v2
.end method

.method public getDetectedObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/vkp/VkpDetectedObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;->zzb:Ljava/util/List;

    return-object v0
.end method

.method public getImageLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/vkp/VkpImageLabel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;->zzc:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Lcom/google/mlkit/vision/vkp/VkpStatus;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;->zza:Lcom/google/mlkit/vision/vkp/VkpStatus;

    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;->zza:Lcom/google/mlkit/vision/vkp/VkpStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;->zzb:Ljava/util/List;

    mul-int/2addr v0, v1

    .line 2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;->zzc:Ljava/util/List;

    mul-int/2addr v0, v1

    .line 3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;->zze:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    .line 3
    iget-boolean v4, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;->zzd:Z

    if-eq v3, v4, :cond_1

    const/16 v3, 0x4d5

    goto :goto_1

    :cond_1
    const/16 v3, 0x4cf

    :goto_1
    mul-int/2addr v0, v1

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public isAccelerated()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;->zze:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isFromColdCall()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;->zzd:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;->zzc:Ljava/util/List;

    iget-object v1, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;->zzb:Ljava/util/List;

    iget-object v2, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;->zza:Lcom/google/mlkit/vision/vkp/VkpStatus;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VkpResults{getStatus="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", getDetectedObjects="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getImageLabels="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isFromColdCall="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;->zzd:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isAccelerated="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;->zze:Ljava/lang/Boolean;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
