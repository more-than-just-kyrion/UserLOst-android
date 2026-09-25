.class public final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzlc;
.super Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkt;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkt;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzlc;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkt;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkt;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzld;
    .locals 3

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzlc;->zzb:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzlc;->zza:[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzld;->zzi(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzld;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzld;->size()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzlc;->zzb:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzlc;->zzc:Z

    return-object v0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzlc;->zza:[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzlo;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzlo;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 1
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzlm;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzlm;

    return-object v0
.end method
