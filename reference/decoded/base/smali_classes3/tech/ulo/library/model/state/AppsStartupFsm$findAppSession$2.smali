.class final Ltech/ulo/library/model/state/AppsStartupFsm$findAppSession$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppsStartupFsm.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/model/state/AppsStartupFsm;->findAppSession(Ltech/ulo/library/model/entities/App;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
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
    c = "tech.ulo.library.model.state.AppsStartupFsm$findAppSession$2"
    f = "AppsStartupFsm.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $app:Ltech/ulo/library/model/entities/App;

.field final synthetic $filesystemId:J

.field label:I

.field final synthetic this$0:Ltech/ulo/library/model/state/AppsStartupFsm;


# direct methods
.method constructor <init>(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/App;JLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/state/AppsStartupFsm;",
            "Ltech/ulo/library/model/entities/App;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ulo/library/model/state/AppsStartupFsm$findAppSession$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$findAppSession$2;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    iput-object p2, p0, Ltech/ulo/library/model/state/AppsStartupFsm$findAppSession$2;->$app:Ltech/ulo/library/model/entities/App;

    iput-wide p3, p0, Ltech/ulo/library/model/state/AppsStartupFsm$findAppSession$2;->$filesystemId:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Ltech/ulo/library/model/state/AppsStartupFsm$findAppSession$2;

    iget-object v1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$findAppSession$2;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    iget-object v2, p0, Ltech/ulo/library/model/state/AppsStartupFsm$findAppSession$2;->$app:Ltech/ulo/library/model/entities/App;

    iget-wide v3, p0, Ltech/ulo/library/model/state/AppsStartupFsm$findAppSession$2;->$filesystemId:J

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltech/ulo/library/model/state/AppsStartupFsm$findAppSession$2;-><init>(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/App;JLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/model/state/AppsStartupFsm$findAppSession$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/model/state/AppsStartupFsm$findAppSession$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Ltech/ulo/library/model/state/AppsStartupFsm$findAppSession$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Ltech/ulo/library/model/state/AppsStartupFsm$findAppSession$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 35

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 205
    iget v1, v0, Ltech/ulo/library/model/state/AppsStartupFsm$findAppSession$2;->label:I

    if-nez v1, :cond_1

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 206
    iget-object v1, v0, Ltech/ulo/library/model/state/AppsStartupFsm$findAppSession$2;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    invoke-static {v1}, Ltech/ulo/library/model/state/AppsStartupFsm;->access$getSessionDao$p(Ltech/ulo/library/model/state/AppsStartupFsm;)Ltech/ulo/library/model/daos/SessionDao;

    move-result-object v1

    iget-object v2, v0, Ltech/ulo/library/model/state/AppsStartupFsm$findAppSession$2;->$app:Ltech/ulo/library/model/entities/App;

    invoke-virtual {v2}, Ltech/ulo/library/model/entities/App;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ltech/ulo/library/model/daos/SessionDao;->findAppsSession(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 208
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    new-instance v1, Ltech/ulo/library/model/entities/Session;

    move-object v2, v1

    iget-object v3, v0, Ltech/ulo/library/model/state/AppsStartupFsm$findAppSession$2;->$app:Ltech/ulo/library/model/entities/App;

    invoke-virtual {v3}, Ltech/ulo/library/model/entities/App;->getName()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v0, Ltech/ulo/library/model/state/AppsStartupFsm$findAppSession$2;->$filesystemId:J

    const v33, 0x1ffeff8

    const/16 v34, 0x0

    const-wide/16 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v2 .. v34}, Ltech/ulo/library/model/entities/Session;-><init>(JLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/ulo/library/model/entities/ServiceType;JJLjava/lang/String;ZZIZFZZZZLtech/ulo/library/model/entities/ExecutionType;ZJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 210
    iget-object v2, v0, Ltech/ulo/library/model/state/AppsStartupFsm$findAppSession$2;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    invoke-static {v2}, Ltech/ulo/library/model/state/AppsStartupFsm;->access$getSessionDao$p(Ltech/ulo/library/model/state/AppsStartupFsm;)Ltech/ulo/library/model/daos/SessionDao;

    move-result-object v2

    invoke-interface {v2, v1}, Ltech/ulo/library/model/daos/SessionDao;->insertSession(Ltech/ulo/library/model/entities/Session;)V

    .line 213
    :cond_0
    iget-object v1, v0, Ltech/ulo/library/model/state/AppsStartupFsm$findAppSession$2;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    invoke-static {v1}, Ltech/ulo/library/model/state/AppsStartupFsm;->access$getSessionDao$p(Ltech/ulo/library/model/state/AppsStartupFsm;)Ltech/ulo/library/model/daos/SessionDao;

    move-result-object v1

    iget-object v2, v0, Ltech/ulo/library/model/state/AppsStartupFsm$findAppSession$2;->$app:Ltech/ulo/library/model/entities/App;

    invoke-virtual {v2}, Ltech/ulo/library/model/entities/App;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ltech/ulo/library/model/daos/SessionDao;->findAppsSession(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 205
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
