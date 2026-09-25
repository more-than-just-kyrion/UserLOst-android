.class public final Ltech/ulo/library/viewmodel/SessionListViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SessionListViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J$\u0010\u0015\u001a \u0012\u001c\u0012\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u00160\u0006R\'\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\'\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u00070\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u000c\u001a\u0004\u0008\u000f\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Ltech/ulo/library/viewmodel/SessionListViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "ulaDatabase",
        "Ltech/ulo/library/model/repositories/UlaDatabase;",
        "(Ltech/ulo/library/model/repositories/UlaDatabase;)V",
        "filesystems",
        "Landroidx/lifecycle/LiveData;",
        "",
        "Ltech/ulo/library/model/entities/Filesystem;",
        "getFilesystems",
        "()Landroidx/lifecycle/LiveData;",
        "filesystems$delegate",
        "Lkotlin/Lazy;",
        "sessions",
        "Ltech/ulo/library/model/entities/Session;",
        "getSessions",
        "sessions$delegate",
        "deleteSessionById",
        "",
        "id",
        "",
        "getSessionsAndFilesystems",
        "Lkotlin/Pair;",
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
.field private final filesystems$delegate:Lkotlin/Lazy;

.field private final sessions$delegate:Lkotlin/Lazy;

.field private final ulaDatabase:Ltech/ulo/library/model/repositories/UlaDatabase;


# direct methods
.method public constructor <init>(Ltech/ulo/library/model/repositories/UlaDatabase;)V
    .locals 1

    const-string v0, "ulaDatabase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 14
    iput-object p1, p0, Ltech/ulo/library/viewmodel/SessionListViewModel;->ulaDatabase:Ltech/ulo/library/model/repositories/UlaDatabase;

    .line 17
    new-instance p1, Ltech/ulo/library/viewmodel/SessionListViewModel$sessions$2;

    invoke-direct {p1, p0}, Ltech/ulo/library/viewmodel/SessionListViewModel$sessions$2;-><init>(Ltech/ulo/library/viewmodel/SessionListViewModel;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Ltech/ulo/library/viewmodel/SessionListViewModel;->sessions$delegate:Lkotlin/Lazy;

    .line 21
    new-instance p1, Ltech/ulo/library/viewmodel/SessionListViewModel$filesystems$2;

    invoke-direct {p1, p0}, Ltech/ulo/library/viewmodel/SessionListViewModel$filesystems$2;-><init>(Ltech/ulo/library/viewmodel/SessionListViewModel;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Ltech/ulo/library/viewmodel/SessionListViewModel;->filesystems$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getUlaDatabase$p(Ltech/ulo/library/viewmodel/SessionListViewModel;)Ltech/ulo/library/model/repositories/UlaDatabase;
    .locals 0

    .line 13
    iget-object p0, p0, Ltech/ulo/library/viewmodel/SessionListViewModel;->ulaDatabase:Ltech/ulo/library/model/repositories/UlaDatabase;

    return-object p0
.end method

.method private final getFilesystems()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Filesystem;",
            ">;>;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Ltech/ulo/library/viewmodel/SessionListViewModel;->filesystems$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method private final getSessions()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Session;",
            ">;>;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Ltech/ulo/library/viewmodel/SessionListViewModel;->sessions$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method


# virtual methods
.method public final deleteSessionById(J)V
    .locals 7

    .line 30
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Ltech/ulo/library/viewmodel/SessionListViewModel$deleteSessionById$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Ltech/ulo/library/viewmodel/SessionListViewModel$deleteSessionById$1;-><init>(Ltech/ulo/library/viewmodel/SessionListViewModel;JLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getSessionsAndFilesystems()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Session;",
            ">;",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Filesystem;",
            ">;>;>;"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ltech/ulo/library/viewmodel/SessionListViewModel;->getSessions()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-direct {p0}, Ltech/ulo/library/viewmodel/SessionListViewModel;->getFilesystems()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-static {v0, v1}, Ltech/ulo/library/utils/ExtensionsKt;->zipLiveData(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method
