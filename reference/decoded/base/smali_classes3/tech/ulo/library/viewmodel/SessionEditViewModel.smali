.class public final Ltech/ulo/library/viewmodel/SessionEditViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SessionEditViewModel.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0012\u0010\u0014\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c0\u000bJ\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0002J\u0008\u0010\u001a\u001a\u00020\u001bH\u0014J\u0018\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0002R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\'\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c0\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Ltech/ulo/library/viewmodel/SessionEditViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "ulaDatabase",
        "Ltech/ulo/library/model/repositories/UlaDatabase;",
        "(Ltech/ulo/library/model/repositories/UlaDatabase;)V",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "filesystems",
        "Landroidx/lifecycle/LiveData;",
        "",
        "Ltech/ulo/library/model/entities/Filesystem;",
        "getFilesystems",
        "()Landroidx/lifecycle/LiveData;",
        "filesystems$delegate",
        "Lkotlin/Lazy;",
        "job",
        "Lkotlinx/coroutines/CompletableJob;",
        "getAllFilesystems",
        "insertSession",
        "Lkotlinx/coroutines/Job;",
        "session",
        "Ltech/ulo/library/model/entities/Session;",
        "coroutineScope",
        "onCleared",
        "",
        "updateSession",
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

.field private final job:Lkotlinx/coroutines/CompletableJob;

.field private final ulaDatabase:Ltech/ulo/library/model/repositories/UlaDatabase;


# direct methods
.method public constructor <init>(Ltech/ulo/library/model/repositories/UlaDatabase;)V
    .locals 1

    const-string v0, "ulaDatabase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/viewmodel/SessionEditViewModel;->ulaDatabase:Ltech/ulo/library/model/repositories/UlaDatabase;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 14
    invoke-static {p1, v0, p1}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    iput-object p1, p0, Ltech/ulo/library/viewmodel/SessionEditViewModel;->job:Lkotlinx/coroutines/CompletableJob;

    .line 23
    new-instance p1, Ltech/ulo/library/viewmodel/SessionEditViewModel$filesystems$2;

    invoke-direct {p1, p0}, Ltech/ulo/library/viewmodel/SessionEditViewModel$filesystems$2;-><init>(Ltech/ulo/library/viewmodel/SessionEditViewModel;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Ltech/ulo/library/viewmodel/SessionEditViewModel;->filesystems$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getUlaDatabase$p(Ltech/ulo/library/viewmodel/SessionEditViewModel;)Ltech/ulo/library/model/repositories/UlaDatabase;
    .locals 0

    .line 12
    iget-object p0, p0, Ltech/ulo/library/viewmodel/SessionEditViewModel;->ulaDatabase:Ltech/ulo/library/model/repositories/UlaDatabase;

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

    .line 23
    iget-object v0, p0, Ltech/ulo/library/viewmodel/SessionEditViewModel;->filesystems$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public static synthetic insertSession$default(Ltech/ulo/library/viewmodel/SessionEditViewModel;Ltech/ulo/library/model/entities/Session;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 31
    move-object p2, p0

    check-cast p2, Lkotlinx/coroutines/CoroutineScope;

    :cond_0
    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/viewmodel/SessionEditViewModel;->insertSession(Ltech/ulo/library/model/entities/Session;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic updateSession$default(Ltech/ulo/library/viewmodel/SessionEditViewModel;Ltech/ulo/library/model/entities/Session;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 37
    move-object p2, p0

    check-cast p2, Lkotlinx/coroutines/CoroutineScope;

    :cond_0
    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/viewmodel/SessionEditViewModel;->updateSession(Ltech/ulo/library/model/entities/Session;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAllFilesystems()Landroidx/lifecycle/LiveData;
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

    .line 28
    invoke-direct {p0}, Ltech/ulo/library/viewmodel/SessionEditViewModel;->getFilesystems()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 2

    .line 16
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    iget-object v1, p0, Ltech/ulo/library/viewmodel/SessionEditViewModel;->job:Lkotlinx/coroutines/CompletableJob;

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/MainCoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final insertSession(Ltech/ulo/library/model/entities/Session;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
    .locals 8

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Ltech/ulo/library/viewmodel/SessionEditViewModel$insertSession$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ltech/ulo/library/viewmodel/SessionEditViewModel$insertSession$1;-><init>(Ltech/ulo/library/viewmodel/SessionEditViewModel;Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method protected onCleared()V
    .locals 3

    .line 19
    iget-object v0, p0, Ltech/ulo/library/viewmodel/SessionEditViewModel;->job:Lkotlinx/coroutines/CompletableJob;

    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 20
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    return-void
.end method

.method public final updateSession(Ltech/ulo/library/model/entities/Session;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
    .locals 8

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Ltech/ulo/library/viewmodel/SessionEditViewModel$updateSession$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ltech/ulo/library/viewmodel/SessionEditViewModel$updateSession$1;-><init>(Ltech/ulo/library/viewmodel/SessionEditViewModel;Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method
