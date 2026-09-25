.class final Lcom/google/mlkit/md/camera/CameraSourcePreview$SurfaceCallback;
.super Ljava/lang/Object;
.source "CameraSourcePreview.kt"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/md/camera/CameraSourcePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SurfaceCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0006H\u0016J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0006H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/google/mlkit/md/camera/CameraSourcePreview$SurfaceCallback;",
        "Landroid/view/SurfaceHolder$Callback;",
        "(Lcom/google/mlkit/md/camera/CameraSourcePreview;)V",
        "surfaceChanged",
        "",
        "holder",
        "Landroid/view/SurfaceHolder;",
        "format",
        "",
        "width",
        "height",
        "surfaceCreated",
        "surface",
        "surfaceDestroyed",
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
.field final synthetic this$0:Lcom/google/mlkit/md/camera/CameraSourcePreview;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/md/camera/CameraSourcePreview;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/google/mlkit/md/camera/CameraSourcePreview$SurfaceCallback;->this$0:Lcom/google/mlkit/md/camera/CameraSourcePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lcom/google/mlkit/md/camera/CameraSourcePreview$SurfaceCallback;->this$0:Lcom/google/mlkit/md/camera/CameraSourcePreview;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/mlkit/md/camera/CameraSourcePreview;->access$setSurfaceAvailable$p(Lcom/google/mlkit/md/camera/CameraSourcePreview;Z)V

    .line 131
    :try_start_0
    iget-object p1, p0, Lcom/google/mlkit/md/camera/CameraSourcePreview$SurfaceCallback;->this$0:Lcom/google/mlkit/md/camera/CameraSourcePreview;

    invoke-static {p1}, Lcom/google/mlkit/md/camera/CameraSourcePreview;->access$startIfReady(Lcom/google/mlkit/md/camera/CameraSourcePreview;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 133
    const-string v0, "Could not start camera source."

    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "CameraSourcePreview"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/google/mlkit/md/camera/CameraSourcePreview$SurfaceCallback;->this$0:Lcom/google/mlkit/md/camera/CameraSourcePreview;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/mlkit/md/camera/CameraSourcePreview;->access$setSurfaceAvailable$p(Lcom/google/mlkit/md/camera/CameraSourcePreview;Z)V

    return-void
.end method
