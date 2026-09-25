.class public final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawr;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# static fields
.field private static final zza:Ljava/lang/Object;


# instance fields
.field private final zzb:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawr;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawr;->zzb:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;J)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhx;
    .locals 7

    const-string p3, "Invalid cached data in file: "

    const-string p4, "No acceleration allowlist cache file at: "

    const-string v0, "Error reading acceleration allowlist cache file: "

    .line 1
    const-string v1, "com.google.perception"

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawr;->zza:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawr;->zzb(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    new-instance v1, Landroidx/core/util/AtomicFile;

    invoke-direct {v1, p1}, Landroidx/core/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3
    invoke-virtual {v1}, Landroidx/core/util/AtomicFile;->readFully()[B

    move-result-object p4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p4, :cond_0

    .line 11
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v4

    .line 12
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawx;->zzd([BLcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawx;

    move-result-object p4

    .line 13
    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawx;->zzk()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p2, "AccelerationAllowlistPersistence"

    const-string p4, "No persistence time in cached entry, discarding it"

    .line 20
    invoke-static {p2, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v5, 0x3e8

    div-long/2addr v0, v5

    .line 15
    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawx;->zze()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhb;->zzc()J

    move-result-wide v5

    add-long/2addr v5, p6

    cmp-long p6, v0, v5

    if-gtz p6, :cond_3

    .line 16
    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawx;->zzg()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "AccelerationAllowlistPersistence"

    const-string p4, "Different client library version, discarding cached content"

    .line 17
    invoke-static {p2, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 18
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v4

    .line 19
    :cond_2
    :try_start_5
    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawx;->zzf()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhx;

    move-result-object p1
    :try_end_5
    .catch Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-object p1

    .line 20
    :cond_3
    :goto_0
    :try_start_7
    const-string p2, "AccelerationAllowlistPersistence"

    const-string p4, "Cache expired"

    .line 21
    invoke-static {p2, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 25
    :try_start_8
    monitor-exit v2

    return-object v4

    :catch_0
    move-exception p2

    .line 26
    const-string p4, "AccelerationAllowlistPersistence"

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;->zzj:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    .line 23
    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;)V

    .line 24
    monitor-exit v2

    return-object v4

    :catch_1
    move-exception p2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p2

    move-object p1, v4

    :goto_1
    if-eqz p1, :cond_5

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_4

    const-string p2, "AccelerationAllowlistPersistence"

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 9
    :cond_4
    const-string p3, "AccelerationAllowlistPersistence"

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;->zzi:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    .line 7
    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;)V

    goto :goto_2

    .line 24
    :cond_5
    const-string p1, "AccelerationAllowlistPersistence"

    .line 8
    const-string p3, "Unable to access acceleration allowlist cache file: null"

    invoke-static {p1, p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;->zzi:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    .line 9
    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;)V

    .line 10
    :goto_2
    monitor-exit v2

    return-object v4

    .line 26
    :goto_3
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1
.end method

.method final zzb(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "Unable to create persistence dir "

    const-string p3, "mkdirs failed: "

    .line 1
    const-string v0, "com.google.perception"

    const-string v1, "NNAPI"

    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "com.google.mlkit.AccelerationAllowList.%s.%s.%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawr;->zzb:Landroid/content/Context;

    new-instance v1, Ljava/io/File;

    .line 2
    invoke-static {v0}, Landroidx/core/content/ContextCompat;->getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "noBackupFilesDir doesn\'t exist, using regular files directory instead"

    .line 4
    const-string v2, "AccelerationAllowlistPersistence"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawr;->zzb:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    .line 7
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/io/IOException;

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 10
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "mkdirs threw an exception: "

    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p3, Ljava/io/IOException;

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 12
    :cond_2
    :goto_0
    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;)V
    .locals 6

    const-string p4, "Succeeded storing allowlist to file "

    const-string p5, "Saving nnapi allowlist cache to: "

    const-string v0, "Error writing to nnapi allowlist cache file "

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawx;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaww;

    move-result-object v1

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaww;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhx;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaww;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhb;->zze()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbha;

    move-result-object p1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 3
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbha;->zza(J)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbha;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzt()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhb;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaww;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhb;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaww;

    .line 5
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaww;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaww;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzt()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawx;

    const-string p3, "com.google.perception"

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawr;->zza:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x2

    .line 7
    :try_start_0
    invoke-virtual {p0, p2, p3, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawr;->zzb(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string p3, "AccelerationAllowlistPersistence"

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance p3, Landroidx/core/util/AtomicFile;

    invoke-direct {p3, p2}, Landroidx/core/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 10
    invoke-virtual {p3}, Landroidx/core/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object p5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :try_start_2
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbck;->zzv(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    :try_start_3
    invoke-virtual {p3, p5}, Landroidx/core/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    const-string p1, "AccelerationAllowlistPersistence"

    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 12
    invoke-virtual {p3, p5}, Landroidx/core/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    sget-object p3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;->zzh:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    .line 13
    invoke-virtual {p6, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;)V

    .line 14
    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    const/4 p2, 0x0

    .line 19
    :goto_0
    :try_start_4
    const-string p3, "AccelerationAllowlistPersistence"

    .line 17
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;->zzh:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    .line 18
    invoke-virtual {p6, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;)V

    .line 19
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method
