.class public final Ltech/ulo/library/model/remote/GithubApiClient;
.super Ljava/lang/Object;
.source "GithubApiClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/ulo/library/model/remote/GithubApiClient$GithubAsset;,
        Ltech/ulo/library/model/remote/GithubApiClient$ReleasesResponse;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGithubApiClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GithubApiClient.kt\ntech/ulo/library/model/remote/GithubApiClient\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,127:1\n1179#2,2:128\n1253#2,4:130\n*S KotlinDebug\n*F\n+ 1 GithubApiClient.kt\ntech/ulo/library/model/remote/GithubApiClient\n*L\n36#1:128,2\n36#1:130,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001:\u0002\u001b\u001cB!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u001e\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\u0015J\u0016\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\u0017J\u0016\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\u0017J\u0010\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\rH\u0002J\u0016\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\rH\u0082@\u00a2\u0006\u0002\u0010\u0017R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R.\u0010\u000b\u001a\"\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u000cj\u0010\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e`\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Ltech/ulo/library/model/remote/GithubApiClient;",
        "",
        "ulaFiles",
        "Ltech/ulo/library/utils/UlaFiles;",
        "urlProvider",
        "Ltech/ulo/library/model/remote/UrlProvider;",
        "logger",
        "Ltech/ulo/library/utils/Logger;",
        "(Ltech/ulo/library/utils/UlaFiles;Ltech/ulo/library/model/remote/UrlProvider;Ltech/ulo/library/utils/Logger;)V",
        "client",
        "Lokhttp3/OkHttpClient;",
        "latestResults",
        "Ljava/util/HashMap;",
        "",
        "Ltech/ulo/library/model/remote/GithubApiClient$ReleasesResponse;",
        "Lkotlin/collections/HashMap;",
        "getUlaFiles",
        "()Ltech/ulo/library/utils/UlaFiles;",
        "getAssetEndpoint",
        "assetType",
        "repo",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getAssetsListDownloadUrl",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getLatestReleaseVersion",
        "getReleaseToUseForRepo",
        "queryLatestRelease",
        "GithubAsset",
        "ReleasesResponse",
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
.field private final client:Lokhttp3/OkHttpClient;

.field private final latestResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ltech/ulo/library/model/remote/GithubApiClient$ReleasesResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Ltech/ulo/library/utils/Logger;

.field private final ulaFiles:Ltech/ulo/library/utils/UlaFiles;

.field private final urlProvider:Ltech/ulo/library/model/remote/UrlProvider;


