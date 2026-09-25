.class abstract Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafc;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafd;

.field zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafd;

.field zzc:I

.field final synthetic zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafe;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafe;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafd;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafd;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafd;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafc;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafd;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafd;

    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafe;->zzc:I

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafc;->zzc:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafe;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafc;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafd;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafe;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafd;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafd;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafe;

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafe;->zze(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafd;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafd;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafe;

    iget v0, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafe;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafc;->zzc:I

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method final zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafd;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafe;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafc;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafd;

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafe;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafd;

    if-eq v1, v2, :cond_1

    iget v0, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafe;->zzc:I

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafc;->zzc:I

    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafd;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafd;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafc;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafd;

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafd;

    return-object v1

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 2
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
