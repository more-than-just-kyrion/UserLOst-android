.class public final Ltech/ulo/library/model/state/SessionStartupFsm;
.super Ljava/lang/Object;
.source "SessionStartupFsm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSessionStartupFsm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SessionStartupFsm.kt\ntech/ulo/library/model/state/SessionStartupFsm\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,384:1\n1#2:385\n1747#3,3:386\n*S KotlinDebug\n*F\n+ 1 SessionStartupFsm.kt\ntech/ulo/library/model/state/SessionStartupFsm\n*L\n199#1:386,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ac\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010!\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020\u0011H\u0002J\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020 0\u0013J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'H\u0002J\u0010\u0010(\u001a\u00020%2\u0006\u0010)\u001a\u00020*H\u0002J\u000e\u0010+\u001a\u00020%H\u0082@\u00a2\u0006\u0002\u0010,J\u0016\u0010-\u001a\u00020%2\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020/0\u0014H\u0002J\u0016\u00100\u001a\u00020%2\u0006\u00101\u001a\u00020\u001aH\u0082@\u00a2\u0006\u0002\u00102J\u000e\u00103\u001a\u00020%H\u0082@\u00a2\u0006\u0002\u0010,J\u000e\u00104\u001a\u00020%H\u0082@\u00a2\u0006\u0002\u0010,J\u000e\u00105\u001a\u00020%H\u0082@\u00a2\u0006\u0002\u0010,J\u000e\u00106\u001a\u00020%H\u0082@\u00a2\u0006\u0002\u0010,J$\u00107\u001a\u00020%2\u0006\u00101\u001a\u00020\u001a2\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u0002090\u0014H\u0082@\u00a2\u0006\u0002\u0010:J\u0016\u0010;\u001a\u00020%2\u0006\u00101\u001a\u00020\u001aH\u0082@\u00a2\u0006\u0002\u00102J\u0010\u0010<\u001a\u00020%2\u0006\u0010\"\u001a\u00020\u0011H\u0002J\u0008\u0010=\u001a\u00020%H\u0002J\u0008\u0010>\u001a\u00020%H\u0002J\u0008\u0010?\u001a\u00020%H\u0002J\u0016\u0010@\u001a\u00020%2\u0006\u00101\u001a\u00020\u001aH\u0082@\u00a2\u0006\u0002\u00102J\u0006\u0010A\u001a\u00020BJ\u0015\u0010C\u001a\u00020%2\u0006\u0010D\u001a\u00020 H\u0000\u00a2\u0006\u0002\u0008EJ\u0016\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020KJ\u000e\u0010L\u001a\u00020B2\u0006\u0010H\u001a\u00020IR\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00140\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0\u00140\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020 0\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006M"
    }
    d2 = {
        "Ltech/ulo/library/model/state/SessionStartupFsm;",
        "",
        "ulaDatabase",
        "Ltech/ulo/library/model/repositories/UlaDatabase;",
        "assetRepository",
        "Ltech/ulo/library/model/repositories/AssetRepository;",
        "filesystemManager",
        "Ltech/ulo/library/utils/FilesystemManager;",
        "assetDownloader",
        "Ltech/ulo/library/utils/AssetDownloader;",
        "storageCalculator",
        "Ltech/ulo/library/utils/StorageCalculator;",
        "logger",
        "Ltech/ulo/library/utils/Logger;",
        "(Ltech/ulo/library/model/repositories/UlaDatabase;Ltech/ulo/library/model/repositories/AssetRepository;Ltech/ulo/library/utils/FilesystemManager;Ltech/ulo/library/utils/AssetDownloader;Ltech/ulo/library/utils/StorageCalculator;Ltech/ulo/library/utils/Logger;)V",
        "activeSessions",
        "",
        "Ltech/ulo/library/model/entities/Session;",
        "activeSessionsLiveData",
        "Landroidx/lifecycle/LiveData;",
        "",
        "className",
        "",
        "filesystemDao",
        "Ltech/ulo/library/model/daos/FilesystemDao;",
        "filesystems",
        "Ltech/ulo/library/model/entities/Filesystem;",
        "filesystemsLiveData",
        "sessionDao",
        "Ltech/ulo/library/model/daos/SessionDao;",
        "state",
        "Landroidx/lifecycle/MutableLiveData;",
        "Ltech/ulo/library/model/state/SessionStartupState;",
        "findFilesystemForSession",
        "session",
        "getState",
        "handleAssetDownloadState",
        "",
        "assetDownloadState",
        "Ltech/ulo/library/utils/AssetDownloadState;",
        "handleAssetsDownloadComplete",
        "downloadId",
        "",
        "handleCopyDownloadsToLocalDirectories",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "handleDownloadAssets",
        "downloadRequirements",
        "Ltech/ulo/library/model/repositories/DownloadMetadata;",
        "handleExtractFilesystem",
        "filesystem",
        "(Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "handleExtractionComplete",
        "handleExtractionFailed",
        "handleFilesystemExtractionComplete",
        "handleFilesystemExtractionFailed",
        "handleGenerateDownloads",
        "assetList",
        "Ltech/ulo/library/model/entities/Asset;",
        "(Ltech/ulo/library/model/entities/Filesystem;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "handleRetrieveAssetLists",
        "handleSessionSelected",
        "handleSyncDownloadState",
        "handleVerifyAvailableStorage",
        "handleVerifyAvailableStorageComplete",
        "handleVerifyFilesystemAssets",
        "sessionsAreActive",
        "",
        "setState",
        "newState",
        "setState$UserLOstLibrary_UserLOstRelease",
        "submitEvent",
        "Lkotlinx/coroutines/Job;",
        "event",
        "Ltech/ulo/library/model/state/SessionStartupEvent;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "transitionIsAcceptable",
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
.field private final activeSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Session;",
            ">;"
        }
    .end annotation
