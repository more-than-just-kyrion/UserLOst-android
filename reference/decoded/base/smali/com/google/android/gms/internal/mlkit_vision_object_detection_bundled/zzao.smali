.class final Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzao;
.super Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzf;
.source "com.google.mlkit:object-detection@@17.0.2"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzf;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzao;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;

    return-void
.end method


# virtual methods
.method protected final zza(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzao;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
