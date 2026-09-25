.class final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkl;
.super Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkn;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkm;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzko;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkl;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkm;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkn;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzko;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final zzc(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkl;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkm;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkm;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public final zzd(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkl;->zzb:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkl;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkm;

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkm;->zza:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    if-gt p1, v0, :cond_2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkl;->zzb:Ljava/lang/CharSequence;

    add-int v4, v2, p1

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkl;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkm;

    iget-object v5, v5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkm;->zza:Ljava/lang/String;

    .line 2
    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method
