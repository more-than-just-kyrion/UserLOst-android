.class final Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvz;
.super Ljava/lang/Object;
.source "com.google.mlkit:object-detection@@17.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwi;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/util/Date;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;

.field private zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;

.field private zzf:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;Ljava/lang/String;Ljava/util/Date;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvz;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvz;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvz;->zzc:Ljava/util/Date;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvz;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwc;
        }
    .end annotation

    .line 1
    const-string v0, "MLKit RemoteConfigRestC"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvz;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zze(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvu;

    move-result-object v2

    const-string v3, "Creating HTTP connection to remote config service"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvu;->zzb()Ljava/net/HttpURLConnection;

    move-result-object v5
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwc; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvz;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zze(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvu;

    move-result-object v4

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzd(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zza()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuf;->zza()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvz;->zzb:Ljava/lang/String;

    iget-object v11, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvz;->zzc:Ljava/util/Date;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvz;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;

    iget-object v14, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvz;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;->zzc()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;

    move-result-object v8

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;->zzc()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;

    move-result-object v10

    const-string v12, "o:a:mlkit:1.0.0"

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzg(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;)Ljava/lang/String;

    move-result-object v13

    const/4 v9, 0x0

    .line 6
    invoke-virtual/range {v4 .. v14}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvu;->zza(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvv;

    move-result-object v2

    const-string v3, "Got FetchResponse"

    .line 7
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvv;->zza()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvt;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvt;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvt;->zzc()Lorg/json/JSONObject;

    move-result-object v2

    .line 9
    :try_start_1
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzc(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvz;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v3

    .line 4
    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvz;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;

    .line 10
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzb(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V

    .line 11
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Fetched remote config setting has invalid format: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catch_1
    move-exception v2

    .line 9
    const-string v3, "Creating HTTP connection to remote config service failed"

    .line 3
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvz;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzb(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V

    return v1
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvz;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvt;

    return-object v0
.end method
