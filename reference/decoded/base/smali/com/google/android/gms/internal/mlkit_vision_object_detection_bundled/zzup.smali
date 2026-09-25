.class public final Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzup;
.super Ljava/lang/Object;
.source "com.google.mlkit:object-detection@@17.0.2"


# static fields
.field private static final zza:Ljava/lang/Object;


# instance fields
.field private final zzb:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Landroid/content/Context;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzup;

    invoke-static {v1}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v1

    .line 2
    invoke-static {v0}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuo;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuo;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzup;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzup;->zzb:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;
    .locals 20

    move-object/from16 v1, p1

    const-string v0, "temporary token expiry: "

    const-string v2, "temporary_token: "

    const-string v3, "refresh_token: "

    const-string v4, "fid: "

    const-string v5, "Error traversing installation info JSON object:\nraw json:\n"

    const-string v6, "Error reading installation id file: "

    const-string v7, "Installation id file not yet present: "

    .line 1
    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzup;->zza:Ljava/lang/Object;

    monitor-enter v8

    .line 2
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzup;->zzb(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)Ljava/io/File;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    new-instance v11, Landroidx/core/util/AtomicFile;

    invoke-direct {v11, v9}, Landroidx/core/util/AtomicFile;-><init>(Ljava/io/File;)V

    new-instance v12, Ljava/lang/String;

    .line 4
    invoke-virtual {v11}, Landroidx/core/util/AtomicFile;->readFully()[B

    move-result-object v11

    const-string v13, "UTF-8"

    invoke-static {v13}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-direct {v12, v11, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-static {v12}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcm;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzch;

    move-result-object v6
    :try_end_2
    .catch Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzco; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    instance-of v7, v6, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzck;

    if-nez v7, :cond_0

    const-string v0, "MLKitInstallationIdSaver"

    .line 14
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error parsing installation info JSON element:\n"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;->zzl:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;

    .line 15
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzc(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V

    goto/16 :goto_2

    .line 16
    :cond_0
    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzch;->zzb()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzck;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v14, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuf;

    const-string v7, "fid"

    .line 17
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzck;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcn;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcn;->zze()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v14, v7}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuf;-><init>(Ljava/lang/String;)V

    const-string v7, "refreshToken"

    .line 18
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzck;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcn;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcn;->zze()Ljava/lang/String;

    move-result-object v15

    const-string v7, "temporaryToken"

    .line 19
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzck;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcn;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcn;->zze()Ljava/lang/String;

    move-result-object v7

    const-string v9, "temporaryTokenExpiryTimestamp"

    .line 20
    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzck;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcn;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcn;->zzc()J

    move-result-wide v10

    const-string v9, "MLKitInstallationIdSaver"

    .line 21
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v19, v12

    :try_start_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MLKitInstallationIdSaver"

    new-instance v9, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "MLKitInstallationIdSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MLKitInstallationIdSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;

    move-object v13, v0

    move-object/from16 v16, v7

    move-wide/from16 v17, v10

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuf;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v10, v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v0

    :goto_0
    move-object/from16 v19, v12

    .line 13
    :goto_1
    :try_start_6
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;->zzk:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;

    .line 25
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzc(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V

    const-string v1, "MLKitInstallationIdSaver"

    .line 26
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, v19

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nparsed json:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_6
    move-exception v0

    move-object v4, v12

    move-object v2, v0

    .line 10
    const-string v0, "MLKitInstallationIdSaver"

    const-string v3, "Error parsing installation info JSON object:\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;->zzl:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;

    .line 13
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzc(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V

    :goto_2
    const/4 v10, 0x0

    .line 27
    :goto_3
    monitor-exit v8

    return-object v10

    :catch_7
    move-exception v0

    .line 5
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "MLKitInstallationIdSaver"

    .line 9
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    monitor-exit v8

    const/4 v1, 0x0

    return-object v1

    .line 26
    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;->zzj:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzc(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V

    const-string v1, "MLKitInstallationIdSaver"

    .line 7
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    monitor-exit v8

    const/4 v1, 0x0

    return-object v1

    :catchall_0
    move-exception v0

    .line 28
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method final zzb(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)Ljava/io/File;
    .locals 6

    const-string v0, "mkdirs failed: "

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzup;->zzb:Landroid/content/Context;

    new-instance v2, Ljava/io/File;

    invoke-static {v1}, Landroidx/core/content/ContextCompat;->getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    const-string v1, "noBackupFilesDir doesn\'t exist, using regular files directory instead"

    .line 3
    const-string v3, "MLKitInstallationIdSaver"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzup;->zzb:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    .line 6
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;->zzg:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzd(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mkdirs threw an exception: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;->zzg:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzd(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V

    .line 2
    :cond_1
    :goto_0
    const-string p1, "com.google.mlkit.InstallationId"

    .line 11
    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V
    .locals 8

    const-string v0, "Succeeded writing installation id: "

    const-string v1, "Creating installation id: "

    const-string v2, "Error writing to installation id file "

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;->zzb()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuf;->zza()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;->zzc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;->zzd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;->zza()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {v3, v4, v5, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "{\n \"fid\": \"%s\",\n \"refreshToken\": \"%s\",\n \"temporaryToken\": \"%s\",\n \"temporaryTokenExpiryTimestamp\": \"%d\"\n}\n"

    .line 2
    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzup;->zza:Ljava/lang/Object;

    .line 3
    monitor-enter v3

    .line 4
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzup;->zzb(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)Ljava/io/File;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v5, "MLKitInstallationIdSaver"

    .line 5
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v1, Landroidx/core/util/AtomicFile;

    invoke-direct {v1, v4}, Landroidx/core/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 7
    invoke-virtual {v1}, Landroidx/core/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v6, Ljava/io/PrintWriter;

    .line 8
    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 9
    invoke-virtual {v6, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    :try_start_3
    invoke-virtual {v1, v5}, Landroidx/core/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    const-string v1, "MLKitInstallationIdSaver"

    .line 14
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 11
    invoke-virtual {v1, v5}, Landroidx/core/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 12
    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    const/4 v4, 0x0

    .line 17
    :goto_0
    :try_start_4
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;->zzi:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;

    .line 15
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzc(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V

    const-string p2, "MLKitInstallationIdSaver"

    .line 16
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    :goto_1
    monitor-exit v3

    return-void

    :goto_2
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method
