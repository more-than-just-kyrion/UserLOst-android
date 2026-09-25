.class final Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AssetDownloader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/utils/DownloadManagerWrapper;->generateDownloadRequestAndEnqueue(Ljava/lang/String;Ljava/io/File;)J
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
    c = "tech.ulo.library.utils.DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1"
    f = "AssetDownloader.kt"
    i = {
        0x0
    }
    l = {
        0x11f,
        0x122
    }
    m = "invokeSuspend"
    n = {
        "httpStream"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $destination:Ljava/io/File;

.field final synthetic $index:J

.field final synthetic $url:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Ltech/ulo/library/utils/DownloadManagerWrapper;


# direct methods
.method public static synthetic $r8$lambda$GINtp5ylBYz11biPXnb5AcYwHlo(Ltech/ulo/library/utils/DownloadManagerWrapper;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->invokeSuspend$lambda$0(Ltech/ulo/library/utils/DownloadManagerWrapper;J)V

    return-void
.end method

.method constructor <init>(Ltech/ulo/library/utils/DownloadManagerWrapper;JLjava/lang/String;Ljava/io/File;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/utils/DownloadManagerWrapper;",
            "J",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->this$0:Ltech/ulo/library/utils/DownloadManagerWrapper;

    iput-wide p2, p0, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->$index:J

    iput-object p4, p0, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->$url:Ljava/lang/String;

    iput-object p5, p0, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->$destination:Ljava/io/File;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Ltech/ulo/library/utils/DownloadManagerWrapper;J)V
    .locals 0

    .line 296
    invoke-static {p0}, Ltech/ulo/library/utils/DownloadManagerWrapper;->access$getActivity$p(Ltech/ulo/library/utils/DownloadManagerWrapper;)Ltech/ulo/library/MainActivity;

    move-result-object p0

    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitCompletedDownloadId(J)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;

    iget-object v1, p0, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->this$0:Ltech/ulo/library/utils/DownloadManagerWrapper;

    iget-wide v2, p0, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->$index:J

    iget-object v4, p0, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->$url:Ljava/lang/String;

    iget-object v5, p0, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->$destination:Ljava/io/File;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;-><init>(Ltech/ulo/library/utils/DownloadManagerWrapper;JLjava/lang/String;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 285
    iget v1, p0, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ltech/ulo/library/utils/HttpStream;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 286
    new-instance v1, Ltech/ulo/library/utils/HttpStream;

    invoke-direct {v1}, Ltech/ulo/library/utils/HttpStream;-><init>()V

    .line 287
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->label:I

    const-wide/16 v3, 0x1

    invoke-static {v3, v4, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 288
    :cond_3
    :goto_0
    iget-object p1, p0, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->this$0:Ltech/ulo/library/utils/DownloadManagerWrapper;

    invoke-static {p1}, Ltech/ulo/library/utils/DownloadManagerWrapper;->access$getDownloadQueue$p(Ltech/ulo/library/utils/DownloadManagerWrapper;)Ljava/util/HashMap;

    move-result-object p1

    iget-wide v3, p0, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->$index:J

    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->this$0:Ltech/ulo/library/utils/DownloadManagerWrapper;

    invoke-static {v4}, Ltech/ulo/library/utils/DownloadManagerWrapper;->access$getSTART$p(Ltech/ulo/library/utils/DownloadManagerWrapper;)I

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :try_start_1
    iget-object p1, p0, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->$url:Ljava/lang/String;

    iget-object v3, p0, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->$destination:Ljava/io/File;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x0

    iput-object v5, p0, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->label:I

    invoke-virtual {v1, p1, v3, v4}, Ltech/ulo/library/utils/HttpStream;->toFile(Ljava/lang/String;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_4

    return-object v0

    .line 295
    :cond_4
    :goto_1
    iget-object p1, p0, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->this$0:Ltech/ulo/library/utils/DownloadManagerWrapper;

    invoke-static {p1}, Ltech/ulo/library/utils/DownloadManagerWrapper;->access$getDownloadQueue$p(Ltech/ulo/library/utils/DownloadManagerWrapper;)Ljava/util/HashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iget-wide v0, p0, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->$index:J

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->this$0:Ltech/ulo/library/utils/DownloadManagerWrapper;

    invoke-static {v1}, Ltech/ulo/library/utils/DownloadManagerWrapper;->access$getSUCCESS$p(Ltech/ulo/library/utils/DownloadManagerWrapper;)I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object p1, p0, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->this$0:Ltech/ulo/library/utils/DownloadManagerWrapper;

    invoke-static {p1}, Ltech/ulo/library/utils/DownloadManagerWrapper;->access$getActivity$p(Ltech/ulo/library/utils/DownloadManagerWrapper;)Ltech/ulo/library/MainActivity;

    move-result-object p1

    iget-object v0, p0, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->this$0:Ltech/ulo/library/utils/DownloadManagerWrapper;

    iget-wide v1, p0, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->$index:J

    new-instance v3, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1, v2}, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1$$ExternalSyntheticLambda0;-><init>(Ltech/ulo/library/utils/DownloadManagerWrapper;J)V

    invoke-virtual {p1, v3}, Ltech/ulo/library/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 297
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 292
    :catch_0
    iget-object p1, p0, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->this$0:Ltech/ulo/library/utils/DownloadManagerWrapper;

    invoke-static {p1}, Ltech/ulo/library/utils/DownloadManagerWrapper;->access$getDownloadQueue$p(Ltech/ulo/library/utils/DownloadManagerWrapper;)Ljava/util/HashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iget-wide v0, p0, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->$index:J

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;->this$0:Ltech/ulo/library/utils/DownloadManagerWrapper;

    invoke-static {v1}, Ltech/ulo/library/utils/DownloadManagerWrapper;->access$getFAIL$p(Ltech/ulo/library/utils/DownloadManagerWrapper;)I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
