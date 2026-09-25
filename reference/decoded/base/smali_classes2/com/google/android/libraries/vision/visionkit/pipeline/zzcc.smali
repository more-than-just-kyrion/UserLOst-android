.class public Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Lcom/google/android/libraries/vision/visionkit/pipeline/zzcd;
.implements Lcom/google/android/libraries/vision/visionkit/pipeline/zzcj;
.implements Lcom/google/android/libraries/vision/visionkit/pipeline/zzci;


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;

.field private final zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzbi;

.field private final zzc:Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;

.field private zzd:J

.field private final zze:J

.field private final zzf:J

.field private final zzg:J

.field private final zzh:J


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v6, p0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;->zzb()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;

    move-result-object v0

    :cond_0
    move-object v7, v0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzj()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbu;

    invoke-direct {v0, v6}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbu;-><init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zzcd;)V

    iput-object v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzc:Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzi()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;

    invoke-direct {v0, v6, v6, v6, v7}, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;-><init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zzcd;Lcom/google/android/libraries/vision/visionkit/pipeline/zzcj;Lcom/google/android/libraries/vision/visionkit/pipeline/zzci;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;)V

    iput-object v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzc:Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;

    goto :goto_0

    :cond_2
    new-instance v8, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;

    const-string v1, "mlkitcommonpipeline"

    move-object v0, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object v5, v7

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;-><init>(Ljava/lang/String;Lcom/google/android/libraries/vision/visionkit/pipeline/zzcd;Lcom/google/android/libraries/vision/visionkit/pipeline/zzcj;Lcom/google/android/libraries/vision/visionkit/pipeline/zzci;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;)V

    iput-object v8, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzc:Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;

    .line 6
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzk()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbi;

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zza()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbi;-><init>(I)V

    iput-object v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzbi;

    goto :goto_1

    .line 14
    :cond_3
    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbi;

    const/16 v1, 0xa

    .line 8
    invoke-direct {v0, v1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbi;-><init>(I)V

    iput-object v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzbi;

    .line 7
    :goto_1
    iput-object v7, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;

    iget-object v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzc:Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;

    .line 9
    invoke-interface {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;->initializeFrameManager()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zze:J

    iget-object v2, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzc:Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;

    .line 10
    invoke-interface {v2, v0, v1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;->initializeFrameBufferReleaseCallback(J)J

    move-result-wide v9

    iput-wide v9, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzf:J

    iget-object v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzc:Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;

    .line 11
    invoke-interface {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;->initializeResultsCallback()J

    move-result-wide v11

    iput-wide v11, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzg:J

    iget-object v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzc:Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;

    .line 12
    invoke-interface {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;->initializeIsolationCallback()J

    move-result-wide v13

    iput-wide v13, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzh:J

    iget-object v7, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzc:Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbck;->zzw()[B

    move-result-object v8

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    .line 14
    invoke-interface/range {v7 .. v18}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;->initialize([BJJJJJ)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzd:J

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string p1, "VKP"

    const-string v0, "openFileDescriptor called but is not available for this pipeline. Ignoring call."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzki;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzc:Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;

    iget-wide v1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzd:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;->getAnalyticsLogs(J)[B

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzki;->zzd()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzki;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzd;->zze([BLcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzd;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzki;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzki;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not parse analytics logs"

    .line 4
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzc(Lcom/google/android/libraries/vision/visionkit/pipeline/zzbh;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzki;
    .locals 13

    .line 1
    iget-wide v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzbi;

    invoke-virtual {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbh;->zza()J

    move-result-wide v1

    .line 2
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbi;->zzb(Ljava/lang/Object;J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzc:Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;

    iget-wide v2, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzd:J

    iget-wide v4, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zze:J

    invoke-virtual {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbh;->zza()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbh;->zzc()[B

    move-result-object v8

    invoke-virtual {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbh;->zzb()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzcq;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzcq;->zzb()I

    move-result v9

    invoke-virtual {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbh;->zzb()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzcq;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzcq;->zza()I

    move-result v10

    invoke-virtual {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbh;->zzd()I

    move-result v0

    add-int/lit8 v11, v0, -0x1

    invoke-virtual {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbh;->zze()I

    move-result p1

    add-int/lit8 v12, p1, -0x1

    .line 5
    invoke-interface/range {v1 .. v12}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;->process(JJJ[BIIII)[B

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzdf;->zzd([BLcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzdf;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzki;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzki;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not parse results"

    .line 7
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzki;->zzd()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzki;

    move-result-object p1

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Pipeline has been closed or was not initialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized zzd()V
    .locals 17

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v2, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzd:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzc:Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;

    invoke-interface {v0, v2, v3}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;->stop(J)Z

    iget-object v6, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzc:Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;

    iget-wide v7, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzd:J

    iget-wide v9, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zze:J

    iget-wide v11, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzf:J

    iget-wide v13, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzg:J

    iget-wide v2, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzh:J

    move-wide v15, v2

    .line 2
    invoke-interface/range {v6 .. v16}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;->close(JJJJJ)V

    iput-wide v4, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzd:J

    iget-object v0, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzc:Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;

    .line 3
    invoke-interface {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;->zza()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zze(I)V
    .locals 1

    .line 1
    const-string p1, "VKP"

    const-string v0, "closeFileDescriptor called but is not available for this pipeline. Ignoring call."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final zzf(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzbi;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbi;->zza(J)V

    return-void
.end method

.method public final zzg(Lcom/google/android/libraries/vision/visionkit/pipeline/zzdf;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzcp;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzcp;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Pipeline received results: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzcp;->zzb(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzh()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/vision/visionkit/pipeline/PipelineException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzd:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzc:Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;

    .line 3
    invoke-interface {v2, v0, v1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;->start(J)V

    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzc:Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;

    iget-wide v1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzd:J

    .line 4
    invoke-interface {v0, v1, v2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;->waitUntilIdle(J)V
    :try_end_0
    .catch Lcom/google/android/libraries/vision/visionkit/pipeline/PipelineException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzc:Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;

    iget-wide v2, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzd:J

    .line 5
    invoke-interface {v1, v2, v3}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;->stop(J)Z

    .line 6
    throw v0

    .line 1
    :cond_0
    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/PipelineException;

    sget-object v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzch;->zzj:Lcom/google/android/libraries/vision/visionkit/pipeline/zzch;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzch;->ordinal()I

    move-result v1

    const-string v2, "Pipeline has been closed or was not initialized"

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/vision/visionkit/pipeline/PipelineException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public final zzi()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzd:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzc:Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;

    .line 2
    invoke-interface {v2, v0, v1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;->stop(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Pipeline did not stop successfully."

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Pipeline has been closed or was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzj(JLandroid/graphics/Bitmap;I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzki;
    .locals 13

    move-object v1, p0

    .line 1
    iget-wide v2, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzd:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v2, :cond_1

    .line 3
    iget-object v3, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzc:Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;

    iget-wide v4, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzd:J

    .line 4
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 5
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    add-int/lit8 v12, p4, -0x1

    const/4 v11, 0x0

    move-wide v6, p1

    move-object/from16 v8, p3

    .line 6
    invoke-interface/range {v3 .. v12}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;->processBitmap(JJLandroid/graphics/Bitmap;IIII)[B

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzki;->zzd()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzki;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;

    .line 7
    invoke-static {v0, v2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzdf;->zzd([BLcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzdf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzki;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzki;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not parse results"

    .line 8
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 3
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unsupported bitmap config "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Pipeline has been closed or was not initialized"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzk(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzki;
    .locals 16

    move-object/from16 v1, p0

    .line 1
    iget-wide v2, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzd:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p5 .. p5}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v2, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzc:Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;

    iget-wide v3, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzd:J

    add-int/lit8 v15, p11, -0x1

    move-wide/from16 v5, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    .line 4
    invoke-interface/range {v2 .. v15}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;->processYuvFrame(JJLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII)[B

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzki;->zzd()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzki;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;

    .line 5
    invoke-static {v0, v2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzdf;->zzd([BLcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzdf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzki;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzki;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not parse results"

    .line 6
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Byte buffers are not direct."

    .line 3
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Pipeline has been closed or was not initialized"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
