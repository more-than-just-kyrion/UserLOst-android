.class public final Ltech/ulo/library/viewmodel/AppDetailsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "AppDetailsViewModel.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u001a\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0002J\u0016\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u0019H\u0082@\u00a2\u0006\u0002\u0010\u001eJ\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0018\u001a\u00020\u0019H\u0082@\u00a2\u0006\u0002\u0010\u001eJ\u0019\u0010 \u001a\u0004\u0018\u00010\u00082\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0003\u00a2\u0006\u0002\u0010!J\u0012\u0010\"\u001a\u00020#2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0002J\u0010\u0010$\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020&H\u0002J\u0010\u0010\'\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020(H\u0002J\u0012\u0010)\u001a\u00020#2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0002J\u0018\u0010*\u001a\u00020+2\u0006\u0010%\u001a\u00020,2\u0008\u0008\u0002\u0010-\u001a\u00020\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006."
    }
    d2 = {
        "Ltech/ulo/library/viewmodel/AppDetailsViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "sessionDao",
        "Ltech/ulo/library/model/daos/SessionDao;",
        "appDetails",
        "Ltech/ulo/library/utils/AppDetails;",
        "buildVersion",
        "",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "(Ltech/ulo/library/model/daos/SessionDao;Ltech/ulo/library/utils/AppDetails;ILandroid/content/SharedPreferences;)V",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "job",
        "Lkotlinx/coroutines/CompletableJob;",
        "viewState",
        "Landroidx/lifecycle/MutableLiveData;",
        "Ltech/ulo/library/viewmodel/AppDetailsViewState;",
        "getViewState",
        "()Landroidx/lifecycle/MutableLiveData;",
        "buildViewState",
        "app",
        "Ltech/ulo/library/model/entities/App;",
        "appSession",
        "Ltech/ulo/library/model/entities/Session;",
        "constructView",
        "",
        "(Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getAppSession",
        "getStateDescription",
        "(Ltech/ulo/library/model/entities/Session;)Ljava/lang/Integer;",
        "getStateHintEnabled",
        "",
        "handleAutoStartChanged",
        "event",
        "Ltech/ulo/library/viewmodel/AppDetailsEvent$AutoStartChanged;",
        "handleServiceTypeChanged",
        "Ltech/ulo/library/viewmodel/AppDetailsEvent$ServiceTypeChanged;",
        "radioButtonsShouldBeEnabled",
        "submitEvent",
        "Lkotlinx/coroutines/Job;",
        "Ltech/ulo/library/viewmodel/AppDetailsEvent;",
        "coroutineScope",
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
.field private final appDetails:Ltech/ulo/library/utils/AppDetails;

.field private final buildVersion:I

.field private final job:Lkotlinx/coroutines/CompletableJob;

.field private final prefs:Landroid/content/SharedPreferences;

.field private final sessionDao:Ltech/ulo/library/model/daos/SessionDao;

.field private final viewState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ltech/ulo/library/viewmodel/AppDetailsViewState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltech/ulo/library/model/daos/SessionDao;Ltech/ulo/library/utils/AppDetails;ILandroid/content/SharedPreferences;)V
    .locals 1

    const-string v0, "sessionDao"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appDetails"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefs"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->sessionDao:Ltech/ulo/library/model/daos/SessionDao;

    iput-object p2, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->appDetails:Ltech/ulo/library/utils/AppDetails;

    iput p3, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->buildVersion:I

    iput-object p4, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->prefs:Landroid/content/SharedPreferences;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 43
    invoke-static {p1, p2, p1}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    iput-object p1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->job:Lkotlinx/coroutines/CompletableJob;

    .line 47
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->viewState:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic access$constructView(Ltech/ulo/library/viewmodel/AppDetailsViewModel;Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->constructView(Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAppSession(Ltech/ulo/library/viewmodel/AppDetailsViewModel;Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->getAppSession(Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPrefs$p(Ltech/ulo/library/viewmodel/AppDetailsViewModel;)Landroid/content/SharedPreferences;
    .locals 0

    .line 42
    iget-object p0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static final synthetic access$getSessionDao$p(Ltech/ulo/library/viewmodel/AppDetailsViewModel;)Ltech/ulo/library/model/daos/SessionDao;
    .locals 0

    .line 42
    iget-object p0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->sessionDao:Ltech/ulo/library/model/daos/SessionDao;

    return-object p0
.end method

.method public static final synthetic access$handleAutoStartChanged(Ltech/ulo/library/viewmodel/AppDetailsViewModel;Ltech/ulo/library/viewmodel/AppDetailsEvent$AutoStartChanged;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->handleAutoStartChanged(Ltech/ulo/library/viewmodel/AppDetailsEvent$AutoStartChanged;)V

    return-void
.end method

.method public static final synthetic access$handleServiceTypeChanged(Ltech/ulo/library/viewmodel/AppDetailsViewModel;Ltech/ulo/library/viewmodel/AppDetailsEvent$ServiceTypeChanged;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->handleServiceTypeChanged(Ltech/ulo/library/viewmodel/AppDetailsEvent$ServiceTypeChanged;)V

    return-void
.end method

.method private final buildViewState(Ltech/ulo/library/model/entities/App;Ltech/ulo/library/model/entities/Session;)Ltech/ulo/library/viewmodel/AppDetailsViewState;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 69
    invoke-direct {v0, v1}, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->radioButtonsShouldBeEnabled(Ltech/ulo/library/model/entities/Session;)Z

    move-result v2

    .line 71
    iget-object v3, v0, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->appDetails:Ltech/ulo/library/utils/AppDetails;

    invoke-virtual/range {p1 .. p1}, Ltech/ulo/library/model/entities/App;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ltech/ulo/library/utils/AppDetails;->findIconUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 72
    invoke-virtual/range {p1 .. p1}, Ltech/ulo/library/model/entities/App;->getName()Ljava/lang/String;

    move-result-object v7

    .line 73
    iget-object v3, v0, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->appDetails:Ltech/ulo/library/utils/AppDetails;

    invoke-virtual/range {p1 .. p1}, Ltech/ulo/library/model/entities/App;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ltech/ulo/library/utils/AppDetails;->findAppDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 75
    invoke-virtual/range {p1 .. p1}, Ltech/ulo/library/model/entities/App;->getSupportsCli()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    move v9, v4

    goto :goto_0

    :cond_0
    move v9, v5

    .line 76
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ltech/ulo/library/model/entities/App;->getSupportsGui()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    move v10, v4

    goto :goto_1

    :cond_1
    move v10, v5

    .line 77
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ltech/ulo/library/model/entities/App;->getSupportsGui()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v0, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->buildVersion:I

    const/16 v11, 0x1b

    if-gt v3, v11, :cond_2

    if-eqz v2, :cond_2

    move v11, v4

    goto :goto_2

    :cond_2
    move v11, v5

    .line 79
    :goto_2
    invoke-direct {v0, v1}, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->getStateHintEnabled(Ltech/ulo/library/model/entities/Session;)Z

    move-result v12

    .line 80
    invoke-direct {v0, v1}, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->getStateDescription(Ltech/ulo/library/model/entities/Session;)Ljava/lang/Integer;

    move-result-object v13

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 82
    invoke-virtual/range {p2 .. p2}, Ltech/ulo/library/model/entities/Session;->getServiceType()Ltech/ulo/library/model/entities/ServiceType;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v2

    .line 83
    :goto_3
    sget-object v3, Ltech/ulo/library/model/entities/ServiceType$Ssh;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Ssh;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget v1, Ltech/ulo/library/R$id;->apps_ssh_preference:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_4
    move-object v14, v1

    goto :goto_5

    .line 84
    :cond_4
    sget-object v3, Ltech/ulo/library/model/entities/ServiceType$Vnc;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Vnc;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget v1, Ltech/ulo/library/R$id;->apps_vnc_preference:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4

    .line 85
    :cond_5
    sget-object v3, Ltech/ulo/library/model/entities/ServiceType$Xsdl;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Xsdl;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget v1, Ltech/ulo/library/R$id;->apps_xsdl_preference:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4

    :cond_6
    move-object v14, v2

    .line 90
    :goto_5
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 91
    iget-object v2, v0, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "AutoApp"

    const-string v15, " "

    invoke-interface {v2, v3, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 93
    invoke-virtual {v2, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_7

    .line 94
    const-class v3, Ltech/ulo/library/model/entities/App;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltech/ulo/library/model/entities/App;

    .line 95
    invoke-virtual {v1}, Ltech/ulo/library/model/entities/App;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    move v15, v4

    goto :goto_6

    :cond_7
    move v15, v5

    .line 99
    :goto_6
    new-instance v1, Ltech/ulo/library/viewmodel/AppDetailsViewState;

    move-object v5, v1

    invoke-direct/range {v5 .. v15}, Ltech/ulo/library/viewmodel/AppDetailsViewState;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/Integer;Ljava/lang/Integer;Z)V

    return-object v1
.end method

.method private final constructView(Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/App;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Ltech/ulo/library/viewmodel/AppDetailsViewModel$constructView$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$constructView$1;

    iget v1, v0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$constructView$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$constructView$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$constructView$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$constructView$1;

    invoke-direct {v0, p0, p2}, Ltech/ulo/library/viewmodel/AppDetailsViewModel$constructView$1;-><init>(Ltech/ulo/library/viewmodel/AppDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$constructView$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 57
    iget v2, v0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$constructView$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$constructView$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ltech/ulo/library/model/entities/App;

    iget-object v0, v0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$constructView$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ltech/ulo/library/viewmodel/AppDetailsViewModel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    iput-object p0, v0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$constructView$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$constructView$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$constructView$1;->label:I

    invoke-direct {p0, p1, v0}, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->getAppSession(Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 57
    :goto_1
    check-cast p2, Ltech/ulo/library/model/entities/Session;

    .line 59
    iget-object v1, v0, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->viewState:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0, p1, p2}, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->buildViewState(Ltech/ulo/library/model/entities/App;Ltech/ulo/library/model/entities/Session;)Ltech/ulo/library/viewmodel/AppDetailsViewState;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 60
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final getAppSession(Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/App;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ulo/library/model/entities/Session;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 62
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Ltech/ulo/library/viewmodel/AppDetailsViewModel$getAppSession$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Ltech/ulo/library/viewmodel/AppDetailsViewModel$getAppSession$2;-><init>(Ltech/ulo/library/viewmodel/AppDetailsViewModel;Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final getStateDescription(Ltech/ulo/library/model/entities/Session;)Ljava/lang/Integer;
    .locals 2

    if-eqz p1, :cond_2

    .line 158
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getServiceType()Ltech/ulo/library/model/entities/ServiceType;

    move-result-object v0

    sget-object v1, Ltech/ulo/library/model/entities/ServiceType$Unselected;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Unselected;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getActive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 162
    sget p1, Ltech/ulo/library/R$string;->info_stop_app:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    .line 159
    :cond_2
    :goto_0
    sget p1, Ltech/ulo/library/R$string;->info_finish_app_setup:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private final getStateHintEnabled(Ltech/ulo/library/model/entities/Session;)Z
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->radioButtonsShouldBeEnabled(Ltech/ulo/library/model/entities/Session;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final handleAutoStartChanged(Ltech/ulo/library/viewmodel/AppDetailsEvent$AutoStartChanged;)V
    .locals 6

    .line 135
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Ltech/ulo/library/viewmodel/AppDetailsViewModel$handleAutoStartChanged$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Ltech/ulo/library/viewmodel/AppDetailsViewModel$handleAutoStartChanged$1;-><init>(Ltech/ulo/library/viewmodel/AppDetailsEvent$AutoStartChanged;Ltech/ulo/library/viewmodel/AppDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final handleServiceTypeChanged(Ltech/ulo/library/viewmodel/AppDetailsEvent$ServiceTypeChanged;)V
    .locals 6

    .line 114
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Ltech/ulo/library/viewmodel/AppDetailsViewModel$handleServiceTypeChanged$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Ltech/ulo/library/viewmodel/AppDetailsViewModel$handleServiceTypeChanged$1;-><init>(Ltech/ulo/library/viewmodel/AppDetailsViewModel;Ltech/ulo/library/viewmodel/AppDetailsEvent$ServiceTypeChanged;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final radioButtonsShouldBeEnabled(Ltech/ulo/library/model/entities/Session;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getServiceType()Ltech/ulo/library/model/entities/ServiceType;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Ltech/ulo/library/model/entities/ServiceType$Unselected;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Unselected;

    check-cast v0, Ltech/ulo/library/model/entities/ServiceType;

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 172
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getActive()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-eqz p1, :cond_3

    if-eqz v3, :cond_3

    .line 175
    sget-object p1, Ltech/ulo/library/model/entities/ServiceType$Unselected;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Unselected;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public static synthetic submitEvent$default(Ltech/ulo/library/viewmodel/AppDetailsViewModel;Ltech/ulo/library/viewmodel/AppDetailsEvent;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 49
    move-object p2, p0

    check-cast p2, Lkotlinx/coroutines/CoroutineScope;

    :cond_0
    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->submitEvent(Ltech/ulo/library/viewmodel/AppDetailsEvent;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 2

    .line 45
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    iget-object v1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->job:Lkotlinx/coroutines/CompletableJob;

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/MainCoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final getViewState()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ltech/ulo/library/viewmodel/AppDetailsViewState;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->viewState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final submitEvent(Ltech/ulo/library/viewmodel/AppDetailsEvent;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
    .locals 8

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$submitEvent$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Ltech/ulo/library/viewmodel/AppDetailsViewModel$submitEvent$1;-><init>(Ltech/ulo/library/viewmodel/AppDetailsEvent;Ltech/ulo/library/viewmodel/AppDetailsViewModel;Lkotlin/coroutines/Continuation;)V

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
