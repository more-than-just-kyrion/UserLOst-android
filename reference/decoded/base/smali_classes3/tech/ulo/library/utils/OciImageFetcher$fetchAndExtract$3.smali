.class final Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OciImageFetcher.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/utils/OciImageFetcher;->fetchAndExtract(Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOciImageFetcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OciImageFetcher.kt\ntech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,527:1\n1864#2,2:528\n1866#2:531\n1#3:530\n13309#4,2:532\n*S KotlinDebug\n*F\n+ 1 OciImageFetcher.kt\ntech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3\n*L\n56#1:528,2\n56#1:531\n80#1:532,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
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
    c = "tech.ulo.library.utils.OciImageFetcher$fetchAndExtract$3"
    f = "OciImageFetcher.kt"
    i = {}
    l = {
        0x54
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $destination:Ljava/io/File;

.field final synthetic $distributionType:Ljava/lang/String;

.field final synthetic $progressListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tarGzExtractor:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Ltech/ulo/library/utils/OciImageFetcher;


# direct methods
.method constructor <init>(Ltech/ulo/library/utils/OciImageFetcher;Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/utils/OciImageFetcher;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/io/File;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->this$0:Ltech/ulo/library/utils/OciImageFetcher;

    iput-object p2, p0, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->$distributionType:Ljava/lang/String;

    iput-object p3, p0, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->$destination:Ljava/io/File;

    iput-object p4, p0, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->$progressListener:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->$tarGzExtractor:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;

    iget-object v1, p0, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->this$0:Ltech/ulo/library/utils/OciImageFetcher;

    iget-object v2, p0, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->$distributionType:Ljava/lang/String;

    iget-object v3, p0, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->$destination:Ljava/io/File;

    iget-object v4, p0, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->$progressListener:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->$tarGzExtractor:Lkotlin/jvm/functions/Function2;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;-><init>(Ltech/ulo/library/utils/OciImageFetcher;Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v1, p0

    const-string v0, "/userland-"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 40
    iget v3, v1, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    :try_start_0
    iget-object v5, v1, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->this$0:Ltech/ulo/library/utils/OciImageFetcher;

    invoke-static {v5}, Ltech/ulo/library/utils/OciImageFetcher;->access$getUlaFiles$p(Ltech/ulo/library/utils/OciImageFetcher;)Ltech/ulo/library/utils/UlaFiles;

    move-result-object v5

    invoke-virtual {v5}, Ltech/ulo/library/utils/UlaFiles;->getArchType()Ljava/lang/String;

    move-result-object v5

    .line 43
    iget-object v6, v1, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->$distributionType:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v6, v1, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->this$0:Ltech/ulo/library/utils/OciImageFetcher;

    invoke-static {v6, v5}, Ltech/ulo/library/utils/OciImageFetcher;->access$ociPlatformForArch(Ltech/ulo/library/utils/OciImageFetcher;Ljava/lang/String;)Lkotlin/Triple;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v5}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Ljava/lang/String;

    .line 46
    iget-object v5, v1, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->this$0:Ltech/ulo/library/utils/OciImageFetcher;

    iget-object v6, v1, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->$distributionType:Ljava/lang/String;

    invoke-static {v5, v6}, Ltech/ulo/library/utils/OciImageFetcher;->access$ociTagForDistro(Ltech/ulo/library/utils/OciImageFetcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 47
    iget-object v6, v1, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->this$0:Ltech/ulo/library/utils/OciImageFetcher;

    move-object v7, v0

    invoke-static/range {v6 .. v11}, Ltech/ulo/library/utils/OciImageFetcher;->access$resolveManifest(Ltech/ulo/library/utils/OciImageFetcher;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltech/ulo/library/utils/OciImageFetcher$ResolvedManifest;

    move-result-object v5

    .line 49
    iget-object v6, v1, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->$destination:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 53
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/List;

    .line 55
    invoke-virtual {v5}, Ltech/ulo/library/utils/OciImageFetcher$ResolvedManifest;->getLayers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 56
    invoke-virtual {v5}, Ltech/ulo/library/utils/OciImageFetcher$ResolvedManifest;->getLayers()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    iget-object v8, v1, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->$progressListener:Lkotlin/jvm/functions/Function1;

    iget-object v15, v1, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->this$0:Ltech/ulo/library/utils/OciImageFetcher;

    iget-object v14, v1, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->$destination:Ljava/io/File;

    .line 529
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v12, v9, 0x1

    if-gez v9, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    check-cast v10, Ltech/ulo/library/utils/OciImageFetcher$OciLayer;

    .line 58
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Downloading layer "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {v10}, Ltech/ulo/library/utils/OciImageFetcher$OciLayer;->getDigest()Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v0, v9}, Ltech/ulo/library/utils/OciImageFetcher;->access$fetchBlob(Ltech/ulo/library/utils/OciImageFetcher;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v9

    invoke-virtual {v9}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/io/InputStream;

    invoke-virtual {v9}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v16

    .line 60
    new-instance v18, Ltech/ulo/library/utils/OciImageFetcher$ProgressInputStream;

    new-instance v9, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3$ociSuccess$1$tracked$1;

    invoke-direct {v9, v8, v12, v7}, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3$ociSuccess$1$tracked$1;-><init>(Lkotlin/jvm/functions/Function1;II)V

    move-object/from16 v19, v9

    check-cast v19, Lkotlin/jvm/functions/Function1;

    move-object/from16 v9, v18

    move-object v10, v15

    move/from16 v20, v12

    move-wide/from16 v12, v16

    move-object v3, v14

    move-object/from16 v14, v19

    invoke-direct/range {v9 .. v14}, Ltech/ulo/library/utils/OciImageFetcher$ProgressInputStream;-><init>(Ltech/ulo/library/utils/OciImageFetcher;Ljava/io/InputStream;JLkotlin/jvm/functions/Function1;)V

    .line 63
    move-object/from16 v9, v18

    check-cast v9, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v10, v9

    check-cast v10, Ltech/ulo/library/utils/OciImageFetcher$ProgressInputStream;

    check-cast v10, Ljava/io/InputStream;

    invoke-static {v15, v10, v3, v6}, Ltech/ulo/library/utils/OciImageFetcher;->access$extractLayer(Ltech/ulo/library/utils/OciImageFetcher;Ljava/io/InputStream;Ljava/io/File;Ljava/util/List;)V

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x0

    :try_start_2
    invoke-static {v9, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v14, v3

    move/from16 v9, v20

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v5, v0

    :try_start_4
    invoke-static {v9, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5

    .line 65
    :cond_3
    iget-object v0, v1, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->this$0:Ltech/ulo/library/utils/OciImageFetcher;

    invoke-static {v0, v6}, Ltech/ulo/library/utils/OciImageFetcher;->access$applyDeferredDirectoryModes(Ltech/ulo/library/utils/OciImageFetcher;Ljava/util/List;)V

    .line 66
    iget-object v0, v1, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->this$0:Ltech/ulo/library/utils/OciImageFetcher;

    iget-object v3, v1, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->$destination:Ljava/io/File;

    invoke-static {v0, v3}, Ltech/ulo/library/utils/OciImageFetcher;->access$writeRuntimeFiles(Ltech/ulo/library/utils/OciImageFetcher;Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 75
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catchall_2
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ": "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    iget-object v5, v1, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->$distributionType:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "OCI failed for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), falling back to tar.gz"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OciImageFetcher"

    invoke-static {v6, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    iget-object v0, v1, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->$progressListener:Lkotlin/jvm/functions/Function1;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "OCI failed ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "), trying tar.gz"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, v1, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->$destination:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    iget-object v0, v1, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->$destination:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v3, v1, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->this$0:Ltech/ulo/library/utils/OciImageFetcher;

    .line 532
    array-length v5, v0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, v0, v6

    .line 80
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3, v7}, Ltech/ulo/library/utils/OciImageFetcher;->access$deleteRecursively(Ltech/ulo/library/utils/OciImageFetcher;Ljava/io/File;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 82
    :cond_4
    iget-object v0, v1, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->$destination:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 84
    iget-object v5, v1, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->this$0:Ltech/ulo/library/utils/OciImageFetcher;

    iget-object v6, v1, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->$distributionType:Ljava/lang/String;

    iget-object v7, v1, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->$destination:Ljava/io/File;

    iget-object v8, v1, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->$progressListener:Lkotlin/jvm/functions/Function1;

    iget-object v9, v1, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->$tarGzExtractor:Lkotlin/jvm/functions/Function2;

    move-object v10, v1

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput v4, v1, Ltech/ulo/library/utils/OciImageFetcher$fetchAndExtract$3;->label:I

    invoke-static/range {v5 .. v10}, Ltech/ulo/library/utils/OciImageFetcher;->access$downloadAndExtractTarGz(Ltech/ulo/library/utils/OciImageFetcher;Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_5

    return-object v2

    :cond_5
    :goto_2
    return-object v0
.end method
