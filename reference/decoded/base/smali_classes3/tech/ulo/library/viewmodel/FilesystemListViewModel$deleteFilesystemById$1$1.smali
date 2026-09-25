.class final Ltech/ulo/library/viewmodel/FilesystemListViewModel$deleteFilesystemById$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FilesystemListViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/viewmodel/FilesystemListViewModel$deleteFilesystemById$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "tech.ulo.library.viewmodel.FilesystemListViewModel$deleteFilesystemById$1$1"
    f = "FilesystemListViewModel.kt"
    i = {}
    l = {
        0x5d
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $id:J

.field label:I

.field final synthetic this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;


# direct methods
.method constructor <init>(Ltech/ulo/library/viewmodel/FilesystemListViewModel;JLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/viewmodel/FilesystemListViewModel;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ulo/library/viewmodel/FilesystemListViewModel$deleteFilesystemById$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$deleteFilesystemById$1$1;->this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    iput-wide p2, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$deleteFilesystemById$1$1;->$id:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Ltech/ulo/library/viewmodel/FilesystemListViewModel$deleteFilesystemById$1$1;

    iget-object v0, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$deleteFilesystemById$1$1;->this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    iget-wide v1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$deleteFilesystemById$1$1;->$id:J

    invoke-direct {p1, v0, v1, v2, p2}, Ltech/ulo/library/viewmodel/FilesystemListViewModel$deleteFilesystemById$1$1;-><init>(Ltech/ulo/library/viewmodel/FilesystemListViewModel;JLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/viewmodel/FilesystemListViewModel$deleteFilesystemById$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/viewmodel/FilesystemListViewModel$deleteFilesystemById$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Ltech/ulo/library/viewmodel/FilesystemListViewModel$deleteFilesystemById$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Ltech/ulo/library/viewmodel/FilesystemListViewModel$deleteFilesystemById$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 89
    iget v1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$deleteFilesystemById$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 90
    iget-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$deleteFilesystemById$1$1;->this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    invoke-static {p1}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->access$getViewState$p(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v1, Ltech/ulo/library/viewmodel/FilesystemDeleteState$InProgress;->INSTANCE:Ltech/ulo/library/viewmodel/FilesystemDeleteState$InProgress;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 93
    :try_start_1
    iget-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$deleteFilesystemById$1$1;->this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    invoke-static {p1}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->access$getFilesystemManager$p(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)Ltech/ulo/library/utils/FilesystemManager;

    move-result-object p1

    iget-wide v3, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$deleteFilesystemById$1$1;->$id:J

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$deleteFilesystemById$1$1;->label:I

    invoke-virtual {p1, v3, v4, v1}, Ltech/ulo/library/utils/FilesystemManager;->deleteFilesystem(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_2

    return-object v0

    .line 99
    :cond_2
    :goto_0
    iget-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$deleteFilesystemById$1$1;->this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    invoke-static {p1}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->access$getFilesystemDao$p(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)Ltech/ulo/library/model/daos/FilesystemDao;

    move-result-object p1

    iget-wide v0, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$deleteFilesystemById$1$1;->$id:J

    invoke-interface {p1, v0, v1}, Ltech/ulo/library/model/daos/FilesystemDao;->deleteFilesystemById(J)V

    .line 100
    iget-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$deleteFilesystemById$1$1;->this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    invoke-static {p1}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->access$getViewState$p(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Ltech/ulo/library/viewmodel/FilesystemDeleteState$Success;->INSTANCE:Ltech/ulo/library/viewmodel/FilesystemDeleteState$Success;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 101
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 95
    :catch_0
    iget-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$deleteFilesystemById$1$1;->this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    invoke-static {p1}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->access$getViewState$p(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Ltech/ulo/library/viewmodel/FilesystemDeleteState$Failure;->INSTANCE:Ltech/ulo/library/viewmodel/FilesystemDeleteState$Failure;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 96
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
