.class public final Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzem;
.super Ljava/lang/Object;
.source "com.google.mlkit:object-detection@@17.0.2"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpa;

.field private final zzb:Ljava/lang/Boolean;

.field private final zzc:Ljava/lang/Boolean;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoj;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrs;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzek;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzek;->zzf(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzek;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpa;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzem;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpa;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzek;->zzh(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzek;)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzem;->zzb:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzek;->zzi(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzek;)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzem;->zzc:Ljava/lang/Boolean;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzem;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoj;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzek;->zzg(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzek;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrs;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzem;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrs;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzem;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzem;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpa;

    .line 2
    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzem;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpa;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzem;->zzb:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzem;->zzb:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzem;->zzc:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzem;->zzc:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzem;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoj;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzem;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrs;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzem;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrs;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzem;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpa;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzem;->zzb:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzem;->zzc:Ljava/lang/Boolean;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzem;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrs;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzem;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpa;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzem;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrs;

    return-object v0
.end method

.method public final zzc()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzem;->zzb:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzd()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzem;->zzc:Ljava/lang/Boolean;

    return-object v0
.end method
