.class public final Lcom/google/mlkit/md/CameraInputInfo;
.super Ljava/lang/Object;
.source "InputInfo.kt"

# interfaces
.implements Lcom/google/mlkit/md/InputInfo;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\t\u001a\u00020\u0008H\u0016R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/google/mlkit/md/CameraInputInfo;",
        "Lcom/google/mlkit/md/InputInfo;",
        "frameByteBuffer",
        "Ljava/nio/ByteBuffer;",
        "frameMetadata",
        "Lcom/google/mlkit/md/camera/FrameMetadata;",
        "(Ljava/nio/ByteBuffer;Lcom/google/mlkit/md/camera/FrameMetadata;)V",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "getBitmap",
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
.field private bitmap:Landroid/graphics/Bitmap;

.field private final frameByteBuffer:Ljava/nio/ByteBuffer;

.field private final frameMetadata:Lcom/google/mlkit/md/camera/FrameMetadata;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Lcom/google/mlkit/md/camera/FrameMetadata;)V
    .locals 1

    const-string v0, "frameByteBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frameMetadata"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/mlkit/md/CameraInputInfo;->frameByteBuffer:Ljava/nio/ByteBuffer;

    .line 29
    iput-object p2, p0, Lcom/google/mlkit/md/CameraInputInfo;->frameMetadata:Lcom/google/mlkit/md/camera/FrameMetadata;

    return-void
.end method


# virtual methods
.method public declared-synchronized getBitmap()Landroid/graphics/Bitmap;
    .locals 5

    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/md/CameraInputInfo;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/mlkit/md/CameraInputInfo;

    .line 37
    sget-object v0, Lcom/google/mlkit/md/Utils;->INSTANCE:Lcom/google/mlkit/md/Utils;

    .line 38
    iget-object v1, p0, Lcom/google/mlkit/md/CameraInputInfo;->frameByteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/mlkit/md/CameraInputInfo;->frameMetadata:Lcom/google/mlkit/md/camera/FrameMetadata;

    invoke-virtual {v2}, Lcom/google/mlkit/md/camera/FrameMetadata;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/mlkit/md/CameraInputInfo;->frameMetadata:Lcom/google/mlkit/md/camera/FrameMetadata;

    invoke-virtual {v3}, Lcom/google/mlkit/md/camera/FrameMetadata;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/google/mlkit/md/CameraInputInfo;->frameMetadata:Lcom/google/mlkit/md/camera/FrameMetadata;

    invoke-virtual {v4}, Lcom/google/mlkit/md/camera/FrameMetadata;->getRotation()I

    move-result v4

    .line 37
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/mlkit/md/Utils;->convertToBitmap(Ljava/nio/ByteBuffer;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mlkit/md/CameraInputInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 40
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_0
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
