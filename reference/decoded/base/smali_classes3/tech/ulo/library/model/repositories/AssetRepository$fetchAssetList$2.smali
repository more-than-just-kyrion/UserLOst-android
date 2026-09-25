.class final Ltech/ulo/library/model/repositories/AssetRepository$fetchAssetList$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AssetRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/model/repositories/AssetRepository;->fetchAssetList(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "Ltech/ulo/library/model/entities/Asset;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Ltech/ulo/library/model/entities/Asset;",
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
    c = "tech.ulo.library.model.repositories.AssetRepository$fetchAssetList$2"
    f = "AssetRepository.kt"
    i = {}
    l = {
        0x75
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $assetType:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Ltech/ulo/library/model/repositories/AssetRepository;


# direct methods
.method constructor <init>(Ltech/ulo/library/model/repositories/AssetRepository;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/repositories/AssetRepository;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ulo/library/model/repositories/AssetRepository$fetchAssetList$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/ulo/library/model/repositories/AssetRepository$fetchAssetList$2;->this$0:Ltech/ulo/library/model/repositories/AssetRepository;

    iput-object p2, p0, Ltech/ulo/library/model/repositories/AssetRepository$fetchAssetList$2;->$assetType:Ljava/lang/String;

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

    new-instance p1, Ltech/ulo/library/model/repositories/AssetRepository$fetchAssetList$2;

    iget-object v0, p0, Ltech/ulo/library/model/repositories/AssetRepository$fetchAssetList$2;->this$0:Ltech/ulo/library/model/repositories/AssetRepository;

    iget-object v1, p0, Ltech/ulo/library/model/repositories/AssetRepository$fetchAssetList$2;->$assetType:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Ltech/ulo/library/model/repositories/AssetRepository$fetchAssetList$2;-><init>(Ltech/ulo/library/model/repositories/AssetRepository;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/model/repositories/AssetRepository$fetchAssetList$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Asset;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/model/repositories/AssetRepository$fetchAssetList$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Ltech/ulo/library/model/repositories/AssetRepository$fetchAssetList$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Ltech/ulo/library/model/repositories/AssetRepository$fetchAssetList$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 109
    iget v1, p0, Ltech/ulo/library/model/repositories/AssetRepository$fetchAssetList$2;->label:I

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

    .line 112
    iget-object p1, p0, Ltech/ulo/library/model/repositories/AssetRepository$fetchAssetList$2;->this$0:Ltech/ulo/library/model/repositories/AssetRepository;

    invoke-static {p1}, Ltech/ulo/library/model/repositories/AssetRepository;->access$getDefaultSharedPreferences$p(Ltech/ulo/library/model/repositories/AssetRepository;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "pref_custom_filesystem_enabled"

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 113
    iget-object p1, p0, Ltech/ulo/library/model/repositories/AssetRepository$fetchAssetList$2;->this$0:Ltech/ulo/library/model/repositories/AssetRepository;

    invoke-static {p1}, Ltech/ulo/library/model/repositories/AssetRepository;->access$getDefaultSharedPreferences$p(Ltech/ulo/library/model/repositories/AssetRepository;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "pref_filesystem"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Ltech/ulo/library/model/repositories/AssetRepository$fetchAssetList$2;->this$0:Ltech/ulo/library/model/repositories/AssetRepository;

    invoke-static {v0}, Ltech/ulo/library/model/repositories/AssetRepository;->access$getUlaFiles$p(Ltech/ulo/library/model/repositories/AssetRepository;)Ltech/ulo/library/utils/UlaFiles;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/utils/UlaFiles;->getArchType()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-assets.txt"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 117
    :cond_2
    iget-object p1, p0, Ltech/ulo/library/model/repositories/AssetRepository$fetchAssetList$2;->this$0:Ltech/ulo/library/model/repositories/AssetRepository;

    invoke-static {p1}, Ltech/ulo/library/model/repositories/AssetRepository;->access$getGithubApiClient$p(Ltech/ulo/library/model/repositories/AssetRepository;)Ltech/ulo/library/model/remote/GithubApiClient;

    move-result-object p1

    iget-object v1, p0, Ltech/ulo/library/model/repositories/AssetRepository$fetchAssetList$2;->$assetType:Ljava/lang/String;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Ltech/ulo/library/model/repositories/AssetRepository$fetchAssetList$2;->label:I

    invoke-virtual {p1, v1, v3}, Ltech/ulo/library/model/remote/GithubApiClient;->getAssetsListDownloadUrl(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 123
    :goto_1
    iget-object v0, p0, Ltech/ulo/library/model/repositories/AssetRepository$fetchAssetList$2;->this$0:Ltech/ulo/library/model/repositories/AssetRepository;

    invoke-static {v0}, Ltech/ulo/library/model/repositories/AssetRepository;->access$getHttpStream$p(Ltech/ulo/library/model/repositories/AssetRepository;)Ltech/ulo/library/utils/HttpStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltech/ulo/library/utils/HttpStream;->fromUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 124
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    check-cast v1, Ljava/io/Reader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 126
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    .line 127
    move-object v1, v0

    check-cast v1, Ljava/io/Reader;

    new-instance v2, Ltech/ulo/library/model/repositories/AssetRepository$fetchAssetList$2$1;

    iget-object v3, p0, Ltech/ulo/library/model/repositories/AssetRepository$fetchAssetList$2;->$assetType:Ljava/lang/String;

    invoke-direct {v2, p1, v3}, Ltech/ulo/library/model/repositories/AssetRepository$fetchAssetList$2$1;-><init>(Ljava/util/List;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/io/TextStreamsKt;->forEachLine(Ljava/io/Reader;Lkotlin/jvm/functions/Function1;)V

    .line 133
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object p1
.end method
