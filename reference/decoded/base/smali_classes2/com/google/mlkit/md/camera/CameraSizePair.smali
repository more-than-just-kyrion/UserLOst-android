.class public final Lcom/google/mlkit/md/camera/CameraSizePair;
.super Ljava/lang/Object;
.source "CameraSizePair.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCameraSizePair.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraSizePair.kt\ncom/google/mlkit/md/camera/CameraSizePair\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,42:1\n1#2:43\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B!\u0008\u0016\u0012\n\u0010\u0002\u001a\u00060\u0003R\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0018\u00010\u0003R\u00020\u0004\u00a2\u0006\u0002\u0010\u0006B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0007\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/google/mlkit/md/camera/CameraSizePair;",
        "",
        "previewSize",
        "Landroid/hardware/Camera$Size;",
        "Landroid/hardware/Camera;",
        "pictureSize",
        "(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V",
        "Lcom/google/android/gms/common/images/Size;",
        "(Lcom/google/android/gms/common/images/Size;Lcom/google/android/gms/common/images/Size;)V",
        "picture",
        "getPicture",
        "()Lcom/google/android/gms/common/images/Size;",
        "preview",
        "getPreview",
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
.field private final picture:Lcom/google/android/gms/common/images/Size;

.field private final preview:Lcom/google/android/gms/common/images/Size;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V
    .locals 2

    const-string v0, "previewSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/google/android/gms/common/images/Size;

    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/images/Size;-><init>(II)V

    iput-object v0, p0, Lcom/google/mlkit/md/camera/CameraSizePair;->preview:Lcom/google/android/gms/common/images/Size;

    if-eqz p2, :cond_0

    .line 34
    new-instance p1, Lcom/google/android/gms/common/images/Size;

    iget v0, p2, Landroid/hardware/Camera$Size;->width:I

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/common/images/Size;-><init>(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/mlkit/md/camera/CameraSizePair;->picture:Lcom/google/android/gms/common/images/Size;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/images/Size;Lcom/google/android/gms/common/images/Size;)V
    .locals 1

    const-string v0, "previewSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/mlkit/md/camera/CameraSizePair;->preview:Lcom/google/android/gms/common/images/Size;

    .line 39
    iput-object p2, p0, Lcom/google/mlkit/md/camera/CameraSizePair;->picture:Lcom/google/android/gms/common/images/Size;

    return-void
.end method


# virtual methods
.method public final getPicture()Lcom/google/android/gms/common/images/Size;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/mlkit/md/camera/CameraSizePair;->picture:Lcom/google/android/gms/common/images/Size;

    return-object v0
.end method

.method public final getPreview()Lcom/google/android/gms/common/images/Size;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/mlkit/md/camera/CameraSizePair;->preview:Lcom/google/android/gms/common/images/Size;

    return-object v0
.end method
