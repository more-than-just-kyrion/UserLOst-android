.class public interface abstract Lcom/google/mlkit/md/camera/FrameProcessor;
.super Ljava/lang/Object;
.source "FrameProcessor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\n\u001a\u00020\u0003H&\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/google/mlkit/md/camera/FrameProcessor;",
        "",
        "process",
        "",
        "data",
        "Ljava/nio/ByteBuffer;",
        "frameMetadata",
        "Lcom/google/mlkit/md/camera/FrameMetadata;",
        "graphicOverlay",
        "Lcom/google/mlkit/md/camera/GraphicOverlay;",
        "stop",
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


# virtual methods
.method public abstract process(Ljava/nio/ByteBuffer;Lcom/google/mlkit/md/camera/FrameMetadata;Lcom/google/mlkit/md/camera/GraphicOverlay;)V
.end method

.method public abstract stop()V
.end method
