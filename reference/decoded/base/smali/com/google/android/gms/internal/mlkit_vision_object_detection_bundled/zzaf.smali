.class final Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaf;
.super Ljava/util/AbstractCollection;
.source "com.google.mlkit:object-detection@@17.0.2"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzag;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzag;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaf;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzag;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaf;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzag;->clear()V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaf;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzag;->zzl()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzz;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzag;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaf;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzag;->size()I

    move-result v0

    return v0
.end method
