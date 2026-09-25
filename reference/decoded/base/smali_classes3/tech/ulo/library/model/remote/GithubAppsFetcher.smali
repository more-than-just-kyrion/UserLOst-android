.class public final Ltech/ulo/library/model/remote/GithubAppsFetcher;
.super Ljava/lang/Object;
.source "GithubAppsFetcher.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\r\u001a\u00020\u0003H\u0002J\u0016\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0010H\u0086@\u00a2\u0006\u0002\u0010\u0011J\u0016\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0010H\u0086@\u00a2\u0006\u0002\u0010\u0011J\u0016\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0010H\u0086@\u00a2\u0006\u0002\u0010\u0011J\u0016\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0010H\u0086@\u00a2\u0006\u0002\u0010\u0011J\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0016H\u0086@\u00a2\u0006\u0002\u0010\u0017J\u001e\u0010\u0018\u001a\u0002H\u0019\"\u0004\u0008\u0000\u0010\u0019*\u0008\u0012\u0004\u0012\u0002H\u00190\u0016H\u0082\u0002\u00a2\u0006\u0002\u0010\u001aJ\u001e\u0010\u001b\u001a\u0002H\u0019\"\u0004\u0008\u0000\u0010\u0019*\u0008\u0012\u0004\u0012\u0002H\u00190\u0016H\u0082\u0002\u00a2\u0006\u0002\u0010\u001aR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Ltech/ulo/library/model/remote/GithubAppsFetcher;",
        "",
        "filesDirPath",
        "",
        "assets",
        "Landroid/content/res/AssetManager;",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "httpStream",
        "Ltech/ulo/library/utils/HttpStream;",
        "logger",
        "Ltech/ulo/library/utils/Logger;",
        "(Ljava/lang/String;Landroid/content/res/AssetManager;Landroid/content/SharedPreferences;Ltech/ulo/library/utils/HttpStream;Ltech/ulo/library/utils/Logger;)V",
        "baseUrl",
        "fetchAppDescription",
        "app",
        "Ltech/ulo/library/model/entities/App;",
        "(Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "fetchAppFlavors",
        "fetchAppIcon",
        "fetchAppScript",
        "fetchAppsList",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "component6",
        "T",
        "(Ljava/util/List;)Ljava/lang/Object;",
        "component7",
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
.field private final assets:Landroid/content/res/AssetManager;

.field private final filesDirPath:Ljava/lang/String;

.field private final httpStream:Ltech/ulo/library/utils/HttpStream;

.field private final logger:Ltech/ulo/library/utils/Logger;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/res/AssetManager;Landroid/content/SharedPreferences;Ltech/ulo/library/utils/HttpStream;Ltech/ulo/library/utils/Logger;)V
    .locals 1

    const-string v0, "filesDirPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPreferences"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpStream"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Ltech/ulo/library/model/remote/GithubAppsFetcher;->filesDirPath:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Ltech/ulo/library/model/remote/GithubAppsFetcher;->assets:Landroid/content/res/AssetManager;

    .line 19
    iput-object p3, p0, Ltech/ulo/library/model/remote/GithubAppsFetcher;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 20
    iput-object p4, p0, Ltech/ulo/library/model/remote/GithubAppsFetcher;->httpStream:Ltech/ulo/library/utils/HttpStream;

    .line 21
    iput-object p5, p0, Ltech/ulo/library/model/remote/GithubAppsFetcher;->logger:Ltech/ulo/library/utils/Logger;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/res/AssetManager;Landroid/content/SharedPreferences;Ltech/ulo/library/utils/HttpStream;Ltech/ulo/library/utils/Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    .line 20
    new-instance p4, Ltech/ulo/library/utils/HttpStream;

    invoke-direct {p4}, Ltech/ulo/library/utils/HttpStream;-><init>()V

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    .line 21
    new-instance p4, Ltech/ulo/library/utils/SentryLogger;

    invoke-direct {p4}, Ltech/ulo/library/utils/SentryLogger;-><init>()V

    move-object p5, p4

    check-cast p5, Ltech/ulo/library/utils/Logger;

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 16
    invoke-direct/range {v0 .. v5}, Ltech/ulo/library/model/remote/GithubAppsFetcher;-><init>(Ljava/lang/String;Landroid/content/res/AssetManager;Landroid/content/SharedPreferences;Ltech/ulo/library/utils/HttpStream;Ltech/ulo/library/utils/Logger;)V

    return-void
