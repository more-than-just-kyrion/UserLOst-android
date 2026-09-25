.class final Ltech/ulo/library/model/state/SessionStartupFsm$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SessionStartupFsm.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/model/state/SessionStartupFsm;-><init>(Ltech/ulo/library/model/repositories/UlaDatabase;Ltech/ulo/library/model/repositories/AssetRepository;Ltech/ulo/library/utils/FilesystemManager;Ltech/ulo/library/utils/AssetDownloader;Ltech/ulo/library/utils/StorageCalculator;Ltech/ulo/library/utils/Logger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Ltech/ulo/library/model/entities/Session;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "Ltech/ulo/library/model/entities/Session;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic this$0:Ltech/ulo/library/model/state/SessionStartupFsm;


# direct methods
.method constructor <init>(Ltech/ulo/library/model/state/SessionStartupFsm;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$1;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Ltech/ulo/library/model/state/SessionStartupFsm$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Session;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm$1;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    .line 47
    invoke-static {v0}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$getActiveSessions$p(Ltech/ulo/library/model/state/SessionStartupFsm;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 48
    invoke-static {v0}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$getActiveSessions$p(Ltech/ulo/library/model/state/SessionStartupFsm;)Ljava/util/List;

    move-result-object v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