.end field

.field private final activeSessionsLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Session;",
            ">;>;"
        }
    .end annotation
.end field

.field private final assetDownloader:Ltech/ulo/library/utils/AssetDownloader;

.field private final assetRepository:Ltech/ulo/library/model/repositories/AssetRepository;

.field private final className:Ljava/lang/String;

.field private final filesystemDao:Ltech/ulo/library/model/daos/FilesystemDao;

.field private final filesystemManager:Ltech/ulo/library/utils/FilesystemManager;

.field private final filesystems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Filesystem;",
            ">;"
        }
    .end annotation
.end field

.field private final filesystemsLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Filesystem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final logger:Ltech/ulo/library/utils/Logger;

.field private final sessionDao:Ltech/ulo/library/model/daos/SessionDao;

.field private final state:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ltech/ulo/library/model/state/SessionStartupState;",
            ">;"
        }
    .end annotation
.end field

.field private final storageCalculator:Ltech/ulo/library/utils/StorageCalculator;


# direct methods
.method public static synthetic $r8$lambda$EP7l2WP6qTFd4qDnI7caepEkYFc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/model/state/SessionStartupFsm;->_init_$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nSf5him6rBIH6mmKMakU60FAMmU(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/model/state/SessionStartupFsm;->_init_$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ltech/ulo/library/model/repositories/UlaDatabase;Ltech/ulo/library/model/repositories/AssetRepository;Ltech/ulo/library/utils/FilesystemManager;Ltech/ulo/library/utils/AssetDownloader;Ltech/ulo/library/utils/StorageCalculator;Ltech/ulo/library/utils/Logger;)V
    .locals 1

    const-string v0, "ulaDatabase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filesystemManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetDownloader"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageCalculator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->assetRepository:Ltech/ulo/library/model/repositories/AssetRepository;

    .line 24
    iput-object p3, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->filesystemManager:Ltech/ulo/library/utils/FilesystemManager;

    .line 25
    iput-object p4, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->assetDownloader:Ltech/ulo/library/utils/AssetDownloader;

    .line 26
    iput-object p5, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->storageCalculator:Ltech/ulo/library/utils/StorageCalculator;

    .line 27
    iput-object p6, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->logger:Ltech/ulo/library/utils/Logger;

    .line 30
    const-string p2, "SessionFSM"

    iput-object p2, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->className:Ljava/lang/String;

    .line 32
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 33
    sget-object p3, Ltech/ulo/library/model/state/WaitingForSessionSelection;->INSTANCE:Ltech/ulo/library/model/state/WaitingForSessionSelection;

    .line 32
    invoke-virtual {p2, p3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iput-object p2, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    .line 36
    invoke-virtual {p1}, Ltech/ulo/library/model/repositories/UlaDatabase;->sessionDao()Ltech/ulo/library/model/daos/SessionDao;

    move-result-object p2

    iput-object p2, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->sessionDao:Ltech/ulo/library/model/daos/SessionDao;

    .line 37
    invoke-interface {p2}, Ltech/ulo/library/model/daos/SessionDao;->findActiveSessions()Landroidx/lifecycle/LiveData;

    move-result-object p2

    iput-object p2, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->activeSessionsLiveData:Landroidx/lifecycle/LiveData;

    .line 38
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/List;

    iput-object p3, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->activeSessions:Ljava/util/List;

    .line 40
    invoke-virtual {p1}, Ltech/ulo/library/model/repositories/UlaDatabase;->filesystemDao()Ltech/ulo/library/model/daos/FilesystemDao;

    move-result-object p1

    iput-object p1, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->filesystemDao:Ltech/ulo/library/model/daos/FilesystemDao;

    .line 41
    invoke-interface {p1}, Ltech/ulo/library/model/daos/FilesystemDao;->getAllFilesystems()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->filesystemsLiveData:Landroidx/lifecycle/LiveData;

    .line 42
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/List;

    iput-object p3, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->filesystems:Ljava/util/List;

    .line 45
    new-instance p3, Ltech/ulo/library/model/state/SessionStartupFsm$1;

    invoke-direct {p3, p0}, Ltech/ulo/library/model/state/SessionStartupFsm$1;-><init>(Ltech/ulo/library/model/state/SessionStartupFsm;)V

    check-cast p3, Lkotlin/jvm/functions/Function1;

    new-instance p4, Ltech/ulo/library/model/state/SessionStartupFsm$$ExternalSyntheticLambda0;

    invoke-direct {p4, p3}, Ltech/ulo/library/model/state/SessionStartupFsm$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, p4}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 51
    new-instance p2, Ltech/ulo/library/model/state/SessionStartupFsm$2;

    invoke-direct {p2, p0}, Ltech/ulo/library/model/state/SessionStartupFsm$2;-><init>(Ltech/ulo/library/model/state/SessionStartupFsm;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    new-instance p3, Ltech/ulo/library/model/state/SessionStartupFsm$$ExternalSyntheticLambda1;

    invoke-direct {p3, p2}, Ltech/ulo/library/model/state/SessionStartupFsm$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p3}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public synthetic constructor <init>(Ltech/ulo/library/model/repositories/UlaDatabase;Ltech/ulo/library/model/repositories/AssetRepository;Ltech/ulo/library/utils/FilesystemManager;Ltech/ulo/library/utils/AssetDownloader;Ltech/ulo/library/utils/StorageCalculator;Ltech/ulo/library/utils/Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    .line 27
    new-instance p6, Ltech/ulo/library/utils/SentryLogger;

    invoke-direct {p6}, Ltech/ulo/library/utils/SentryLogger;-><init>()V

    check-cast p6, Ltech/ulo/library/utils/Logger;

    :cond_0
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 21
    invoke-direct/range {v0 .. v6}, Ltech/ulo/library/model/state/SessionStartupFsm;-><init>(Ltech/ulo/library/model/repositories/UlaDatabase;Ltech/ulo/library/model/repositories/AssetRepository;Ltech/ulo/library/utils/FilesystemManager;Ltech/ulo/library/utils/AssetDownloader;Ltech/ulo/library/utils/StorageCalculator;Ltech/ulo/library/utils/Logger;)V

    return-void
.end method

.method private static final _init_$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final _init_$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getActiveSessions$p(Ltech/ulo/library/model/state/SessionStartupFsm;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->activeSessions:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getAssetRepository$p(Ltech/ulo/library/model/state/SessionStartupFsm;)Ltech/ulo/library/model/repositories/AssetRepository;
    .locals 0

    .line 21
    iget-object p0, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->assetRepository:Ltech/ulo/library/model/repositories/AssetRepository;

    return-object p0
.end method

.method public static final synthetic access$getClassName$p(Ltech/ulo/library/model/state/SessionStartupFsm;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->className:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getFilesystemDao$p(Ltech/ulo/library/model/state/SessionStartupFsm;)Ltech/ulo/library/model/daos/FilesystemDao;
    .locals 0

    .line 21
    iget-object p0, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->filesystemDao:Ltech/ulo/library/model/daos/FilesystemDao;

    return-object p0
.end method

.method public static final synthetic access$getFilesystemManager$p(Ltech/ulo/library/model/state/SessionStartupFsm;)Ltech/ulo/library/utils/FilesystemManager;
    .locals 0

    .line 21
    iget-object p0, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->filesystemManager:Ltech/ulo/library/utils/FilesystemManager;

    return-object p0
.end method

.method public static final synthetic access$getFilesystems$p(Ltech/ulo/library/model/state/SessionStartupFsm;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->filesystems:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Ltech/ulo/library/model/state/SessionStartupFsm;)Ltech/ulo/library/utils/Logger;
    .locals 0

    .line 21
    iget-object p0, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->logger:Ltech/ulo/library/utils/Logger;

    return-object p0
.end method

.method public static final synthetic access$getState$p(Ltech/ulo/library/model/state/SessionStartupFsm;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 21
    iget-object p0, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$handleAssetsDownloadComplete(Ltech/ulo/library/model/state/SessionStartupFsm;J)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/model/state/SessionStartupFsm;->handleAssetsDownloadComplete(J)V

    return-void
.end method

.method public static final synthetic access$handleCopyDownloadsToLocalDirectories(Ltech/ulo/library/model/state/SessionStartupFsm;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Ltech/ulo/library/model/state/SessionStartupFsm;->handleCopyDownloadsToLocalDirectories(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleDownloadAssets(Ltech/ulo/library/model/state/SessionStartupFsm;Ljava/util/List;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Ltech/ulo/library/model/state/SessionStartupFsm;->handleDownloadAssets(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$handleExtractFilesystem(Ltech/ulo/library/model/state/SessionStartupFsm;Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/model/state/SessionStartupFsm;->handleExtractFilesystem(Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleExtractionComplete(Ltech/ulo/library/model/state/SessionStartupFsm;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Ltech/ulo/library/model/state/SessionStartupFsm;->handleExtractionComplete(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleExtractionFailed(Ltech/ulo/library/model/state/SessionStartupFsm;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Ltech/ulo/library/model/state/SessionStartupFsm;->handleExtractionFailed(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleFilesystemExtractionComplete(Ltech/ulo/library/model/state/SessionStartupFsm;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Ltech/ulo/library/model/state/SessionStartupFsm;->handleFilesystemExtractionComplete(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleFilesystemExtractionFailed(Ltech/ulo/library/model/state/SessionStartupFsm;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Ltech/ulo/library/model/state/SessionStartupFsm;->handleFilesystemExtractionFailed(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleGenerateDownloads(Ltech/ulo/library/model/state/SessionStartupFsm;Ltech/ulo/library/model/entities/Filesystem;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Ltech/ulo/library/model/state/SessionStartupFsm;->handleGenerateDownloads(Ltech/ulo/library/model/entities/Filesystem;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleRetrieveAssetLists(Ltech/ulo/library/model/state/SessionStartupFsm;Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/model/state/SessionStartupFsm;->handleRetrieveAssetLists(Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleSessionSelected(Ltech/ulo/library/model/state/SessionStartupFsm;Ltech/ulo/library/model/entities/Session;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Ltech/ulo/library/model/state/SessionStartupFsm;->handleSessionSelected(Ltech/ulo/library/model/entities/Session;)V

    return-void
.end method

.method public static final synthetic access$handleSyncDownloadState(Ltech/ulo/library/model/state/SessionStartupFsm;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ltech/ulo/library/model/state/SessionStartupFsm;->handleSyncDownloadState()V

    return-void
.end method

.method public static final synthetic access$handleVerifyAvailableStorage(Ltech/ulo/library/model/state/SessionStartupFsm;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ltech/ulo/library/model/state/SessionStartupFsm;->handleVerifyAvailableStorage()V

    return-void
.end method

.method public static final synthetic access$handleVerifyAvailableStorageComplete(Ltech/ulo/library/model/state/SessionStartupFsm;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ltech/ulo/library/model/state/SessionStartupFsm;->handleVerifyAvailableStorageComplete()V

    return-void
.end method

.method public static final synthetic access$handleVerifyFilesystemAssets(Ltech/ulo/library/model/state/SessionStartupFsm;Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/model/state/SessionStartupFsm;->handleVerifyFilesystemAssets(Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final findFilesystemForSession(Ltech/ulo/library/model/entities/Session;)Ltech/ulo/library/model/entities/Filesystem;
    .locals 6

    .line 129
    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->filesystems:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ltech/ulo/library/model/entities/Filesystem;

    invoke-virtual {v2}, Ltech/ulo/library/model/entities/Filesystem;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getFilesystemId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ltech/ulo/library/model/entities/Filesystem;

    return-object v1
.end method

.method private final handleAssetDownloadState(Ltech/ulo/library/utils/AssetDownloadState;)V
    .locals 3

    .line 219
    instance-of v0, p1, Ltech/ulo/library/utils/NonUserlandDownloadFound;

    if-nez v0, :cond_4

    .line 220
    instance-of v0, p1, Ltech/ulo/library/utils/CacheSyncAttemptedWhileCacheIsEmpty;

    if-eqz v0, :cond_0

    iget-object p1, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ltech/ulo/library/model/state/AttemptedCacheAccessWhileEmpty;->INSTANCE:Ltech/ulo/library/model/state/AttemptedCacheAccessWhileEmpty;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 221
    :cond_0
    instance-of v0, p1, Ltech/ulo/library/utils/AllDownloadsCompletedSuccessfully;

    if-eqz v0, :cond_1

    iget-object p1, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ltech/ulo/library/model/state/DownloadsHaveSucceeded;->INSTANCE:Ltech/ulo/library/model/state/DownloadsHaveSucceeded;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 222
    :cond_1
    instance-of v0, p1, Ltech/ulo/library/utils/CompletedDownloadsUpdate;

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Ltech/ulo/library/model/state/DownloadingAssets;

    check-cast p1, Ltech/ulo/library/utils/CompletedDownloadsUpdate;

    invoke-virtual {p1}, Ltech/ulo/library/utils/CompletedDownloadsUpdate;->getNumCompleted()I

    move-result v2

    invoke-virtual {p1}, Ltech/ulo/library/utils/CompletedDownloadsUpdate;->getNumTotal()I

    move-result p1

    invoke-direct {v1, v2, p1}, Ltech/ulo/library/model/state/DownloadingAssets;-><init>(II)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 225
    :cond_2
    instance-of v0, p1, Ltech/ulo/library/utils/AssetDownloadFailure;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Ltech/ulo/library/model/state/DownloadsHaveFailed;

    check-cast p1, Ltech/ulo/library/utils/AssetDownloadFailure;

    invoke-virtual {p1}, Ltech/ulo/library/utils/AssetDownloadFailure;->getReason()Ltech/ulo/library/utils/DownloadFailureLocalizationData;

    move-result-object p1

    invoke-direct {v1, p1}, Ltech/ulo/library/model/state/DownloadsHaveFailed;-><init>(Ltech/ulo/library/utils/DownloadFailureLocalizationData;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method private final handleAssetsDownloadComplete(J)V
    .locals 1

    .line 211
    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->assetDownloader:Ltech/ulo/library/utils/AssetDownloader;

    invoke-virtual {v0, p1, p2}, Ltech/ulo/library/utils/AssetDownloader;->handleDownloadComplete(J)Ltech/ulo/library/utils/AssetDownloadState;

    move-result-object p1

    .line 212
    invoke-direct {p0, p1}, Ltech/ulo/library/model/state/SessionStartupFsm;->handleAssetDownloadState(Ltech/ulo/library/utils/AssetDownloadState;)V

    return-void
.end method

.method private final handleCopyDownloadsToLocalDirectories(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Ltech/ulo/library/model/state/SessionStartupFsm$handleCopyDownloadsToLocalDirectories$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleCopyDownloadsToLocalDirectories$1;

    iget v1, v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleCopyDownloadsToLocalDirectories$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleCopyDownloadsToLocalDirectories$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleCopyDownloadsToLocalDirectories$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleCopyDownloadsToLocalDirectories$1;

    invoke-direct {v0, p0, p1}, Ltech/ulo/library/model/state/SessionStartupFsm$handleCopyDownloadsToLocalDirectories$1;-><init>(Ltech/ulo/library/model/state/SessionStartupFsm;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleCopyDownloadsToLocalDirectories$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 236
    iget v2, v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleCopyDownloadsToLocalDirectories$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleCopyDownloadsToLocalDirectories$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ltech/ulo/library/model/state/SessionStartupFsm;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 237
    iget-object p1, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Ltech/ulo/library/model/state/CopyingFilesToLocalDirectories;->INSTANCE:Ltech/ulo/library/model/state/CopyingFilesToLocalDirectories;

    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 239
    :try_start_1
    iget-object p1, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->assetDownloader:Ltech/ulo/library/utils/AssetDownloader;

    iput-object p0, v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleCopyDownloadsToLocalDirectories$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleCopyDownloadsToLocalDirectories$1;->label:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v3, v2}, Ltech/ulo/library/utils/AssetDownloader;->prepareDownloadsForUse$default(Ltech/ulo/library/utils/AssetDownloader;Ltech/ulo/library/utils/ArchiveFactoryWrapper;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 244
    :goto_1
    iget-object p1, v0, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ltech/ulo/library/model/state/LocalDirectoryCopySucceeded;->INSTANCE:Ltech/ulo/library/model/state/LocalDirectoryCopySucceeded;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 245
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catch_0
    move-object v0, p0

    .line 241
    :catch_1
    iget-object p1, v0, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ltech/ulo/library/model/state/LocalDirectoryCopyFailed;->INSTANCE:Ltech/ulo/library/model/state/LocalDirectoryCopyFailed;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 242
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final handleDownloadAssets(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/repositories/DownloadMetadata;",
            ">;)V"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Ltech/ulo/library/model/state/DownloadingAssets;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ltech/ulo/library/model/state/DownloadingAssets;-><init>(II)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->assetDownloader:Ltech/ulo/library/utils/AssetDownloader;

    invoke-virtual {v0, p1}, Ltech/ulo/library/utils/AssetDownloader;->downloadRequirements(Ljava/util/List;)V

    return-void
.end method

.method private final handleExtractFilesystem(Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/Filesystem;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 294
    iget-object p2, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Ltech/ulo/library/model/state/ExtractingFilesystem;

    invoke-direct {v0, p1}, Ltech/ulo/library/model/state/ExtractingFilesystem;-><init>(Ltech/ulo/library/model/entities/Filesystem;)V

    invoke-virtual {p2, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 295
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final handleExtractionComplete(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 308
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final handleExtractionFailed(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 312
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final handleFilesystemExtractionComplete(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 299
    iget-object p1, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ltech/ulo/library/model/state/ExtractionHasCompletedSuccessfully;->INSTANCE:Ltech/ulo/library/model/state/ExtractionHasCompletedSuccessfully;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 300
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final handleFilesystemExtractionFailed(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 303
    iget-object p1, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Ltech/ulo/library/model/state/ExtractionFailed;

    const-string v1, "Extraction Failed"

    invoke-direct {v0, v1}, Ltech/ulo/library/model/state/ExtractionFailed;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 304
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final handleGenerateDownloads(Ltech/ulo/library/model/entities/Filesystem;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/Filesystem;",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Asset;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Ltech/ulo/library/model/state/SessionStartupFsm$handleGenerateDownloads$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleGenerateDownloads$1;

    iget v1, v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleGenerateDownloads$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleGenerateDownloads$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleGenerateDownloads$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleGenerateDownloads$1;

    invoke-direct {v0, p0, p3}, Ltech/ulo/library/model/state/SessionStartupFsm$handleGenerateDownloads$1;-><init>(Ltech/ulo/library/model/state/SessionStartupFsm;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleGenerateDownloads$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 180
    iget v2, v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleGenerateDownloads$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleGenerateDownloads$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ltech/ulo/library/model/state/SessionStartupFsm;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 181
    iget-object p3, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Ltech/ulo/library/model/state/GeneratingDownloadRequirements;->INSTANCE:Ltech/ulo/library/model/state/GeneratingDownloadRequirements;

    invoke-virtual {p3, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 184
    iget-object p3, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->filesystemManager:Ltech/ulo/library/utils/FilesystemManager;

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Filesystem;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ltech/ulo/library/utils/FilesystemManager;->hasFilesystemBeenSuccessfullyExtracted(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 185
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Filesystem;->isCreatedFromBackup()Z

    move-result p3

    if-nez p3, :cond_3

    move p3, v4

    goto :goto_1

    :cond_3
    move p3, v3

    .line 188
    :goto_1
    :try_start_1
    iget-object v2, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->assetRepository:Ltech/ulo/library/model/repositories/AssetRepository;

    iput-object p0, v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleGenerateDownloads$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleGenerateDownloads$1;->label:I

    invoke-virtual {v2, p1, p2, p3, v0}, Ltech/ulo/library/model/repositories/AssetRepository;->generateDownloadRequirements(Ltech/ulo/library/model/entities/Filesystem;Ljava/util/List;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    :goto_2
    :try_start_2
    check-cast p3, Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 194
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 195
    iget-object p1, p1, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Ltech/ulo/library/model/state/NoDownloadsRequired;->INSTANCE:Ltech/ulo/library/model/state/NoDownloadsRequired;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 196
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 199
    :cond_5
    move-object p2, p3

    check-cast p2, Ljava/lang/Iterable;

    .line 386
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_6

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    .line 387
    :cond_6
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/ulo/library/model/repositories/DownloadMetadata;

    .line 199
    invoke-virtual {v0}, Ltech/ulo/library/model/repositories/DownloadMetadata;->getFilename()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rootfs.tar.gz"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v3, v4

    .line 200
    :cond_8
    :goto_3
    iget-object p1, p1, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    new-instance p2, Ltech/ulo/library/model/state/DownloadsRequired;

    invoke-direct {p2, p3, v3}, Ltech/ulo/library/model/state/DownloadsRequired;-><init>(Ljava/util/List;Z)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 201
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catch_0
    move-object p1, p0

    .line 190
    :catch_1
    iget-object p1, p1, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Ltech/ulo/library/model/state/RemoteUnreachableForGeneration;->INSTANCE:Ltech/ulo/library/model/state/RemoteUnreachableForGeneration;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 191
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final handleRetrieveAssetLists(Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/Filesystem;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Ltech/ulo/library/model/state/SessionStartupFsm$handleRetrieveAssetLists$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleRetrieveAssetLists$1;

    iget v1, v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleRetrieveAssetLists$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleRetrieveAssetLists$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleRetrieveAssetLists$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleRetrieveAssetLists$1;

    invoke-direct {v0, p0, p2}, Ltech/ulo/library/model/state/SessionStartupFsm$handleRetrieveAssetLists$1;-><init>(Ltech/ulo/library/model/state/SessionStartupFsm;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleRetrieveAssetLists$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 160
    iget v2, v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleRetrieveAssetLists$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleRetrieveAssetLists$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ltech/ulo/library/model/state/SessionStartupFsm;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 161
    iget-object p2, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Ltech/ulo/library/model/state/RetrievingAssetLists;->INSTANCE:Ltech/ulo/library/model/state/RetrievingAssetLists;

    invoke-virtual {p2, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 163
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 166
    :try_start_1
    iget-object p2, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->assetRepository:Ltech/ulo/library/model/repositories/AssetRepository;

    iput-object p0, v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleRetrieveAssetLists$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Ltech/ulo/library/model/state/SessionStartupFsm$handleRetrieveAssetLists$1;->label:I

    invoke-virtual {p2, p1, v0}, Ltech/ulo/library/model/repositories/AssetRepository;->getAssetList(Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    :try_start_2
    check-cast p2, Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_0
    move-object p1, p0

    .line 168
    :catch_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 171
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 172
    iget-object p1, p1, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Ltech/ulo/library/model/state/AssetListsRetrievalFailed;->INSTANCE:Ltech/ulo/library/model/state/AssetListsRetrievalFailed;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 173
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 177
    :cond_4
    iget-object p1, p1, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Ltech/ulo/library/model/state/AssetListsRetrievalSucceeded;

    invoke-direct {v0, p2}, Ltech/ulo/library/model/state/AssetListsRetrievalSucceeded;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 178
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final handleSessionSelected(Ltech/ulo/library/model/entities/Session;)V
    .locals 3

    .line 133
    invoke-direct {p0, p1}, Ltech/ulo/library/model/state/SessionStartupFsm;->findFilesystemForSession(Ltech/ulo/library/model/entities/Session;)Ltech/ulo/library/model/entities/Filesystem;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ltech/ulo/library/model/entities/Filesystem;->getExecutionType()Ltech/ulo/library/model/entities/ExecutionType;

    move-result-object v1

    sget-object v2, Ltech/ulo/library/model/entities/ExecutionType;->AVF:Ltech/ulo/library/model/entities/ExecutionType;

    if-eq v1, v2, :cond_1

    .line 135
    invoke-virtual {v0}, Ltech/ulo/library/model/entities/Filesystem;->getExecutionType()Ltech/ulo/library/model/entities/ExecutionType;

    move-result-object v1

    sget-object v2, Ltech/ulo/library/model/entities/ExecutionType;->QEMU:Ltech/ulo/library/model/entities/ExecutionType;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 137
    :goto_1
    iget-object v2, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->activeSessions:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 138
    iget-object v2, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->activeSessions:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_3

    .line 143
    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Ltech/ulo/library/model/state/SessionIsRestartable;

    invoke-direct {v1, p1}, Ltech/ulo/library/model/state/SessionIsRestartable;-><init>(Ltech/ulo/library/model/entities/Session;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 147
    :cond_2
    iget-object p1, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ltech/ulo/library/model/state/SingleSessionSupported;->INSTANCE:Ltech/ulo/library/model/state/SingleSessionSupported;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    :cond_3
    if-eqz v1, :cond_4

    .line 153
    iget-object v1, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Ltech/ulo/library/model/state/AvfSessionSelected;

    invoke-direct {v2, p1, v0}, Ltech/ulo/library/model/state/AvfSessionSelected;-><init>(Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/Filesystem;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 157
    :cond_4
    iget-object v1, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Ltech/ulo/library/model/state/SessionIsReadyForPreparation;

    invoke-direct {v2, p1, v0}, Ltech/ulo/library/model/state/SessionIsReadyForPreparation;-><init>(Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/Filesystem;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final handleSyncDownloadState()V
    .locals 3

    .line 230
    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->assetDownloader:Ltech/ulo/library/utils/AssetDownloader;

    invoke-virtual {v0}, Ltech/ulo/library/utils/AssetDownloader;->downloadStateHasBeenCached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Ltech/ulo/library/model/state/DownloadingAssets;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Ltech/ulo/library/model/state/DownloadingAssets;-><init>(II)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->assetDownloader:Ltech/ulo/library/utils/AssetDownloader;

    invoke-virtual {v0}, Ltech/ulo/library/utils/AssetDownloader;->syncStateWithCache()Ltech/ulo/library/utils/AssetDownloadState;

    move-result-object v0

    invoke-direct {p0, v0}, Ltech/ulo/library/model/state/SessionStartupFsm;->handleAssetDownloadState(Ltech/ulo/library/utils/AssetDownloadState;)V

    :cond_0
    return-void
.end method

.method private final handleVerifyAvailableStorage()V
    .locals 5

    .line 280
    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ltech/ulo/library/model/state/VerifyingSufficientStorage;->INSTANCE:Ltech/ulo/library/model/state/VerifyingSufficientStorage;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 282
    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->storageCalculator:Ltech/ulo/library/utils/StorageCalculator;

    invoke-virtual {v0}, Ltech/ulo/library/utils/StorageCalculator;->getAvailableStorageInMB()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    const-wide/16 v3, 0xfb

    if-gtz v2, :cond_0

    cmp-long v2, v0, v3

    if-gez v2, :cond_0

    .line 283
    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ltech/ulo/library/model/state/VerifyingSufficientStorageFailed;->INSTANCE:Ltech/ulo/library/model/state/VerifyingSufficientStorageFailed;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    cmp-long v2, v3, v0

    if-gtz v2, :cond_1

    const-wide/16 v2, 0x3e9

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 284
    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ltech/ulo/library/model/state/LowAvailableStorage;->INSTANCE:Ltech/ulo/library/model/state/LowAvailableStorage;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 285
    :cond_1
    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ltech/ulo/library/model/state/StorageVerificationCompletedSuccessfully;->INSTANCE:Ltech/ulo/library/model/state/StorageVerificationCompletedSuccessfully;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final handleVerifyAvailableStorageComplete()V
    .locals 2

    .line 290
    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ltech/ulo/library/model/state/StorageVerificationCompletedSuccessfully;->INSTANCE:Ltech/ulo/library/model/state/StorageVerificationCompletedSuccessfully;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final handleVerifyFilesystemAssets(Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/Filesystem;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 247
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Ltech/ulo/library/model/state/SessionStartupFsm$handleVerifyFilesystemAssets$2;-><init>(Ltech/ulo/library/model/state/SessionStartupFsm;Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public final getState()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ltech/ulo/library/model/state/SessionStartupState;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final sessionsAreActive()Z
    .locals 1

    .line 69
    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->activeSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setState$UserLOstLibrary_UserLOstRelease(Ltech/ulo/library/model/state/SessionStartupState;)V
    .locals 1

    const-string v0, "newState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final submitEvent(Ltech/ulo/library/model/state/SessionStartupEvent;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
    .locals 8

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    new-instance v0, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ltech/ulo/library/model/state/SessionStartupFsm$submitEvent$1;-><init>(Ltech/ulo/library/model/state/SessionStartupFsm;Ltech/ulo/library/model/state/SessionStartupEvent;Lkotlin/coroutines/Continuation;)V

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

.method public final transitionIsAcceptable(Ltech/ulo/library/model/state/SessionStartupEvent;)Z
    .locals 6

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ltech/ulo/library/model/state/SessionStartupState;

    .line 75
    instance-of v1, p1, Ltech/ulo/library/model/state/SessionSelected;

    if-eqz v1, :cond_0

    instance-of p1, v0, Ltech/ulo/library/model/state/WaitingForSessionSelection;

    goto/16 :goto_1

    .line 76
    :cond_0
    instance-of v1, p1, Ltech/ulo/library/model/state/RetrieveAssetLists;

    if-eqz v1, :cond_1

    instance-of p1, v0, Ltech/ulo/library/model/state/SessionIsReadyForPreparation;

    goto/16 :goto_1

    .line 77
    :cond_1
    instance-of v1, p1, Ltech/ulo/library/model/state/GenerateDownloads;

    if-eqz v1, :cond_2

    instance-of p1, v0, Ltech/ulo/library/model/state/AssetListsRetrievalSucceeded;

    goto/16 :goto_1

    .line 78
    :cond_2
    instance-of v1, p1, Ltech/ulo/library/model/state/DownloadAssets;

    if-eqz v1, :cond_3

    instance-of p1, v0, Ltech/ulo/library/model/state/DownloadsRequired;

    goto/16 :goto_1

    .line 79
    :cond_3
    instance-of v1, p1, Ltech/ulo/library/model/state/AssetDownloadComplete;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    .line 82
    instance-of v0, v0, Ltech/ulo/library/model/state/DownloadingAssets;

    if-nez v0, :cond_6

    iget-object v0, p0, Ltech/ulo/library/model/state/SessionStartupFsm;->assetDownloader:Ltech/ulo/library/utils/AssetDownloader;

    check-cast p1, Ltech/ulo/library/model/state/AssetDownloadComplete;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/AssetDownloadComplete;->getDownloadAssetId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ltech/ulo/library/utils/AssetDownloader;->downloadIsForUserland(J)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move p1, v2

    goto/16 :goto_1

    .line 84
    :cond_5
    instance-of v1, p1, Ltech/ulo/library/model/state/SyncDownloadState;

    if-eqz v1, :cond_7

    :cond_6
    :goto_0
    move p1, v3

    goto :goto_1

    .line 88
    :cond_7
    instance-of v1, p1, Ltech/ulo/library/model/state/CopyDownloadsToLocalStorage;

    if-eqz v1, :cond_8

    instance-of p1, v0, Ltech/ulo/library/model/state/DownloadsHaveSucceeded;

    goto :goto_1

    .line 89
    :cond_8
    instance-of v1, p1, Ltech/ulo/library/model/state/VerifyFilesystemAssets;

    if-eqz v1, :cond_9

    instance-of p1, v0, Ltech/ulo/library/model/state/NoDownloadsRequired;

    if-nez p1, :cond_6

    instance-of p1, v0, Ltech/ulo/library/model/state/LocalDirectoryCopySucceeded;

    if-eqz p1, :cond_4

    goto :goto_0

    .line 90
    :cond_9
    instance-of v1, p1, Ltech/ulo/library/model/state/VerifyAvailableStorage;

    if-eqz v1, :cond_a

    instance-of p1, v0, Ltech/ulo/library/model/state/FilesystemAssetVerificationSucceeded;

    goto :goto_1

    .line 91
    :cond_a
    instance-of v1, p1, Ltech/ulo/library/model/state/VerifyAvailableStorageComplete;

    if-eqz v1, :cond_b

    instance-of p1, v0, Ltech/ulo/library/model/state/VerifyingSufficientStorage;

    if-nez p1, :cond_6

    instance-of p1, v0, Ltech/ulo/library/model/state/LowAvailableStorage;

    if-eqz p1, :cond_4

    goto :goto_0

    .line 92
    :cond_b
    instance-of v1, p1, Ltech/ulo/library/model/state/ExtractFilesystem;

    if-eqz v1, :cond_c

    instance-of p1, v0, Ltech/ulo/library/model/state/StorageVerificationCompletedSuccessfully;

    goto :goto_1

    .line 93
    :cond_c
    instance-of v1, p1, Ltech/ulo/library/model/state/FilesystemExtractionComplete;

    if-eqz v1, :cond_d

    instance-of p1, v0, Ltech/ulo/library/model/state/ExtractingFilesystem;

    goto :goto_1

    .line 94
    :cond_d
    instance-of v1, p1, Ltech/ulo/library/model/state/FilesystemExtractionFailed;

    if-eqz v1, :cond_e

    instance-of p1, v0, Ltech/ulo/library/model/state/ExtractingFilesystem;

    goto :goto_1

    .line 95
    :cond_e
    instance-of v1, p1, Ltech/ulo/library/model/state/AssetExtractionComplete;

    if-eqz v1, :cond_f

    instance-of p1, v0, Ltech/ulo/library/model/state/ExtractionHasCompletedSuccessfully;

    goto :goto_1

    .line 96
    :cond_f
    instance-of v1, p1, Ltech/ulo/library/model/state/AssetExtractionFailed;

    if-eqz v1, :cond_10

    instance-of p1, v0, Ltech/ulo/library/model/state/ExtractionHasCompletedSuccessfully;

    goto :goto_1

    .line 97
    :cond_10
    instance-of p1, p1, Ltech/ulo/library/model/state/ResetSessionState;

    if-eqz p1, :cond_11

    goto :goto_0

    :goto_1
    return p1

    :cond_11
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
