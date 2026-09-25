.class public final Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;
.super Ljava/lang/Object;
.source "com.google.mlkit:object-detection@@17.0.2"


# static fields
.field private static final zzb:Lokhttp3/MediaType;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuj;

.field private final zzc:Lokhttp3/OkHttpClient;

.field private zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;

.field private final zzf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zzb:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuj;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2710

    .line 2
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zzc:Lokhttp3/OkHttpClient;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuj;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;

    const-string p1, "https://firebaseinstallations.googleapis.com/v1"

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zzf:Ljava/lang/String;

    return-void
.end method

.method private static zze(JLjava/lang/String;)J
    .locals 4

    .line 1
    const-string v0, "s$"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    add-long/2addr p0, v0

    return-wide p0
.end method

.method private final zzf(Lokhttp3/Headers;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ">"

    const-string v1, "MLKitFbInstsRestClient"

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zzb:Lokhttp3/MediaType;

    invoke-static {v2, p3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p3

    .line 2
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zzc:Lokhttp3/OkHttpClient;

    .line 3
    invoke-virtual {p3, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    const/4 p3, 0x0

    .line 4
    :try_start_0
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 8
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v2

    .line 9
    invoke-virtual {p5, v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzf(I)V

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_3

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_0

    goto :goto_1

    .line 17
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 18
    :try_start_2
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    .line 19
    :try_start_3
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    return-object v2

    :catchall_0
    move-exception v2

    if-eqz p1, :cond_2

    .line 17
    :try_start_4
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error retrieving response body from HTTPS POST request to <"

    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;->zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;

    .line 21
    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzd(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;->zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;

    .line 22
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzb(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V

    return-object p3

    .line 9
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got HTTP status "

    .line 10
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from HTTPS POST request to <"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :try_start_6
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 12
    :try_start_7
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz p1, :cond_5

    .line 13
    :try_start_8
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :catchall_2
    move-exception p2

    if-eqz p1, :cond_4

    .line 11
    :try_start_9
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    :try_start_a
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 7
    :catch_1
    const-string p2, "<none>"

    .line 13
    :cond_5
    :goto_3
    const-string p1, "HTTP Response Body:\n"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;->zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;

    .line 15
    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzd(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;->zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;

    .line 16
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzb(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V

    return-object p3

    :catch_2
    move-exception p1

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connection error (or timeout) sending HTTPS POST request to <"

    .line 5
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;

    .line 6
    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzd(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;

    .line 7
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzb(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V

    return-object p3
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;

    return-object v0
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuf;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)Z
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwh;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    .line 1
    const-string v9, "MLKitFbInstsRestClient"

    .line 0
    const-string v0, "auth token expiry: "

    const-string v10, "auth token expires in: "

    const-string v11, "auth token: "

    const-string v12, "refresh_token: "

    const-string v13, "fid: "

    const-string v14, "installation name: "

    const-string v15, "Error traversing JSON object returned from url <"

    const-string v6, "Error parsing JSON object returned from <"

    .line 1
    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zzf:Ljava/lang/String;

    iget-object v2, v7, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuj;->zzc()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s/projects/%s/installations"

    .line 2
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 3
    new-instance v1, Lokhttp3/Headers$Builder;

    invoke-direct {v1}, Lokhttp3/Headers$Builder;-><init>()V

    iget-object v2, v7, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuj;

    const-string v3, "x-goog-api-key"

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuj;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuf;->zza()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v7, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuj;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuj;->zzb()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FIS_v2"

    move-object/from16 v16, v6

    const-string v6, "o:a:mlkit:1.0.0"

    filled-new-array {v1, v3, v4, v6}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "{fid: \'%s\', appId: \'%s\', authVersion: \'%s\', sdkVersion: \'%s\'}"

    .line 7
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;

    invoke-direct {v6}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;-><init>()V

    .line 9
    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzg()V

    move-object/from16 v1, p0

    move-object v3, v5

    move-object/from16 v17, v5

    move-object/from16 v5, p2

    move-object/from16 p1, v6

    move-object/from16 v18, v16

    .line 10
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zzf(Lokhttp3/Headers;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zze()V

    if-nez v1, :cond_0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :goto_0
    const/16 v16, 0x0

    goto/16 :goto_7

    .line 12
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcm;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzch;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzch;->zzb()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzck;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzco; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v4, "name"

    .line 16
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzck;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcn;->zze()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuf;

    const-string v6, "fid"

    .line 17
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzck;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcn;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcn;->zze()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuf;-><init>(Ljava/lang/String;)V

    const-string v6, "refreshToken"

    .line 18
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzck;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcn;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcn;->zze()Ljava/lang/String;

    move-result-object v6

    const-string v2, "authToken"

    .line 19
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzck;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzck;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v24, v1

    :try_start_2
    const-string v1, "token"

    .line 20
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzck;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcn;->zze()Ljava/lang/String;

    move-result-object v21

    const-string v1, "expiresIn"

    .line 21
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzck;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcn;->zze()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-static {v7, v8, v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zze(JLjava/lang/String;)J

    move-result-wide v7
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v25, v15

    :try_start_3
    new-instance v15, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuf;->zza()Ljava/lang/String;

    move-result-object v4

    new-instance v14, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;

    move-object/from16 v18, v0

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-wide/from16 v22, v7

    invoke-direct/range {v18 .. v23}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuf;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v1, p0

    :try_start_4
    iput-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x1

    move/from16 v16, v2

    move-object/from16 v2, p1

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    :goto_1
    move-object/from16 v1, p0

    move-object/from16 v25, v15

    goto :goto_4

    :catch_9
    move-exception v0

    goto :goto_2

    :catch_a
    move-exception v0

    goto :goto_2

    :catch_b
    move-exception v0

    :goto_2
    move-object/from16 v24, v1

    move-object/from16 v25, v15

    :goto_3
    move-object/from16 v1, p0

    .line 29
    :goto_4
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v25

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, v17

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">:\nraw json:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v24

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nparsed json:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v2, p1

    .line 30
    :try_start_6
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzd(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;

    move-object/from16 v3, p2

    .line 31
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzb(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    :goto_5
    move-object/from16 v2, p1

    goto :goto_8

    :catch_c
    move-exception v0

    goto :goto_6

    :catch_d
    move-exception v0

    goto :goto_6

    :catch_e
    move-exception v0

    :goto_6
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v5, v1

    move-object/from16 v4, v17

    move-object/from16 v1, p0

    .line 28
    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v7, v18

    .line 13
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">:\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;

    .line 14
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzd(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;

    .line 15
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzb(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_0

    .line 11
    :goto_7
    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;->zzbE:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;

    .line 32
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;->zza(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V

    return v16

    :catchall_2
    move-exception v0

    .line 15
    :goto_8
    iget-object v3, v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;->zzbE:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;

    .line 32
    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;->zza(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V

    .line 33
    throw v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzug;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzug;-><init>(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwj;->zza(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwi;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;->zzf:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;

    .line 2
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzc(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V

    :cond_1
    return v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)Z
    .locals 24

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1
    const-string v9, "MLKitFbInstsRestClient"

    .line 0
    const-string v0, "auth token expiry: "

    const-string v10, "auth token expires in: "

    const-string v11, "Error traversing JSON object returned from <"

    const-string v12, "refreshed auth token: "

    const-string v13, "Error parsing JSON object returned from <"

    .line 1
    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zzf:Ljava/lang/String;

    iget-object v2, v7, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuj;->zzc()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v7, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;->zzb()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuf;->zza()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s/projects/%s/installations/%s/authTokens:generate"

    .line 2
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 3
    new-instance v1, Lokhttp3/Headers$Builder;

    invoke-direct {v1}, Lokhttp3/Headers$Builder;-><init>()V

    iget-object v2, v7, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "authorization"

    const-string v4, "FIS_v2 "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v1

    iget-object v2, v7, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuj;

    const-string v3, "x-goog-api-key"

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuj;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v2

    const-string v1, "o:a:mlkit:1.0.0"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "{installation:{sdkVersion:\'%s\'}}"

    .line 7
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v15, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;

    invoke-direct {v15}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;-><init>()V

    .line 9
    invoke-virtual {v15}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzg()V

    move-object/from16 v1, p0

    move-object v3, v14

    move-object/from16 v16, v13

    move-object/from16 v17, v14

    move-wide v13, v5

    move-object/from16 v5, p1

    move-object v6, v15

    .line 10
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zzf(Lokhttp3/Headers;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v15}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zze()V

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 12
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcm;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzch;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzch;->zzb()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzck;

    move-result-object v3
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzco; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v4, "token"

    .line 16
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzck;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcn;->zze()Ljava/lang/String;

    move-result-object v4

    const-string v5, "expiresIn"

    .line 17
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzck;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcn;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcn;->zze()Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-static {v13, v14, v5}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zze(JLjava/lang/String;)J

    move-result-wide v13

    new-instance v6, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;

    iget-object v5, v7, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;

    .line 22
    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;->zzb()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuf;

    move-result-object v19

    iget-object v5, v7, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;

    .line 23
    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;->zzc()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v18, v0

    move-object/from16 v21, v4

    move-wide/from16 v22, v13

    invoke-direct/range {v18 .. v23}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuf;Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v0, v7, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 28
    :goto_0
    :try_start_2
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;

    .line 24
    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzd(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;

    .line 25
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzb(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V

    .line 26
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v5, v17

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ">:\nraw json:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nparsed json:\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v5, v17

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v16

    .line 13
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;

    .line 14
    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzd(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;

    .line 15
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzb(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :goto_1
    iget-object v0, v7, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;->zzbF:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;

    .line 27
    invoke-virtual {v0, v1, v15}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;->zza(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V

    return v2

    .line 15
    :goto_2
    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;->zzbF:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;

    .line 27
    invoke-virtual {v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;->zza(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V

    .line 28
    throw v0
.end method
