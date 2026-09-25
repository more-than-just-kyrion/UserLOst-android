.class final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzky;
.super Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# instance fields
.field final transient zza:I

.field final transient zzb:I

.field final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzky;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzky;->zza:I

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzky;->zzb:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzky;->zzb:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkj;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzky;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzky;->zza:I

    add-int/2addr p1, v1

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzky;->zzb:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;->zzf(II)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;

    move-result-object p1

    return-object p1
.end method

.method final zzb()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzky;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkv;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzky;->zza:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzky;->zzb:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzc()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzky;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkv;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzky;->zza:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zze()[Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzky;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkv;->zze()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(II)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzky;->zzb:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkj;->zze(III)V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzky;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzky;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    .line 2
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;->zzf(II)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;

    move-result-object p1

    return-object p1
.end method
