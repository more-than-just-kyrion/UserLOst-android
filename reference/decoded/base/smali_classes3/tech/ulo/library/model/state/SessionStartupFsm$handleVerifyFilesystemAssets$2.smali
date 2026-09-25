.class final Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SessionStartupFsm.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/model/state/SessionStartupFsm;->handleVerifyFilesystemAssets(Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "tech.ulo.library.model.state.SessionStartupFsm$handleVerifyFilesystemAssets$2"
    f = "SessionStartupFsm.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $filesystem:Ltech/ulo/library/model/entities/Filesystem;

.field label:I

.field final synthetic this$0:Ltech/ulo/library/model/state/SessionStartupFsm;


# direct methods
.method constructor <init>(Ltech/ulo/library/model/state/SessionStartupFsm;Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/state/SessionStartupFsm;",
            "Ltech/ulo/library/model/entities/Filesystem;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    iput-object p2, p0, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;->$filesystem:Ltech/ulo/library/model/entities/Filesystem;

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

    new-instance p1, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;

    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    iget-object v1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;->$filesystem:Ltech/ulo/library/model/entities/Filesystem;

    invoke-direct {p1, v0, v1, p2}, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;-><init>(Ltech/ulo/library/model/state/SessionStartupFsm;Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 247
    iget v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 248
    iget-object p1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    invoke-static {p1}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$getState$p(Ltech/ulo/library/model/state/SessionStartupFsm;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Ltech/ulo/library/model/state/VerifyingFilesystemAssets;->INSTANCE:Ltech/ulo/library/model/state/VerifyingFilesystemAssets;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 250
    iget-object p1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;->$filesystem:Ltech/ulo/library/model/entities/Filesystem;

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Filesystem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 251
    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    invoke-static {v0}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$getAssetRepository$p(Ltech/ulo/library/model/state/SessionStartupFsm;)Ltech/ulo/library/model/repositories/AssetRepository;

    move-result-object v0

    iget-object v1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;->$filesystem:Ltech/ulo/library/model/entities/Filesystem;

    invoke-virtual {v0, v1}, Ltech/ulo/library/model/repositories/AssetRepository;->getDistributionAssetsForExistingFilesystem(Ltech/ulo/library/model/entities/Filesystem;)Ljava/util/List;

    move-result-object v0

    .line 252
    iget-object v1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    invoke-static {v1}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$getFilesystemManager$p(Ltech/ulo/library/model/state/SessionStartupFsm;)Ltech/ulo/library/utils/FilesystemManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ltech/ulo/library/utils/FilesystemManager;->areAllRequiredAssetsPresent(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    .line 253
    iget-object v2, p0, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    invoke-static {v2}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$getAssetRepository$p(Ltech/ulo/library/model/state/SessionStartupFsm;)Ltech/ulo/library/model/repositories/AssetRepository;

    move-result-object v2

    iget-object v3, p0, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;->$filesystem:Ltech/ulo/library/model/entities/Filesystem;

    invoke-virtual {v2, v3}, Ltech/ulo/library/model/repositories/AssetRepository;->getLatestDistributionVersion(Ltech/ulo/library/model/entities/Filesystem;)Ljava/lang/String;

    move-result-object v2

    .line 254
    iget-object v3, p0, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;->$filesystem:Ltech/ulo/library/model/entities/Filesystem;

    invoke-virtual {v3}, Ltech/ulo/library/model/entities/Filesystem;->getVersionCodeUsed()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v3, :cond_3

    .line 257
    :cond_1
    iget-object v1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    invoke-static {v1}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$getAssetRepository$p(Ltech/ulo/library/model/state/SessionStartupFsm;)Ltech/ulo/library/model/repositories/AssetRepository;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltech/ulo/library/model/repositories/AssetRepository;->assetsArePresentInSupportDirectories(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 258
    iget-object p1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    invoke-static {p1}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$getState$p(Ltech/ulo/library/model/state/SessionStartupFsm;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Ltech/ulo/library/model/state/AssetsAreMissingFromSupportDirectories;->INSTANCE:Ltech/ulo/library/model/state/AssetsAreMissingFromSupportDirectories;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 259
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 263
    :cond_2
    :try_start_0
    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    invoke-static {v0}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$getFilesystemManager$p(Ltech/ulo/library/model/state/SessionStartupFsm;)Ltech/ulo/library/utils/FilesystemManager;

    move-result-object v0

    iget-object v1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;->$filesystem:Ltech/ulo/library/model/entities/Filesystem;

    invoke-virtual {v0, v1}, Ltech/ulo/library/utils/FilesystemManager;->copyAssetsToFilesystem(Ltech/ulo/library/model/entities/Filesystem;)V

    .line 264
    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;->$filesystem:Ltech/ulo/library/model/entities/Filesystem;

    invoke-virtual {v0, v2}, Ltech/ulo/library/model/entities/Filesystem;->setVersionCodeUsed(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    invoke-static {v0}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$getFilesystemDao$p(Ltech/ulo/library/model/state/SessionStartupFsm;)Ltech/ulo/library/model/daos/FilesystemDao;

    move-result-object v0

    iget-object v1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;->$filesystem:Ltech/ulo/library/model/entities/Filesystem;

    invoke-interface {v0, v1}, Ltech/ulo/library/model/daos/FilesystemDao;->updateFilesystem(Ltech/ulo/library/model/entities/Filesystem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    invoke-static {v0}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$getFilesystemManager$p(Ltech/ulo/library/model/state/SessionStartupFsm;)Ltech/ulo/library/utils/FilesystemManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltech/ulo/library/utils/FilesystemManager;->hasFilesystemBeenSuccessfullyExtracted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    invoke-static {v0}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$getFilesystemManager$p(Ltech/ulo/library/model/state/SessionStartupFsm;)Ltech/ulo/library/utils/FilesystemManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltech/ulo/library/utils/FilesystemManager;->removeRootfsFilesFromFilesystem(Ljava/lang/String;)V

    .line 276
    :cond_3
    iget-object p1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    invoke-static {p1}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$getState$p(Ltech/ulo/library/model/state/SessionStartupFsm;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Ltech/ulo/library/model/state/FilesystemAssetVerificationSucceeded;->INSTANCE:Ltech/ulo/library/model/state/FilesystemAssetVerificationSucceeded;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 277
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 267
    :catch_0
    iget-object p1, p0, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;->this$0:Ltech/ulo/library/model/state/SessionStartupFsm;

    invoke-static {p1}, Ltech/ulo/library/model/state/SessionStartupFsm;->access$getState$p(Ltech/ulo/library/model/state/SessionStartupFsm;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Ltech/ulo/library/model/state/FilesystemAssetCopyFailed;->INSTANCE:Ltech/ulo/library/model/state/FilesystemAssetCopyFailed;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 268
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 247
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
