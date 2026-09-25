.class final Ltech/ulo/library/model/remote/GithubApiClient$queryLatestRelease$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GithubApiClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/model/remote/GithubApiClient;->queryLatestRelease(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ltech/ulo/library/model/remote/GithubApiClient$ReleasesResponse;",
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
        "Ltech/ulo/library/model/remote/GithubApiClient$ReleasesResponse;",
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
    c = "tech.ulo.library.model.remote.GithubApiClient$queryLatestRelease$2"
    f = "GithubApiClient.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $repo:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Ltech/ulo/library/model/remote/GithubApiClient;


# direct methods
.method constructor <init>(Ltech/ulo/library/model/remote/GithubApiClient;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/remote/GithubApiClient;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ulo/library/model/remote/GithubApiClient$queryLatestRelease$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/ulo/library/model/remote/GithubApiClient$queryLatestRelease$2;->this$0:Ltech/ulo/library/model/remote/GithubApiClient;

    iput-object p2, p0, Ltech/ulo/library/model/remote/GithubApiClient$queryLatestRelease$2;->$repo:Ljava/lang/String;

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

    new-instance p1, Ltech/ulo/library/model/remote/GithubApiClient$queryLatestRelease$2;

    iget-object v0, p0, Ltech/ulo/library/model/remote/GithubApiClient$queryLatestRelease$2;->this$0:Ltech/ulo/library/model/remote/GithubApiClient;

    iget-object v1, p0, Ltech/ulo/library/model/remote/GithubApiClient$queryLatestRelease$2;->$repo:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Ltech/ulo/library/model/remote/GithubApiClient$queryLatestRelease$2;-><init>(Ltech/ulo/library/model/remote/GithubApiClient;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/model/remote/GithubApiClient$queryLatestRelease$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ltech/ulo/library/model/remote/GithubApiClient$ReleasesResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/model/remote/GithubApiClient$queryLatestRelease$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Ltech/ulo/library/model/remote/GithubApiClient$queryLatestRelease$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Ltech/ulo/library/model/remote/GithubApiClient$queryLatestRelease$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 86
    iget v0, p0, Ltech/ulo/library/model/remote/GithubApiClient$queryLatestRelease$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 87
    iget-object p1, p0, Ltech/ulo/library/model/remote/GithubApiClient$queryLatestRelease$2;->this$0:Ltech/ulo/library/model/remote/GithubApiClient;

    iget-object v0, p0, Ltech/ulo/library/model/remote/GithubApiClient$queryLatestRelease$2;->$repo:Ljava/lang/String;

    invoke-static {p1, v0}, Ltech/ulo/library/model/remote/GithubApiClient;->access$getReleaseToUseForRepo(Ltech/ulo/library/model/remote/GithubApiClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 88
    iget-object v0, p0, Ltech/ulo/library/model/remote/GithubApiClient$queryLatestRelease$2;->this$0:Ltech/ulo/library/model/remote/GithubApiClient;

    invoke-static {v0}, Ltech/ulo/library/model/remote/GithubApiClient;->access$getUrlProvider$p(Ltech/ulo/library/model/remote/GithubApiClient;)Ltech/ulo/library/model/remote/UrlProvider;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/model/remote/UrlProvider;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p0, Ltech/ulo/library/model/remote/GithubApiClient$queryLatestRelease$2;->$repo:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "repos//UserLOst-Assets-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/releases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 90
    new-instance v0, Lcom/squareup/moshi/Moshi$Builder;

    invoke-direct {v0}, Lcom/squareup/moshi/Moshi$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/squareup/moshi/Moshi$Builder;->build()Lcom/squareup/moshi/Moshi;

    move-result-object v0

    .line 91
    const-class v1, Ltech/ulo/library/model/remote/GithubApiClient$ReleasesResponse;

    invoke-virtual {v0, v1}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object v0

    .line 92
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 93
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 96
    :try_start_0
    iget-object v1, p0, Ltech/ulo/library/model/remote/GithubApiClient$queryLatestRelease$2;->this$0:Ltech/ulo/library/model/remote/GithubApiClient;

    invoke-static {v1}, Ltech/ulo/library/model/remote/GithubApiClient;->access$getClient$p(Ltech/ulo/library/model/remote/GithubApiClient;)Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/squareup/moshi/JsonAdapter;->fromJson(Lokio/BufferedSource;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ltech/ulo/library/model/remote/GithubApiClient$ReleasesResponse;

    .line 109
    iget-object v0, p0, Ltech/ulo/library/model/remote/GithubApiClient$queryLatestRelease$2;->this$0:Ltech/ulo/library/model/remote/GithubApiClient;

    invoke-static {v0}, Ltech/ulo/library/model/remote/GithubApiClient;->access$getLatestResults$p(Ltech/ulo/library/model/remote/GithubApiClient;)Ljava/util/HashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Ltech/ulo/library/model/remote/GithubApiClient$queryLatestRelease$2;->$repo:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 103
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Ltech/ulo/library/model/remote/GithubApiClient$queryLatestRelease$2;->this$0:Ltech/ulo/library/model/remote/GithubApiClient;

    invoke-static {p1}, Ltech/ulo/library/model/remote/GithubApiClient;->access$getLogger$p(Ltech/ulo/library/model/remote/GithubApiClient;)Ltech/ulo/library/utils/Logger;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Ljava/lang/Exception;

    invoke-interface {p1, v1}, Ltech/ulo/library/utils/Logger;->addExceptionBreadcrumb(Ljava/lang/Exception;)V

    .line 105
    throw v0

    :catch_0
    move-exception p1

    .line 98
    iget-object v0, p0, Ltech/ulo/library/model/remote/GithubApiClient$queryLatestRelease$2;->this$0:Ltech/ulo/library/model/remote/GithubApiClient;

    invoke-static {v0}, Ltech/ulo/library/model/remote/GithubApiClient;->access$getLogger$p(Ltech/ulo/library/model/remote/GithubApiClient;)Ltech/ulo/library/utils/Logger;

    move-result-object v0

    invoke-interface {v0, p1}, Ltech/ulo/library/utils/Logger;->addExceptionBreadcrumb(Ljava/lang/Exception;)V

    .line 99
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failure to communicate with github"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 100
    throw p1

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
