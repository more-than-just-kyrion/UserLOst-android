.class final Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SessionStartupFsm.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/model/state/SessionStartupFsm;->submitEvent(Ltech/ulo/library/model/state/SessionStartupEvent;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
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
    c = "tech.ulo.library.model.state.SessionStartupFsm$submitEvent$1"
    f = "SessionStartupFsm.kt"
    i = {}
    l = {
        0x6e,
        0x6f,
        0x73,
        0x74,
        0x77,
        0x78,
        0x79,
        0x7a,
        0x7b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $event:Ltech/ulo/library/model/state/SessionStartupEvent;

.field label:I

.field final synthetic this$0:Ltech/ulo/library/model/state/SessionStartupFsm;


# direct methods
.method constructor <init>(Ltech/ulo/library/model/state/SessionStartupFsm;Ltech/ulo/library/model/state/SessionStartupEvent;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/state/SessionStartupFsm;",
            "Ltech/ulo/library/model/state/SessionStartupEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    iput-object p2, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->$event:Ltech/ulo/library/model/state/SessionStartupEvent;

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

    new-instance p1, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;

    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    iget-object v1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->$event:Ltech/ulo/library/model/state/SessionStartupEvent;

    invoke-direct {p1, v0, v1, p2}, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;-><init>(Ltech/ulo/library/model/state/SessionStartupFsm;Ltech/ulo/library/model/state/SessionStartupEvent;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 101
    iget v1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->label:I

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

    .line 102
    new-instance p1, Ltech/ulo/library/utils/UlaBreadcrumb;

    iget-object v1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    invoke-static {v1}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$getClassName$p(Ltech/ulo/library/model/state/SessionStartupFsm;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ltech/ulo/library/utils/BreadcrumbType$ReceivedEvent;->INSTANCE:Ltech/ulo/library/utils/BreadcrumbType$ReceivedEvent;

    check-cast v2, Ltech/ulo/library/utils/BreadcrumbType;

    iget-object v3, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->$event:Ltech/ulo/library/model/state/SessionStartupEvent;

    iget-object v4, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    invoke-static {v4}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$getState$p(Ltech/ulo/library/model/state/SessionStartupFsm;)Landroidx/lifecycle/MutableLiveData;

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

    .line 103
    iget-object v1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    invoke-static {v1}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$getLogger$p(Ltech/ulo/library/model/state/SessionStartupFsm;)Ltech/ulo/library/utils/Logger;

    move-result-object v1

    invoke-interface {v1, p1}, Ltech/ulo/library/utils/Logger;->addBreadcrumb(Ltech/ulo/library/utils/UlaBreadcrumb;)V

    .line 104
    iget-object p1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    iget-object v1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->$event:Ltech/ulo/library/model/state/SessionStartupEvent;

    invoke-virtual {p1, v1}, Ltech/ulo/library/model/state/SessionStartupFsm;->transitionIsAcceptable(Ltech/ulo/library/model/state/SessionStartupEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 105
    iget-object p1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    invoke-static {p1}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$getState$p(Ltech/ulo/library/model/state/SessionStartupFsm;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Ltech/ulo/library/model/state/IncorrectSessionTransition;

    iget-object v1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->$event:Ltech/ulo/library/model/state/SessionStartupEvent;

    iget-object v2, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    invoke-static {v2}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$getState$p(Ltech/ulo/library/model/state/SessionStartupFsm;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ltech/ulo/library/model/state/SessionStartupState;

    invoke-direct {v0, v1, v2}, Ltech/ulo/library/model/state/IncorrectSessionTransition;-><init>(Ltech/ulo/library/model/state/SessionStartupEvent;Ltech/ulo/library/model/state/SessionStartupState;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 106
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 108
    :cond_0
    iget-object p1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->$event:Ltech/ulo/library/model/state/SessionStartupEvent;

    .line 109
    instance-of v1, p1, Ltech/ulo/library/model/state/SessionSelected;

    if-eqz v1, :cond_1

    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    check-cast p1, Ltech/ulo/library/model/state/SessionSelected;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/SessionSelected;->getSession()Ltech/ulo/library/model/entities/Session;

    move-result-object p1

    invoke-static {v0, p1}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$handleSessionSelected(Ltech/ulo/library/model/state/SessionStartupFsm;Ltech/ulo/library/model/entities/Session;)V

    goto/16 :goto_0

    .line 110
    :cond_1
    instance-of v1, p1, Ltech/ulo/library/model/state/RetrieveAssetLists;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    check-cast p1, Ltech/ulo/library/model/state/RetrieveAssetLists;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/RetrieveAssetLists;->getFilesystem()Ltech/ulo/library/model/entities/Filesystem;

    move-result-object p1

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x1

    iput v3, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->label:I

    invoke-static {v1, p1, v2}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$handleRetrieveAssetLists(Ltech/ulo/library/model/state/SessionStartupFsm;Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_10

    return-object v0

    .line 111
    :cond_2
    instance-of v1, p1, Ltech/ulo/library/model/state/GenerateDownloads;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    check-cast p1, Ltech/ulo/library/model/state/GenerateDownloads;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/GenerateDownloads;->getFilesystem()Ltech/ulo/library/model/entities/Filesystem;

    move-result-object p1

    iget-object v2, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->$event:Ltech/ulo/library/model/state/SessionStartupEvent;

    check-cast v2, Ltech/ulo/library/model/state/GenerateDownloads;

    invoke-virtual {v2}, Ltech/ulo/library/model/state/GenerateDownloads;->getAssetList()Ljava/util/List;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x2

    iput v4, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->label:I

    invoke-static {v1, p1, v2, v3}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$handleGenerateDownloads(Ltech/ulo/library/model/state/SessionStartupFsm;Ltech/ulo/library/model/entities/Filesystem;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_10

    return-object v0

    .line 112
    :cond_3
    instance-of v1, p1, Ltech/ulo/library/model/state/DownloadAssets;

    if-eqz v1, :cond_4

    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    check-cast p1, Ltech/ulo/library/model/state/DownloadAssets;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/DownloadAssets;->getDownloadRequirements()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$handleDownloadAssets(Ltech/ulo/library/model/state/SessionStartupFsm;Ljava/util/List;)V

    goto/16 :goto_0

    .line 113
    :cond_4
    instance-of v1, p1, Ltech/ulo/library/model/state/AssetDownloadComplete;

    if-eqz v1, :cond_5

    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    check-cast p1, Ltech/ulo/library/model/state/AssetDownloadComplete;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/AssetDownloadComplete;->getDownloadAssetId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$handleAssetsDownloadComplete(Ltech/ulo/library/model/state/SessionStartupFsm;J)V

    goto/16 :goto_0

    .line 114
    :cond_5
    instance-of v1, p1, Ltech/ulo/library/model/state/SyncDownloadState;

    if-eqz v1, :cond_6

    iget-object p1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    invoke-static {p1}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$handleSyncDownloadState(Ltech/ulo/library/model/state/SessionStartupFsm;)V

    goto/16 :goto_0

    .line 115
    :cond_6
    instance-of v1, p1, Ltech/ulo/library/model/state/CopyDownloadsToLocalStorage;

    if-eqz v1, :cond_7

    iget-object p1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    const/4 v2, 0x3

    iput v2, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->label:I

    invoke-static {p1, v1}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$handleCopyDownloadsToLocalDirectories(Ltech/ulo/library/model/state/SessionStartupFsm;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_10

    return-object v0

    .line 116
    :cond_7
    instance-of v1, p1, Ltech/ulo/library/model/state/VerifyFilesystemAssets;

    if-eqz v1, :cond_8

    iget-object v1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    check-cast p1, Ltech/ulo/library/model/state/VerifyFilesystemAssets;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/VerifyFilesystemAssets;->getFilesystem()Ltech/ulo/library/model/entities/Filesystem;

    move-result-object p1

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x4

    iput v3, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->label:I

    invoke-static {v1, p1, v2}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$handleVerifyFilesystemAssets(Ltech/ulo/library/model/state/SessionStartupFsm;Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_10

    return-object v0

    .line 117
    :cond_8
    instance-of v1, p1, Ltech/ulo/library/model/state/VerifyAvailableStorage;

    if-eqz v1, :cond_9

    iget-object p1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    invoke-static {p1}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$handleVerifyAvailableStorage(Ltech/ulo/library/model/state/SessionStartupFsm;)V

    goto/16 :goto_0

    .line 118
    :cond_9
    instance-of v1, p1, Ltech/ulo/library/model/state/VerifyAvailableStorageComplete;

    if-eqz v1, :cond_a

    iget-object p1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    invoke-static {p1}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$handleVerifyAvailableStorageComplete(Ltech/ulo/library/model/state/SessionStartupFsm;)V

    goto/16 :goto_0

    .line 119
    :cond_a
    instance-of v1, p1, Ltech/ulo/library/model/state/ExtractFilesystem;

    if-eqz v1, :cond_b

    iget-object v1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    check-cast p1, Ltech/ulo/library/model/state/ExtractFilesystem;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/ExtractFilesystem;->getFilesystem()Ltech/ulo/library/model/entities/Filesystem;

    move-result-object p1

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x5

    iput v3, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->label:I

    invoke-static {v1, p1, v2}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$handleExtractFilesystem(Ltech/ulo/library/model/state/SessionStartupFsm;Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_10

    return-object v0

    .line 120
    :cond_b
    instance-of v1, p1, Ltech/ulo/library/model/state/FilesystemExtractionComplete;

    if-eqz v1, :cond_c

    iget-object p1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    const/4 v2, 0x6

    iput v2, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->label:I

    invoke-static {p1, v1}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$handleFilesystemExtractionComplete(Ltech/ulo/library/model/state/SessionStartupFsm;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_10

    return-object v0

    .line 121
    :cond_c
    instance-of v1, p1, Ltech/ulo/library/model/state/FilesystemExtractionFailed;

    if-eqz v1, :cond_d

    iget-object p1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    const/4 v2, 0x7

    iput v2, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->label:I

    invoke-static {p1, v1}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$handleFilesystemExtractionFailed(Ltech/ulo/library/model/state/SessionStartupFsm;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_10

    return-object v0

    .line 122
    :cond_d
    instance-of v1, p1, Ltech/ulo/library/model/state/AssetExtractionComplete;

    if-eqz v1, :cond_e

    iget-object p1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    const/16 v2, 0x8

    iput v2, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->label:I

    invoke-static {p1, v1}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$handleExtractionComplete(Ltech/ulo/library/model/state/SessionStartupFsm;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_10

    return-object v0

    .line 123
    :cond_e
    instance-of v1, p1, Ltech/ulo/library/model/state/AssetExtractionFailed;

    if-eqz v1, :cond_f

    iget-object p1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    const/16 v2, 0x9

    iput v2, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->label:I

    invoke-static {p1, v1}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$handleExtractionFailed(Ltech/ulo/library/model/state/SessionStartupFsm;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_10

    return-object v0

    .line 124
    :cond_f
    instance-of p1, p1, Ltech/ulo/library/model/state/ResetSessionState;

    if-eqz p1, :cond_10

    iget-object p1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    invoke-static {p1}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$getState$p(Ltech/ulo/library/model/state/SessionStartupFsm;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Ltech/ulo/library/model/state/WaitingForSessionSelection;->INSTANCE:Ltech/ulo/library/model/state/WaitingForSessionSelection;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 126
    :cond_10
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

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
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
