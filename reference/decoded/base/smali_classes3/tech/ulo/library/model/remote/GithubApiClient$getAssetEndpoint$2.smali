.class final Ltech/ulo/library/model/remote/GithubApiClient$getAssetEndpoint$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GithubApiClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/model/remote/GithubApiClient;->getAssetEndpoint(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGithubApiClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GithubApiClient.kt\ntech/ulo/library/model/remote/GithubApiClient$getAssetEndpoint$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,127:1\n1#2:128\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
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
    c = "tech.ulo.library.model.remote.GithubApiClient$getAssetEndpoint$2"
    f = "GithubApiClient.kt"
    i = {}
    l = {
        0x4b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $assetType:Ljava/lang/String;

.field final synthetic $repo:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Ltech/ulo/library/model/remote/GithubApiClient;


# direct methods
.method constructor <init>(Ltech/ulo/library/model/remote/GithubApiClient;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/remote/GithubApiClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ulo/library/model/remote/GithubApiClient$getAssetEndpoint$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/ulo/library/model/remote/GithubApiClient$getAssetEndpoint$2;->this$0:Ltech/ulo/library/model/remote/GithubApiClient;

    iput-object p2, p0, Ltech/ulo/library/model/remote/GithubApiClient$getAssetEndpoint$2;->$repo:Ljava/lang/String;

    iput-object p3, p0, Ltech/ulo/library/model/remote/GithubApiClient$getAssetEndpoint$2;->$assetType:Ljava/lang/String;

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

    new-instance p1, Ltech/ulo/library/model/remote/GithubApiClient$getAssetEndpoint$2;

    iget-object v0, p0, Ltech/ulo/library/model/remote/GithubApiClient$getAssetEndpoint$2;->this$0:Ltech/ulo/library/model/remote/GithubApiClient;

    iget-object v1, p0, Ltech/ulo/library/model/remote/GithubApiClient$getAssetEndpoint$2;->$repo:Ljava/lang/String;

    iget-object v2, p0, Ltech/ulo/library/model/remote/GithubApiClient$getAssetEndpoint$2;->$assetType:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Ltech/ulo/library/model/remote/GithubApiClient$getAssetEndpoint$2;-><init>(Ltech/ulo/library/model/remote/GithubApiClient;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/model/remote/GithubApiClient$getAssetEndpoint$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/model/remote/GithubApiClient$getAssetEndpoint$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Ltech/ulo/library/model/remote/GithubApiClient$getAssetEndpoint$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Ltech/ulo/library/model/remote/GithubApiClient$getAssetEndpoint$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 73
    iget v1, p0, Ltech/ulo/library/model/remote/GithubApiClient$getAssetEndpoint$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 75
    iget-object p1, p0, Ltech/ulo/library/model/remote/GithubApiClient$getAssetEndpoint$2;->this$0:Ltech/ulo/library/model/remote/GithubApiClient;

    invoke-static {p1}, Ltech/ulo/library/model/remote/GithubApiClient;->access$getLatestResults$p(Ltech/ulo/library/model/remote/GithubApiClient;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v1, p0, Ltech/ulo/library/model/remote/GithubApiClient$getAssetEndpoint$2;->$repo:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltech/ulo/library/model/remote/GithubApiClient$ReleasesResponse;

    if-nez p1, :cond_3

    iget-object p1, p0, Ltech/ulo/library/model/remote/GithubApiClient$getAssetEndpoint$2;->this$0:Ltech/ulo/library/model/remote/GithubApiClient;

    iget-object v1, p0, Ltech/ulo/library/model/remote/GithubApiClient$getAssetEndpoint$2;->$repo:Ljava/lang/String;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Ltech/ulo/library/model/remote/GithubApiClient$getAssetEndpoint$2;->label:I

    invoke-static {p1, v1, v3}, Ltech/ulo/library/model/remote/GithubApiClient;->access$queryLatestRelease(Ltech/ulo/library/model/remote/GithubApiClient;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ltech/ulo/library/model/remote/GithubApiClient$ReleasesResponse;

    .line 74
    :cond_3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Ltech/ulo/library/model/remote/GithubApiClient$getAssetEndpoint$2;->this$0:Ltech/ulo/library/model/remote/GithubApiClient;

    invoke-virtual {v0}, Ltech/ulo/library/model/remote/GithubApiClient;->getUlaFiles()Ltech/ulo/library/utils/UlaFiles;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/utils/UlaFiles;->getArchType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltech/ulo/library/model/remote/GithubApiClient$getAssetEndpoint$2;->$assetType:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Ltech/ulo/library/model/remote/GithubApiClient$ReleasesResponse;->getAssets()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ltech/ulo/library/model/remote/GithubApiClient$GithubAsset;

    invoke-virtual {v2}, Ltech/ulo/library/model/remote/GithubApiClient$GithubAsset;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ltech/ulo/library/model/remote/GithubApiClient$GithubAsset;

    invoke-virtual {v1}, Ltech/ulo/library/model/remote/GithubApiClient$GithubAsset;->getDownloadUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
