.class final Lcom/google/mlkit/md/camera/FrameProcessorBase$processLatestFrame$2;
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
        "Ljava/lang/Exception;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\n\u0010\u0003\u001a\u00060\u0004j\u0002`\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "invoke"
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
.field final synthetic this$0:Lcom/google/mlkit/md/camera/FrameProcessorBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/mlkit/md/camera/FrameProcessorBase<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-NT1bS5iVn9rXgO5IBb18W99iLk(Lcom/google/mlkit/md/camera/FrameProcessorBase;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/mlkit/md/camera/FrameProcessorBase$processLatestFrame$2;->invoke$lambda$0(Lcom/google/mlkit/md/camera/FrameProcessorBase;Ljava/lang/Exception;)V

    return-void
.end method

.method constructor <init>(Lcom/google/mlkit/md/camera/FrameProcessorBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mlkit/md/camera/FrameProcessorBase<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/mlkit/md/camera/FrameProcessorBase$processLatestFrame$2;->this$0:Lcom/google/mlkit/md/camera/FrameProcessorBase;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/google/mlkit/md/camera/FrameProcessorBase;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/google/mlkit/md/camera/FrameProcessorBase;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 86
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/google/mlkit/md/camera/FrameProcessorBase$processLatestFrame$2;->invoke(Ljava/lang/Exception;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/google/mlkit/md/camera/FrameProcessorBase$processLatestFrame$2;->this$0:Lcom/google/mlkit/md/camera/FrameProcessorBase;

    new-instance v0, Lcom/google/mlkit/md/camera/FrameProcessorBase$processLatestFrame$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/google/mlkit/md/camera/FrameProcessorBase$processLatestFrame$2$$ExternalSyntheticLambda0;-><init>(Lcom/google/mlkit/md/camera/FrameProcessorBase;)V

    return-void
.end method