.end method

.method public static final synthetic access$baseUrl(Ltech/ulo/library/model/remote/GithubAppsFetcher;)Ljava/lang/String;
    .locals 0

    .line 16
    invoke-direct {p0}, Ltech/ulo/library/model/remote/GithubAppsFetcher;->baseUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAssets$p(Ltech/ulo/library/model/remote/GithubAppsFetcher;)Landroid/content/res/AssetManager;
    .locals 0

    .line 16
    iget-object p0, p0, Ltech/ulo/library/model/remote/GithubAppsFetcher;->assets:Landroid/content/res/AssetManager;

    return-object p0
.end method

.method public static final synthetic access$getFilesDirPath$p(Ltech/ulo/library/model/remote/GithubAppsFetcher;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Ltech/ulo/library/model/remote/GithubAppsFetcher;->filesDirPath:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getHttpStream$p(Ltech/ulo/library/model/remote/GithubAppsFetcher;)Ltech/ulo/library/utils/HttpStream;
    .locals 0

    .line 16
    iget-object p0, p0, Ltech/ulo/library/model/remote/GithubAppsFetcher;->httpStream:Ltech/ulo/library/utils/HttpStream;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Ltech/ulo/library/model/remote/GithubAppsFetcher;)Ltech/ulo/library/utils/Logger;
    .locals 0

    .line 16
    iget-object p0, p0, Ltech/ulo/library/model/remote/GithubAppsFetcher;->logger:Ltech/ulo/library/utils/Logger;

    return-object p0
.end method

.method private final baseUrl()Ljava/lang/String;
    .locals 3

    .line 30
    iget-object v0, p0, Ltech/ulo/library/model/remote/GithubAppsFetcher;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_custom_apps_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Ltech/ulo/library/model/remote/GithubAppsFetcher;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_apps"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method private final component6(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 25
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final component7(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 26
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final fetchAppDescription(Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/App;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Ltech/ulo/library/model/remote/GithubAppsFetcher$fetchAppDescription$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Ltech/ulo/library/model/remote/GithubAppsFetcher$fetchAppDescription$2;-><init>(Ltech/ulo/library/model/entities/App;Ltech/ulo/library/model/remote/GithubAppsFetcher;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final fetchAppFlavors(Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/App;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Ltech/ulo/library/model/remote/GithubAppsFetcher$fetchAppFlavors$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Ltech/ulo/library/model/remote/GithubAppsFetcher$fetchAppFlavors$2;-><init>(Ltech/ulo/library/model/entities/App;Ltech/ulo/library/model/remote/GithubAppsFetcher;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final fetchAppIcon(Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/App;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Ltech/ulo/library/model/remote/GithubAppsFetcher$fetchAppIcon$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Ltech/ulo/library/model/remote/GithubAppsFetcher$fetchAppIcon$2;-><init>(Ltech/ulo/library/model/entities/App;Ltech/ulo/library/model/remote/GithubAppsFetcher;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final fetchAppScript(Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/App;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Ltech/ulo/library/model/remote/GithubAppsFetcher$fetchAppScript$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Ltech/ulo/library/model/remote/GithubAppsFetcher$fetchAppScript$2;-><init>(Ltech/ulo/library/model/entities/App;Ltech/ulo/library/model/remote/GithubAppsFetcher;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final fetchAppsList(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/App;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Ltech/ulo/library/model/remote/GithubAppsFetcher$fetchAppsList$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ltech/ulo/library/model/remote/GithubAppsFetcher$fetchAppsList$2;-><init>(Ltech/ulo/library/model/remote/GithubAppsFetcher;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
