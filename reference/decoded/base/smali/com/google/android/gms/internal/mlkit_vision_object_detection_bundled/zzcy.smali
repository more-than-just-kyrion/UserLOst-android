.class abstract Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcy;
.super Ljava/lang/Object;
.source "com.google.mlkit:object-detection@@17.0.2"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcz;

.field zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcz;

.field zzc:I

.field final synthetic zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzda;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzda;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcy;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzda;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzda;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcz;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcz;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcz;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcy;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcz;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcz;

    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzda;->zzc:I

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcy;->zzc:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcy;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzda;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcy;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcz;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzda;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcz;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcz;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcy;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzda;

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzda;->zze(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcz;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcz;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcy;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzda;

    iget v0, v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzda;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcy;->zzc:I

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method final zza()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcz;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcy;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzda;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcy;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcz;

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzda;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcz;

    if-eq v1, v2, :cond_1

    iget v0, v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzda;->zzc:I

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcy;->zzc:I

    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcz;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcz;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcy;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcz;

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcz;

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
