.class final Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbj;
.super Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzau;
.source "com.google.mlkit:object-detection@@17.0.2"


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;

.field private final transient zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzau;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbj;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbj;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;->zzi(I)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbq;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbj;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;->size()I

    move-result v0

    return v0
.end method

.method final zza([Ljava/lang/Object;I)I
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzal;->zza([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbp;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;->zzi(I)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbq;

    move-result-object v0

    return-object v0
.end method
