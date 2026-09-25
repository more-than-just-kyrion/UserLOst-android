.class final Lcom/google/mlkit/vision/vkp/zzb;
.super Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# instance fields
.field private final zza:Z

.field private final zzb:Z

.field private final zzc:Z

.field private final zzd:Z

.field private final zze:F

.field private final zzf:I

.field private final zzg:Lcom/google/mlkit/common/model/LocalModel;

.field private final zzh:Ljava/lang/String;

.field private final zzi:Ljava/lang/String;


# direct methods
.method constructor <init>(ZZZZFILcom/google/mlkit/common/model/LocalModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;-><init>()V

    iput-boolean p1, p0, Lcom/google/mlkit/vision/vkp/zzb;->zza:Z

    iput-boolean p2, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzb:Z

    iput-boolean p3, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzc:Z

    iput-boolean p4, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzd:Z

    iput p5, p0, Lcom/google/mlkit/vision/vkp/zzb;->zze:F

    iput p6, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzf:I

    iput-object p7, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzg:Lcom/google/mlkit/common/model/LocalModel;

    iput-object p8, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzh:Ljava/lang/String;

    if-eqz p9, :cond_0

    iput-object p9, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzi:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null clientLibraryVersion"

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
    instance-of v1, p1, Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;

    iget-boolean v1, p0, Lcom/google/mlkit/vision/vkp/zzb;->zza:Z

    .line 2
    invoke-virtual {p1}, Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;->zzi()Z

    move-result v3

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzb:Z

    .line 3
    invoke-virtual {p1}, Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;->zzh()Z

    move-result v3

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzc:Z

    .line 4
    invoke-virtual {p1}, Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;->zzg()Z

    move-result v3

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzd:Z

    .line 5
    invoke-virtual {p1}, Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;->zzf()Z

    move-result v3

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/google/mlkit/vision/vkp/zzb;->zze:F

    .line 6
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;->zza()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzf:I

    .line 7
    invoke-virtual {p1}, Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;->zzb()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzg:Lcom/google/mlkit/common/model/LocalModel;

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;->zzc()Lcom/google/mlkit/common/model/LocalModel;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;->zzc()Lcom/google/mlkit/common/model/LocalModel;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/mlkit/common/model/LocalModel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzh:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;->zzd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzi:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;->zze()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    :goto_1
    return v2
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/google/mlkit/vision/vkp/zzb;->zza:Z

    const/16 v1, 0x4d5

    const/16 v2, 0x4cf

    const/4 v3, 0x1

    if-eq v3, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v4, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzb:Z

    if-eq v3, v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    const v5, 0xf4243

    xor-int/2addr v0, v5

    iget-boolean v6, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzc:Z

    if-eq v3, v6, :cond_2

    move v6, v1

    goto :goto_2

    :cond_2
    move v6, v2

    :goto_2
    mul-int/2addr v0, v5

    xor-int/2addr v0, v4

    mul-int/2addr v0, v5

    xor-int/2addr v0, v6

    mul-int/2addr v0, v5

    iget-boolean v4, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzd:Z

    if-eq v3, v4, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    xor-int/2addr v0, v1

    mul-int/2addr v0, v5

    iget v1, p0, Lcom/google/mlkit/vision/vkp/zzb;->zze:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzg:Lcom/google/mlkit/common/model/LocalModel;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    .line 2
    :cond_4
    invoke-virtual {v1}, Lcom/google/mlkit/common/model/LocalModel;->hashCode()I

    move-result v1

    .line 1
    :goto_4
    iget v2, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzf:I

    mul-int/2addr v0, v5

    xor-int/2addr v0, v2

    mul-int/2addr v0, v5

    xor-int/2addr v0, v1

    mul-int/2addr v0, v5

    iget-object v1, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzh:Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v5

    iget-object v1, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzi:Ljava/lang/String;

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzg:Lcom/google/mlkit/common/model/LocalModel;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VkpObjectDetectorOptions{streamingMode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/google/mlkit/vision/vkp/zzb;->zza:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", multipleObjectsEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzb:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", classificationEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzc:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", accelerationEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", classificationConfidenceThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/mlkit/vision/vkp/zzb;->zze:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", maxPerObjectLabelCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzf:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", customClassifierLocalModel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", clientLibraryName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzh:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", clientLibraryVersion="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzi:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zza()F
    .locals 1

    iget v0, p0, Lcom/google/mlkit/vision/vkp/zzb;->zze:F

    return v0
.end method

.method final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzf:I

    return v0
.end method

.method final zzc()Lcom/google/mlkit/common/model/LocalModel;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzg:Lcom/google/mlkit/common/model/LocalModel;

    return-object v0
.end method

.method final zzd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method final zze()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method final zzf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzd:Z

    return v0
.end method

.method final zzg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzc:Z

    return v0
.end method

.method final zzh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mlkit/vision/vkp/zzb;->zzb:Z

    return v0
.end method

.method final zzi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mlkit/vision/vkp/zzb;->zza:Z

    return v0
.end method
