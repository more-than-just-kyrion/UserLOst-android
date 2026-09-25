.class final Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppsStartupFsm.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/model/state/AppsStartupFsm;->setServiceTypePreferences(Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/ServiceTypePreferences;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "tech.ulo.library.model.state.AppsStartupFsm$setServiceTypePreferences$2"
    f = "AppsStartupFsm.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $appSession:Ltech/ulo/library/model/entities/Session;

.field final synthetic $serviceTypePreferences:Ltech/ulo/library/model/entities/ServiceTypePreferences;

.field label:I

.field final synthetic this$0:Ltech/ulo/library/model/state/AppsStartupFsm;


# direct methods
.method constructor <init>(Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/ServiceTypePreferences;Ltech/ulo/library/model/state/AppsStartupFsm;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/Session;",
            "Ltech/ulo/library/model/entities/ServiceTypePreferences;",
            "Ltech/ulo/library/model/state/AppsStartupFsm;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;->$appSession:Ltech/ulo/library/model/entities/Session;

    iput-object p2, p0, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;->$serviceTypePreferences:Ltech/ulo/library/model/entities/ServiceTypePreferences;

    iput-object p3, p0, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

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

    new-instance p1, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;

    iget-object v0, p0, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;->$appSession:Ltech/ulo/library/model/entities/Session;

    iget-object v1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;->$serviceTypePreferences:Ltech/ulo/library/model/entities/ServiceTypePreferences;

    iget-object v2, p0, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    invoke-direct {p1, v0, v1, v2, p2}, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;-><init>(Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/ServiceTypePreferences;Ltech/ulo/library/model/state/AppsStartupFsm;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 168
    iget v0, p0, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 169
    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;->$appSession:Ltech/ulo/library/model/entities/Session;

    iget-object v0, p0, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;->$serviceTypePreferences:Ltech/ulo/library/model/entities/ServiceTypePreferences;

    invoke-virtual {v0}, Ltech/ulo/library/model/entities/ServiceTypePreferences;->getServiceType()Ltech/ulo/library/model/entities/ServiceType;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltech/ulo/library/model/entities/Session;->setServiceType(Ltech/ulo/library/model/entities/ServiceType;)V

    .line 170
    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;->$appSession:Ltech/ulo/library/model/entities/Session;

    iget-object v0, p0, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;->$serviceTypePreferences:Ltech/ulo/library/model/entities/ServiceTypePreferences;

    invoke-virtual {v0}, Ltech/ulo/library/model/entities/ServiceTypePreferences;->getRemember()Z

    move-result v0

    invoke-virtual {p1, v0}, Ltech/ulo/library/model/entities/Session;->setServiceTypeRemember(Z)V

    .line 171
    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;->$appSession:Ltech/ulo/library/model/entities/Session;

    iget-object v0, p0, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;->$serviceTypePreferences:Ltech/ulo/library/model/entities/ServiceTypePreferences;

    invoke-virtual {v0}, Ltech/ulo/library/model/entities/ServiceTypePreferences;->getSoundSupport()Z

    move-result v0

    invoke-virtual {p1, v0}, Ltech/ulo/library/model/entities/Session;->setSoundSupport(Z)V

    .line 172
    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;->$appSession:Ltech/ulo/library/model/entities/Session;

    iget-object v0, p0, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;->$serviceTypePreferences:Ltech/ulo/library/model/entities/ServiceTypePreferences;

    invoke-virtual {v0}, Ltech/ulo/library/model/entities/ServiceTypePreferences;->getMicSupport()Z

    move-result v0

    invoke-virtual {p1, v0}, Ltech/ulo/library/model/entities/Session;->setMicSupport(Z)V

    .line 173
    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;->$appSession:Ltech/ulo/library/model/entities/Session;

    iget-object v0, p0, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;->$serviceTypePreferences:Ltech/ulo/library/model/entities/ServiceTypePreferences;

    invoke-virtual {v0}, Ltech/ulo/library/model/entities/ServiceTypePreferences;->getShareStorage()Z

    move-result v0

    invoke-virtual {p1, v0}, Ltech/ulo/library/model/entities/Session;->setShareStorage(Z)V

    .line 174
    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;->$appSession:Ltech/ulo/library/model/entities/Session;

    iget-object v0, p0, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;->$serviceTypePreferences:Ltech/ulo/library/model/entities/ServiceTypePreferences;

    invoke-virtual {v0}, Ltech/ulo/library/model/entities/ServiceTypePreferences;->getMemoryMb()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ltech/ulo/library/model/entities/Session;->setMemoryMb(J)V

    .line 175
    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;->$appSession:Ltech/ulo/library/model/entities/Session;

    iget-object v0, p0, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;->$serviceTypePreferences:Ltech/ulo/library/model/entities/ServiceTypePreferences;

    invoke-virtual {v0}, Ltech/ulo/library/model/entities/ServiceTypePreferences;->getCpuAllCores()Z

    move-result v0

    invoke-virtual {p1, v0}, Ltech/ulo/library/model/entities/Session;->setCpuAllCores(Z)V

    .line 176
    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    invoke-static {p1}, Ltech/ulo/library/model/state/AppsStartupFsm;->access$getSessionDao$p(Ltech/ulo/library/model/state/AppsStartupFsm;)Ltech/ulo/library/model/daos/SessionDao;

    move-result-object p1

    iget-object v0, p0, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;->$appSession:Ltech/ulo/library/model/entities/Session;

    invoke-interface {p1, v0}, Ltech/ulo/library/model/daos/SessionDao;->updateSession(Ltech/ulo/library/model/entities/Session;)V

    .line 177
    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    invoke-static {p1}, Ltech/ulo/library/model/state/AppsStartupFsm;->access$getState$p(Ltech/ulo/library/model/state/AppsStartupFsm;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Ltech/ulo/library/model/state/AppHasServiceTypePreferencesSet;->INSTANCE:Ltech/ulo/library/model/state/AppHasServiceTypePreferencesSet;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 178
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 168
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
