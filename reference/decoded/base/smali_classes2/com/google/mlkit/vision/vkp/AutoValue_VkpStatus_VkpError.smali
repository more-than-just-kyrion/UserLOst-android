.class final Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus_VkpError;
.super Lcom/google/mlkit/vision/vkp/VkpStatus$VkpError;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# instance fields
.field private final zza:I

.field private final zzb:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/mlkit/vision/vkp/VkpStatus$VkpError;-><init>()V

    iput p1, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus_VkpError;->zza:I

    iput p2, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus_VkpError;->zzb:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/mlkit/vision/vkp/VkpStatus$VkpError;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/mlkit/vision/vkp/VkpStatus$VkpError;

    iget v1, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus_VkpError;->zza:I

    .line 2
    invoke-virtual {p1}, Lcom/google/mlkit/vision/vkp/VkpStatus$VkpError;->getErrorSpaceNumber()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus_VkpError;->zzb:I

    .line 3
    invoke-virtual {p1}, Lcom/google/mlkit/vision/vkp/VkpStatus$VkpError;->getErrorCode()I

    move-result p1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus_VkpError;->zzb:I

    return v0
.end method

.method public getErrorSpaceNumber()I
    .locals 1

    iget v0, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus_VkpError;->zza:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus_VkpError;->zza:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus_VkpError;->zzb:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VkpError{errorSpaceNumber="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus_VkpError;->zza:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus_VkpError;->zzb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
