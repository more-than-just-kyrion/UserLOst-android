.class public final Ltech/ulo/library/model/repositories/AppsRepository;
.super Ljava/lang/Object;
.source "AppsRepository.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppsRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppsRepository.kt\ntech/ulo/library/model/repositories/AppsRepository\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,112:1\n1855#2,2:113\n*S KotlinDebug\n*F\n+ 1 AppsRepository.kt\ntech/ulo/library/model/repositories/AppsRepository\n*L\n69#1:113,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0012\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00140\u0013J\u0012\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00140\u0013J\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0013J\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0086@\u00a2\u0006\u0002\u0010\u001cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Ltech/ulo/library/model/repositories/AppsRepository;",
        "",
        "appsDao",
        "Ltech/ulo/library/model/daos/AppsDao;",
        "remoteAppsSource",
        "Ltech/ulo/library/model/remote/GithubAppsFetcher;",
        "appsPreferences",
        "Ltech/ulo/library/utils/preferences/AppsPreferences;",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "logger",
        "Ltech/ulo/library/utils/Logger;",
        "(Ltech/ulo/library/model/daos/AppsDao;Ltech/ulo/library/model/remote/GithubAppsFetcher;Ltech/ulo/library/utils/preferences/AppsPreferences;Landroid/content/SharedPreferences;Ltech/ulo/library/utils/Logger;)V",
        "className",
        "",
        "refreshStatus",
        "Landroidx/lifecycle/MutableLiveData;",
        "Ltech/ulo/library/model/repositories/AppRefreshStatus;",
        "getActiveApps",
        "Landroidx/lifecycle/LiveData;",
        "",
        "Ltech/ulo/library/model/entities/App;",
        "getAllApps",
        "getRefreshStatus",
        "refreshData",
        "",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final appsDao:Ltech/ulo/library/model/daos/AppsDao;

.field private final appsPreferences:Ltech/ulo/library/utils/preferences/AppsPreferences;

.field private final className:Ljava/lang/String;

.field private final logger:Ltech/ulo/library/utils/Logger;

.field private final refreshStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ltech/ulo/library/model/repositories/AppRefreshStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteAppsSource:Ltech/ulo/library/model/remote/GithubAppsFetcher;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Ltech/ulo/library/model/daos/AppsDao;Ltech/ulo/library/model/remote/GithubAppsFetcher;Ltech/ulo/library/utils/preferences/AppsPreferences;Landroid/content/SharedPreferences;Ltech/ulo/library/utils/Logger;)V
    .locals 1

    const-string v0, "appsDao"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteAppsSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appsPreferences"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPreferences"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Ltech/ulo/library/model/repositories/AppsRepository;->appsDao:Ltech/ulo/library/model/daos/AppsDao;

    .line 22
    iput-object p2, p0, Ltech/ulo/library/model/repositories/AppsRepository;->remoteAppsSource:Ltech/ulo/library/model/remote/GithubAppsFetcher;

    .line 23
    iput-object p3, p0, Ltech/ulo/library/model/repositories/AppsRepository;->appsPreferences:Ltech/ulo/library/utils/preferences/AppsPreferences;

    .line 24
    iput-object p4, p0, Ltech/ulo/library/model/repositories/AppsRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 25
    iput-object p5, p0, Ltech/ulo/library/model/repositories/AppsRepository;->logger:Ltech/ulo/library/utils/Logger;

    .line 27
    const-string p1, "AppsRepository"

    iput-object p1, p0, Ltech/ulo/library/model/repositories/AppsRepository;->className:Ljava/lang/String;

    .line 29
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/model/repositories/AppsRepository;->refreshStatus:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public synthetic constructor <init>(Ltech/ulo/library/model/daos/AppsDao;Ltech/ulo/library/model/remote/GithubAppsFetcher;Ltech/ulo/library/utils/preferences/AppsPreferences;Landroid/content/SharedPreferences;Ltech/ulo/library/utils/Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 25
    new-instance p5, Ltech/ulo/library/utils/SentryLogger;

    invoke-direct {p5}, Ltech/ulo/library/utils/SentryLogger;-><init>()V

    check-cast p5, Ltech/ulo/library/utils/Logger;

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 20
    invoke-direct/range {v0 .. v5}, Ltech/ulo/library/model/repositories/AppsRepository;-><init>(Ltech/ulo/library/model/daos/AppsDao;Ltech/ulo/library/model/remote/GithubAppsFetcher;Ltech/ulo/library/utils/preferences/AppsPreferences;Landroid/content/SharedPreferences;Ltech/ulo/library/utils/Logger;)V

    return-void
.end method

.method public static final synthetic access$getAppsDao$p(Ltech/ulo/library/model/repositories/AppsRepository;)Ltech/ulo/library/model/daos/AppsDao;
    .locals 0

    .line 20
    iget-object p0, p0, Ltech/ulo/library/model/repositories/AppsRepository;->appsDao:Ltech/ulo/library/model/daos/AppsDao;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Ltech/ulo/library/model/repositories/AppsRepository;)Ltech/ulo/library/utils/Logger;
    .locals 0

    .line 20
    iget-object p0, p0, Ltech/ulo/library/model/repositories/AppsRepository;->logger:Ltech/ulo/library/utils/Logger;

    return-object p0
