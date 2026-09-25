.class abstract Lcom/github/luben/zstd/AutoCloseBase;
.super Ljava/lang/Object;
.source "AutoCloseBase.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final SHARED_LOCK_CLOSED:I = -0x1

.field private static final SHARED_LOCK_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lcom/github/luben/zstd/AutoCloseBase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile sharedLock:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    const-class v0, Lcom/github/luben/zstd/AutoCloseBase;

    const-string v1, "sharedLock"

    .line 9
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/github/luben/zstd/AutoCloseBase;->SHARED_LOCK_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method acquireSharedLock()V
    .locals 3

    .line 26
    :cond_0
    iget v0, p0, Lcom/github/luben/zstd/AutoCloseBase;->sharedLock:I

    if-ltz v0, :cond_2

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    .line 33
    sget-object v1, Lcom/github/luben/zstd/AutoCloseBase;->SHARED_LOCK_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shared lock overflow"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 3

    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    iget v0, p0, Lcom/github/luben/zstd/AutoCloseBase;->sharedLock:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 63
    monitor-exit p0

    return-void

    .line 65
    :cond_0
    sget-object v0, Lcom/github/luben/zstd/AutoCloseBase;->SHARED_LOCK_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->doClose()V

    .line 69
    monitor-exit p0

    return-void

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to close while in use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 69
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method abstract doClose()V
.end method

.method releaseSharedLock()V
    .locals 3

    .line 41
    :cond_0
    iget v0, p0, Lcom/github/luben/zstd/AutoCloseBase;->sharedLock:I

    if-ltz v0, :cond_2

    if-eqz v0, :cond_1

    .line 48
    sget-object v1, Lcom/github/luben/zstd/AutoCloseBase;->SHARED_LOCK_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shared lock underflow"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method storeFence()V
    .locals 1

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/github/luben/zstd/AutoCloseBase;->sharedLock:I

    return-void
.end method
