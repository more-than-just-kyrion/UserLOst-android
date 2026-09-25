.class final Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzap;
.super Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;
.source "com.google.mlkit:object-detection@@17.0.2"


# instance fields
.field final transient zza:I

.field final transient zzb:I

.field final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzap;->zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzap;->zza:I

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzap;->zzb:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzap;->zzb:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzd;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzap;->zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzap;->zza:I

    add-int/2addr p1, v1

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzap;->zzb:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;->zzf(II)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;

    move-result-object p1

    return-object p1
.end method

.method final zzb()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzap;->zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzal;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzap;->zza:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzap;->zzb:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzc()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzap;->zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzal;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzap;->zza:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zze()[Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzap;->zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzal;->zze()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(II)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzap;->zzb:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzd;->zzc(III)V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzap;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzap;->zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    .line 2
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;->zzf(II)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzaq;

    move-result-object p1

    return-object p1
.end method
