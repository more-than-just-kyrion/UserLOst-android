.class public final Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;
.super Ljava/lang/Object;
.source "com.google.mlkit:object-detection@@17.0.2"


# static fields
.field private static zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzup;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;

.field private zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuj;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzup;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzup;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzup;

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;-><init>(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuj;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;

    return-void
.end method

.method public static declared-synchronized zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzur;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuj;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuj;)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;
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
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;->zzb()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuf;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 2
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;->zze()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzg()V

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;

    .line 5
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zzc(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zza()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zze()V

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;->zzbD:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;

    .line 7
    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;->zza(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zze()V

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;->zzbD:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;

    .line 7
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;->zza(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V

    .line 8
    throw v1

    .line 7
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    .line 9
    :goto_3
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;->zzd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzg()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzup;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzup;->zza(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;

    goto :goto_1

    .line 17
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;-><init>()V

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzg()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuf;

    .line 4
    sget v3, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzul;->zzb:I

    const/16 v3, 0x11

    new-array v3, v3, [B

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzul;->zza:Ljava/util/Random;

    .line 5
    invoke-virtual {v4, v3}, Ljava/util/Random;->nextBytes([B)V

    const/4 v4, 0x0

    aget-byte v5, v3, v4

    and-int/lit8 v5, v5, 0xf

    or-int/lit8 v5, v5, 0x70

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/16 v5, 0xb

    .line 6
    invoke-static {v3, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x16

    .line 7
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "MLKitInstallationIdGenerator"

    const-string v5, "Generated installation id: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuf;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuh;

    invoke-direct {v4, v3, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuh;-><init>(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuf;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V

    .line 9
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwj;->zza(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzwi;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;->zzf:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzd(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;->zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zzd(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsw;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zze()V

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;->zzbC:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;

    .line 13
    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;->zza(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzui;->zza()Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzup;

    .line 14
    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzup;->zzc(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuq;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zze()V

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;->zzbC:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 16
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zze()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;->zzbB:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;

    .line 17
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;->zza(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V

    return-void

    :catchall_0
    move-exception v2

    .line 12
    :try_start_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zze()V

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;->zzbC:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;

    .line 13
    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;->zza(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V

    .line 15
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;->zze()V

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuk;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;->zzbB:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;

    .line 17
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzun;->zza(Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpb;Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzum;)V

    .line 18
    throw v1
.end method
