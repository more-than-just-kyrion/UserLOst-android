.class public final Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;
.super Ljava/lang/Object;
.source "com.google.mlkit:object-detection@@17.0.2"


# static fields
.field public static final zza:J

.field private static final zzb:Ljava/util/concurrent/ExecutorService;

.field private static final zzc:Ljava/util/concurrent/ExecutorService;

.field private static zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;


# instance fields
.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Ljava/util/concurrent/Executor;

.field private final zzg:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;

.field private final zzh:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvu;

.field private volatile zzi:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;

.field private volatile zzj:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;

.field private final zzk:Ljava/util/Map;

.field private final zzl:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwf;

.field private final zzm:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwd;

.field private zzn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzb:Ljava/util/concurrent/ExecutorService;

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzc:Ljava/util/concurrent/ExecutorService;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zza:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwd;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuj;)V
    .locals 13

    move-object v0, p0

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzb:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzc:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzk:Ljava/util/Map;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-object v3, p2

    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzg:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zze:Ljava/util/concurrent/Executor;

    iput-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzf:Ljava/util/concurrent/Executor;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzm:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwd;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvu;

    .line 3
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuj;->zzb()Ljava/lang/String;

    move-result-object v5

    .line 4
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuj;->zza()Ljava/lang/String;

    move-result-object v6

    const-string v7, "firebase"

    const-wide/16 v10, 0x5

    move-object v3, v2

    move-object v4, p1

    move-wide v8, v10

    move-object/from16 v12, p3

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvu;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwd;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzh:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvu;

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwf;

    move-object v2, p1

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwf;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzl:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwf;

    return-void
.end method

.method static bridge synthetic zzc(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzm(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzg:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzh:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvu;

    return-object p0
.end method

.method public static declared-synchronized zzf(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;
    .locals 5

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwd;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwd;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzur;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuj;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwd;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuj;)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzn:Ljava/lang/String;

    return-object p0
.end method

.method private final zzl(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;Z)Landroid/util/Pair;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzl:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwf;->zza(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvt;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvt;->zzc()Lorg/json/JSONObject;

    move-result-object v2

    .line 2
    :try_start_0
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzm(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzj:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;

    if-eqz p2, :cond_1

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;-><init>()V

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzg()V

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzj:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;

    iput-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzi:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zze()V

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzm:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwd;

    .line 7
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwd;->zzb(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzh()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvt;->zzb()Ljava/util/Date;

    move-result-object p1

    .line 9
    invoke-static {v1, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p2

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;->zzl:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzc(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V

    .line 4
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MLKit RemoteConfigRestC"

    const-string v2, "Saved remote config setting has invalid format: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method private static zzm(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvx;-><init>(Lorg/json/JSONObject;)V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzas;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzas;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvx;->zza:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, ""

    goto :goto_1

    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{ \"value\": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " }"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "value"

    .line 6
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :goto_1
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzas;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzas;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Getting JSON string value for remote config key "

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MLKit RemoteConfigRestC"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    throw p0

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza(J)Lcom/google/android/gms/tasks/Task;
    .locals 10

    .line 1
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;

    .line 2
    invoke-direct {v5}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;-><init>()V

    .line 3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzg()V

    .line 4
    new-instance v8, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v8}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v9, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvy;

    const/4 v6, 0x0

    move-object v0, v9

    move-object v1, p0

    move-wide v3, p1

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;Ljava/util/Date;JLcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;ZLcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzf:Ljava/util/concurrent/Executor;

    .line 5
    invoke-interface {p1, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6
    invoke-virtual {v8}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()Lcom/google/android/gms/tasks/Task;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzg()V

    .line 3
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvw;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;ZLcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zze:Ljava/util/concurrent/Executor;

    .line 4
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zzh(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzi:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;

    const-string v0, "vision_object_detection_enable_acceleration"

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzk:Ljava/util/Map;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzk:Ljava/util/Map;

    .line 2
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final synthetic zzi(Ljava/util/Date;JLcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;ZLcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 6

    .line 1
    const-string p5, "MLKit RemoteConfigRestC"

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p4, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzl(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;Z)Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    move-object v2, v1

    goto :goto_1

    .line 2
    :cond_0
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;

    .line 3
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Date;

    new-instance v3, Ljava/util/Date;

    .line 4
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    add-long/2addr v4, p2

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 5
    invoke-virtual {p1, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "Saved remote config is past its expiration time."

    .line 6
    invoke-static {p5, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwc; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v2, :cond_3

    .line 1
    :try_start_1
    const-string p2, "Getting installation id..."

    .line 7
    invoke-static {p5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzg:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zzd()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwc; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p2, "Got installation id. Checking temporary token for expiry..."

    .line 11
    invoke-static {p5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzg:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;

    .line 12
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zzc()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Got valid temporary auth token. Fetching remote config..."

    .line 13
    invoke-static {p5, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvz;

    invoke-direct {p3, p0, p2, p1, p4}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;Ljava/lang/String;Ljava/util/Date;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V

    .line 14
    invoke-static {p3}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwj;->zza(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwi;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;->zzf:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;

    .line 15
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzd(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V

    goto :goto_2

    .line 19
    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvz;->zzb()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;

    move-result-object v2

    .line 16
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "writeAndSetFetchedConfig: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzl:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwf;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvz;->zzc()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvt;

    move-result-object p2

    .line 17
    invoke-virtual {p1, p2, p4}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwf;->zzb(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzvt;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzj:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzat;

    goto :goto_3

    :catch_0
    move-exception p1

    .line 25
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;

    .line 9
    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzd(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V

    const-string p2, "Initializing installation id failed"

    .line 10
    invoke-static {p5, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    move-object v2, v1

    :cond_3
    :goto_3
    if-nez v2, :cond_4

    .line 15
    const-string p1, "Remote config was null!"

    .line 18
    invoke-static {p5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 24
    :cond_4
    const-string p1, "Got remote config."

    .line 19
    invoke-static {p5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :goto_4
    invoke-virtual {p6, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwc; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_7

    :catch_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    .line 6
    :goto_5
    :try_start_3
    const-string p2, "Fetch failed"

    .line 21
    invoke-static {p5, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    invoke-virtual {p6, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    :goto_6
    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zze()V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzm:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwd;

    .line 24
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwd;->zzc(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V

    return-void

    .line 23
    :goto_7
    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zze()V

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzm:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwd;

    .line 24
    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwd;->zzc(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V

    .line 25
    throw p1
.end method

.method final synthetic zzj(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;ZLcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2

    .line 1
    const-string p2, "MLKit RemoteConfigRestC"

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzl(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;Z)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Cached remote config was null!"

    .line 2
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "Loaded cached remote config."

    .line 3
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p3, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception v0

    .line 3
    :try_start_1
    const-string v1, "Load failed"

    .line 5
    invoke-static {p2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    invoke-virtual {p3, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zze()V

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzm:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwd;

    .line 8
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwd;->zze(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V

    return-void

    .line 7
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zze()V

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzm:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwd;

    .line 8
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwd;->zze(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V

    .line 9
    throw p2
.end method

.method public final zzk(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwa;->zzn:Ljava/lang/String;

    return-void
.end method
