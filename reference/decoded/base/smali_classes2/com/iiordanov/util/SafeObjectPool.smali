.class public abstract Lcom/iiordanov/util/SafeObjectPool;
.super Lcom/iiordanov/util/ObjectPool;
.source "SafeObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/iiordanov/util/ObjectPool<",
        "TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/iiordanov/util/ObjectPool;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized release(Lcom/iiordanov/util/ObjectPool$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iiordanov/util/ObjectPool$Entry<",
            "TR;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 18
    :try_start_0
    invoke-super {p0, p1}, Lcom/iiordanov/util/ObjectPool;->release(Lcom/iiordanov/util/ObjectPool$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized reserve()Lcom/iiordanov/util/ObjectPool$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/iiordanov/util/ObjectPool$Entry<",
            "TR;>;"
        }
    .end annotation

    monitor-enter p0

    .line 26
    :try_start_0
    invoke-super {p0}, Lcom/iiordanov/util/ObjectPool;->reserve()Lcom/iiordanov/util/ObjectPool$Entry;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
