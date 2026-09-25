.class final Lcom/google/mlkit/vision/vkp/AutoValue_VkpDetectedObject;
.super Lcom/google/mlkit/vision/vkp/VkpDetectedObject;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# instance fields
.field private final zza:Landroid/graphics/Rect;

.field private final zzb:Ljava/lang/Integer;

.field private final zzc:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/graphics/Rect;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/mlkit/vision/vkp/VkpDetectedObject;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpDetectedObject;->zza:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpDetectedObject;->zzb:Ljava/lang/Integer;

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpDetectedObject;->zzc:Ljava/util/List;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null labels"

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
    instance-of v1, p1, Lcom/google/mlkit/vision/vkp/VkpDetectedObject;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/google/mlkit/vision/vkp/VkpDetectedObject;

    iget-object v1, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpDetectedObject;->zza:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p1}, Lcom/google/mlkit/vision/vkp/VkpDetectedObject;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpDetectedObject;->zzb:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/mlkit/vision/vkp/VkpDetectedObject;->getTrackingId()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/mlkit/vision/vkp/VkpDetectedObject;->getTrackingId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpDetectedObject;->zzc:Ljava/util/List;

    .line 4
    invoke-virtual {p1}, Lcom/google/mlkit/vision/vkp/VkpDetectedObject;->getLabels()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    :goto_1
    return v2
.end method

.method public getBoundingBox()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpDetectedObject;->zza:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/vkp/VkpImageLabel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpDetectedObject;->zzc:Ljava/util/List;

    return-object v0
.end method

.method public getTrackingId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpDetectedObject;->zzb:Ljava/lang/Integer;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpDetectedObject;->zza:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpDetectedObject;->zzb:Ljava/lang/Integer;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_0
    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1
    iget-object v1, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpDetectedObject;->zzc:Ljava/util/List;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpDetectedObject;->zzc:Ljava/util/List;

    iget-object v1, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpDetectedObject;->zza:Landroid/graphics/Rect;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VkpDetectedObject{boundingBox="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trackingId="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpDetectedObject;->zzb:Ljava/lang/Integer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", labels="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
