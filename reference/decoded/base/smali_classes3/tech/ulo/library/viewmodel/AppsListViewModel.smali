.class public final Ltech/ulo/library/viewmodel/AppsListViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "AppsListViewModel.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0012\u0010\u0017\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007J\u0012\u0010\u0018\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007J\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0007J\u0006\u0010\u001b\u001a\u00020\u001cR\'\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\'\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\r\u001a\u0004\u0008\u000f\u0010\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Ltech/ulo/library/viewmodel/AppsListViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "appsRepository",
        "Ltech/ulo/library/model/repositories/AppsRepository;",
        "(Ltech/ulo/library/model/repositories/AppsRepository;)V",
        "activeAppsLiveData",
        "Landroidx/lifecycle/LiveData;",
        "",
        "Ltech/ulo/library/model/entities/App;",
        "getActiveAppsLiveData",
        "()Landroidx/lifecycle/LiveData;",
        "activeAppsLiveData$delegate",
        "Lkotlin/Lazy;",
        "apps",
        "getApps",
        "apps$delegate",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "job",
        "Lkotlinx/coroutines/CompletableJob;",
        "getActiveApps",
        "getAppsList",
        "getRefreshStatus",
        "Ltech/ulo/library/model/repositories/AppRefreshStatus;",
        "refreshAppsList",
        "",
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
.field private final activeAppsLiveData$delegate:Lkotlin/Lazy;

.field private final apps$delegate:Lkotlin/Lazy;

.field private final appsRepository:Ltech/ulo/library/model/repositories/AppsRepository;

.field private final job:Lkotlinx/coroutines/CompletableJob;


# direct methods
.method public constructor <init>(Ltech/ulo/library/model/repositories/AppsRepository;)V
    .locals 1

    const-string v0, "appsRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 17
    iput-object p1, p0, Ltech/ulo/library/viewmodel/AppsListViewModel;->appsRepository:Ltech/ulo/library/model/repositories/AppsRepository;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 20
    invoke-static {p1, v0, p1}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    iput-object p1, p0, Ltech/ulo/library/viewmodel/AppsListViewModel;->job:Lkotlinx/coroutines/CompletableJob;

    .line 24
    new-instance p1, Ltech/ulo/library/viewmodel/AppsListViewModel$apps$2;

    invoke-direct {p1, p0}, Ltech/ulo/library/viewmodel/AppsListViewModel$apps$2;-><init>(Ltech/ulo/library/viewmodel/AppsListViewModel;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Ltech/ulo/library/viewmodel/AppsListViewModel;->apps$delegate:Lkotlin/Lazy;

    .line 28
    new-instance p1, Ltech/ulo/library/viewmodel/AppsListViewModel$activeAppsLiveData$2;

    invoke-direct {p1, p0}, Ltech/ulo/library/viewmodel/AppsListViewModel$activeAppsLiveData$2;-><init>(Ltech/ulo/library/viewmodel/AppsListViewModel;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Ltech/ulo/library/viewmodel/AppsListViewModel;->activeAppsLiveData$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getAppsRepository$p(Ltech/ulo/library/viewmodel/AppsListViewModel;)Ltech/ulo/library/model/repositories/AppsRepository;
    .locals 0

    .line 16
    iget-object p0, p0, Ltech/ulo/library/viewmodel/AppsListViewModel;->appsRepository:Ltech/ulo/library/model/repositories/AppsRepository;

    return-object p0
.end method

.method private final getActiveAppsLiveData()Landroidx/lifecycle/LiveData;
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

    .line 28
    iget-object v0, p0, Ltech/ulo/library/viewmodel/AppsListViewModel;->activeAppsLiveData$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method private final getApps()Landroidx/lifecycle/LiveData;
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

    .line 24
    iget-object v0, p0, Ltech/ulo/library/viewmodel/AppsListViewModel;->apps$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method


# virtual methods
.method public final getActiveApps()Landroidx/lifecycle/LiveData;
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

    .line 37
    invoke-direct {p0}, Ltech/ulo/library/viewmodel/AppsListViewModel;->getActiveAppsLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public final getAppsList()Landroidx/lifecycle/LiveData;
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

    .line 33
    invoke-direct {p0}, Ltech/ulo/library/viewmodel/AppsListViewModel;->getApps()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 2

    .line 22
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    iget-object v1, p0, Ltech/ulo/library/viewmodel/AppsListViewModel;->job:Lkotlinx/coroutines/CompletableJob;

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final getRefreshStatus()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ltech/ulo/library/model/repositories/AppRefreshStatus;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Ltech/ulo/library/viewmodel/AppsListViewModel;->appsRepository:Ltech/ulo/library/model/repositories/AppsRepository;

    invoke-virtual {v0}, Ltech/ulo/library/model/repositories/AppsRepository;->getRefreshStatus()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public final refreshAppsList()V
    .locals 6

    .line 41
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Ltech/ulo/library/viewmodel/AppsListViewModel$refreshAppsList$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ltech/ulo/library/viewmodel/AppsListViewModel$refreshAppsList$1;-><init>(Ltech/ulo/library/viewmodel/AppsListViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
