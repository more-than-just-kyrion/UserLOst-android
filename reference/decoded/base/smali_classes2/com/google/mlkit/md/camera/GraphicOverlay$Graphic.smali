.class public abstract Lcom/google/mlkit/md/camera/GraphicOverlay$Graphic;
.super Ljava/lang/Object;
.source "GraphicOverlay.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/md/camera/GraphicOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Graphic"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u000f\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH&R\u0014\u0010\u0005\u001a\u00020\u0006X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/google/mlkit/md/camera/GraphicOverlay$Graphic;",
        "",
        "overlay",
        "Lcom/google/mlkit/md/camera/GraphicOverlay;",
        "(Lcom/google/mlkit/md/camera/GraphicOverlay;)V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "getOverlay",
        "()Lcom/google/mlkit/md/camera/GraphicOverlay;",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
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
.field private final context:Landroid/content/Context;

.field private final overlay:Lcom/google/mlkit/md/camera/GraphicOverlay;


# direct methods
.method protected constructor <init>(Lcom/google/mlkit/md/camera/GraphicOverlay;)V
    .locals 1

    const-string v0, "overlay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/md/camera/GraphicOverlay$Graphic;->overlay:Lcom/google/mlkit/md/camera/GraphicOverlay;

    .line 56
    invoke-virtual {p1}, Lcom/google/mlkit/md/camera/GraphicOverlay;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/mlkit/md/camera/GraphicOverlay$Graphic;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/mlkit/md/camera/GraphicOverlay$Graphic;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected final getOverlay()Lcom/google/mlkit/md/camera/GraphicOverlay;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/mlkit/md/camera/GraphicOverlay$Graphic;->overlay:Lcom/google/mlkit/md/camera/GraphicOverlay;

    return-object v0
.end method
