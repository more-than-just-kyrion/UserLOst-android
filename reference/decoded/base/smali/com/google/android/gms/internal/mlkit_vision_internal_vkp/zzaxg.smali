.class public final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# static fields
.field private static zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxe;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxl;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxj;

.field private zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxf;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxj;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxl;

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxe;

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxe;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxf;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxj;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxe;

    return-void
.end method

.method public static declared-synchronized zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxn;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxf;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxf;)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;
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
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxm;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxm;->zzb()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxc;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zzg()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxl;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxl;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxm;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxm;

    goto :goto_1

    .line 17
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;-><init>()V

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zzg()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxc;

    .line 4
    sget v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxh;->zzb:I

    const/16 v3, 0x11

    new-array v3, v3, [B

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxh;->zza:Ljava/util/Random;

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
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxc;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxe;

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxd;

    invoke-direct {v4, v3, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxe;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxc;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;)V

    .line 9
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaym;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzayl;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;->zzf:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zzd(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zzd(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zze()V

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxj;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;->zzbC:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;

    .line 13
    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxj;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxe;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxe;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxm;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxm;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxl;

    .line 14
    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxl;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxm;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zze()V

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxj;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;->zzbC:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 16
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zze()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxj;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;->zzbB:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;

    .line 17
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxj;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;)V

    return-void

    :catchall_0
    move-exception v2

    .line 12
    :try_start_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zze()V

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxj;

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;->zzbC:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;

    .line 13
    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxj;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;)V

    .line 15
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zze()V

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxg;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxj;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;->zzbB:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;

    .line 17
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxj;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;)V

    .line 18
    throw v1
.end method
