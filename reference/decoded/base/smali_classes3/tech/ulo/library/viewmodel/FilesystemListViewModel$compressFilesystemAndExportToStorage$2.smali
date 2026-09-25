.class final Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FilesystemListViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/viewmodel/FilesystemListViewModel;->compressFilesystemAndExportToStorage(Ljava/io/File;Landroid/net/Uri;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "tech.ulo.library.viewmodel.FilesystemListViewModel$compressFilesystemAndExportToStorage$2"
    f = "FilesystemListViewModel.kt"
    i = {
        0x0
    }
    l = {
        0x9a
    }
    m = "invokeSuspend"
    n = {
        "localBackup"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $contentResolver:Landroid/content/ContentResolver;

.field final synthetic $filesDir:Ljava/io/File;

.field final synthetic $publicExternalUri:Landroid/net/Uri;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;


# direct methods
.method constructor <init>(Ltech/ulo/library/viewmodel/FilesystemListViewModel;Ljava/io/File;Landroid/content/ContentResolver;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/viewmodel/FilesystemListViewModel;",
            "Ljava/io/File;",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;->this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    iput-object p2, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;->$filesDir:Ljava/io/File;

    iput-object p3, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;->$contentResolver:Landroid/content/ContentResolver;

    iput-object p4, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;->$publicExternalUri:Landroid/net/Uri;

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

    new-instance p1, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;->this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    iget-object v2, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;->$filesDir:Ljava/io/File;

    iget-object v3, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;->$contentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;->$publicExternalUri:Landroid/net/Uri;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;-><init>(Ltech/ulo/library/viewmodel/FilesystemListViewModel;Ljava/io/File;Landroid/content/ContentResolver;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 145
    iget v1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 146
    iget-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;->this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    invoke-static {p1}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->access$getViewState$p(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    .line 147
    new-instance v1, Ltech/ulo/library/viewmodel/FilesystemExportState$Update;

    .line 148
    const-string v3, "Starting export"

    .line 147
    invoke-direct {v1, v3}, Ltech/ulo/library/viewmodel/FilesystemExportState$Update;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 151
    iget-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;->this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    invoke-static {p1}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->access$getFilesystemToBackup$p(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)Ltech/ulo/library/model/entities/Filesystem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->getFilesystemBackupName(Ltech/ulo/library/model/entities/Filesystem;)Ljava/lang/String;

    move-result-object p1

    .line 152
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;->$filesDir:Ljava/io/File;

    invoke-direct {v1, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;->this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    invoke-static {p1}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->access$getFilesystemManager$p(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)Ltech/ulo/library/utils/FilesystemManager;

    move-result-object p1

    iget-object v3, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;->this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    invoke-static {v3}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->access$getFilesystemToBackup$p(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)Ltech/ulo/library/model/entities/Filesystem;

    move-result-object v3

    iget-object v4, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;->this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    invoke-static {v4}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->access$getExportUpdateListener$p(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)Lkotlin/jvm/functions/Function1;

    move-result-object v4

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;->label:I

    invoke-virtual {p1, v3, v1, v4, v5}, Ltech/ulo/library/utils/FilesystemManager;->compressFilesystem(Ltech/ulo/library/model/entities/Filesystem;Ljava/io/File;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v1

    .line 145
    :goto_0
    check-cast p1, Ltech/ulo/library/utils/ExecutionResult;

    .line 155
    iget-object v1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;->this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    invoke-static {v1, v0, p1}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->access$localBackupFailed(Ltech/ulo/library/viewmodel/FilesystemListViewModel;Ljava/io/File;Ltech/ulo/library/utils/ExecutionResult;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_3
    const/4 p1, 0x2

    const/4 v1, 0x0

    .line 157
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .line 158
    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v2, Ljava/io/Closeable;

    iget-object v3, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;->$contentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;->$publicExternalUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v5, v2

    check-cast v5, Ljava/io/FileInputStream;

    .line 159
    const-string v6, "w"

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v3

    if-eqz v3, :cond_4

    check-cast v3, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v4, v3

    check-cast v4, Ljava/io/OutputStream;

    .line 160
    check-cast v5, Ljava/io/InputStream;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v6, 0x0

    invoke-static {v5, v4, v6, p1, v1}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    :try_start_3
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 158
    :cond_4
    :goto_1
    :try_start_6
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 173
    iget-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;->this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    invoke-static {p1}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->access$getUnselectedFilesystem$p(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)Ltech/ulo/library/model/entities/Filesystem;

    move-result-object v1

    invoke-static {p1, v1}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->access$setFilesystemToBackup$p(Ltech/ulo/library/viewmodel/FilesystemListViewModel;Ltech/ulo/library/model/entities/Filesystem;)V

    .line 174
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 175
    iget-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;->this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    invoke-static {p1}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->access$getViewState$p(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Ltech/ulo/library/viewmodel/FilesystemExportState$Success;->INSTANCE:Ltech/ulo/library/viewmodel/FilesystemExportState$Success;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 176
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_2
    move-exception v0

    .line 158
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v3

    :try_start_8
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 164
    :catch_0
    iget-object v0, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;->this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    invoke-static {v0}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->access$getUnselectedFilesystem$p(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)Ltech/ulo/library/model/entities/Filesystem;

    move-result-object v2

    invoke-static {v0, v2}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->access$setFilesystemToBackup$p(Ltech/ulo/library/viewmodel/FilesystemListViewModel;Ltech/ulo/library/model/entities/Filesystem;)V

    .line 165
    iget-object v0, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;->this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    invoke-static {v0}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->access$getViewState$p(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    .line 166
    new-instance v2, Ltech/ulo/library/viewmodel/FilesystemExportState$Failure;

    .line 167
    sget v3, Ltech/ulo/library/R$string;->error_export_copy_public_external_failure:I

    .line 166
    invoke-direct {v2, v3, v1, p1, v1}, Ltech/ulo/library/viewmodel/FilesystemExportState$Failure;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 165
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 170
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
