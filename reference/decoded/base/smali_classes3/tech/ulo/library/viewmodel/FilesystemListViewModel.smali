.class public final Ltech/ulo/library/viewmodel/FilesystemListViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "FilesystemListViewModel.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ&\u0010%\u001a\u00020\u00192\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0082@\u00a2\u0006\u0002\u0010,J\u0018\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0008\u0008\u0002\u00101\u001a\u00020\u0002J\u0012\u00102\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c0\u000bJ\u0012\u00103\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0\u000c0\u000bJ\u000e\u00104\u001a\u00020\u00182\u0006\u00105\u001a\u00020\u001bJ\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020$0\u000bJ\u0018\u00107\u001a\u0002082\u0006\u00109\u001a\u00020\'2\u0006\u0010:\u001a\u00020;H\u0002J\u0008\u0010<\u001a\u00020\u0019H\u0014J\u000e\u0010=\u001a\u00020\u00192\u0006\u00105\u001a\u00020\u001bJ(\u0010>\u001a\u00020.2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0008\u0008\u0002\u00101\u001a\u00020\u0002R\'\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c0\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\u00138VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00190\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\'\u0010\u001c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0\u000c0\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u0011\u001a\u0004\u0008\u001d\u0010\u000fR\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020$0#X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006?"
    }
    d2 = {
        "Ltech/ulo/library/viewmodel/FilesystemListViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "filesystemDao",
        "Ltech/ulo/library/model/daos/FilesystemDao;",
        "sessionDao",
        "Ltech/ulo/library/model/daos/SessionDao;",
        "filesystemManager",
        "Ltech/ulo/library/utils/FilesystemManager;",
        "(Ltech/ulo/library/model/daos/FilesystemDao;Ltech/ulo/library/model/daos/SessionDao;Ltech/ulo/library/utils/FilesystemManager;)V",
        "activeSessions",
        "Landroidx/lifecycle/LiveData;",
        "",
        "Ltech/ulo/library/model/entities/Session;",
        "getActiveSessions",
        "()Landroidx/lifecycle/LiveData;",
        "activeSessions$delegate",
        "Lkotlin/Lazy;",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "exportUpdateListener",
        "Lkotlin/Function1;",
        "",
        "",
        "filesystemToBackup",
        "Ltech/ulo/library/model/entities/Filesystem;",
        "filesystems",
        "getFilesystems",
        "filesystems$delegate",
        "job",
        "Lkotlinx/coroutines/CompletableJob;",
        "unselectedFilesystem",
        "viewState",
        "Landroidx/lifecycle/MutableLiveData;",
        "Ltech/ulo/library/viewmodel/FilesystemListViewState;",
        "compressFilesystemAndExportToStorage",
        "filesDir",
        "Ljava/io/File;",
        "publicExternalUri",
        "Landroid/net/Uri;",
        "contentResolver",
        "Landroid/content/ContentResolver;",
        "(Ljava/io/File;Landroid/net/Uri;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteFilesystemById",
        "Lkotlinx/coroutines/Job;",
        "id",
        "",
        "coroutineScope",
        "getAllActiveSessions",
        "getAllFilesystems",
        "getFilesystemBackupName",
        "filesystem",
        "getViewState",
        "localBackupFailed",
        "",
        "localBackup",
        "result",
        "Ltech/ulo/library/utils/ExecutionResult;",
        "onCleared",
        "setFilesystemToBackup",
        "startExport",
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
.field private final activeSessions$delegate:Lkotlin/Lazy;

.field private final exportUpdateListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final filesystemDao:Ltech/ulo/library/model/daos/FilesystemDao;

.field private final filesystemManager:Ltech/ulo/library/utils/FilesystemManager;

.field private filesystemToBackup:Ltech/ulo/library/model/entities/Filesystem;

.field private final filesystems$delegate:Lkotlin/Lazy;

.field private final job:Lkotlinx/coroutines/CompletableJob;

.field private final sessionDao:Ltech/ulo/library/model/daos/SessionDao;

.field private final unselectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

.field private final viewState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ltech/ulo/library/viewmodel/FilesystemListViewState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltech/ulo/library/model/daos/FilesystemDao;Ltech/ulo/library/model/daos/SessionDao;Ltech/ulo/library/utils/FilesystemManager;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "filesystemDao"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "sessionDao"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "filesystemManager"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct/range {p0 .. p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 38
    iput-object v1, v0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->filesystemDao:Ltech/ulo/library/model/daos/FilesystemDao;

    .line 39
    iput-object v2, v0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->sessionDao:Ltech/ulo/library/model/daos/SessionDao;

    .line 40
    iput-object v3, v0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->filesystemManager:Ltech/ulo/library/utils/FilesystemManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 43
    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    iput-object v1, v0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->job:Lkotlinx/coroutines/CompletableJob;

    .line 52
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, v0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->viewState:Landroidx/lifecycle/MutableLiveData;

    .line 53
    new-instance v1, Ltech/ulo/library/viewmodel/FilesystemListViewModel$exportUpdateListener$1;

    invoke-direct {v1, v0}, Ltech/ulo/library/viewmodel/FilesystemListViewModel$exportUpdateListener$1;-><init>(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iput-object v1, v0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->exportUpdateListener:Lkotlin/jvm/functions/Function1;

    .line 61
    new-instance v1, Ltech/ulo/library/model/entities/Filesystem;

    move-object v2, v1

    const/16 v19, 0x7ffc

    const/16 v20, 0x0

    const-wide/16 v3, -0x1

    const-string v5, "UNSELECTED"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v2 .. v20}, Ltech/ulo/library/model/entities/Filesystem;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZLtech/ulo/library/model/entities/ExecutionType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->unselectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

    .line 62
    iput-object v1, v0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->filesystemToBackup:Ltech/ulo/library/model/entities/Filesystem;

    .line 72
    new-instance v1, Ltech/ulo/library/viewmodel/FilesystemListViewModel$filesystems$2;

    invoke-direct {v1, v0}, Ltech/ulo/library/viewmodel/FilesystemListViewModel$filesystems$2;-><init>(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->filesystems$delegate:Lkotlin/Lazy;

    .line 80
    new-instance v1, Ltech/ulo/library/viewmodel/FilesystemListViewModel$activeSessions$2;

    invoke-direct {v1, v0}, Ltech/ulo/library/viewmodel/FilesystemListViewModel$activeSessions$2;-><init>(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->activeSessions$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$compressFilesystemAndExportToStorage(Ltech/ulo/library/viewmodel/FilesystemListViewModel;Ljava/io/File;Landroid/net/Uri;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->compressFilesystemAndExportToStorage(Ljava/io/File;Landroid/net/Uri;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getActiveSessions(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)Landroidx/lifecycle/LiveData;
    .locals 0

    .line 37
    invoke-direct {p0}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->getActiveSessions()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getExportUpdateListener$p(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 37
    iget-object p0, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->exportUpdateListener:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getFilesystemDao$p(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)Ltech/ulo/library/model/daos/FilesystemDao;
    .locals 0

    .line 37
    iget-object p0, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->filesystemDao:Ltech/ulo/library/model/daos/FilesystemDao;

    return-object p0
.end method

.method public static final synthetic access$getFilesystemManager$p(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)Ltech/ulo/library/utils/FilesystemManager;
    .locals 0

    .line 37
    iget-object p0, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->filesystemManager:Ltech/ulo/library/utils/FilesystemManager;

    return-object p0
.end method

.method public static final synthetic access$getFilesystemToBackup$p(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)Ltech/ulo/library/model/entities/Filesystem;
    .locals 0

    .line 37
    iget-object p0, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->filesystemToBackup:Ltech/ulo/library/model/entities/Filesystem;

    return-object p0
.end method

.method public static final synthetic access$getSessionDao$p(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)Ltech/ulo/library/model/daos/SessionDao;
    .locals 0

    .line 37
    iget-object p0, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->sessionDao:Ltech/ulo/library/model/daos/SessionDao;

    return-object p0
.end method

.method public static final synthetic access$getUnselectedFilesystem$p(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)Ltech/ulo/library/model/entities/Filesystem;
    .locals 0

    .line 37
    iget-object p0, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->unselectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

    return-object p0
.end method

.method public static final synthetic access$getViewState$p(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 37
    iget-object p0, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->viewState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$localBackupFailed(Ltech/ulo/library/viewmodel/FilesystemListViewModel;Ljava/io/File;Ltech/ulo/library/utils/ExecutionResult;)Z
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->localBackupFailed(Ljava/io/File;Ltech/ulo/library/utils/ExecutionResult;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setFilesystemToBackup$p(Ltech/ulo/library/viewmodel/FilesystemListViewModel;Ltech/ulo/library/model/entities/Filesystem;)V
    .locals 0

    .line 37
    iput-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->filesystemToBackup:Ltech/ulo/library/model/entities/Filesystem;

    return-void
.end method

.method private final compressFilesystemAndExportToStorage(Ljava/io/File;Landroid/net/Uri;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Landroid/net/Uri;",
            "Landroid/content/ContentResolver;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 145
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v7, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Ltech/ulo/library/viewmodel/FilesystemListViewModel$compressFilesystemAndExportToStorage$2;-><init>(Ltech/ulo/library/viewmodel/FilesystemListViewModel;Ljava/io/File;Landroid/content/ContentResolver;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v7, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public static synthetic deleteFilesystemById$default(Ltech/ulo/library/viewmodel/FilesystemListViewModel;JLkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 88
    move-object p3, p0

    check-cast p3, Lkotlinx/coroutines/CoroutineScope;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->deleteFilesystemById(JLkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method private final getActiveSessions()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Session;",
            ">;>;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->activeSessions$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method private final getFilesystems()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Filesystem;",
            ">;>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->filesystems$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method private final localBackupFailed(Ljava/io/File;Ltech/ulo/library/utils/ExecutionResult;)Z
    .locals 4

    .line 180
    instance-of v0, p2, Ltech/ulo/library/utils/FailedExecution;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 181
    iget-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->unselectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

    iput-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->filesystemToBackup:Ltech/ulo/library/model/entities/Filesystem;

    .line 182
    iget-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->viewState:Landroidx/lifecycle/MutableLiveData;

    .line 183
    new-instance v0, Ltech/ulo/library/viewmodel/FilesystemExportState$Failure;

    .line 184
    sget v2, Ltech/ulo/library/R$string;->error_export_execution_failure:I

    .line 185
    check-cast p2, Ltech/ulo/library/utils/FailedExecution;

    invoke-virtual {p2}, Ltech/ulo/library/utils/FailedExecution;->getReason()Ljava/lang/String;

    move-result-object p2

    .line 183
    invoke-direct {v0, v2, p2}, Ltech/ulo/library/viewmodel/FilesystemExportState$Failure;-><init>(ILjava/lang/String;)V

    .line 182
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return v1

    .line 191
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 192
    :cond_2
    :goto_0
    iget-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->unselectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

    iput-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->filesystemToBackup:Ltech/ulo/library/model/entities/Filesystem;

    .line 193
    iget-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->viewState:Landroidx/lifecycle/MutableLiveData;

    .line 194
    new-instance p2, Ltech/ulo/library/viewmodel/FilesystemExportState$Failure;

    .line 195
    sget v0, Ltech/ulo/library/R$string;->error_export_local_failure:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 194
    invoke-direct {p2, v0, v3, v2, v3}, Ltech/ulo/library/viewmodel/FilesystemExportState$Failure;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 193
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return v1
.end method

.method public static synthetic startExport$default(Ltech/ulo/library/viewmodel/FilesystemListViewModel;Ljava/io/File;Landroid/net/Uri;Landroid/content/ContentResolver;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 115
    move-object p4, p0

    check-cast p4, Lkotlinx/coroutines/CoroutineScope;

    .line 111
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->startExport(Ljava/io/File;Landroid/net/Uri;Landroid/content/ContentResolver;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final deleteFilesystemById(JLkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
    .locals 8

    const-string v0, "coroutineScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance v0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$deleteFilesystemById$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ltech/ulo/library/viewmodel/FilesystemListViewModel$deleteFilesystemById$1;-><init>(Ltech/ulo/library/viewmodel/FilesystemListViewModel;JLkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p3

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final getAllActiveSessions()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Session;",
            ">;>;"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->getActiveSessions()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public final getAllFilesystems()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Filesystem;",
            ">;>;"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->getFilesystems()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 2

    .line 45
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    iget-object v1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->job:Lkotlinx/coroutines/CompletableJob;

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/MainCoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final getFilesystemBackupName(Ltech/ulo/library/model/entities/Filesystem;)Ljava/lang/String;
    .locals 3

    const-string v0, "filesystem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Filesystem;->getDistributionType()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Filesystem;->getFlavor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Filesystem;->getFlavor()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    :cond_0
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Filesystem;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-rootfs.tar.gz"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getViewState()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ltech/ulo/library/viewmodel/FilesystemListViewState;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->viewState:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method protected onCleared()V
    .locals 3

    .line 48
    iget-object v0, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->job:Lkotlinx/coroutines/CompletableJob;

    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 49
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    return-void
.end method

.method public final setFilesystemToBackup(Ltech/ulo/library/model/entities/Filesystem;)V
    .locals 1

    const-string v0, "filesystem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->filesystemToBackup:Ltech/ulo/library/model/entities/Filesystem;

    return-void
.end method

.method public final startExport(Ljava/io/File;Landroid/net/Uri;Landroid/content/ContentResolver;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
    .locals 7

    const-string v0, "filesDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publicExternalUri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    new-instance v0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$startExport$1;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Ltech/ulo/library/viewmodel/FilesystemListViewModel$startExport$1;-><init>(Ltech/ulo/library/viewmodel/FilesystemListViewModel;Ljava/io/File;Landroid/net/Uri;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p4

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    return-object v0
.end method