.end method

.method public static final synthetic access$getRemoteAppsSource$p(Ltech/ulo/library/model/repositories/AppsRepository;)Ltech/ulo/library/model/remote/GithubAppsFetcher;
    .locals 0

    .line 20
    iget-object p0, p0, Ltech/ulo/library/model/repositories/AppsRepository;->remoteAppsSource:Ltech/ulo/library/model/remote/GithubAppsFetcher;

    return-object p0
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

    .line 36
    iget-object v0, p0, Ltech/ulo/library/model/repositories/AppsRepository;->appsDao:Ltech/ulo/library/model/daos/AppsDao;

    invoke-interface {v0}, Ltech/ulo/library/model/daos/AppsDao;->getActiveApps()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public final getAllApps()Landroidx/lifecycle/LiveData;
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

    .line 32
    iget-object v0, p0, Ltech/ulo/library/model/repositories/AppsRepository;->appsDao:Ltech/ulo/library/model/daos/AppsDao;

    invoke-interface {v0}, Ltech/ulo/library/model/daos/AppsDao;->getAllApps()Landroidx/lifecycle/LiveData;

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

    .line 40
    iget-object v0, p0, Ltech/ulo/library/model/repositories/AppsRepository;->refreshStatus:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final refreshData(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21
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

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    instance-of v2, v0, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;

    iget v3, v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;

    invoke-direct {v2, v1, v0}, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;-><init>(Ltech/ulo/library/model/repositories/AppsRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 43
    iget v4, v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;->label:I

    const-string v5, ""

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    iget-object v3, v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v6, v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Set;

    iget-object v2, v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ltech/ulo/library/model/repositories/AppsRepository;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v8, v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v9, v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;->L$3:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;->L$2:Ljava/lang/Object;

    check-cast v10, Ljava/util/Set;

    iget-object v11, v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/CoroutineScope;

    iget-object v12, v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;->L$0:Ljava/lang/Object;

    check-cast v12, Ltech/ulo/library/model/repositories/AppsRepository;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v17, v4

    move-object/from16 v18, v8

    move-object v15, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v12

    :goto_1
    move-object v4, v0

    move-object v0, v11

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v10, v0

    check-cast v10, Ljava/util/Set;

    .line 45
    iget-object v0, v1, Ltech/ulo/library/model/repositories/AppsRepository;->refreshStatus:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Ltech/ulo/library/model/repositories/AppRefreshStatus;

    sget-object v8, Ltech/ulo/library/model/repositories/RefreshStatus;->ACTIVE:Ltech/ulo/library/model/repositories/RefreshStatus;

    invoke-direct {v4, v8, v5}, Ltech/ulo/library/model/repositories/AppRefreshStatus;-><init>(Ltech/ulo/library/model/repositories/RefreshStatus;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    check-cast v9, Ljava/util/List;

    .line 49
    iget-object v0, v1, Ltech/ulo/library/model/repositories/AppsRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "pref_custom_apps_enabled"

    const/4 v8, 0x0

    invoke-interface {v0, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v4, ""

    if-eqz v0, :cond_4

    .line 50
    iget-object v0, v1, Ltech/ulo/library/model/repositories/AppsRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v11, "pref_apps"

    invoke-interface {v0, v11, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    move-object v0, v4

    .line 52
    :goto_2
    iget-object v11, v1, Ltech/ulo/library/model/repositories/AppsRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v12, "prev_pref_apps_repo"

    invoke-interface {v11, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 53
    iget-object v11, v1, Ltech/ulo/library/model/repositories/AppsRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v11, v12, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    move v8, v7

    .line 57
    :cond_5
    iget-object v4, v1, Ltech/ulo/library/model/repositories/AppsRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 58
    invoke-interface {v4, v12, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 59
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v8, :cond_6

    .line 62
    iget-object v0, v1, Ltech/ulo/library/model/repositories/AppsRepository;->appsDao:Ltech/ulo/library/model/daos/AppsDao;

    invoke-interface {v0}, Ltech/ulo/library/model/daos/AppsDao;->deleteAllApps()V

    .line 65
    :cond_6
    new-instance v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 66
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v0, "Not Found"

    iput-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 69
    :try_start_1
    iget-object v0, v1, Ltech/ulo/library/model/repositories/AppsRepository;->remoteAppsSource:Ltech/ulo/library/model/remote/GithubAppsFetcher;

    iput-object v1, v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;->L$0:Ljava/lang/Object;

    move-object/from16 v11, p1

    iput-object v11, v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;->L$1:Ljava/lang/Object;

    iput-object v10, v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;->L$2:Ljava/lang/Object;

    iput-object v9, v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;->L$3:Ljava/lang/Object;

    iput-object v8, v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;->L$4:Ljava/lang/Object;

    iput-object v4, v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;->L$5:Ljava/lang/Object;

    iput v7, v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;->label:I

    invoke-virtual {v0, v2}, Ltech/ulo/library/model/remote/GithubAppsFetcher;->fetchAppsList(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-ne v0, v3, :cond_7

    return-object v3

    :cond_7
    move-object/from16 v20, v1

    move-object/from16 v17, v4

    move-object/from16 v18, v8

    move-object v15, v9

    move-object/from16 v19, v10

    goto/16 :goto_1

    .line 43
    :goto_3
    :try_start_2
    check-cast v4, Ljava/lang/Iterable;

    .line 113
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ltech/ulo/library/model/entities/App;

    .line 70
    new-instance v16, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;

    const/4 v14, 0x0

    move-object/from16 v8, v16

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move-object/from16 v12, v18

    move-object/from16 v13, v17

    invoke-direct/range {v8 .. v14}, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$3$1;-><init>(Ltech/ulo/library/model/entities/App;Ljava/util/Set;Ltech/ulo/library/model/repositories/AppsRepository;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v14, v16

    check-cast v14, Lkotlin/jvm/functions/Function2;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v8, 0x3

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v11, v0

    move-object v9, v15

    move v15, v8

    :try_start_3
    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v15, v9

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_8
    move-object v9, v15

    move-object/from16 v4, v17

    move-object/from16 v8, v18

    move-object/from16 v10, v19

    move-object/from16 v12, v20

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v9, v15

    :goto_5
    move-object/from16 v4, v17

    move-object/from16 v8, v18

    move-object/from16 v10, v19

    move-object/from16 v12, v20

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v12, v1

    .line 86
    :goto_6
    iget-object v11, v12, Ltech/ulo/library/model/repositories/AppsRepository;->logger:Ltech/ulo/library/utils/Logger;

    invoke-interface {v11, v0}, Ltech/ulo/library/utils/Logger;->addExceptionBreadcrumb(Ljava/lang/Exception;)V

    .line 87
    iput-boolean v7, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 88
    const-string v0, "App list"

    iput-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v15, v9

    .line 91
    :goto_7
    check-cast v15, Ljava/util/Collection;

    iput-object v12, v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;->L$0:Ljava/lang/Object;

    iput-object v10, v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;->L$1:Ljava/lang/Object;

    iput-object v8, v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;->L$2:Ljava/lang/Object;

    iput-object v4, v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;->L$3:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;->L$4:Ljava/lang/Object;

    iput-object v0, v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;->L$5:Ljava/lang/Object;

    iput v6, v2, Ltech/ulo/library/model/repositories/AppsRepository$refreshData$1;->label:I

    invoke-static {v15, v2}, Lkotlinx/coroutines/AwaitKt;->joinAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_9

    return-object v3

    :cond_9
    move-object v3, v4

    move-object v4, v8

    move-object v6, v10

    move-object v2, v12

    .line 93
    :goto_8
    iget-boolean v0, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_a

    .line 94
    iget-object v0, v2, Ltech/ulo/library/model/repositories/AppsRepository;->refreshStatus:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Ltech/ulo/library/model/repositories/AppRefreshStatus;

    sget-object v5, Ltech/ulo/library/model/repositories/RefreshStatus;->FAILED:Ltech/ulo/library/model/repositories/RefreshStatus;

    iget-object v6, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ltech/ulo/library/model/repositories/AppRefreshStatus;-><init>(Ltech/ulo/library/model/repositories/RefreshStatus;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 95
    new-instance v0, Ltech/ulo/library/utils/UlaBreadcrumb;

    iget-object v4, v2, Ltech/ulo/library/model/repositories/AppsRepository;->className:Ljava/lang/String;

    sget-object v5, Ltech/ulo/library/utils/BreadcrumbType$RuntimeError;->INSTANCE:Ltech/ulo/library/utils/BreadcrumbType$RuntimeError;

    check-cast v5, Ltech/ulo/library/utils/BreadcrumbType;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v4, v5, v3}, Ltech/ulo/library/utils/UlaBreadcrumb;-><init>(Ljava/lang/String;Ltech/ulo/library/utils/BreadcrumbType;Ljava/lang/String;)V

    .line 96
    iget-object v3, v2, Ltech/ulo/library/model/repositories/AppsRepository;->logger:Ltech/ulo/library/utils/Logger;

    invoke-interface {v3, v0}, Ltech/ulo/library/utils/Logger;->addBreadcrumb(Ltech/ulo/library/utils/UlaBreadcrumb;)V

    .line 97
    iget-object v0, v2, Ltech/ulo/library/model/repositories/AppsRepository;->logger:Ltech/ulo/library/utils/Logger;

    const-string v2, "App Refresh Failed"

    invoke-interface {v0, v2}, Ltech/ulo/library/utils/Logger;->sendEvent(Ljava/lang/String;)V

    .line 98
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 101
    :cond_a
    iget-object v0, v2, Ltech/ulo/library/model/repositories/AppsRepository;->refreshStatus:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Ltech/ulo/library/model/repositories/AppRefreshStatus;

    sget-object v4, Ltech/ulo/library/model/repositories/RefreshStatus;->FINISHED:Ltech/ulo/library/model/repositories/RefreshStatus;

    invoke-direct {v3, v4, v5}, Ltech/ulo/library/model/repositories/AppRefreshStatus;-><init>(Ltech/ulo/library/model/repositories/RefreshStatus;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 102
    iget-object v0, v2, Ltech/ulo/library/model/repositories/AppsRepository;->appsPreferences:Ltech/ulo/library/utils/preferences/AppsPreferences;

    invoke-virtual {v0, v6}, Ltech/ulo/library/utils/preferences/AppsPreferences;->setDistributionsList(Ljava/util/Set;)V

    .line 103
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
