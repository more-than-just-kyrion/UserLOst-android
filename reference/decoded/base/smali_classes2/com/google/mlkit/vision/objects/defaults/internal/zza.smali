.class final Lcom/google/mlkit/vision/objects/defaults/internal/zza;
.super Ljava/lang/Object;
.source "com.google.mlkit:object-detection@@17.0.2"

# interfaces
.implements Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$DetectorCreator;


# instance fields
.field private final zza:Lcom/google/mlkit/vision/objects/defaults/internal/zzb;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvf;

.field private final zzc:Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;


# direct methods
.method constructor <init>(Lcom/google/mlkit/vision/objects/defaults/internal/zzb;Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;)V
    .locals 1

    .line 1
    const-string v0, "object-detection"

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvq;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvf;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/objects/defaults/internal/zza;->zza:Lcom/google/mlkit/vision/objects/defaults/internal/zzb;

    iput-object v0, p0, Lcom/google/mlkit/vision/objects/defaults/internal/zza;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvf;

    iput-object p2, p0, Lcom/google/mlkit/vision/objects/defaults/internal/zza;->zzc:Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    return-void
.end method


# virtual methods
.method public final bridge synthetic create(Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$DetectorOptions;)Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$MultiFlavorDetector;
    .locals 3

    .line 1
    check-cast p1, Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpc;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpc;->zze(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpc;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrm;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrm;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/mlkit/vision/objects/defaults/internal/zzi;->zzb(Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrs;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrm;->zzb(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrs;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrm;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpa;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpa;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrm;->zzc(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpa;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrm;->zzd()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzro;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpc;->zzg(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzro;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpc;

    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvi;->zzg(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpc;I)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mlkit/vision/objects/defaults/internal/zza;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvf;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;->zzK:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;

    .line 7
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvf;->zzd(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuv;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;)V

    iget-object v0, p0, Lcom/google/mlkit/vision/objects/defaults/internal/zza;->zza:Lcom/google/mlkit/vision/objects/defaults/internal/zzb;

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/mlkit/vision/objects/defaults/internal/zzb;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/common/sdkinternal/MLTask;

    invoke-virtual {p1}, Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object v1, p0, Lcom/google/mlkit/vision/objects/defaults/internal/zza;->zzc:Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    invoke-virtual {v1, p1}, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;->getExecutorToUse(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 9
    invoke-static {v0, p1}, Lcom/google/mlkit/vision/objects/internal/ObjectDetectorImpl;->newInstance(Lcom/google/mlkit/common/sdkinternal/MLTask;Ljava/util/concurrent/Executor;)Lcom/google/mlkit/vision/objects/internal/ObjectDetectorImpl;

    move-result-object p1

    return-object p1
.end method
