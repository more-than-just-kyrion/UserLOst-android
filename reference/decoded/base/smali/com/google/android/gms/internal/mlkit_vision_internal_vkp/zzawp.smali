.class public final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# static fields
.field private static final zza:Ljava/util/concurrent/ExecutorService;

.field private static final zzb:J

.field private static final zzc:J

.field private static zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;


# instance fields
.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawr;

.field private final zzf:Ljava/util/concurrent/ExecutorService;

.field private final zzg:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawq;

.field private final zzh:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawz;

.field private final zzi:J

.field private final zzj:J

.field private final zzk:Ljava/lang/Object;

.field private final zzl:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zza:Ljava/util/concurrent/ExecutorService;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zzb:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zzc:J

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawr;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawq;JJ)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxb;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zzk:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zzl:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zzf:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawr;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zzh:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawz;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zzg:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawq;

    iput-wide p5, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zzi:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zzj:J

    return-void
.end method

.method public static declared-synchronized zza(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;
    .locals 11

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zza:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawr;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawr;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawq;

    invoke-direct {v6}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawq;-><init>()V

    sget-wide v7, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zzb:J

    sget-wide v9, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zzc:J

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawr;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawq;JJ)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;
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


# virtual methods
.method public final zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/tasks/Task;
    .locals 9

    .line 1
    const-string p3, "AccelerationAllowlist"

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawt;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaws;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaws;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyv;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbyv;->zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbys;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbys;->zzj()Ljava/lang/String;

    move-result-object p4

    .line 2
    :try_start_0
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    const-string p1, "Unable to retrieve NNAPI info required by AllowlistServer before Android Q, skipping allowlist fetch."

    .line 9
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    const-string p4, "fetchAccelerationAllowlist"

    .line 3
    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;

    const/4 p3, 0x2

    .line 4
    const-string v4, "com.google.perception"

    invoke-direct {v6, v4, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;-><init>(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;->zzf()V

    .line 6
    new-instance p3, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p3}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iget-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zzf:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawn;

    const/4 v5, 0x2

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawn;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 7
    invoke-interface {p4, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 8
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p2

    const-string p4, "Unable to parse OS version returned by the AndroidSystemInfoProvider \'%s\'"

    .line 11
    invoke-static {p4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhx;
    .locals 8

    .line 1
    new-instance p3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;

    const/4 p4, 0x2

    const-string v3, "com.google.perception"

    invoke-direct {p3, v3, p4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;->zzf()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawr;

    iget-wide v6, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zzi:J

    const/4 v4, 0x2

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawr;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;J)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhx;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;->zze()V

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zzg:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawq;

    .line 4
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawq;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;->zze()V

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zzg:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawq;

    .line 4
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawq;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;)V

    .line 5
    throw p1
.end method

.method final synthetic zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 15

    move-object v1, p0

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    .line 1
    const-string v0, "com.google.perception"

    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawr;

    iget-wide v8, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zzj:J

    const/4 v6, 0x2

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v5, v0

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawr;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;J)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhx;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, "AccelerationAllowlist"

    const-string v3, "Cached copy available, not calling the server"

    .line 2
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {v13, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 17
    :cond_0
    const-string v2, "AccelerationAllowlist"

    const-string v3, "fetching allowlist"

    .line 4
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawo;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawt;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaws;

    move-result-object v8

    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zzk:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zzl:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;->zzc()V

    iget-object v3, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zzl:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxc;

    move-result-object v9

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v10, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zzh:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawz;

    iget-object v11, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zzg:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawq;

    const/4 v7, 0x2

    move-object v2, v14

    move-object/from16 v3, p5

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v0

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawo;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaws;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxc;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawz;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawq;)V

    .line 9
    invoke-static {v14}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaym;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzayl;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    .line 10
    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;->zzd(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;)V

    const/4 v0, 0x0

    goto :goto_0

    .line 13
    :cond_1
    const-string v2, "AccelerationAllowlist"

    const-string v3, "Saving allowlist"

    .line 11
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawo;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhx;

    move-result-object v9

    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawr;

    const/4 v7, 0x2

    move-object v3, v9

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v0

    move-object/from16 v8, p5

    .line 12
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawr;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;)V

    move-object v0, v9

    .line 13
    :goto_0
    invoke-virtual {v13, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 8
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 12
    :goto_1
    :try_start_5
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    .line 14
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;->zzd(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;)V

    .line 15
    invoke-virtual {v13, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 16
    :goto_2
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;->zze()V

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zzg:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawq;

    .line 17
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawq;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;)V

    return-void

    .line 16
    :goto_3
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;->zze()V

    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zzg:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawq;

    .line 17
    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawq;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;)V

    .line 18
    throw v0
.end method
