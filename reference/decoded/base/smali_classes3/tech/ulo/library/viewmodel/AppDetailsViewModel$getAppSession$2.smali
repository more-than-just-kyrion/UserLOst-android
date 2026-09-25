.class final Ltech/ulo/library/viewmodel/AppDetailsViewModel$getAppSession$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppDetailsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/viewmodel/AppDetailsViewModel;->getAppSession(Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ltech/ulo/library/model/entities/Session;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Ltech/ulo/library/model/entities/Session;",
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
    c = "tech.ulo.library.viewmodel.AppDetailsViewModel$getAppSession$2"
    f = "AppDetailsViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $app:Ltech/ulo/library/model/entities/App;

.field label:I

.field final synthetic this$0:Ltech/ulo/library/viewmodel/AppDetailsViewModel;


# direct methods
.method constructor <init>(Ltech/ulo/library/viewmodel/AppDetailsViewModel;Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/viewmodel/AppDetailsViewModel;",
            "Ltech/ulo/library/model/entities/App;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ulo/library/viewmodel/AppDetailsViewModel$getAppSession$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$getAppSession$2;->this$0:Ltech/ulo/library/viewmodel/AppDetailsViewModel;

    iput-object p2, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$getAppSession$2;->$app:Ltech/ulo/library/model/entities/App;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Ltech/ulo/library/viewmodel/AppDetailsViewModel$getAppSession$2;

    iget-object v0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$getAppSession$2;->this$0:Ltech/ulo/library/viewmodel/AppDetailsViewModel;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$getAppSession$2;->$app:Ltech/ulo/library/model/entities/App;

    invoke-direct {p1, v0, v1, p2}, Ltech/ulo/library/viewmodel/AppDetailsViewModel$getAppSession$2;-><init>(Ltech/ulo/library/viewmodel/AppDetailsViewModel;Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/viewmodel/AppDetailsViewModel$getAppSession$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ltech/ulo/library/model/entities/Session;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/viewmodel/AppDetailsViewModel$getAppSession$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Ltech/ulo/library/viewmodel/AppDetailsViewModel$getAppSession$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Ltech/ulo/library/viewmodel/AppDetailsViewModel$getAppSession$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 62
    iget v0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$getAppSession$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    iget-object p1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$getAppSession$2;->this$0:Ltech/ulo/library/viewmodel/AppDetailsViewModel;

    invoke-static {p1}, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->access$getSessionDao$p(Ltech/ulo/library/viewmodel/AppDetailsViewModel;)Ltech/ulo/library/model/daos/SessionDao;

    move-result-object p1

    iget-object v0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$getAppSession$2;->$app:Ltech/ulo/library/model/entities/App;

    invoke-virtual {v0}, Ltech/ulo/library/model/entities/App;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ltech/ulo/library/model/daos/SessionDao;->findAppsSession(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 64
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltech/ulo/library/model/entities/Session;

    :goto_0
    return-object p1

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
