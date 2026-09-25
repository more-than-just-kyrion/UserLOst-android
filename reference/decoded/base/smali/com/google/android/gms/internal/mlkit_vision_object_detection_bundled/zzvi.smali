.class public final Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvi;
.super Ljava/lang/Object;
.source "com.google.mlkit:object-detection@@17.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuv;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpc;

.field private zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzti;

.field private final zzc:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpc;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzti;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzti;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvi;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzti;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvi;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpc;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwk;->zza()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwk;

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvi;->zzc:I

    return-void
.end method

.method public static zzf(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpc;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuv;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvi;-><init>(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpc;I)V

    return-object v0
.end method

.method public static zzg(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpc;I)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuv;
    .locals 1

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvi;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvi;-><init>(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpc;I)V

    return-object p1
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvi;->zzc:I

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvi;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpc;->zzf(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpc;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzti;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuv;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvi;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzti;

    return-object p0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvi;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpc;->zzl()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpe;->zzh()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zztk;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zztk;->zzk()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zztk;->zzk()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1
    :cond_1
    :goto_0
    const-string v0, "NA"

    return-object v0
.end method

.method public final zze(IZ)[B
    .locals 3

    xor-int/lit8 p2, p1, 0x1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvi;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzti;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v2, p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzti;->zzf(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzti;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvi;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzti;

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzti;->zze(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzti;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvi;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzti;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzti;->zzm()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zztk;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvi;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpc;->zzk(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zztk;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpc;

    .line 4
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwk;->zza()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwk;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvi;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpc;->zzl()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpe;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    invoke-direct {p2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmw;->zza:Lcom/google/firebase/encoders/config/Configurator;

    invoke-virtual {p2, v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->configureWith(Lcom/google/firebase/encoders/config/Configurator;)Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->ignoreNullValues(Z)Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->build()Lcom/google/firebase/encoders/DataEncoder;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/firebase/encoders/DataEncoder;->encode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "utf-8"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvi;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpc;->zzl()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpe;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcc;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcc;-><init>()V

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmw;->zza:Lcom/google/firebase/encoders/config/Configurator;

    .line 9
    invoke-interface {v0, p2}, Lcom/google/firebase/encoders/config/Configurator;->configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcc;->zza()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcd;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcd;->zza(Ljava/lang/Object;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Failed to covert logging to UTF-8 byte array"

    .line 10
    invoke-direct {p2, v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
