.class final Lcom/google/mlkit/md/camera/FrameProcessorBase$processLatestFrame$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FrameProcessorBase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/mlkit/md/camera/FrameProcessorBase;->processLatestFrame(Lcom/google/mlkit/md/camera/GraphicOverlay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "TT;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "results",
        "invoke",
        "(Ljava/lang/Object;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $frame:Ljava/nio/ByteBuffer;

.field final synthetic $frameMetaData:Lcom/google/mlkit/md/camera/FrameMetadata;

.field final synthetic $graphicOverlay:Lcom/google/mlkit/md/camera/GraphicOverlay;

.field final synthetic $startMs:J

.field final synthetic this$0:Lcom/google/mlkit/md/camera/FrameProcessorBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/mlkit/md/camera/FrameProcessorBase<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLcom/google/mlkit/md/camera/FrameProcessorBase;Ljava/nio/ByteBuffer;Lcom/google/mlkit/md/camera/FrameMetadata;Lcom/google/mlkit/md/camera/GraphicOverlay;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/mlkit/md/camera/FrameProcessorBase<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "Lcom/google/mlkit/md/camera/FrameMetadata;",
            "Lcom/google/mlkit/md/camera/GraphicOverlay;",
            ")V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/google/mlkit/md/camera/FrameProcessorBase$processLatestFrame$1;->$startMs:J

    iput-object p3, p0, Lcom/google/mlkit/md/camera/FrameProcessorBase$processLatestFrame$1;->this$0:Lcom/google/mlkit/md/camera/FrameProcessorBase;

    iput-object p4, p0, Lcom/google/mlkit/md/camera/FrameProcessorBase$processLatestFrame$1;->$frame:Ljava/nio/ByteBuffer;

    iput-object p5, p0, Lcom/google/mlkit/md/camera/FrameProcessorBase$processLatestFrame$1;->$frameMetaData:Lcom/google/mlkit/md/camera/FrameMetadata;

    iput-object p6, p0, Lcom/google/mlkit/md/camera/FrameProcessorBase$processLatestFrame$1;->$graphicOverlay:Lcom/google/mlkit/md/camera/GraphicOverlay;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 81
    invoke-virtual {p0, p1}, Lcom/google/mlkit/md/camera/FrameProcessorBase$processLatestFrame$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/mlkit/md/camera/FrameProcessorBase$processLatestFrame$1;->$startMs:J

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Latency is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameProcessorBase"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/google/mlkit/md/camera/FrameProcessorBase$processLatestFrame$1;->this$0:Lcom/google/mlkit/md/camera/FrameProcessorBase;

    new-instance v1, Lcom/google/mlkit/md/CameraInputInfo;

    iget-object v2, p0, Lcom/google/mlkit/md/camera/FrameProcessorBase$processLatestFrame$1;->$frame:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/google/mlkit/md/camera/FrameProcessorBase$processLatestFrame$1;->$frameMetaData:Lcom/google/mlkit/md/camera/FrameMetadata;

    invoke-direct {v1, v2, v3}, Lcom/google/mlkit/md/CameraInputInfo;-><init>(Ljava/nio/ByteBuffer;Lcom/google/mlkit/md/camera/FrameMetadata;)V

    check-cast v1, Lcom/google/mlkit/md/InputInfo;

    iget-object v2, p0, Lcom/google/mlkit/md/camera/FrameProcessorBase$processLatestFrame$1;->$graphicOverlay:Lcom/google/mlkit/md/camera/GraphicOverlay;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/mlkit/md/camera/FrameProcessorBase;->onSuccess(Lcom/google/mlkit/md/InputInfo;Ljava/lang/Object;Lcom/google/mlkit/md/camera/GraphicOverlay;)V

    .line 84
    iget-object p1, p0, Lcom/google/mlkit/md/camera/FrameProcessorBase$processLatestFrame$1;->this$0:Lcom/google/mlkit/md/camera/FrameProcessorBase;

    iget-object v0, p0, Lcom/google/mlkit/md/camera/FrameProcessorBase$processLatestFrame$1;->$graphicOverlay:Lcom/google/mlkit/md/camera/GraphicOverlay;

    invoke-static {p1, v0}, Lcom/google/mlkit/md/camera/FrameProcessorBase;->access$processLatestFrame(Lcom/google/mlkit/md/camera/FrameProcessorBase;Lcom/google/mlkit/md/camera/GraphicOverlay;)V

    return-void
.end method
