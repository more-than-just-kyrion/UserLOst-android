.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvb;
.super Ljava/lang/Object;
.source "com.google.mlkit:object-detection@@17.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvf;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;

.field public final synthetic zzc:Lcom/google/mlkit/vision/objects/defaults/internal/zzd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvf;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;Lcom/google/mlkit/vision/objects/defaults/internal/zzd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvb;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvf;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvb;->zzc:Lcom/google/mlkit/vision/objects/defaults/internal/zzd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvb;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvf;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvb;->zzc:Lcom/google/mlkit/vision/objects/defaults/internal/zzd;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvf;->zzf(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;Lcom/google/mlkit/vision/objects/defaults/internal/zzd;)V

    return-void
.end method
