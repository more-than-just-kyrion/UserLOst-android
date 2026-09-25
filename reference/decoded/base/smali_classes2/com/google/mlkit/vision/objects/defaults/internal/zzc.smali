.class public final synthetic Lcom/google/mlkit/vision/objects/defaults/internal/zzc;
.super Ljava/lang/Object;
.source "com.google.mlkit:object-detection@@17.0.2"


# instance fields
.field public final synthetic zza:Lcom/google/mlkit/vision/objects/defaults/internal/zze;

.field public final synthetic zzb:Ljava/util/List;

.field public final synthetic zzc:J

.field public final synthetic zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpa;

.field public final synthetic zze:Lcom/google/mlkit/vision/vkp/VkpStatus;

.field public final synthetic zzf:Z

.field public final synthetic zzg:Ljava/lang/Boolean;

.field public final synthetic zzh:Lcom/google/mlkit/vision/common/InputImage;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/vision/objects/defaults/internal/zze;Ljava/util/List;JLcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpa;Lcom/google/mlkit/vision/vkp/VkpStatus;ZLjava/lang/Boolean;Lcom/google/mlkit/vision/common/InputImage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/objects/defaults/internal/zzc;->zza:Lcom/google/mlkit/vision/objects/defaults/internal/zze;

    iput-object p2, p0, Lcom/google/mlkit/vision/objects/defaults/internal/zzc;->zzb:Ljava/util/List;

    iput-wide p3, p0, Lcom/google/mlkit/vision/objects/defaults/internal/zzc;->zzc:J

    iput-object p5, p0, Lcom/google/mlkit/vision/objects/defaults/internal/zzc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpa;

    iput-object p6, p0, Lcom/google/mlkit/vision/objects/defaults/internal/zzc;->zze:Lcom/google/mlkit/vision/vkp/VkpStatus;

    iput-boolean p7, p0, Lcom/google/mlkit/vision/objects/defaults/internal/zzc;->zzf:Z

    iput-object p8, p0, Lcom/google/mlkit/vision/objects/defaults/internal/zzc;->zzg:Ljava/lang/Boolean;

    iput-object p9, p0, Lcom/google/mlkit/vision/objects/defaults/internal/zzc;->zzh:Lcom/google/mlkit/vision/common/InputImage;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuv;
    .locals 9

    iget-object v0, p0, Lcom/google/mlkit/vision/objects/defaults/internal/zzc;->zza:Lcom/google/mlkit/vision/objects/defaults/internal/zze;

    iget-object v1, p0, Lcom/google/mlkit/vision/objects/defaults/internal/zzc;->zzb:Ljava/util/List;

    iget-wide v2, p0, Lcom/google/mlkit/vision/objects/defaults/internal/zzc;->zzc:J

    iget-object v4, p0, Lcom/google/mlkit/vision/objects/defaults/internal/zzc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpa;

    iget-object v5, p0, Lcom/google/mlkit/vision/objects/defaults/internal/zzc;->zze:Lcom/google/mlkit/vision/vkp/VkpStatus;

    iget-boolean v6, p0, Lcom/google/mlkit/vision/objects/defaults/internal/zzc;->zzf:Z

    iget-object v7, p0, Lcom/google/mlkit/vision/objects/defaults/internal/zzc;->zzg:Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/google/mlkit/vision/objects/defaults/internal/zzc;->zzh:Lcom/google/mlkit/vision/common/InputImage;

    invoke-virtual/range {v0 .. v8}, Lcom/google/mlkit/vision/objects/defaults/internal/zze;->zzc(Ljava/util/List;JLcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpa;Lcom/google/mlkit/vision/vkp/VkpStatus;ZLjava/lang/Boolean;Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuv;

    move-result-object v0

    return-object v0
.end method
