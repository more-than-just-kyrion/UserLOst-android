.class public abstract Lcom/google/mlkit/md/camera/FrameProcessorBase;
.super Ljava/lang/Object;
.source "FrameProcessorBase.kt"

# interfaces
.implements Lcom/google/mlkit/md/camera/FrameProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/md/camera/FrameProcessorBase$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/mlkit/md/camera/FrameProcessor;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u0000 !*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0001!B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\r2\u0006\u0010\u000e\u001a\u00020\u000fH$J\u0014\u0010\u0010\u001a\u00020\u00112\n\u0010\u0012\u001a\u00060\u0013j\u0002`\u0014H$J%\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00028\u00002\u0006\u0010\u0019\u001a\u00020\u001aH$\u00a2\u0006\u0002\u0010\u001bJ \u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0008\u0010 \u001a\u00020\u0011H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/google/mlkit/md/camera/FrameProcessorBase;",
        "T",
        "Lcom/google/mlkit/md/camera/FrameProcessor;",
        "()V",
        "executor",
        "Lcom/google/mlkit/md/ScopedExecutor;",
        "latestFrame",
        "Ljava/nio/ByteBuffer;",
        "latestFrameMetaData",
        "Lcom/google/mlkit/md/camera/FrameMetadata;",
        "processingFrame",
        "processingFrameMetaData",
        "detectInImage",
        "Lcom/google/android/gms/tasks/Task;",
        "image",
        "Lcom/google/mlkit/vision/common/InputImage;",
        "onFailure",
        "",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "onSuccess",
        "inputInfo",
        "Lcom/google/mlkit/md/InputInfo;",
        "results",
        "graphicOverlay",
        "Lcom/google/mlkit/md/camera/GraphicOverlay;",
        "(Lcom/google/mlkit/md/InputInfo;Ljava/lang/Object;Lcom/google/mlkit/md/camera/GraphicOverlay;)V",
        "process",
        "data",
        "frameMetadata",
        "processLatestFrame",
        "stop",
        "Companion",
        "UserLOstLibrary_UserLOstRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/google/mlkit/md/camera/FrameProcessorBase$Companion;

.field private static final TAG:Ljava/lang/String; = "FrameProcessorBase"


# instance fields
.field private final executor:Lcom/google/mlkit/md/ScopedExecutor;

.field private latestFrame:Ljava/nio/ByteBuffer;

.field private latestFrameMetaData:Lcom/google/mlkit/md/camera/FrameMetadata;

.field private processingFrame:Ljava/nio/ByteBuffer;

.field private processingFrameMetaData:Lcom/google/mlkit/md/camera/FrameMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/mlkit/md/camera/FrameProcessorBase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/mlkit/md/camera/FrameProcessorBase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/mlkit/md/camera/FrameProcessorBase;->Companion:Lcom/google/mlkit/md/camera/FrameProcessorBase$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/google/mlkit/md/ScopedExecutor;

    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    const-string v2, "MAIN_THREAD"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/mlkit/md/ScopedExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/google/mlkit/md/camera/FrameProcessorBase;->executor:Lcom/google/mlkit/md/ScopedExecutor;

    return-void
.end method

.method public static final synthetic access$processLatestFrame(Lcom/google/mlkit/md/camera/FrameProcessorBase;Lcom/google/mlkit/md/camera/GraphicOverlay;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/google/mlkit/md/camera/FrameProcessorBase;->processLatestFrame(Lcom/google/mlkit/md/camera/GraphicOverlay;)V

    return-void
.end method

.method private final declared-synchronized processLatestFrame(Lcom/google/mlkit/md/camera/GraphicOverlay;)V
    .locals 10

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v4, p0, Lcom/google/mlkit/md/camera/FrameProcessorBase;->latestFrame:Ljava/nio/ByteBuffer;

    iput-object v4, p0, Lcom/google/mlkit/md/camera/FrameProcessorBase;->processingFrame:Ljava/nio/ByteBuffer;

    .line 67
    iget-object v5, p0, Lcom/google/mlkit/md/camera/FrameProcessorBase;->latestFrameMetaData:Lcom/google/mlkit/md/camera/FrameMetadata;

    iput-object v5, p0, Lcom/google/mlkit/md/camera/FrameProcessorBase;->processingFrameMetaData:Lcom/google/mlkit/md/camera/FrameMetadata;

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/google/mlkit/md/camera/FrameProcessorBase;->latestFrame:Ljava/nio/ByteBuffer;

    .line 69
    iput-object v0, p0, Lcom/google/mlkit/md/camera/FrameProcessorBase;->latestFrameMetaData:Lcom/google/mlkit/md/camera/FrameMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 70
    monitor-exit p0

    return-void

    :cond_0
    if-nez v5, :cond_1

    .line 71
    monitor-exit p0

    return-void

    .line 74
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Lcom/google/mlkit/md/camera/FrameMetadata;->getWidth()I

    move-result v0

    .line 75
    invoke-virtual {v5}, Lcom/google/mlkit/md/camera/FrameMetadata;->getHeight()I

    move-result v1

    .line 76
    invoke-virtual {v5}, Lcom/google/mlkit/md/camera/FrameMetadata;->getRotation()I

    move-result v2

    const/16 v3, 0x11

    .line 72
    invoke-static {v4, v0, v1, v2, v3}, Lcom/google/mlkit/vision/common/InputImage;->fromByteBuffer(Ljava/nio/ByteBuffer;IIII)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object v0

    const-string v1, "fromByteBuffer(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 80
    invoke-virtual {p0, v0}, Lcom/google/mlkit/md/camera/FrameProcessorBase;->detectInImage(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object v7

    .line 81
    iget-object v0, p0, Lcom/google/mlkit/md/camera/FrameProcessorBase;->executor:Lcom/google/mlkit/md/ScopedExecutor;

    move-object v8, v0

    check-cast v8, Ljava/util/concurrent/Executor;

    new-instance v9, Lcom/google/mlkit/md/camera/FrameProcessorBase$processLatestFrame$1;

    move-object v0, v9

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/mlkit/md/camera/FrameProcessorBase$processLatestFrame$1;-><init>(JLcom/google/mlkit/md/camera/FrameProcessorBase;Ljava/nio/ByteBuffer;Lcom/google/mlkit/md/camera/FrameMetadata;Lcom/google/mlkit/md/camera/GraphicOverlay;)V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-static {v7, v8, v9}, Lcom/google/mlkit/md/TaskExtKt;->addOnSuccessListener(Lcom/google/android/gms/tasks/Task;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function1;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 86
    iget-object v0, p0, Lcom/google/mlkit/md/camera/FrameProcessorBase;->executor:Lcom/google/mlkit/md/ScopedExecutor;

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/mlkit/md/camera/FrameProcessorBase$processLatestFrame$2;

    invoke-direct {v1, p0}, Lcom/google/mlkit/md/camera/FrameProcessorBase$processLatestFrame$2;-><init>(Lcom/google/mlkit/md/camera/FrameProcessorBase;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0, v1}, Lcom/google/mlkit/md/TaskExtKt;->addOnFailureListener(Lcom/google/android/gms/tasks/Task;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function1;)Lcom/google/android/gms/tasks/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method protected abstract detectInImage(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mlkit/vision/common/InputImage;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected abstract onFailure(Ljava/lang/Exception;)V
.end method

.method protected abstract onSuccess(Lcom/google/mlkit/md/InputInfo;Ljava/lang/Object;Lcom/google/mlkit/md/camera/GraphicOverlay;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mlkit/md/InputInfo;",
            "TT;",
            "Lcom/google/mlkit/md/camera/GraphicOverlay;",
            ")V"
        }
    .end annotation
.end method

.method public declared-synchronized process(Ljava/nio/ByteBuffer;Lcom/google/mlkit/md/camera/FrameMetadata;Lcom/google/mlkit/md/camera/GraphicOverlay;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frameMetadata"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphicOverlay"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/google/mlkit/md/camera/FrameProcessorBase;->latestFrame:Ljava/nio/ByteBuffer;

    .line 58
    iput-object p2, p0, Lcom/google/mlkit/md/camera/FrameProcessorBase;->latestFrameMetaData:Lcom/google/mlkit/md/camera/FrameMetadata;

    .line 59
    iget-object p1, p0, Lcom/google/mlkit/md/camera/FrameProcessorBase;->processingFrame:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/mlkit/md/camera/FrameProcessorBase;->processingFrameMetaData:Lcom/google/mlkit/md/camera/FrameMetadata;

    if-nez p1, :cond_0

    .line 60
    invoke-direct {p0, p3}, Lcom/google/mlkit/md/camera/FrameProcessorBase;->processLatestFrame(Lcom/google/mlkit/md/camera/GraphicOverlay;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_0
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

.method public stop()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/google/mlkit/md/camera/FrameProcessorBase;->executor:Lcom/google/mlkit/md/ScopedExecutor;

    invoke-virtual {v0}, Lcom/google/mlkit/md/ScopedExecutor;->shutdown()V

    return-void
.end method
