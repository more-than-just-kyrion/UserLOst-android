.class final Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppsRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/model/repositories/AppsRepository;->refreshData(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "tech.ulo.library.model.repositories.AppsRepository$refreshData$3$1"
    f = "AppsRepository.kt"
    i = {}
    l = {
        0x49,
        0x4a,
        0x4b,
        0x4c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $app:Ltech/ulo/library/model/entities/App;

.field final synthetic $distributionsList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $failMessage:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $failed:Lkotlin/jvm/internal/Ref$BooleanRef;

.field label:I

.field final synthetic this$0:Ltech/ulo/library/model/repositories/AppsRepository;


# direct methods
.method constructor <init>(Ltech/ulo/library/model/entities/App;Ljava/util/Set;Ltech/ulo/library/model/repositories/AppsRepository;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/App;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ltech/ulo/library/model/repositories/AppsRepository;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->$app:Ltech/ulo/library/model/entities/App;

    iput-object p2, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->$distributionsList:Ljava/util/Set;

    iput-object p3, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->this$0:Ltech/ulo/library/model/repositories/AppsRepository;

    iput-object p4, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->$failed:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p5, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->$failMessage:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;

    iget-object v1, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->$app:Ltech/ulo/library/model/entities/App;

    iget-object v2, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->$distributionsList:Ljava/util/Set;

    iget-object v3, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->this$0:Ltech/ulo/library/model/repositories/AppsRepository;

    iget-object v4, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->$failed:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v5, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->$failMessage:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;-><init>(Ltech/ulo/library/model/entities/App;Ljava/util/Set;Ltech/ulo/library/model/repositories/AppsRepository;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 70
    iget v1, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    iget-object p1, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->$app:Ltech/ulo/library/model/entities/App;

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/App;->getCategory()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "ENGLISH"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toLowerCase(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "distribution"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->$distributionsList:Ljava/util/Set;

    iget-object v1, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->$app:Ltech/ulo/library/model/entities/App;

    invoke-virtual {v1}, Ltech/ulo/library/model/entities/App;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_5
    :try_start_2
    iget-object p1, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->this$0:Ltech/ulo/library/model/repositories/AppsRepository;

    invoke-static {p1}, Ltech/ulo/library/model/repositories/AppsRepository;->access$getRemoteAppsSource$p(Ltech/ulo/library/model/repositories/AppsRepository;)Ltech/ulo/library/model/remote/GithubAppsFetcher;

    move-result-object p1

    iget-object v1, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->$app:Ltech/ulo/library/model/entities/App;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v5, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->label:I

    invoke-virtual {p1, v1, v6}, Ltech/ulo/library/model/remote/GithubAppsFetcher;->fetchAppIcon(Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 74
    :cond_6
    :goto_0
    iget-object p1, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->this$0:Ltech/ulo/library/model/repositories/AppsRepository;

    invoke-static {p1}, Ltech/ulo/library/model/repositories/AppsRepository;->access$getRemoteAppsSource$p(Ltech/ulo/library/model/repositories/AppsRepository;)Ltech/ulo/library/model/remote/GithubAppsFetcher;

    move-result-object p1

    iget-object v1, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->$app:Ltech/ulo/library/model/entities/App;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v4, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->label:I

    invoke-virtual {p1, v1, v6}, Ltech/ulo/library/model/remote/GithubAppsFetcher;->fetchAppDescription(Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 75
    :cond_7
    :goto_1
    iget-object p1, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->this$0:Ltech/ulo/library/model/repositories/AppsRepository;

    invoke-static {p1}, Ltech/ulo/library/model/repositories/AppsRepository;->access$getRemoteAppsSource$p(Ltech/ulo/library/model/repositories/AppsRepository;)Ltech/ulo/library/model/remote/GithubAppsFetcher;

    move-result-object p1

    iget-object v1, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->$app:Ltech/ulo/library/model/entities/App;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v3, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->label:I

    invoke-virtual {p1, v1, v4}, Ltech/ulo/library/model/remote/GithubAppsFetcher;->fetchAppScript(Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 76
    :cond_8
    :goto_2
    iget-object p1, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->this$0:Ltech/ulo/library/model/repositories/AppsRepository;

    invoke-static {p1}, Ltech/ulo/library/model/repositories/AppsRepository;->access$getRemoteAppsSource$p(Ltech/ulo/library/model/repositories/AppsRepository;)Ltech/ulo/library/model/remote/GithubAppsFetcher;

    move-result-object p1

    iget-object v1, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->$app:Ltech/ulo/library/model/entities/App;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->label:I

    invoke-virtual {p1, v1, v3}, Ltech/ulo/library/model/remote/GithubAppsFetcher;->fetchAppFlavors(Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne p1, v0, :cond_9

    return-object v0

    .line 78
    :goto_3
    iget-object v0, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->this$0:Ltech/ulo/library/model/repositories/AppsRepository;

    invoke-static {v0}, Ltech/ulo/library/model/repositories/AppsRepository;->access$getLogger$p(Ltech/ulo/library/model/repositories/AppsRepository;)Ltech/ulo/library/utils/Logger;

    move-result-object v0

    invoke-interface {v0, p1}, Ltech/ulo/library/utils/Logger;->addExceptionBreadcrumb(Ljava/lang/Exception;)V

    .line 79
    iget-object p1, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->$failed:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v5, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 80
    iget-object p1, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->$failMessage:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->$app:Ltech/ulo/library/model/entities/App;

    invoke-virtual {v0}, Ltech/ulo/library/model/entities/App;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 82
    :cond_9
    :goto_4
    iget-object p1, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->this$0:Ltech/ulo/library/model/repositories/AppsRepository;

    invoke-static {p1}, Ltech/ulo/library/model/repositories/AppsRepository;->access$getAppsDao$p(Ltech/ulo/library/model/repositories/AppsRepository;)Ltech/ulo/library/model/daos/AppsDao;

    move-result-object p1

    iget-object v0, p0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;->$app:Ltech/ulo/library/model/entities/App;

    invoke-interface {p1, v0}, Ltech/ulo/library/model/daos/AppsDao;->insertApp(Ltech/ulo/library/model/entities/App;)V

    .line 83
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
