.class final Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FilesystemEditViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "tech.ulo.library.viewmodel.FilesystemEditViewModel$insertFilesystemFromBackup$1$1"
    f = "FilesystemEditViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $contentResolver:Landroid/content/ContentResolver;

.field final synthetic $filesDir:Ljava/io/File;

.field final synthetic $filesystem:Ltech/ulo/library/model/entities/Filesystem;

.field label:I

.field final synthetic this$0:Ltech/ulo/library/viewmodel/FilesystemEditViewModel;


# direct methods
.method constructor <init>(Ltech/ulo/library/viewmodel/FilesystemEditViewModel;Ltech/ulo/library/model/entities/Filesystem;Ljava/io/File;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/viewmodel/FilesystemEditViewModel;",
            "Ltech/ulo/library/model/entities/Filesystem;",
            "Ljava/io/File;",
            "Landroid/content/ContentResolver;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;->this$0:Ltech/ulo/library/viewmodel/FilesystemEditViewModel;

    iput-object p2, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;->$filesystem:Ltech/ulo/library/model/entities/Filesystem;

    iput-object p3, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;->$filesDir:Ljava/io/File;

    iput-object p4, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;->$contentResolver:Landroid/content/ContentResolver;

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

    new-instance p1, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;->this$0:Ltech/ulo/library/viewmodel/FilesystemEditViewModel;

    iget-object v2, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;->$filesystem:Ltech/ulo/library/model/entities/Filesystem;

    iget-object v3, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;->$filesDir:Ljava/io/File;

    iget-object v4, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;->$contentResolver:Landroid/content/ContentResolver;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;-><init>(Ltech/ulo/library/viewmodel/FilesystemEditViewModel;Ltech/ulo/library/model/entities/Filesystem;Ljava/io/File;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 53
    iget v0, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    iget-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;->this$0:Ltech/ulo/library/viewmodel/FilesystemEditViewModel;

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/FilesystemEditViewModel;->getBackupUri()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    .line 55
    iget-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;->this$0:Ltech/ulo/library/viewmodel/FilesystemEditViewModel;

    invoke-static {p1}, Ltech/ulo/library/viewmodel/FilesystemEditViewModel;->access$getImportStatusLiveData$p(Ltech/ulo/library/viewmodel/FilesystemEditViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Ltech/ulo/library/viewmodel/UriUnselected;->INSTANCE:Ltech/ulo/library/viewmodel/UriUnselected;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 56
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 59
    :cond_0
    iget-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;->$filesystem:Ltech/ulo/library/model/entities/Filesystem;

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Filesystem;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "ENGLISH"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;->$filesystem:Ltech/ulo/library/model/entities/Filesystem;

    invoke-virtual {p1, v0}, Ltech/ulo/library/model/entities/Filesystem;->setAppsFilesystem(Z)V

    .line 60
    :cond_1
    iget-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;->$filesystem:Ltech/ulo/library/model/entities/Filesystem;

    invoke-virtual {p1, v0}, Ltech/ulo/library/model/entities/Filesystem;->setCreatedFromBackup(Z)V

    .line 61
    iget-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;->$filesystem:Ltech/ulo/library/model/entities/Filesystem;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ltech/ulo/library/model/entities/Filesystem;->setProtected(Z)V

    .line 62
    iget-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;->this$0:Ltech/ulo/library/viewmodel/FilesystemEditViewModel;

    invoke-static {p1}, Ltech/ulo/library/viewmodel/FilesystemEditViewModel;->access$getUlaDatabase$p(Ltech/ulo/library/viewmodel/FilesystemEditViewModel;)Ltech/ulo/library/model/repositories/UlaDatabase;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/model/repositories/UlaDatabase;->filesystemDao()Ltech/ulo/library/model/daos/FilesystemDao;

    move-result-object p1

    iget-object v1, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;->$filesystem:Ltech/ulo/library/model/entities/Filesystem;

    invoke-interface {p1, v1}, Ltech/ulo/library/model/daos/FilesystemDao;->insertFilesystem(Ltech/ulo/library/model/entities/Filesystem;)J

    move-result-wide v1

    const/4 p1, 0x0

    .line 65
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;->$filesDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/support"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 67
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/rootfs.tar.gz"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    iget-object v3, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;->$contentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;->this$0:Ltech/ulo/library/viewmodel/FilesystemEditViewModel;

    invoke-virtual {v5}, Ltech/ulo/library/viewmodel/FilesystemEditViewModel;->getBackupUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_2

    .line 71
    iget-object v0, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;->this$0:Ltech/ulo/library/viewmodel/FilesystemEditViewModel;

    invoke-static {v0}, Ltech/ulo/library/viewmodel/FilesystemEditViewModel;->access$getUlaDatabase$p(Ltech/ulo/library/viewmodel/FilesystemEditViewModel;)Ltech/ulo/library/model/repositories/UlaDatabase;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/model/repositories/UlaDatabase;->filesystemDao()Ltech/ulo/library/model/daos/FilesystemDao;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Ltech/ulo/library/model/daos/FilesystemDao;->deleteFilesystemById(J)V

    .line 72
    iget-object v0, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;->this$0:Ltech/ulo/library/viewmodel/FilesystemEditViewModel;

    invoke-static {v0}, Ltech/ulo/library/viewmodel/FilesystemEditViewModel;->access$getImportStatusLiveData$p(Ltech/ulo/library/viewmodel/FilesystemEditViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v3, Ltech/ulo/library/viewmodel/ImportFailure;

    const-string v4, "Could not open input stream"

    invoke-direct {v3, v4}, Ltech/ulo/library/viewmodel/ImportFailure;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 73
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 76
    :cond_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 77
    check-cast v3, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v4, v3

    check-cast v4, Ljava/io/InputStream;

    .line 78
    check-cast v5, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v6, v5

    check-cast v6, Ljava/io/FileOutputStream;

    .line 79
    check-cast v6, Ljava/io/OutputStream;

    const/4 v7, 0x2

    invoke-static {v4, v6, v0, v7, p1}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :try_start_3
    invoke-static {v5, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 77
    :try_start_4
    invoke-static {v3, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 78
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-static {v5, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    .line 77
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v4

    :try_start_8
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .line 83
    iget-object v3, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;->this$0:Ltech/ulo/library/viewmodel/FilesystemEditViewModel;

    invoke-static {v3}, Ltech/ulo/library/viewmodel/FilesystemEditViewModel;->access$getUlaDatabase$p(Ltech/ulo/library/viewmodel/FilesystemEditViewModel;)Ltech/ulo/library/model/repositories/UlaDatabase;

    move-result-object v3

    invoke-virtual {v3}, Ltech/ulo/library/model/repositories/UlaDatabase;->filesystemDao()Ltech/ulo/library/model/daos/FilesystemDao;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Ltech/ulo/library/model/daos/FilesystemDao;->deleteFilesystemById(J)V

    .line 84
    iget-object v1, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;->this$0:Ltech/ulo/library/viewmodel/FilesystemEditViewModel;

    invoke-static {v1}, Ltech/ulo/library/viewmodel/FilesystemEditViewModel;->access$getImportStatusLiveData$p(Ltech/ulo/library/viewmodel/FilesystemEditViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v2, Ltech/ulo/library/viewmodel/ImportFailure;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ltech/ulo/library/viewmodel/ImportFailure;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 87
    :goto_0
    iget-object v0, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;->this$0:Ltech/ulo/library/viewmodel/FilesystemEditViewModel;

    invoke-virtual {v0, p1}, Ltech/ulo/library/viewmodel/FilesystemEditViewModel;->setBackupUri(Landroid/net/Uri;)V

    .line 88
    iget-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1$1;->this$0:Ltech/ulo/library/viewmodel/FilesystemEditViewModel;

    invoke-static {p1}, Ltech/ulo/library/viewmodel/FilesystemEditViewModel;->access$getImportStatusLiveData$p(Ltech/ulo/library/viewmodel/FilesystemEditViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Ltech/ulo/library/viewmodel/ImportSuccess;->INSTANCE:Ltech/ulo/library/viewmodel/ImportSuccess;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 89
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 53
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
