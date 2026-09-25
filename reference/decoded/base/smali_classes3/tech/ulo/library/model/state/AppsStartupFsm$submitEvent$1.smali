.class final Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppsStartupFsm.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/model/state/AppsStartupFsm;->submitEvent(Ltech/ulo/library/model/state/AppsStartupEvent;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
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
    c = "tech.ulo.library.model.state.AppsStartupFsm$submitEvent$1"
    f = "AppsStartupFsm.kt"
    i = {}
    l = {
        0x47,
        0x4c,
        0x52,
        0x55,
        0x57,
        0x58,
        0x59
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $event:Ltech/ulo/library/model/state/AppsStartupEvent;

.field label:I

.field final synthetic this$0:Ltech/ulo/library/model/state/AppsStartupFsm;


# direct methods
.method constructor <init>(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/state/AppsStartupEvent;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/state/AppsStartupFsm;",
            "Ltech/ulo/library/model/state/AppsStartupEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    iput-object p2, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->$event:Ltech/ulo/library/model/state/AppsStartupEvent;

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

    new-instance p1, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;

    iget-object v0, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    iget-object v1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->$event:Ltech/ulo/library/model/state/AppsStartupEvent;

    invoke-direct {p1, v0, v1, p2}, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;-><init>(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/state/AppsStartupEvent;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 63
    iget v1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    new-instance p1, Ltech/ulo/library/utils/UlaBreadcrumb;

    iget-object v1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    invoke-static {v1}, Ltech/ulo/library/model/state/AppsStartupFsm;->access$getClassName$p(Ltech/ulo/library/model/state/AppsStartupFsm;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ltech/ulo/library/utils/BreadcrumbType$ReceivedEvent;->INSTANCE:Ltech/ulo/library/utils/BreadcrumbType$ReceivedEvent;

    check-cast v2, Ltech/ulo/library/utils/BreadcrumbType;

    iget-object v3, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->$event:Ltech/ulo/library/model/state/AppsStartupEvent;

    iget-object v4, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    invoke-static {v4}, Ltech/ulo/library/model/state/AppsStartupFsm;->access$getState$p(Ltech/ulo/library/model/state/AppsStartupFsm;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Event: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " State: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v1, v2, v3}, Ltech/ulo/library/utils/UlaBreadcrumb;-><init>(Ljava/lang/String;Ltech/ulo/library/utils/BreadcrumbType;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    invoke-static {v1}, Ltech/ulo/library/model/state/AppsStartupFsm;->access$getLogger$p(Ltech/ulo/library/model/state/AppsStartupFsm;)Ltech/ulo/library/utils/Logger;

    move-result-object v1

    invoke-interface {v1, p1}, Ltech/ulo/library/utils/Logger;->addBreadcrumb(Ltech/ulo/library/utils/UlaBreadcrumb;)V

    .line 66
    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    iget-object v1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->$event:Ltech/ulo/library/model/state/AppsStartupEvent;

    invoke-virtual {p1, v1}, Ltech/ulo/library/model/state/AppsStartupFsm;->transitionIsAcceptable(Ltech/ulo/library/model/state/AppsStartupEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 67
    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    invoke-static {p1}, Ltech/ulo/library/model/state/AppsStartupFsm;->access$getState$p(Ltech/ulo/library/model/state/AppsStartupFsm;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Ltech/ulo/library/model/state/IncorrectAppTransition;

    iget-object v1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->$event:Ltech/ulo/library/model/state/AppsStartupEvent;

    iget-object v2, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    invoke-static {v2}, Ltech/ulo/library/model/state/AppsStartupFsm;->access$getState$p(Ltech/ulo/library/model/state/AppsStartupFsm;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ltech/ulo/library/model/state/AppsStartupState;

    invoke-direct {v0, v1, v2}, Ltech/ulo/library/model/state/IncorrectAppTransition;-><init>(Ltech/ulo/library/model/state/AppsStartupEvent;Ltech/ulo/library/model/state/AppsStartupState;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 68
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 70
    :cond_0
    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->$event:Ltech/ulo/library/model/state/AppsStartupEvent;

    .line 71
    instance-of v1, p1, Ltech/ulo/library/model/state/AppSelected;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    check-cast p1, Ltech/ulo/library/model/state/AppSelected;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/AppSelected;->getApp()Ltech/ulo/library/model/entities/App;

    move-result-object p1

    iget-object v2, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->$event:Ltech/ulo/library/model/state/AppsStartupEvent;

    check-cast v2, Ltech/ulo/library/model/state/AppSelected;

    invoke-virtual {v2}, Ltech/ulo/library/model/state/AppSelected;->getAskConnectType()Z

    move-result v2

    iget-object v3, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->$event:Ltech/ulo/library/model/state/AppsStartupEvent;

    check-cast v3, Ltech/ulo/library/model/state/AppSelected;

    invoke-virtual {v3}, Ltech/ulo/library/model/state/AppSelected;->getAskDisplayPreferences()Z

    move-result v3

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x1

    iput v5, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->label:I

    invoke-static {v1, p1, v2, v3, v4}, Ltech/ulo/library/model/state/AppsStartupFsm;->access$fetchDatabaseEntries(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/App;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_10

    return-object v0

    .line 72
    :cond_1
    instance-of v1, p1, Ltech/ulo/library/model/state/UserFeedbackChecked;

    if-eqz v1, :cond_2

    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    invoke-static {p1}, Ltech/ulo/library/model/state/AppsStartupFsm;->access$getState$p(Ltech/ulo/library/model/state/AppsStartupFsm;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Ltech/ulo/library/model/state/UserFeedbackCheckComplete;->INSTANCE:Ltech/ulo/library/model/state/UserFeedbackCheckComplete;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 73
    :cond_2
    instance-of v1, p1, Ltech/ulo/library/model/state/UserContributionChecked;

    if-eqz v1, :cond_3

    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    invoke-static {p1}, Ltech/ulo/library/model/state/AppsStartupFsm;->access$getState$p(Ltech/ulo/library/model/state/AppsStartupFsm;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Ltech/ulo/library/model/state/UserContributionCheckComplete;->INSTANCE:Ltech/ulo/library/model/state/UserContributionCheckComplete;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 74
    :cond_3
    instance-of v1, p1, Ltech/ulo/library/model/state/CheckAppsFilesystemFlavor;

    if-eqz v1, :cond_4

    iget-object v0, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    check-cast p1, Ltech/ulo/library/model/state/CheckAppsFilesystemFlavor;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/CheckAppsFilesystemFlavor;->getAppsFilesystem()Ltech/ulo/library/model/entities/Filesystem;

    move-result-object p1

    invoke-static {v0, p1}, Ltech/ulo/library/model/state/AppsStartupFsm;->access$checkAppsFilesystemFlavor(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/Filesystem;)V

    goto/16 :goto_0

    .line 75
    :cond_4
    instance-of v1, p1, Ltech/ulo/library/model/state/SubmitAppsFilesystemFlavor;

    if-eqz v1, :cond_5

    .line 76
    iget-object v2, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    check-cast p1, Ltech/ulo/library/model/state/SubmitAppsFilesystemFlavor;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/SubmitAppsFilesystemFlavor;->getFilesystem()Ltech/ulo/library/model/entities/Filesystem;

    move-result-object v3

    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->$event:Ltech/ulo/library/model/state/AppsStartupEvent;

    check-cast p1, Ltech/ulo/library/model/state/SubmitAppsFilesystemFlavor;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/SubmitAppsFilesystemFlavor;->getFlavor()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->$event:Ltech/ulo/library/model/state/AppsStartupEvent;

    check-cast p1, Ltech/ulo/library/model/state/SubmitAppsFilesystemFlavor;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/SubmitAppsFilesystemFlavor;->isPaid()Z

    move-result v5

    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->$event:Ltech/ulo/library/model/state/AppsStartupEvent;

    check-cast p1, Ltech/ulo/library/model/state/SubmitAppsFilesystemFlavor;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/SubmitAppsFilesystemFlavor;->getExecutionType()Ltech/ulo/library/model/entities/ExecutionType;

    move-result-object v6

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    const/4 p1, 0x2

    iput p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->label:I

    invoke-static/range {v2 .. v7}, Ltech/ulo/library/model/state/AppsStartupFsm;->access$setAppsFilesystemFlavor(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/Filesystem;Ljava/lang/String;ZLtech/ulo/library/model/entities/ExecutionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_10

    return-object v0

    .line 78
    :cond_5
    instance-of v1, p1, Ltech/ulo/library/model/state/CheckPayment;

    if-eqz v1, :cond_6

    iget-object v0, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    check-cast p1, Ltech/ulo/library/model/state/CheckPayment;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/CheckPayment;->getAppSession()Ltech/ulo/library/model/entities/Session;

    move-result-object p1

    iget-object v1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->$event:Ltech/ulo/library/model/state/AppsStartupEvent;

    check-cast v1, Ltech/ulo/library/model/state/CheckPayment;

    invoke-virtual {v1}, Ltech/ulo/library/model/state/CheckPayment;->getFilesystem()Ltech/ulo/library/model/entities/Filesystem;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ltech/ulo/library/model/state/AppsStartupFsm;->access$checkPayment(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/Filesystem;)V

    goto/16 :goto_0

    .line 79
    :cond_6
    instance-of v1, p1, Ltech/ulo/library/model/state/SubmitPayment;

    if-eqz v1, :cond_7

    iget-object v0, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    check-cast p1, Ltech/ulo/library/model/state/SubmitPayment;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/SubmitPayment;->getFilesystem()Ltech/ulo/library/model/entities/Filesystem;

    move-result-object p1

    invoke-static {v0, p1}, Ltech/ulo/library/model/state/AppsStartupFsm;->access$submitPayment(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/Filesystem;)V

    goto/16 :goto_0

    .line 80
    :cond_7
    instance-of v1, p1, Ltech/ulo/library/model/state/CheckAppsFilesystemCredentials;

    if-eqz v1, :cond_8

    iget-object v0, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    check-cast p1, Ltech/ulo/library/model/state/CheckAppsFilesystemCredentials;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/CheckAppsFilesystemCredentials;->getAppsFilesystem()Ltech/ulo/library/model/entities/Filesystem;

    move-result-object p1

    invoke-static {v0, p1}, Ltech/ulo/library/model/state/AppsStartupFsm;->access$checkAppsFilesystemCredentials(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/Filesystem;)V

    goto/16 :goto_0

    .line 81
    :cond_8
    instance-of v1, p1, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;

    if-eqz v1, :cond_9

    .line 82
    iget-object v2, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    check-cast p1, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->getFilesystem()Ltech/ulo/library/model/entities/Filesystem;

    move-result-object v3

    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->$event:Ltech/ulo/library/model/state/AppsStartupEvent;

    check-cast p1, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->getUsername()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->$event:Ltech/ulo/library/model/state/AppsStartupEvent;

    check-cast p1, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->getPassword()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->$event:Ltech/ulo/library/model/state/AppsStartupEvent;

    check-cast p1, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->getVncPassword()Ljava/lang/String;

    move-result-object v6

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    const/4 p1, 0x3

    iput p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->label:I

    invoke-static/range {v2 .. v7}, Ltech/ulo/library/model/state/AppsStartupFsm;->access$setAppsFilesystemCredentials(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/Filesystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_10

    return-object v0

    .line 84
    :cond_9
    instance-of v1, p1, Ltech/ulo/library/model/state/CheckAppSessionServiceTypePreferences;

    if-eqz v1, :cond_a

    iget-object v0, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    check-cast p1, Ltech/ulo/library/model/state/CheckAppSessionServiceTypePreferences;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/CheckAppSessionServiceTypePreferences;->getAppSession()Ltech/ulo/library/model/entities/Session;

    move-result-object p1

    invoke-static {v0, p1}, Ltech/ulo/library/model/state/AppsStartupFsm;->access$checkServiceType(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/Session;)V

    goto/16 :goto_0

    .line 85
    :cond_a
    instance-of v1, p1, Ltech/ulo/library/model/state/SubmitAppSessionServiceTypePreferences;

    if-eqz v1, :cond_b

    iget-object v1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    check-cast p1, Ltech/ulo/library/model/state/SubmitAppSessionServiceTypePreferences;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/SubmitAppSessionServiceTypePreferences;->getAppSession()Ltech/ulo/library/model/entities/Session;

    move-result-object p1

    iget-object v2, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->$event:Ltech/ulo/library/model/state/AppsStartupEvent;

    check-cast v2, Ltech/ulo/library/model/state/SubmitAppSessionServiceTypePreferences;

    invoke-virtual {v2}, Ltech/ulo/library/model/state/SubmitAppSessionServiceTypePreferences;->getServiceTypePreferences()Ltech/ulo/library/model/entities/ServiceTypePreferences;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x4

    iput v4, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->label:I

    invoke-static {v1, p1, v2, v3}, Ltech/ulo/library/model/state/AppsStartupFsm;->access$setServiceTypePreferences(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/ServiceTypePreferences;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_10

    return-object v0

    .line 86
    :cond_b
    instance-of v1, p1, Ltech/ulo/library/model/state/CheckAppSessionDisplayPreferences;

    if-eqz v1, :cond_c

    iget-object v0, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    check-cast p1, Ltech/ulo/library/model/state/CheckAppSessionDisplayPreferences;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/CheckAppSessionDisplayPreferences;->getAppSession()Ltech/ulo/library/model/entities/Session;

    move-result-object p1

    invoke-static {v0, p1}, Ltech/ulo/library/model/state/AppsStartupFsm;->access$checkDisplayPreferences(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/Session;)V

    goto/16 :goto_0

    .line 87
    :cond_c
    instance-of v1, p1, Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;

    if-eqz v1, :cond_d

    iget-object v1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    check-cast p1, Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;->getAppSession()Ltech/ulo/library/model/entities/Session;

    move-result-object p1

    iget-object v2, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->$event:Ltech/ulo/library/model/state/AppsStartupEvent;

    check-cast v2, Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;

    invoke-virtual {v2}, Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;->getDisplayPreferences()Ltech/ulo/library/model/entities/DisplayPreferences;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x5

    iput v4, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->label:I

    invoke-static {v1, p1, v2, v3}, Ltech/ulo/library/model/state/AppsStartupFsm;->access$setDisplayPreferences(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/DisplayPreferences;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_10

    return-object v0

    .line 88
    :cond_d
    instance-of v1, p1, Ltech/ulo/library/model/state/CopyAppScriptToFilesystem;

    if-eqz v1, :cond_e

    iget-object v1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    check-cast p1, Ltech/ulo/library/model/state/CopyAppScriptToFilesystem;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/CopyAppScriptToFilesystem;->getApp()Ltech/ulo/library/model/entities/App;

    move-result-object p1

    iget-object v2, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->$event:Ltech/ulo/library/model/state/AppsStartupEvent;

    check-cast v2, Ltech/ulo/library/model/state/CopyAppScriptToFilesystem;

    invoke-virtual {v2}, Ltech/ulo/library/model/state/CopyAppScriptToFilesystem;->getFilesystem()Ltech/ulo/library/model/entities/Filesystem;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x6

    iput v4, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->label:I

    invoke-static {v1, p1, v2, v3}, Ltech/ulo/library/model/state/AppsStartupFsm;->access$copyAppScriptToFilesystem(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/App;Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_10

    return-object v0

    .line 89
    :cond_e
    instance-of v1, p1, Ltech/ulo/library/model/state/SyncDatabaseEntries;

    if-eqz v1, :cond_f

    iget-object v1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    check-cast p1, Ltech/ulo/library/model/state/SyncDatabaseEntries;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/SyncDatabaseEntries;->getApp()Ltech/ulo/library/model/entities/App;

    move-result-object p1

    iget-object v2, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->$event:Ltech/ulo/library/model/state/AppsStartupEvent;

    check-cast v2, Ltech/ulo/library/model/state/SyncDatabaseEntries;

    invoke-virtual {v2}, Ltech/ulo/library/model/state/SyncDatabaseEntries;->getSession()Ltech/ulo/library/model/entities/Session;

    move-result-object v2

    iget-object v3, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->$event:Ltech/ulo/library/model/state/AppsStartupEvent;

    check-cast v3, Ltech/ulo/library/model/state/SyncDatabaseEntries;

    invoke-virtual {v3}, Ltech/ulo/library/model/state/SyncDatabaseEntries;->getFilesystem()Ltech/ulo/library/model/entities/Filesystem;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x7

    iput v5, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->label:I

    invoke-static {v1, p1, v2, v3, v4}, Ltech/ulo/library/model/state/AppsStartupFsm;->access$updateAppSession(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/App;Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_10

    return-object v0

    .line 90
    :cond_f
    instance-of p1, p1, Ltech/ulo/library/model/state/ResetAppState;

    if-eqz p1, :cond_11

    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/AppsStartupFsm;

    invoke-static {p1}, Ltech/ulo/library/model/state/AppsStartupFsm;->access$getState$p(Ltech/ulo/library/model/state/AppsStartupFsm;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Ltech/ulo/library/model/state/WaitingForAppSelection;->INSTANCE:Ltech/ulo/library/model/state/WaitingForAppSelection;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_10
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_11
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
