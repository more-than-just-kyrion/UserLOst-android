.class final Ltech/ulo/library/utils/FilesystemManager$compressFilesystem$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FilesystemManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/utils/FilesystemManager;->compressFilesystem(Ltech/ulo/library/model/entities/Filesystem;Ljava/io/File;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ltech/ulo/library/utils/ExecutionResult;",
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
        "Ltech/ulo/library/utils/ExecutionResult;",
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
    c = "tech.ulo.library.utils.FilesystemManager$compressFilesystem$2"
    f = "FilesystemManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $filesystem:Ltech/ulo/library/model/entities/Filesystem;

.field final synthetic $listener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scopedExternalDestination:Ljava/io/File;

.field label:I

.field final synthetic this$0:Ltech/ulo/library/utils/FilesystemManager;


# direct methods
.method constructor <init>(Ltech/ulo/library/model/entities/Filesystem;Ljava/io/File;Ltech/ulo/library/utils/FilesystemManager;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/Filesystem;",
            "Ljava/io/File;",
            "Ltech/ulo/library/utils/FilesystemManager;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ulo/library/utils/FilesystemManager$compressFilesystem$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/ulo/library/utils/FilesystemManager$compressFilesystem$2;->$filesystem:Ltech/ulo/library/model/entities/Filesystem;

    iput-object p2, p0, Ltech/ulo/library/utils/FilesystemManager$compressFilesystem$2;->$scopedExternalDestination:Ljava/io/File;

    iput-object p3, p0, Ltech/ulo/library/utils/FilesystemManager$compressFilesystem$2;->this$0:Ltech/ulo/library/utils/FilesystemManager;

    iput-object p4, p0, Ltech/ulo/library/utils/FilesystemManager$compressFilesystem$2;->$listener:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Ltech/ulo/library/utils/FilesystemManager$compressFilesystem$2;

    iget-object v1, p0, Ltech/ulo/library/utils/FilesystemManager$compressFilesystem$2;->$filesystem:Ltech/ulo/library/model/entities/Filesystem;

    iget-object v2, p0, Ltech/ulo/library/utils/FilesystemManager$compressFilesystem$2;->$scopedExternalDestination:Ljava/io/File;

    iget-object v3, p0, Ltech/ulo/library/utils/FilesystemManager$compressFilesystem$2;->this$0:Ltech/ulo/library/utils/FilesystemManager;

    iget-object v4, p0, Ltech/ulo/library/utils/FilesystemManager$compressFilesystem$2;->$listener:Lkotlin/jvm/functions/Function1;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltech/ulo/library/utils/FilesystemManager$compressFilesystem$2;-><init>(Ltech/ulo/library/model/entities/Filesystem;Ljava/io/File;Ltech/ulo/library/utils/FilesystemManager;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/utils/FilesystemManager$compressFilesystem$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ltech/ulo/library/utils/ExecutionResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/utils/FilesystemManager$compressFilesystem$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Ltech/ulo/library/utils/FilesystemManager$compressFilesystem$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Ltech/ulo/library/utils/FilesystemManager$compressFilesystem$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 80
    iget v0, p0, Ltech/ulo/library/utils/FilesystemManager$compressFilesystem$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 81
    iget-object p1, p0, Ltech/ulo/library/utils/FilesystemManager$compressFilesystem$2;->$filesystem:Ltech/ulo/library/model/entities/Filesystem;

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Filesystem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 83
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 84
    move-object p1, v6

    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Ltech/ulo/library/utils/FilesystemManager$compressFilesystem$2;->$scopedExternalDestination:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAbsolutePath(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "TAR_PATH"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v0, "EXCLUDE_SUPPORT"

    const-string v1, "--exclude support"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object p1, p0, Ltech/ulo/library/utils/FilesystemManager$compressFilesystem$2;->this$0:Ltech/ulo/library/utils/FilesystemManager;

    invoke-static {p1}, Ltech/ulo/library/utils/FilesystemManager;->access$getBusyboxExecutor$p(Ltech/ulo/library/utils/FilesystemManager;)Ltech/ulo/library/utils/BusyboxExecutor;

    move-result-object v2

    .line 95
    iget-object v7, p0, Ltech/ulo/library/utils/FilesystemManager$compressFilesystem$2;->$listener:Lkotlin/jvm/functions/Function1;

    const/16 v9, 0x20

    const/4 v10, 0x0

    .line 90
    const-string v3, "/support/common/compressFilesystem.sh"

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Ltech/ulo/library/utils/BusyboxExecutor;->executeProotCommand$default(Ltech/ulo/library/utils/BusyboxExecutor;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ltech/ulo/library/utils/ExecutionResult;

    move-result-object p1

    return-object p1

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
