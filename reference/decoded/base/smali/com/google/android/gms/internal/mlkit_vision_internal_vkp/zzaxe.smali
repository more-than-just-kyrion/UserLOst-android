.class public final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxe;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# static fields
.field private static final zzb:Lokhttp3/MediaType;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxf;

.field private final zzc:Lokhttp3/OkHttpClient;

.field private zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxm;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxj;

.field private final zzf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxe;->zzb:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxf;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxj;)V
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

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxe;->zzc:Lokhttp3/OkHttpClient;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxe;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxf;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxe;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxj;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxe;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxm;

    const-string p1, "https://firebaseinstallations.googleapis.com/v1"

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxe;->zzf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxe;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxm;

    return-object v0
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxc;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;)Z
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzayk;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 1
    const-string v3, ">"

    const-string v4, "MLKitFbInstsRestClient"

    .line 0
    const-string v5, "auth token expiry: "

    const-string v6, "auth token expires in: "

    const-string v7, "auth token: "

    const-string v8, "refresh_token: "

    const-string v9, "fid: "

    const-string v10, "installation name: "

    const-string v11, "Error traversing JSON object returned from url <"

    const-string v12, "Error parsing JSON object returned from <"

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxe;->zzf:Ljava/lang/String;

    iget-object v13, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxe;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxf;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxf;->zzc()Ljava/lang/String;

    move-result-object v13

    filled-new-array {v0, v13}, [Ljava/lang/Object;

    move-result-object v0

    const-string v13, "%s/projects/%s/installations"

    .line 2
    invoke-static {v13, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 3
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    iget-object v14, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxe;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxf;

    const-string v15, "x-goog-api-key"

    .line 4
    invoke-virtual {v14}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxf;->zza()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v15, v14}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxc;->zza()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxe;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxf;

    .line 6
    invoke-virtual {v15}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxf;->zzb()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v12

    const-string v12, "FIS_v2"

    move-object/from16 v17, v11

    const-string v11, "o:a:mlkit:1.0.0"

    filled-new-array {v14, v15, v12, v11}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, "{fid: \'%s\', appId: \'%s\', authVersion: \'%s\', sdkVersion: \'%s\'}"

    .line 7
    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    new-instance v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;

    invoke-direct {v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;-><init>()V

    .line 9
    invoke-virtual {v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zzg()V

    move-object/from16 v18, v5

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxe;->zzb:Lokhttp3/MediaType;

    .line 10
    invoke-static {v5, v11}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v5

    .line 11
    new-instance v11, Lokhttp3/Request$Builder;

    invoke-direct {v11}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v11, v0}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, v13}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    iget-object v5, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxe;->zzc:Lokhttp3/OkHttpClient;

    .line 12
    invoke-virtual {v5, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 13
    :try_start_0
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 17
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v11

    .line 18
    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zzf(I)V

    const/16 v5, 0xc8

    if-lt v11, v5, :cond_3

    const/16 v5, 0x12c

    if-lt v11, v5, :cond_0

    goto :goto_1

    .line 26
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    :try_start_2
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_1

    .line 28
    :try_start_3
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v5, v0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    move-object v11, v0

    if-eqz v5, :cond_2

    .line 26
    :try_start_4
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v5, v0

    :try_start_5
    invoke-virtual {v11, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v11
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "Error retrieving response body from HTTPS POST request to <"

    .line 29
    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    .line 30
    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zzd(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    .line 31
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;)V

    goto/16 :goto_4

    .line 18
    :cond_3
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v1, "Got HTTP status "

    .line 19
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from HTTPS POST request to <"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :try_start_6
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 21
    :try_start_7
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v1, :cond_5

    .line 22
    :try_start_8
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v3, v0

    if-eqz v1, :cond_4

    .line 20
    :try_start_9
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v1, v0

    :try_start_a
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v3
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 16
    :catch_1
    const-string v0, "<none>"

    .line 22
    :cond_5
    :goto_3
    const-string v1, "HTTP Response Body:\n"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    .line 24
    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zzd(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    .line 25
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;)V

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Connection error (or timeout) sending HTTPS POST request to <"

    .line 14
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    .line 15
    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zzd(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    .line 16
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;)V

    :goto_4
    const/4 v5, 0x0

    .line 32
    :goto_5
    invoke-virtual {v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zze()V

    if-nez v5, :cond_6

    move-object/from16 v1, p0

    move-object v2, v12

    :goto_6
    const/4 v0, 0x0

    goto/16 :goto_f

    .line 33
    :cond_6
    :try_start_b
    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaeq;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzael;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzael;->zzb()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaeo;

    move-result-object v3
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_13
    .catch Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaes; {:try_start_b .. :try_end_b} :catch_12
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :try_start_c
    const-string v0, "name"

    .line 37
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaeo;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaer;->zze()Ljava/lang/String;

    move-result-object v0

    new-instance v11, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxc;

    const-string v1, "fid"

    .line 38
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaeo;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaer;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxc;-><init>(Ljava/lang/String;)V

    const-string v1, "refreshToken"

    .line 39
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaeo;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaer;->zze()Ljava/lang/String;

    move-result-object v1

    const-string v2, "authToken"

    .line 40
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaeo;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaeo;

    move-result-object v2
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_10
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_f
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-object/from16 v25, v12

    :try_start_d
    const-string v12, "token"

    .line 41
    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaeo;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaer;->zze()Ljava/lang/String;

    move-result-object v22

    const-string v12, "expiresIn"

    .line 42
    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaeo;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaer;->zze()Ljava/lang/String;

    move-result-object v12
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move-object/from16 v26, v5

    :try_start_e
    const-string v5, "s$"
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    move-object/from16 v27, v13

    :try_start_f
    const-string v13, ""

    .line 43
    invoke-virtual {v12, v5, v13}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    const-wide/16 v23, 0x3e8

    mul-long v19, v19, v23

    add-long v13, v14, v19

    new-instance v5, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxc;->zza()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v2, v18

    .line 50
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxm;

    move-object/from16 v19, v0

    move-object/from16 v20, v11

    move-object/from16 v21, v1

    move-wide/from16 v23, v13

    invoke-direct/range {v19 .. v24}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxm;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxc;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    move-object/from16 v1, p0

    :try_start_10
    iput-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxe;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxm;
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    const/4 v0, 0x1

    move-object/from16 v2, v25

    goto/16 :goto_f

    :catch_3
    move-exception v0

    goto :goto_d

    :catch_4
    move-exception v0

    goto :goto_d

    :catch_5
    move-exception v0

    goto :goto_d

    :catch_6
    move-exception v0

    goto :goto_7

    :catch_7
    move-exception v0

    goto :goto_7

    :catch_8
    move-exception v0

    :goto_7
    move-object/from16 v1, p0

    goto :goto_d

    :catch_9
    move-exception v0

    goto :goto_8

    :catch_a
    move-exception v0

    goto :goto_8

    :catch_b
    move-exception v0

    :goto_8
    move-object/from16 v1, p0

    goto :goto_c

    :catchall_4
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_a

    :catch_c
    move-exception v0

    goto :goto_9

    :catch_d
    move-exception v0

    goto :goto_9

    :catch_e
    move-exception v0

    :goto_9
    move-object/from16 v1, p0

    move-object/from16 v26, v5

    goto :goto_c

    :catchall_5
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v25, v12

    :goto_a
    move-object/from16 v2, v25

    goto/16 :goto_10

    :catch_f
    move-exception v0

    goto :goto_b

    :catch_10
    move-exception v0

    goto :goto_b

    :catch_11
    move-exception v0

    :goto_b
    move-object/from16 v1, p0

    move-object/from16 v26, v5

    move-object/from16 v25, v12

    :goto_c
    move-object/from16 v27, v13

    .line 51
    :goto_d
    :try_start_11
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v5, v17

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v5, v27

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ">:\nraw json:\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v26

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\nparsed json:\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    move-object/from16 v2, v25

    .line 52
    :try_start_12
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zzd(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    move-object/from16 v3, p2

    .line 53
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;)V

    goto/16 :goto_6

    :catchall_6
    move-exception v0

    goto :goto_a

    :catchall_7
    move-exception v0

    move-object/from16 v1, p0

    move-object v2, v12

    goto :goto_10

    :catch_12
    move-exception v0

    goto :goto_e

    :catch_13
    move-exception v0

    goto :goto_e

    :catch_14
    move-exception v0

    :goto_e
    move-object/from16 v1, p0

    move-object v3, v2

    move-object v6, v5

    move-object v2, v12

    move-object v5, v13

    .line 20
    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v8, v16

    .line 34
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ">:\n"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    .line 35
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zzd(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    .line 36
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    goto/16 :goto_6

    .line 32
    :goto_f
    iget-object v3, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxe;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxj;

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;->zzbE:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;

    .line 54
    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxj;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;)V

    return v0

    :catchall_8
    move-exception v0

    .line 36
    :goto_10
    iget-object v3, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxe;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxj;

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;->zzbE:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;

    .line 54
    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxj;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;)V

    .line 55
    throw v0
.end method
