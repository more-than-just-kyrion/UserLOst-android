.class public final Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwd;
.super Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;
.source "com.google.mlkit:object-detection@@17.0.2"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvf;

    new-instance v1, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    invoke-direct {v1, p1}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuz;

    .line 2
    const-string v3, "shared-remote-config"

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuy;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzux;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzux;->zzd()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuy;

    move-result-object v4

    invoke-direct {v2, p1, v4}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuz;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuy;)V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvf;-><init>(Landroid/content/Context;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuw;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;-><init>(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvf;)V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;->zzby:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;->zza(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;->zzbx:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;->zza(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;->zzbA:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;->zza(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;->zzbz:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;->zza(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V

    return-void
.end method
