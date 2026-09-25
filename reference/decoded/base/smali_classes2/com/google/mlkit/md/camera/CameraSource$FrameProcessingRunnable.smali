.class final Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;
.super Ljava/lang/Object;
.source "CameraSource.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/md/camera/CameraSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FrameProcessingRunnable"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u0008\u0000\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u00a2\u0006\u0002\u0008\u000cJ\u001d\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0000\u00a2\u0006\u0002\u0008\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;",
        "Ljava/lang/Runnable;",
        "(Lcom/google/mlkit/md/camera/CameraSource;)V",
        "active",
        "",
        "lock",
        "Ljava/lang/Object;",
        "pendingFrameData",
        "Ljava/nio/ByteBuffer;",
        "run",
        "",
        "setActive",
        "setActive$UserLOstLibrary_UserLOstRelease",
        "setNextFrame",
        "data",
        "",
        "camera",
        "Landroid/hardware/Camera;",
        "setNextFrame$UserLOstLibrary_UserLOstRelease",
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


# instance fields
.field private active:Z

.field private final lock:Ljava/lang/Object;

.field private pendingFrameData:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Lcom/google/mlkit/md/camera/CameraSource;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/md/camera/CameraSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 313
    iput-object p1, p0, Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;->this$0:Lcom/google/mlkit/md/camera/CameraSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;->lock:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 317
    iput-boolean p1, p0, Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;->active:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 375
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    :goto_1
    :try_start_0
    iget-boolean v1, p0, Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;->active:Z

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;->pendingFrameData:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_1

    .line 379
    :try_start_1
    iget-object v1, p0, Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v1

    .line 381
    :try_start_2
    const-string v2, "CameraSource"

    const-string v3, "Frame processing loop terminated."

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 382
    monitor-exit v0

    return-void

    :cond_1
    if-nez v1, :cond_2

    .line 390
    monitor-exit v0

    return-void

    .line 396
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;->pendingFrameData:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    .line 397
    iput-object v2, p0, Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;->pendingFrameData:Ljava/nio/ByteBuffer;

    .line 398
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 375
    monitor-exit v0

    .line 401
    :try_start_4
    iget-object v0, p0, Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;->this$0:Lcom/google/mlkit/md/camera/CameraSource;

    invoke-static {v0}, Lcom/google/mlkit/md/camera/CameraSource;->access$getProcessorLock$p(Lcom/google/mlkit/md/camera/CameraSource;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;->this$0:Lcom/google/mlkit/md/camera/CameraSource;

    monitor-enter v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 402
    :try_start_5
    new-instance v3, Lcom/google/mlkit/md/camera/FrameMetadata;

    invoke-virtual {v2}, Lcom/google/mlkit/md/camera/CameraSource;->getPreviewSize$UserLOstLibrary_UserLOstRelease()Lcom/google/android/gms/common/images/Size;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/mlkit/md/camera/CameraSource;->getPreviewSize$UserLOstLibrary_UserLOstRelease()Lcom/google/android/gms/common/images/Size;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v5

    invoke-static {v2}, Lcom/google/mlkit/md/camera/CameraSource;->access$getRotationDegrees$p(Lcom/google/mlkit/md/camera/CameraSource;)I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/google/mlkit/md/camera/FrameMetadata;-><init>(III)V

    if-eqz v1, :cond_3

    .line 404
    invoke-static {v2}, Lcom/google/mlkit/md/camera/CameraSource;->access$getFrameProcessor$p(Lcom/google/mlkit/md/camera/CameraSource;)Lcom/google/mlkit/md/camera/FrameProcessor;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {v2}, Lcom/google/mlkit/md/camera/CameraSource;->access$getGraphicOverlay$p(Lcom/google/mlkit/md/camera/CameraSource;)Lcom/google/mlkit/md/camera/GraphicOverlay;

    move-result-object v2

    invoke-interface {v4, v1, v3, v2}, Lcom/google/mlkit/md/camera/FrameProcessor;->process(Ljava/nio/ByteBuffer;Lcom/google/mlkit/md/camera/FrameMetadata;Lcom/google/mlkit/md/camera/GraphicOverlay;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 401
    :cond_3
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;->this$0:Lcom/google/mlkit/md/camera/CameraSource;

    .line 411
    invoke-static {v0}, Lcom/google/mlkit/md/camera/CameraSource;->access$getCamera$p(Lcom/google/mlkit/md/camera/CameraSource;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 401
    :try_start_7
    monitor-exit v0

    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 408
    :try_start_8
    const-string v2, "CameraSource"

    const-string v3, "Exception thrown from receiver."

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 410
    move-object v0, v1

    check-cast v0, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;->this$0:Lcom/google/mlkit/md/camera/CameraSource;

    .line 411
    invoke-static {v0}, Lcom/google/mlkit/md/camera/CameraSource;->access$getCamera$p(Lcom/google/mlkit/md/camera/CameraSource;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto/16 :goto_0

    .line 410
    :goto_2
    move-object v2, v1

    check-cast v2, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;->this$0:Lcom/google/mlkit/md/camera/CameraSource;

    .line 411
    invoke-static {v2}, Lcom/google/mlkit/md/camera/CameraSource;->access$getCamera$p(Lcom/google/mlkit/md/camera/CameraSource;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 410
    :cond_4
    throw v0

    :catchall_2
    move-exception v1

    .line 375
    monitor-exit v0

    throw v1
.end method

.method public final setActive$UserLOstLibrary_UserLOstRelease(Z)V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    :try_start_0
    iput-boolean p1, p0, Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;->active:Z

    .line 326
    iget-object p1, p0, Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 327
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final setNextFrame$UserLOstLibrary_UserLOstRelease([BLandroid/hardware/Camera;)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "camera"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;->lock:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;->this$0:Lcom/google/mlkit/md/camera/CameraSource;

    monitor-enter v0

    .line 336
    :try_start_0
    iget-object v2, p0, Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;->pendingFrameData:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_0

    .line 337
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    const/4 p2, 0x0

    .line 338
    iput-object p2, p0, Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;->pendingFrameData:Ljava/nio/ByteBuffer;

    .line 341
    :cond_0
    invoke-static {v1}, Lcom/google/mlkit/md/camera/CameraSource;->access$getBytesToByteBuffer$p(Lcom/google/mlkit/md/camera/CameraSource;)Ljava/util/IdentityHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 343
    const-string p1, "CameraSource"

    .line 344
    const-string p2, "Skipping frame. Could not find ByteBuffer associated with the image data from the camera."

    .line 342
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    monitor-exit v0

    return-void

    .line 349
    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/google/mlkit/md/camera/CameraSource;->access$getBytesToByteBuffer$p(Lcom/google/mlkit/md/camera/CameraSource;)Ljava/util/IdentityHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;->pendingFrameData:Ljava/nio/ByteBuffer;

    .line 352
    iget-object p1, p0, Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 353
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