# direct methods
.method public constructor <init>(Ltech/ulo/library/utils/UlaFiles;Ltech/ulo/library/model/remote/UrlProvider;Ltech/ulo/library/utils/Logger;)V
    .locals 1

    const-string v0, "ulaFiles"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Ltech/ulo/library/model/remote/GithubApiClient;->ulaFiles:Ltech/ulo/library/utils/UlaFiles;

    .line 27
    iput-object p2, p0, Ltech/ulo/library/model/remote/GithubApiClient;->urlProvider:Ltech/ulo/library/model/remote/UrlProvider;

    .line 28
    iput-object p3, p0, Ltech/ulo/library/model/remote/GithubApiClient;->logger:Ltech/ulo/library/utils/Logger;

    .line 30
    new-instance p1, Lokhttp3/OkHttpClient;

    invoke-direct {p1}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/model/remote/GithubApiClient;->client:Lokhttp3/OkHttpClient;

    .line 31
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/model/remote/GithubApiClient;->latestResults:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(Ltech/ulo/library/utils/UlaFiles;Ltech/ulo/library/model/remote/UrlProvider;Ltech/ulo/library/utils/Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 27
    new-instance p2, Ltech/ulo/library/model/remote/UrlProvider;

    invoke-direct {p2}, Ltech/ulo/library/model/remote/UrlProvider;-><init>()V

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 28
    new-instance p3, Ltech/ulo/library/utils/SentryLogger;

    invoke-direct {p3}, Ltech/ulo/library/utils/SentryLogger;-><init>()V

    check-cast p3, Ltech/ulo/library/utils/Logger;

    .line 25
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Ltech/ulo/library/model/remote/GithubApiClient;-><init>(Ltech/ulo/library/utils/UlaFiles;Ltech/ulo/library/model/remote/UrlProvider;Ltech/ulo/library/utils/Logger;)V

    return-void
.end method

.method public static final synthetic access$getClient$p(Ltech/ulo/library/model/remote/GithubApiClient;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 25
    iget-object p0, p0, Ltech/ulo/library/model/remote/GithubApiClient;->client:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public static final synthetic access$getLatestResults$p(Ltech/ulo/library/model/remote/GithubApiClient;)Ljava/util/HashMap;
    .locals 0

    .line 25
    iget-object p0, p0, Ltech/ulo/library/model/remote/GithubApiClient;->latestResults:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Ltech/ulo/library/model/remote/GithubApiClient;)Ltech/ulo/library/utils/Logger;
    .locals 0

    .line 25
    iget-object p0, p0, Ltech/ulo/library/model/remote/GithubApiClient;->logger:Ltech/ulo/library/utils/Logger;

    return-object p0
.end method

.method public static final synthetic access$getReleaseToUseForRepo(Ltech/ulo/library/model/remote/GithubApiClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Ltech/ulo/library/model/remote/GithubApiClient;->getReleaseToUseForRepo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getUrlProvider$p(Ltech/ulo/library/model/remote/GithubApiClient;)Ltech/ulo/library/model/remote/UrlProvider;
    .locals 0

    .line 25
    iget-object p0, p0, Ltech/ulo/library/model/remote/GithubApiClient;->urlProvider:Ltech/ulo/library/model/remote/UrlProvider;

    return-object p0
.end method

.method public static final synthetic access$queryLatestRelease(Ltech/ulo/library/model/remote/GithubApiClient;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/model/remote/GithubApiClient;->queryLatestRelease(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getReleaseToUseForRepo(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .line 35
    const-string v0, "alpine:tags/Alpine-v0.0.9,alpine_lxqt:tags/Alpine_LXQt-v0.0.9,alpine_xfce:tags/Alpine_XFCE-v0.0.9,arch:tags/Arch-v0.0.6,arch_lxde:tags/Arch_LXDE-v0.0.6,arch_xfce:tags/Arch_XFCE-v0.0.6,debian:tags/Debian-v0.0.15,debian_lxde:tags/Debian_LXDE-v0.0.15,debian_xfce:tags/Debian_XFCE-v0.0.15,ubuntu:tags/Ubuntu-v0.0.21,ubuntu_lxde:tags/Ubuntu_LXDE-v0.0.21,ubuntu_xfce:tags/Ubuntu_XFCE-v0.0.21,kali:tags/Kali-v0.0.10,kali_lxde:tags/Kali_LXDE-v0.0.10,kali_xfce:tags/Kali_XFCE-v0.0.10"

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, ":"

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v1, v3, v6, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 36
    move-object v7, v0

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    const-string v1, ","

    aput-object v1, v8, v6

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    const/16 v3, 0xa

    .line 128
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v3

    .line 129
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v4, Ljava/util/Map;

    .line 130
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 131
    check-cast v3, Ljava/lang/String;

    .line 37
    move-object v7, v3

    check-cast v7, Ljava/lang/CharSequence;

    new-array v8, v0, [Ljava/lang/String;

    aput-object v2, v8, v6

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 38
    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 131
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 43
    :cond_1
    const-string p1, "latest"

    return-object p1

    :cond_2
    return-object v0
.end method

.method private final queryLatestRelease(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ulo/library/model/remote/GithubApiClient$ReleasesResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Ltech/ulo/library/model/remote/GithubApiClient$queryLatestRelease$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Ltech/ulo/library/model/remote/GithubApiClient$queryLatestRelease$2;-><init>(Ltech/ulo/library/model/remote/GithubApiClient;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getAssetEndpoint(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Ltech/ulo/library/model/remote/GithubApiClient$getAssetEndpoint$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Ltech/ulo/library/model/remote/GithubApiClient$getAssetEndpoint$2;-><init>(Ltech/ulo/library/model/remote/GithubApiClient;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getAssetsListDownloadUrl(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Ltech/ulo/library/model/remote/GithubApiClient$getAssetsListDownloadUrl$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Ltech/ulo/library/model/remote/GithubApiClient$getAssetsListDownloadUrl$2;-><init>(Ltech/ulo/library/model/remote/GithubApiClient;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getLatestReleaseVersion(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Ltech/ulo/library/model/remote/GithubApiClient$getLatestReleaseVersion$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Ltech/ulo/library/model/remote/GithubApiClient$getLatestReleaseVersion$2;-><init>(Ltech/ulo/library/model/remote/GithubApiClient;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getUlaFiles()Ltech/ulo/library/utils/UlaFiles;
    .locals 1

    .line 26
    iget-object v0, p0, Ltech/ulo/library/model/remote/GithubApiClient;->ulaFiles:Ltech/ulo/library/utils/UlaFiles;

    return-object v0
.end method
