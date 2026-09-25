.class public final Ltech/ulo/library/viewmodel/FilesystemEditViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "FilesystemEditViewModel.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0002J(\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020 2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0002J\u0008\u0010!\u001a\u00020\"H\u0014J\u0018\u0010#\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0002R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Ltech/ulo/library/viewmodel/FilesystemEditViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "ulaDatabase",
        "Ltech/ulo/library/model/repositories/UlaDatabase;",
        "(Ltech/ulo/library/model/repositories/UlaDatabase;)V",
        "backupUri",
        "Landroid/net/Uri;",
        "getBackupUri",
        "()Landroid/net/Uri;",
        "setBackupUri",
        "(Landroid/net/Uri;)V",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "importStatusLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Ltech/ulo/library/viewmodel/FilesystemImportStatus;",
        "job",
        "Lkotlinx/coroutines/CompletableJob;",
        "getImportStatusLiveData",
        "Landroidx/lifecycle/LiveData;",
        "insertFilesystem",
        "Lkotlinx/coroutines/Job;",
        "filesystem",
        "Ltech/ulo/library/model/entities/Filesystem;",
        "coroutineScope",
        "insertFilesystemFromBackup",
        "contentResolver",
        "Landroid/content/ContentResolver;",
        "filesDir",
        "Ljava/io/File;",
        "onCleared",
        "",
        "updateFilesystem",
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
.field private backupUri:Landroid/net/Uri;

.field private final importStatusLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ltech/ulo/library/viewmodel/FilesystemImportStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final job:Lkotlinx/coroutines/CompletableJob;

.field private final ulaDatabase:Ltech/ulo/library/model/repositories/UlaDatabase;


# direct methods
.method public constructor <init>(Ltech/ulo/library/model/repositories/UlaDatabase;)V
    .locals 1

    const-string v0, "ulaDatabase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel;->ulaDatabase:Ltech/ulo/library/model/repositories/UlaDatabase;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 24
    invoke-static {p1, v0, p1}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    iput-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel;->job:Lkotlinx/coroutines/CompletableJob;

    .line 33
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel;->importStatusLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic access$getImportStatusLiveData$p(Ltech/ulo/library/viewmodel/FilesystemEditViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 23
    iget-object p0, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel;->importStatusLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$getUlaDatabase$p(Ltech/ulo/library/viewmodel/FilesystemEditViewModel;)Ltech/ulo/library/model/repositories/UlaDatabase;
    .locals 0

    .line 23
    iget-object p0, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel;->ulaDatabase:Ltech/ulo/library/model/repositories/UlaDatabase;

    return-object p0
.end method

.method public static synthetic insertFilesystem$default(Ltech/ulo/library/viewmodel/FilesystemEditViewModel;Ltech/ulo/library/model/entities/Filesystem;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 41
    move-object p2, p0

    check-cast p2, Lkotlinx/coroutines/CoroutineScope;

    :cond_0
    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/viewmodel/FilesystemEditViewModel;->insertFilesystem(Ltech/ulo/library/model/entities/Filesystem;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic insertFilesystemFromBackup$default(Ltech/ulo/library/viewmodel/FilesystemEditViewModel;Landroid/content/ContentResolver;Ltech/ulo/library/model/entities/Filesystem;Ljava/io/File;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 51
    move-object p4, p0

    check-cast p4, Lkotlinx/coroutines/CoroutineScope;

    .line 47
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ltech/ulo/library/viewmodel/FilesystemEditViewModel;->insertFilesystemFromBackup(Landroid/content/ContentResolver;Ltech/ulo/library/model/entities/Filesystem;Ljava/io/File;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic updateFilesystem$default(Ltech/ulo/library/viewmodel/FilesystemEditViewModel;Ltech/ulo/library/model/entities/Filesystem;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 92
    move-object p2, p0

    check-cast p2, Lkotlinx/coroutines/CoroutineScope;

    :cond_0
    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/viewmodel/FilesystemEditViewModel;->updateFilesystem(Ltech/ulo/library/model/entities/Filesystem;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getBackupUri()Landroid/net/Uri;
    .locals 1

    .line 35
    iget-object v0, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel;->backupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 2

    .line 26
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    iget-object v1, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel;->job:Lkotlinx/coroutines/CompletableJob;

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/MainCoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final getImportStatusLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ltech/ulo/library/viewmodel/FilesystemImportStatus;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel;->importStatusLiveData:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final insertFilesystem(Ltech/ulo/library/model/entities/Filesystem;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
    .locals 8

    const-string v0, "filesystem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystem$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystem$1;-><init>(Ltech/ulo/library/viewmodel/FilesystemEditViewModel;Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final insertFilesystemFromBackup(Landroid/content/ContentResolver;Ltech/ulo/library/model/entities/Filesystem;Ljava/io/File;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
    .locals 7

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filesystem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filesDir"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$insertFilesystemFromBackup$1;-><init>(Ltech/ulo/library/viewmodel/FilesystemEditViewModel;Ltech/ulo/library/model/entities/Filesystem;Ljava/io/File;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)V

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

.method protected onCleared()V
    .locals 3

    .line 29
    iget-object v0, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel;->job:Lkotlinx/coroutines/CompletableJob;

    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 30
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    return-void
.end method

.method public final setBackupUri(Landroid/net/Uri;)V
    .locals 0

    .line 35
    iput-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel;->backupUri:Landroid/net/Uri;

    return-void
.end method

.method public final updateFilesystem(Ltech/ulo/library/model/entities/Filesystem;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
    .locals 8

    const-string v0, "filesystem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance v0, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$updateFilesystem$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ltech/ulo/library/viewmodel/FilesystemEditViewModel$updateFilesystem$1;-><init>(Ltech/ulo/library/viewmodel/FilesystemEditViewModel;Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method
