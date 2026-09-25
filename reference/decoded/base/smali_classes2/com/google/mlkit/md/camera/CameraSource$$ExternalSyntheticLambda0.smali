.class public final synthetic Lcom/google/mlkit/md/camera/CameraSource$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field public final synthetic f$0:Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/md/camera/CameraSource$$ExternalSyntheticLambda0;->f$0:Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;

    return-void
.end method


# virtual methods
.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/mlkit/md/camera/CameraSource$$ExternalSyntheticLambda0;->f$0:Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;->setNextFrame$UserLOstLibrary_UserLOstRelease([BLandroid/hardware/Camera;)V

    return-void
.end method
