.class final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxb;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawz;


# static fields
.field static final zza:Ljava/lang/String;


# instance fields
.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "opMaSwzKffHEPgAzu/wXmmAoBSQ+L5trn/RQom0"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const-string v2, "oh/AACypu7EhHIzJlqtCgyEK8MToFuQ8E7pIO7A"

    .line 2
    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 3
    array-length v3, v0

    new-array v3, v3, [B

    const/4 v4, 0x0

    .line 4
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 5
    aget-byte v5, v0, v4

    aget-byte v6, v2, v4

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxb;->zza:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxb;->zza:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxb;->zzb:Ljava/lang/String;

    const-string v0, "https://mobilemlaccelerationcompatibility.googleapis.com"

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxb;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaws;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhx;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxa;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    const-string v0, "device"

    const-string v2, "product"

    const-string v3, "Content-Type"

    const-string v4, "application/x-protobuf"

    const-string v5, "com.google.perception"

    iget-object v6, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxb;->zzb:Ljava/lang/String;

    :try_start_0
    new-instance v7, Ljava/net/URL;

    iget-object v8, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxb;->zzc:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/v1/advisor?alt=PROTO"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 4
    :try_start_1
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    const/16 v8, 0x1388

    .line 5
    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 6
    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v8, "Accept"

    .line 7
    invoke-virtual {v7, v8, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "application/json; utf-8"

    .line 8
    invoke-virtual {v7, v3, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "POST"

    .line 9
    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v8, "X-Goog-Api-Key"

    .line 10
    invoke-virtual {v7, v8, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 11
    :try_start_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "installation_id"

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxc;->zza()Ljava/lang/String;

    move-result-object v9

    .line 12
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "client"

    const-string v9, "MLKIT"

    .line 13
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "client_library"

    move-object/from16 v9, p3

    .line 14
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "client_library_version"

    move-object/from16 v9, p4

    .line 15
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v8, Lorg/json/JSONObject;

    .line 16
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "client_info"

    .line 17
    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "android_info"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaws;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyv;

    move-result-object v9

    .line 18
    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyv;->zzg()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyy;

    move-result-object v10

    .line 19
    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyv;->zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbys;

    move-result-object v11

    .line 20
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 21
    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyy;->zzh()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v13

    .line 22
    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyy;->zzk()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "model"

    .line 23
    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyy;->zzj()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "manufacturer"

    .line 24
    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyy;->zzi()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "brand"

    .line 25
    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyy;->zzg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    .line 26
    invoke-virtual {v12, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v10, "build"

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    const-string v13, "os_version"

    .line 27
    invoke-virtual {v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbys;->zzj()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "build_type"

    .line 28
    invoke-virtual {v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbys;->zzi()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "preview_sdk"

    .line 29
    invoke-virtual {v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbys;->zzc()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "build_id"

    .line 30
    invoke-virtual {v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbys;->zzh()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v13, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v11

    .line 31
    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v10, "soc"

    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyv;->zzh()Ljava/lang/String;

    move-result-object v9

    .line 32
    invoke-virtual {v2, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 33
    invoke-virtual {v6, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, "nnapi_info"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaws;->zzb()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbze;

    move-result-object v8

    .line 34
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbze;->zzf()Ljava/util/List;

    move-result-object v8

    .line 35
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbzb;

    new-instance v11, Lorg/json/JSONObject;

    .line 36
    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 37
    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbzb;->zzg()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "version"

    .line 38
    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbzb;->zzh()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "feature_level"

    .line 39
    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbzb;->zzc()I

    move-result v10

    invoke-virtual {v11, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10

    .line 36
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 40
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "nnapi_driver_versions"

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 41
    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "model_namespace"

    .line 42
    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 43
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 44
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 45
    array-length v5, v0

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_1

    .line 46
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 47
    :cond_1
    :try_start_5
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 48
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_3

    .line 49
    invoke-virtual {v7, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 50
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkb;->zza(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    :try_start_6
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;

    move-result-object v2

    .line 54
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyp;->zzf(Ljava/io/InputStream;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyp;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyp;->zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhx;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 63
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxa;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    const-string v4, "Error while reading response from MlGoldblum"

    .line 56
    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxa;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    throw v2

    .line 50
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxa;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    const-string v4, "Invalid response from MlGoldblum, expected proto buf but got "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxa;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;Ljava/lang/String;)V

    .line 52
    throw v2

    .line 58
    :cond_3
    :try_start_7
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxa;

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    const-string v5, "Error response (%d: \'%s\') from MlGoldblumServer"

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 60
    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxa;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;Ljava/lang/String;)V

    .line 61
    throw v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v0

    .line 43
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxa;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    const-string v4, "Error while requesting allowlist to MlGoldblum"

    .line 62
    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxa;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    throw v2

    :catchall_0
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_4

    .line 43
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_9
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v3
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    .line 67
    :goto_2
    :try_start_a
    const-string v2, "Error creating request"

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxa;

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;->zzf:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    .line 64
    invoke-direct {v3, v4, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxa;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    throw v3
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :catch_4
    move-exception v0

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxa;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;->zzf:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    const-string v4, "Error while building allowlist request to MlGoldblum"

    .line 66
    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxa;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    throw v2

    :catch_5
    move-exception v0

    .line 55
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxa;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;->zzf:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    const-string v4, "Invalid URL built while trying to connect to MlGoldblum"

    .line 2
    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxa;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    throw v2
.end method
