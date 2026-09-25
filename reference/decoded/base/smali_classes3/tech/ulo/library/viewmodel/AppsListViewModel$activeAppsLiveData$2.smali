.class final Ltech/ulo/library/viewmodel/AppsListViewModel$activeAppsLiveData$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AppsListViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/viewmodel/AppsListViewModel;-><init>(Ltech/ulo/library/model/repositories/AppsRepository;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/lifecycle/LiveData<",
        "Ljava/util/List<",
        "+",
        "Ltech/ulo/library/model/entities/App;",
        ">;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/lifecycle/LiveData;",
        "",
        "Ltech/ulo/library/model/entities/App;",
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
.field final synthetic this$0:Ltech/ulo/library/viewmodel/AppsListViewModel;


# direct methods
.method constructor <init>(Ltech/ulo/library/viewmodel/AppsListViewModel;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/viewmodel/AppsListViewModel$activeAppsLiveData$2;->this$0:Ltech/ulo/library/viewmodel/AppsListViewModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/App;",
            ">;>;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Ltech/ulo/library/viewmodel/AppsListViewModel$activeAppsLiveData$2;->this$0:Ltech/ulo/library/viewmodel/AppsListViewModel;

    invoke-static {v0}, Ltech/ulo/library/viewmodel/AppsListViewModel;->access$getAppsRepository$p(Ltech/ulo/library/viewmodel/AppsListViewModel;)Ltech/ulo/library/model/repositories/AppsRepository;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/model/repositories/AppsRepository;->getActiveApps()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Ltech/ulo/library/viewmodel/AppsListViewModel$activeAppsLiveData$2;->invoke()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method
