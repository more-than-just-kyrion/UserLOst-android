.class final Ltech/ulo/library/viewmodel/FilesystemListViewModel$startExport$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FilesystemListViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/viewmodel/FilesystemListViewModel;->startExport(Ljava/io/File;Landroid/net/Uri;Landroid/content/ContentResolver;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
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
    c = "tech.ulo.library.viewmodel.FilesystemListViewModel$startExport$1"
    f = "FilesystemListViewModel.kt"
    i = {}
    l = {
        0x87
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $contentResolver:Landroid/content/ContentResolver;

.field final synthetic $filesDir:Ljava/io/File;

.field final synthetic $publicExternalUri:Landroid/net/Uri;

.field label:I

.field final synthetic this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;


# direct methods
.method constructor <init>(Ltech/ulo/library/viewmodel/FilesystemListViewModel;Ljava/io/File;Landroid/net/Uri;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/viewmodel/FilesystemListViewModel;",
            "Ljava/io/File;",
            "Landroid/net/Uri;",
            "Landroid/content/ContentResolver;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ulo/library/viewmodel/FilesystemListViewModel$startExport$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$startExport$1;->this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    iput-object p2, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$startExport$1;->$filesDir:Ljava/io/File;

    iput-object p3, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$startExport$1;->$publicExternalUri:Landroid/net/Uri;

    iput-object p4, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$startExport$1;->$contentResolver:Landroid/content/ContentResolver;

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

    new-instance p1, Ltech/ulo/library/viewmodel/FilesystemListViewModel$startExport$1;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$startExport$1;->this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    iget-object v2, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$startExport$1;->$filesDir:Ljava/io/File;

    iget-object v3, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$startExport$1;->$publicExternalUri:Landroid/net/Uri;

    iget-object v4, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$startExport$1;->$contentResolver:Landroid/content/ContentResolver;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltech/ulo/library/viewmodel/FilesystemListViewModel$startExport$1;-><init>(Ltech/ulo/library/viewmodel/FilesystemListViewModel;Ljava/io/File;Landroid/net/Uri;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/viewmodel/FilesystemListViewModel$startExport$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/viewmodel/FilesystemListViewModel$startExport$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Ltech/ulo/library/viewmodel/FilesystemListViewModel$startExport$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Ltech/ulo/library/viewmodel/FilesystemListViewModel$startExport$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 116
    iget v1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$startExport$1;->label:I

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

    .line 118
    iget-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$startExport$1;->this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    invoke-static {p1}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->access$getActiveSessions(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-nez p1, :cond_2

    .line 119
    iget-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$startExport$1;->this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    invoke-static {p1}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->access$getViewState$p(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    .line 120
    new-instance v0, Ltech/ulo/library/viewmodel/FilesystemExportState$Failure;

    .line 121
    sget v2, Ltech/ulo/library/R$string;->deactivate_sessions:I

    .line 120
    invoke-direct {v0, v2, v3, v1, v3}, Ltech/ulo/library/viewmodel/FilesystemExportState$Failure;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 119
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 124
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 126
    :cond_2
    iget-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$startExport$1;->this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    invoke-static {p1}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->access$getFilesystemToBackup$p(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)Ltech/ulo/library/model/entities/Filesystem;

    move-result-object p1

    iget-object v4, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$startExport$1;->this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    invoke-static {v4}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->access$getUnselectedFilesystem$p(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)Ltech/ulo/library/model/entities/Filesystem;

    move-result-object v4

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 127
    iget-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$startExport$1;->this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    invoke-static {p1}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->access$getViewState$p(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    .line 128
    new-instance v0, Ltech/ulo/library/viewmodel/FilesystemExportState$Failure;

    .line 129
    sget v2, Ltech/ulo/library/R$string;->error_export_filesystem_not_found:I

    .line 128
    invoke-direct {v0, v2, v3, v1, v3}, Ltech/ulo/library/viewmodel/FilesystemExportState$Failure;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 127
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 132
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 135
    :cond_3
    iget-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$startExport$1;->this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$startExport$1;->$filesDir:Ljava/io/File;

    iget-object v3, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$startExport$1;->$publicExternalUri:Landroid/net/Uri;

    iget-object v4, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$startExport$1;->$contentResolver:Landroid/content/ContentResolver;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v2, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$startExport$1;->label:I

    invoke-static {p1, v1, v3, v4, v5}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->access$compressFilesystemAndExportToStorage(Ltech/ulo/library/viewmodel/FilesystemListViewModel;Ljava/io/File;Landroid/net/Uri;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 138
    :cond_4
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
