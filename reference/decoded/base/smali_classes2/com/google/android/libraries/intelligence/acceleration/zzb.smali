.class public final Lcom/google/android/libraries/intelligence/acceleration/zzb;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# instance fields
.field private final zza:Landroid/util/LongSparseArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/intelligence/acceleration/zzb;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/intelligence/acceleration/zzb;->zza:Landroid/util/LongSparseArray;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/List;)Ljava/util/List;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbli;

    iget-object v2, p0, Lcom/google/android/libraries/intelligence/acceleration/zzb;->zza:Landroid/util/LongSparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/google/android/libraries/intelligence/acceleration/zzb;->zza:Landroid/util/LongSparseArray;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbli;->zzc()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/libraries/intelligence/acceleration/zzb;->zza:Landroid/util/LongSparseArray;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbli;->zzc()J

    move-result-wide v4

    new-instance v6, Lcom/google/android/libraries/intelligence/acceleration/zza;

    const-wide/16 v7, 0xa

    invoke-direct {v6, v7, v8}, Lcom/google/android/libraries/intelligence/acceleration/zza;-><init>(J)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    iget-object v3, p0, Lcom/google/android/libraries/intelligence/acceleration/zzb;->zza:Landroid/util/LongSparseArray;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbli;->zzc()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/intelligence/acceleration/zza;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v3}, Lcom/google/android/libraries/intelligence/acceleration/zza;->zza()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    return-object v0
.end method
