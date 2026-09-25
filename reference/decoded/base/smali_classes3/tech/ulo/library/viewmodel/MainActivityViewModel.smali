.class public final Ltech/ulo/library/viewmodel/MainActivityViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "MainActivityViewModel.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u00105\u001a\u00020\u000bH\u0002J\u0006\u00106\u001a\u000207J\u0016\u00108\u001a\u0002072\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u0002070:H\u0002J\u000c\u0010;\u001a\u0008\u0012\u0004\u0012\u0002010\rJ\u0010\u0010<\u001a\u0002072\u0006\u0010=\u001a\u00020\u000eH\u0002J\u0010\u0010>\u001a\u0002072\u0006\u0010=\u001a\u00020?H\u0002J\u0010\u0010@\u001a\u0002072\u0006\u0010=\u001a\u00020AH\u0002J\u0016\u0010B\u001a\u0002072\u0006\u0010C\u001a\u00020DH\u0086@\u00a2\u0006\u0002\u0010EJ\u0010\u0010F\u001a\u0002072\u0006\u0010=\u001a\u00020GH\u0002J\u0010\u0010H\u001a\u0002072\u0006\u0010=\u001a\u00020IH\u0002J\u0010\u0010J\u001a\u0002072\u0006\u0010=\u001a\u00020KH\u0002J\u000e\u0010L\u001a\u0002072\u0006\u0010=\u001a\u00020MJ\u0006\u0010N\u001a\u000207J\u0006\u0010O\u001a\u000207J\u0010\u0010P\u001a\u0002072\u0006\u0010=\u001a\u00020-H\u0002J\u0010\u0010Q\u001a\u0002072\u0006\u0010=\u001a\u00020RH\u0002J\u0006\u0010S\u001a\u000207J\u0006\u0010T\u001a\u000207J\u0008\u0010U\u001a\u000207H\u0014J\u0006\u0010V\u001a\u000207J\u0010\u0010W\u001a\u0002072\u0006\u0010=\u001a\u00020XH\u0002J\u0008\u0010Y\u001a\u000207H\u0002J\u0008\u0010Z\u001a\u00020\u000bH\u0002J\u0008\u0010[\u001a\u00020\u000bH\u0002J\u0014\u0010\\\u001a\u0002072\u000c\u0010]\u001a\u0008\u0012\u0004\u0012\u00020_0^J\u000e\u0010`\u001a\u0002072\u0006\u0010a\u001a\u00020bJ&\u0010c\u001a\u0002072\u0006\u0010d\u001a\u00020\u001b2\u0006\u0010e\u001a\u00020\u000b2\u0006\u0010f\u001a\u00020\u000b2\u0006\u0010g\u001a\u00020\u000bJ\u000e\u0010h\u001a\u0002072\u0006\u0010i\u001a\u00020jJ\u0010\u0010k\u001a\u0002072\u0006\u0010l\u001a\u00020mH\u0002J\u000e\u0010n\u001a\u0002072\u0006\u0010o\u001a\u00020pJ\u0006\u0010q\u001a\u000207J\u000e\u0010r\u001a\u0002072\u0006\u0010s\u001a\u00020\u000bJ\u0006\u0010t\u001a\u000207J\u001e\u0010u\u001a\u0002072\u0006\u0010v\u001a\u00020\u00112\u0006\u0010w\u001a\u00020\u00112\u0006\u0010x\u001a\u00020\u0011J \u0010y\u001a\u0002072\u0006\u0010z\u001a\u00020\u00112\u0006\u0010{\u001a\u00020\u000b2\u0008\u0008\u0002\u0010|\u001a\u00020}J\u000e\u0010~\u001a\u0002072\u0006\u0010\u007f\u001a\u00020\'J\u0012\u0010\u0080\u0001\u001a\u0002072\u0007\u0010l\u001a\u00030\u0081\u0001H\u0002J\u0007\u0010\u0082\u0001\u001a\u000207J\u0007\u0010\u0083\u0001\u001a\u000207J\u0007\u0010\u0084\u0001\u001a\u000207J-\u0010\u0085\u0001\u001a\u0002072\t\u0008\u0002\u0010\u0086\u0001\u001a\u00020\u001b2\t\u0008\u0002\u0010\u0087\u0001\u001a\u00020\'2\u0006\u0010f\u001a\u00020\u000b2\u0006\u0010g\u001a\u00020\u000bR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082D\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u00020\u00138VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001a\u0010 \u001a\u00020!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u001a\u0010&\u001a\u00020\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010,\u001a\u0008\u0012\u0004\u0012\u00020-0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010/\u001a\u0008\u0012\u0004\u0012\u00020100X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0088\u0001"
    }
    d2 = {
        "Ltech/ulo/library/viewmodel/MainActivityViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "appsStartupFsm",
        "Ltech/ulo/library/model/state/AppsStartupFsm;",
        "sessionStartupFsm",
        "Ltech/ulo/library/model/state/SessionStartupFsm;",
        "logger",
        "Ltech/ulo/library/utils/Logger;",
        "(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/state/SessionStartupFsm;Ltech/ulo/library/utils/Logger;)V",
        "appsAreWaitingForSelection",
        "",
        "appsState",
        "Landroidx/lifecycle/LiveData;",
        "Ltech/ulo/library/model/state/AppsStartupState;",
        "avfSessionStartDispatched",
        "className",
        "",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "job",
        "Lkotlinx/coroutines/CompletableJob;",
        "lastAskConnectType",
        "lastAskDisplayPreferences",
        "lastSelectedApp",
        "Ltech/ulo/library/model/entities/App;",
        "getLastSelectedApp",
        "()Ltech/ulo/library/model/entities/App;",
        "setLastSelectedApp",
        "(Ltech/ulo/library/model/entities/App;)V",
        "lastSelectedFilesystem",
        "Ltech/ulo/library/model/entities/Filesystem;",
        "getLastSelectedFilesystem",
        "()Ltech/ulo/library/model/entities/Filesystem;",
        "setLastSelectedFilesystem",
        "(Ltech/ulo/library/model/entities/Filesystem;)V",
        "lastSelectedSession",
        "Ltech/ulo/library/model/entities/Session;",
        "getLastSelectedSession",
        "()Ltech/ulo/library/model/entities/Session;",
        "setLastSelectedSession",
        "(Ltech/ulo/library/model/entities/Session;)V",
        "sessionState",
        "Ltech/ulo/library/model/state/SessionStartupState;",
        "sessionsAreWaitingForSelection",
        "state",
        "Landroidx/lifecycle/MediatorLiveData;",
        "Ltech/ulo/library/viewmodel/State;",
        "unselectedApp",
        "unselectedFilesystem",
        "unselectedSession",
        "appsPreparationRequirementsHaveBeenSelected",
        "companionAppSetupComplete",
        "",
        "doTransitionIfRequirementsAreSelected",
        "transition",
        "Lkotlin/Function0;",
        "getState",
        "handleAppsPreparationState",
        "newState",
        "handleAssetRetrievalState",
        "Ltech/ulo/library/model/state/AssetRetrievalState;",
        "handleAssetVerificationState",
        "Ltech/ulo/library/model/state/AssetVerificationState;",
        "handleClearSupportFiles",
        "assetFileClearer",
        "Ltech/ulo/library/utils/AssetFileClearer;",
        "(Ltech/ulo/library/utils/AssetFileClearer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "handleCopyingFilesLocallyState",
        "Ltech/ulo/library/model/state/CopyingFilesLocallyState;",
        "handleDownloadRequirementsGenerationState",
        "Ltech/ulo/library/model/state/DownloadRequirementsGenerationState;",
        "handleDownloadingAssetsState",
        "Ltech/ulo/library/model/state/DownloadingAssetsState;",
        "handleExtractionState",
        "Ltech/ulo/library/model/state/ExtractionState;",
        "handleOnResume",
        "handleSessionHasBeenActivated",
        "handleSessionPreparationState",
        "handleStorageVerificationState",
        "Ltech/ulo/library/model/state/StorageVerificationState;",
        "handleUserInputCancelled",
        "lowAvailableStorageAcknowledged",
        "onCleared",
        "permissionsHaveBeenGranted",
        "postIllegalStateWithLog",
        "Ltech/ulo/library/viewmodel/IllegalState;",
        "resetStartupState",
        "selectionsCanBeMade",
        "sessionPreparationRequirementsHaveBeenSelected",
        "startAssetDownloads",
        "downloadRequirements",
        "",
        "Ltech/ulo/library/model/repositories/DownloadMetadata;",
        "submitAppDisplayPreferences",
        "displayPreferences",
        "Ltech/ulo/library/model/entities/DisplayPreferences;",
        "submitAppSelection",
        "app",
        "autoStart",
        "askConnectType",
        "askDisplayPreferences",
        "submitAppServiceTypePreferences",
        "serviceTypePreferences",
        "Ltech/ulo/library/model/entities/ServiceTypePreferences;",
        "submitAppsStartupEvent",
        "event",
        "Ltech/ulo/library/model/state/AppsStartupEvent;",
        "submitCompletedDownloadId",
        "id",
        "",
        "submitCompletedExtraction",
        "submitExtractionResult",
        "passed",
        "submitFailedExtraction",
        "submitFilesystemCredentials",
        "username",
        "password",
        "vncPassword",
        "submitFilesystemFlavor",
        "flavor",
        "isPaid",
        "executionType",
        "Ltech/ulo/library/model/entities/ExecutionType;",
        "submitSessionSelection",
        "session",
        "submitSessionStartupEvent",
        "Ltech/ulo/library/model/state/SessionStartupEvent;",
        "submitUserPayment",
        "userContributionChecked",
        "userFeedbackChecked",
        "waitForPermissions",
        "appToContinue",
        "sessionToContinue",
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
.field private appsAreWaitingForSelection:Z

.field private final appsStartupFsm:Ltech/ulo/library/model/state/AppsStartupFsm;

.field private final appsState:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ltech/ulo/library/model/state/AppsStartupState;",
            ">;"
        }
    .end annotation
.end field

.field private avfSessionStartDispatched:Z

.field private final className:Ljava/lang/String;

.field private final job:Lkotlinx/coroutines/CompletableJob;

.field private lastAskConnectType:Z

.field private lastAskDisplayPreferences:Z

.field private lastSelectedApp:Ltech/ulo/library/model/entities/App;

.field private lastSelectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

.field private lastSelectedSession:Ltech/ulo/library/model/entities/Session;

.field private final logger:Ltech/ulo/library/utils/Logger;

.field private final sessionStartupFsm:Ltech/ulo/library/model/state/SessionStartupFsm;

.field private final sessionState:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ltech/ulo/library/model/state/SessionStartupState;",
            ">;"
        }
    .end annotation
.end field

.field private sessionsAreWaitingForSelection:Z

.field private final state:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ltech/ulo/library/viewmodel/State;",
            ">;"
        }
    .end annotation
.end field

.field private final unselectedApp:Ltech/ulo/library/model/entities/App;

.field private final unselectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

.field private final unselectedSession:Ltech/ulo/library/model/entities/Session;


# direct methods
.method public static synthetic $r8$lambda$-l3A3aFWw-JtEjT8eEP1_p4_mtw(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->_init_$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dt6BeNniWl37CMUO3QIyyzp_Khg(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->_init_$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/state/SessionStartupFsm;Ltech/ulo/library/utils/Logger;)V
    .locals 68

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "appsStartupFsm"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "sessionStartupFsm"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "logger"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct/range {p0 .. p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 26
    iput-object v1, v0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->appsStartupFsm:Ltech/ulo/library/model/state/AppsStartupFsm;

    .line 27
    iput-object v2, v0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->sessionStartupFsm:Ltech/ulo/library/model/state/SessionStartupFsm;

    .line 28
    iput-object v3, v0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->logger:Ltech/ulo/library/utils/Logger;

    .line 31
    const-string v3, "MainVM"

    iput-object v3, v0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->className:Ljava/lang/String;

    .line 53
    new-instance v3, Ltech/ulo/library/model/entities/App;

    const/16 v14, 0xfe

    const/4 v15, 0x0

    const-string v5, "UNSELECTED"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v15}, Ltech/ulo/library/model/entities/App;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, v0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->unselectedApp:Ltech/ulo/library/model/entities/App;

    .line 54
    iput-object v3, v0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedApp:Ltech/ulo/library/model/entities/App;

    .line 56
    new-instance v3, Ltech/ulo/library/model/entities/Session;

    move-object/from16 v16, v3

    const v47, 0x1fffff8

    const/16 v48, 0x0

    const-wide/16 v17, -0x1

    const-string v19, "UNSELECTED"

    const-wide/16 v20, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const-wide/16 v44, 0x0

    const/16 v46, 0x0

    invoke-direct/range {v16 .. v48}, Ltech/ulo/library/model/entities/Session;-><init>(JLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/ulo/library/model/entities/ServiceType;JJLjava/lang/String;ZZIZFZZZZLtech/ulo/library/model/entities/ExecutionType;ZJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, v0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->unselectedSession:Ltech/ulo/library/model/entities/Session;

    .line 57
    iput-object v3, v0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedSession:Ltech/ulo/library/model/entities/Session;

    .line 59
    new-instance v3, Ltech/ulo/library/model/entities/Filesystem;

    move-object/from16 v49, v3

    const/16 v66, 0x7ffc

    const/16 v67, 0x0

    const-wide/16 v50, -0x1

    const-string v52, "UNSELECTED"

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    invoke-direct/range {v49 .. v67}, Ltech/ulo/library/model/entities/Filesystem;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZLtech/ulo/library/model/entities/ExecutionType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, v0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->unselectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

    .line 60
    iput-object v3, v0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

    .line 65
    invoke-virtual/range {p1 .. p1}, Ltech/ulo/library/model/state/AppsStartupFsm;->getState()Landroidx/lifecycle/LiveData;

    move-result-object v1

    iput-object v1, v0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->appsState:Landroidx/lifecycle/LiveData;

    .line 67
    invoke-virtual/range {p2 .. p2}, Ltech/ulo/library/model/state/SessionStartupFsm;->getState()Landroidx/lifecycle/LiveData;

    move-result-object v2

    iput-object v2, v0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->sessionState:Landroidx/lifecycle/LiveData;

    .line 69
    new-instance v3, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v3}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 70
    sget-object v4, Ltech/ulo/library/viewmodel/WaitingForInput;->INSTANCE:Ltech/ulo/library/viewmodel/WaitingForInput;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    .line 69
    iput-object v3, v0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->state:Landroidx/lifecycle/MediatorLiveData;

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 81
    invoke-static {v4, v5, v4}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v4

    iput-object v4, v0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->job:Lkotlinx/coroutines/CompletableJob;

    .line 91
    new-instance v4, Ltech/ulo/library/viewmodel/MainActivityViewModel$1;

    invoke-direct {v4, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel$1;-><init>(Ltech/ulo/library/viewmodel/MainActivityViewModel;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    new-instance v5, Ltech/ulo/library/viewmodel/MainActivityViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Ltech/ulo/library/viewmodel/MainActivityViewModel$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v3, v1, v5}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 115
    new-instance v1, Ltech/ulo/library/viewmodel/MainActivityViewModel$2;

    invoke-direct {v1, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel$2;-><init>(Ltech/ulo/library/viewmodel/MainActivityViewModel;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance v4, Ltech/ulo/library/viewmodel/MainActivityViewModel$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1}, Ltech/ulo/library/viewmodel/MainActivityViewModel$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v3, v2, v4}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public synthetic constructor <init>(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/state/SessionStartupFsm;Ltech/ulo/library/utils/Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 28
    new-instance p3, Ltech/ulo/library/utils/SentryLogger;

    invoke-direct {p3}, Ltech/ulo/library/utils/SentryLogger;-><init>()V

    check-cast p3, Ltech/ulo/library/utils/Logger;

    .line 25
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ltech/ulo/library/viewmodel/MainActivityViewModel;-><init>(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/state/SessionStartupFsm;Ltech/ulo/library/utils/Logger;)V

    return-void
.end method

.method private static final _init_$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final _init_$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getClassName$p(Ltech/ulo/library/viewmodel/MainActivityViewModel;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->className:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Ltech/ulo/library/viewmodel/MainActivityViewModel;)Ltech/ulo/library/utils/Logger;
    .locals 0

    .line 25
    iget-object p0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->logger:Ltech/ulo/library/utils/Logger;

    return-object p0
.end method

.method public static final synthetic access$getState$p(Ltech/ulo/library/viewmodel/MainActivityViewModel;)Landroidx/lifecycle/MediatorLiveData;
    .locals 0

    .line 25
    iget-object p0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->state:Landroidx/lifecycle/MediatorLiveData;

    return-object p0
.end method

.method public static final synthetic access$handleAppsPreparationState(Ltech/ulo/library/viewmodel/MainActivityViewModel;Ltech/ulo/library/model/state/AppsStartupState;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->handleAppsPreparationState(Ltech/ulo/library/model/state/AppsStartupState;)V

    return-void
.end method

.method public static final synthetic access$handleSessionPreparationState(Ltech/ulo/library/viewmodel/MainActivityViewModel;Ltech/ulo/library/model/state/SessionStartupState;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->handleSessionPreparationState(Ltech/ulo/library/model/state/SessionStartupState;)V

    return-void
.end method

.method public static final synthetic access$resetStartupState(Ltech/ulo/library/viewmodel/MainActivityViewModel;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->resetStartupState()V

    return-void
.end method

.method public static final synthetic access$setAppsAreWaitingForSelection$p(Ltech/ulo/library/viewmodel/MainActivityViewModel;Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->appsAreWaitingForSelection:Z

    return-void
.end method

.method public static final synthetic access$submitSessionStartupEvent(Ltech/ulo/library/viewmodel/MainActivityViewModel;Ltech/ulo/library/model/state/SessionStartupEvent;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitSessionStartupEvent(Ltech/ulo/library/model/state/SessionStartupEvent;)V

    return-void
.end method

.method private final appsPreparationRequirementsHaveBeenSelected()Z
    .locals 2

    .line 515
    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedApp:Ltech/ulo/library/model/entities/App;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->unselectedApp:Ltech/ulo/library/model/entities/App;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->sessionPreparationRequirementsHaveBeenSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final doTransitionIfRequirementsAreSelected(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 519
    invoke-direct {p0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->sessionPreparationRequirementsHaveBeenSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    sget-object p1, Ltech/ulo/library/viewmodel/NoSessionSelectedWhenTransitionNecessary;->INSTANCE:Ltech/ulo/library/viewmodel/NoSessionSelectedWhenTransitionNecessary;

    check-cast p1, Ltech/ulo/library/viewmodel/IllegalState;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->postIllegalStateWithLog(Ltech/ulo/library/viewmodel/IllegalState;)V

    return-void

    .line 523
    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final handleAppsPreparationState(Ltech/ulo/library/model/state/AppsStartupState;)V
    .locals 3

    .line 278
    instance-of v0, p1, Ltech/ulo/library/model/state/WaitingForAppSelection;

    if-nez v0, :cond_14

    instance-of v1, p1, Ltech/ulo/library/model/state/FetchingDatabaseEntries;

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 281
    :cond_0
    invoke-direct {p0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->appsPreparationRequirementsHaveBeenSelected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 282
    sget-object p1, Ltech/ulo/library/viewmodel/NoAppSelectedWhenTransitionNecessary;->INSTANCE:Ltech/ulo/library/viewmodel/NoAppSelectedWhenTransitionNecessary;

    check-cast p1, Ltech/ulo/library/viewmodel/IllegalState;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->postIllegalStateWithLog(Ltech/ulo/library/viewmodel/IllegalState;)V

    return-void

    .line 287
    :cond_1
    instance-of v2, p1, Ltech/ulo/library/model/state/IncorrectAppTransition;

    if-eqz v2, :cond_2

    .line 288
    new-instance v0, Ltech/ulo/library/viewmodel/IllegalStateTransition;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ltech/ulo/library/viewmodel/IllegalStateTransition;-><init>(Ljava/lang/String;)V

    check-cast v0, Ltech/ulo/library/viewmodel/IllegalState;

    invoke-direct {p0, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->postIllegalStateWithLog(Ltech/ulo/library/viewmodel/IllegalState;)V

    goto/16 :goto_0

    :cond_2
    if-nez v0, :cond_14

    if-nez v1, :cond_14

    .line 292
    instance-of v0, p1, Ltech/ulo/library/model/state/DatabaseEntriesFetched;

    if-eqz v0, :cond_3

    .line 293
    iget-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->state:Landroidx/lifecycle/MediatorLiveData;

    sget-object v0, Ltech/ulo/library/viewmodel/UserFeedbackCheckRequired;->INSTANCE:Ltech/ulo/library/viewmodel/UserFeedbackCheckRequired;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 295
    :cond_3
    instance-of v0, p1, Ltech/ulo/library/model/state/DatabaseEntriesFetchFailed;

    if-eqz v0, :cond_4

    .line 296
    sget-object p1, Ltech/ulo/library/viewmodel/ErrorFetchingAppDatabaseEntries;->INSTANCE:Ltech/ulo/library/viewmodel/ErrorFetchingAppDatabaseEntries;

    check-cast p1, Ltech/ulo/library/viewmodel/IllegalState;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->postIllegalStateWithLog(Ltech/ulo/library/viewmodel/IllegalState;)V

    goto/16 :goto_0

    .line 298
    :cond_4
    instance-of v0, p1, Ltech/ulo/library/model/state/UserFeedbackCheckComplete;

    if-eqz v0, :cond_5

    .line 299
    iget-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->state:Landroidx/lifecycle/MediatorLiveData;

    sget-object v0, Ltech/ulo/library/viewmodel/UserContributionCheckRequired;->INSTANCE:Ltech/ulo/library/viewmodel/UserContributionCheckRequired;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 301
    :cond_5
    instance-of v0, p1, Ltech/ulo/library/model/state/UserContributionCheckComplete;

    if-eqz v0, :cond_6

    .line 302
    new-instance p1, Ltech/ulo/library/model/state/CheckAppsFilesystemFlavor;

    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

    invoke-direct {p1, v0}, Ltech/ulo/library/model/state/CheckAppsFilesystemFlavor;-><init>(Ltech/ulo/library/model/entities/Filesystem;)V

    check-cast p1, Ltech/ulo/library/model/state/AppsStartupEvent;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitAppsStartupEvent(Ltech/ulo/library/model/state/AppsStartupEvent;)V

    goto/16 :goto_0

    .line 304
    :cond_6
    instance-of v0, p1, Ltech/ulo/library/model/state/AppsFilesystemHasFlavor;

    if-eqz v0, :cond_7

    .line 305
    new-instance p1, Ltech/ulo/library/model/state/CheckPayment;

    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedSession:Ltech/ulo/library/model/entities/Session;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

    invoke-direct {p1, v0, v1}, Ltech/ulo/library/model/state/CheckPayment;-><init>(Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/Filesystem;)V

    check-cast p1, Ltech/ulo/library/model/state/AppsStartupEvent;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitAppsStartupEvent(Ltech/ulo/library/model/state/AppsStartupEvent;)V

    goto/16 :goto_0

    .line 307
    :cond_7
    instance-of v0, p1, Ltech/ulo/library/model/state/AppsFilesystemRequiresFlavor;

    if-eqz v0, :cond_8

    .line 308
    iget-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->state:Landroidx/lifecycle/MediatorLiveData;

    sget-object v0, Ltech/ulo/library/viewmodel/FilesystemFlavorRequired;->INSTANCE:Ltech/ulo/library/viewmodel/FilesystemFlavorRequired;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 310
    :cond_8
    instance-of v0, p1, Ltech/ulo/library/model/state/PaymentMade;

    if-eqz v0, :cond_9

    .line 311
    new-instance p1, Ltech/ulo/library/model/state/CheckAppsFilesystemCredentials;

    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

    invoke-direct {p1, v0}, Ltech/ulo/library/model/state/CheckAppsFilesystemCredentials;-><init>(Ltech/ulo/library/model/entities/Filesystem;)V

    check-cast p1, Ltech/ulo/library/model/state/AppsStartupEvent;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitAppsStartupEvent(Ltech/ulo/library/model/state/AppsStartupEvent;)V

    goto/16 :goto_0

    .line 313
    :cond_9
    instance-of v0, p1, Ltech/ulo/library/model/state/PaymentRequired;

    if-eqz v0, :cond_a

    .line 314
    iget-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->state:Landroidx/lifecycle/MediatorLiveData;

    sget-object v0, Ltech/ulo/library/viewmodel/UserPaymentRequired;->INSTANCE:Ltech/ulo/library/viewmodel/UserPaymentRequired;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 316
    :cond_a
    instance-of v0, p1, Ltech/ulo/library/model/state/AppsFilesystemHasCredentials;

    if-eqz v0, :cond_b

    .line 317
    new-instance p1, Ltech/ulo/library/model/state/CheckAppSessionServiceTypePreferences;

    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedSession:Ltech/ulo/library/model/entities/Session;

    invoke-direct {p1, v0}, Ltech/ulo/library/model/state/CheckAppSessionServiceTypePreferences;-><init>(Ltech/ulo/library/model/entities/Session;)V

    check-cast p1, Ltech/ulo/library/model/state/AppsStartupEvent;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitAppsStartupEvent(Ltech/ulo/library/model/state/AppsStartupEvent;)V

    goto/16 :goto_0

    .line 319
    :cond_b
    instance-of v0, p1, Ltech/ulo/library/model/state/AppsFilesystemRequiresCredentials;

    if-eqz v0, :cond_c

    .line 320
    iget-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->state:Landroidx/lifecycle/MediatorLiveData;

    sget-object v0, Ltech/ulo/library/viewmodel/FilesystemCredentialsRequired;->INSTANCE:Ltech/ulo/library/viewmodel/FilesystemCredentialsRequired;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 322
    :cond_c
    instance-of v0, p1, Ltech/ulo/library/model/state/AppHasServiceTypePreferencesSet;

    if-eqz v0, :cond_d

    .line 323
    new-instance p1, Ltech/ulo/library/model/state/CheckAppSessionDisplayPreferences;

    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedSession:Ltech/ulo/library/model/entities/Session;

    invoke-direct {p1, v0}, Ltech/ulo/library/model/state/CheckAppSessionDisplayPreferences;-><init>(Ltech/ulo/library/model/entities/Session;)V

    check-cast p1, Ltech/ulo/library/model/state/AppsStartupEvent;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitAppsStartupEvent(Ltech/ulo/library/model/state/AppsStartupEvent;)V

    goto/16 :goto_0

    .line 325
    :cond_d
    instance-of v0, p1, Ltech/ulo/library/model/state/AppRequiresServiceTypePreferences;

    if-eqz v0, :cond_e

    .line 326
    iget-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->state:Landroidx/lifecycle/MediatorLiveData;

    new-instance v0, Ltech/ulo/library/viewmodel/AppServiceTypePreferenceRequired;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedSession:Ltech/ulo/library/model/entities/Session;

    invoke-direct {v0, v1}, Ltech/ulo/library/viewmodel/AppServiceTypePreferenceRequired;-><init>(Ltech/ulo/library/model/entities/Session;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 328
    :cond_e
    instance-of v0, p1, Ltech/ulo/library/model/state/AppHasDisplayPreferencesSet;

    if-eqz v0, :cond_f

    .line 329
    new-instance p1, Ltech/ulo/library/model/state/CopyAppScriptToFilesystem;

    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedApp:Ltech/ulo/library/model/entities/App;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

    invoke-direct {p1, v0, v1}, Ltech/ulo/library/model/state/CopyAppScriptToFilesystem;-><init>(Ltech/ulo/library/model/entities/App;Ltech/ulo/library/model/entities/Filesystem;)V

    check-cast p1, Ltech/ulo/library/model/state/AppsStartupEvent;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitAppsStartupEvent(Ltech/ulo/library/model/state/AppsStartupEvent;)V

    goto :goto_0

    .line 331
    :cond_f
    instance-of v0, p1, Ltech/ulo/library/model/state/AppRequiresDisplayPreferences;

    if-eqz v0, :cond_10

    .line 332
    iget-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->state:Landroidx/lifecycle/MediatorLiveData;

    new-instance v0, Ltech/ulo/library/viewmodel/AppDisplayPreferencesRequired;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedSession:Ltech/ulo/library/model/entities/Session;

    invoke-direct {v0, v1}, Ltech/ulo/library/viewmodel/AppDisplayPreferencesRequired;-><init>(Ltech/ulo/library/model/entities/Session;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 334
    :cond_10
    instance-of v0, p1, Ltech/ulo/library/model/state/CopyingAppScript;

    if-nez v0, :cond_14

    .line 335
    instance-of v0, p1, Ltech/ulo/library/model/state/AppScriptCopySucceeded;

    if-eqz v0, :cond_11

    .line 336
    new-instance p1, Ltech/ulo/library/model/state/SyncDatabaseEntries;

    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedApp:Ltech/ulo/library/model/entities/App;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedSession:Ltech/ulo/library/model/entities/Session;

    iget-object v2, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

    invoke-direct {p1, v0, v1, v2}, Ltech/ulo/library/model/state/SyncDatabaseEntries;-><init>(Ltech/ulo/library/model/entities/App;Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/Filesystem;)V

    check-cast p1, Ltech/ulo/library/model/state/AppsStartupEvent;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitAppsStartupEvent(Ltech/ulo/library/model/state/AppsStartupEvent;)V

    goto :goto_0

    .line 338
    :cond_11
    instance-of v0, p1, Ltech/ulo/library/model/state/AppScriptCopyFailed;

    if-eqz v0, :cond_12

    .line 339
    sget-object p1, Ltech/ulo/library/viewmodel/ErrorCopyingAppScript;->INSTANCE:Ltech/ulo/library/viewmodel/ErrorCopyingAppScript;

    check-cast p1, Ltech/ulo/library/viewmodel/IllegalState;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->postIllegalStateWithLog(Ltech/ulo/library/viewmodel/IllegalState;)V

    goto :goto_0

    .line 341
    :cond_12
    instance-of v0, p1, Ltech/ulo/library/model/state/SyncingDatabaseEntries;

    if-nez v0, :cond_14

    .line 342
    instance-of p1, p1, Ltech/ulo/library/model/state/AppDatabaseEntriesSynced;

    if-eqz p1, :cond_13

    .line 343
    new-instance p1, Ltech/ulo/library/model/state/SessionSelected;

    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedSession:Ltech/ulo/library/model/entities/Session;

    invoke-direct {p1, v0}, Ltech/ulo/library/model/state/SessionSelected;-><init>(Ltech/ulo/library/model/entities/Session;)V

    check-cast p1, Ltech/ulo/library/model/state/SessionStartupEvent;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitSessionStartupEvent(Ltech/ulo/library/model/state/SessionStartupEvent;)V

    goto :goto_0

    :cond_13
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_14
    :goto_0
    return-void
.end method

.method private final handleAssetRetrievalState(Ltech/ulo/library/model/state/AssetRetrievalState;)V
    .locals 1

    .line 413
    instance-of v0, p1, Ltech/ulo/library/model/state/RetrievingAssetLists;

    if-eqz v0, :cond_0

    iget-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->state:Landroidx/lifecycle/MediatorLiveData;

    sget-object v0, Ltech/ulo/library/viewmodel/FetchingAssetLists;->INSTANCE:Ltech/ulo/library/viewmodel/FetchingAssetLists;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 414
    :cond_0
    instance-of v0, p1, Ltech/ulo/library/model/state/AssetListsRetrievalSucceeded;

    if-eqz v0, :cond_1

    new-instance v0, Ltech/ulo/library/viewmodel/MainActivityViewModel$handleAssetRetrievalState$1;

    invoke-direct {v0, p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel$handleAssetRetrievalState$1;-><init>(Ltech/ulo/library/viewmodel/MainActivityViewModel;Ltech/ulo/library/model/state/AssetRetrievalState;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->doTransitionIfRequirementsAreSelected(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 417
    :cond_1
    instance-of p1, p1, Ltech/ulo/library/model/state/AssetListsRetrievalFailed;

    if-eqz p1, :cond_2

    sget-object p1, Ltech/ulo/library/viewmodel/ErrorFetchingAssetLists;->INSTANCE:Ltech/ulo/library/viewmodel/ErrorFetchingAssetLists;

    check-cast p1, Ltech/ulo/library/viewmodel/IllegalState;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->postIllegalStateWithLog(Ltech/ulo/library/viewmodel/IllegalState;)V

    :goto_0
    return-void

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final handleAssetVerificationState(Ltech/ulo/library/model/state/AssetVerificationState;)V
    .locals 1

    .line 470
    instance-of v0, p1, Ltech/ulo/library/model/state/VerifyingFilesystemAssets;

    if-eqz v0, :cond_0

    iget-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->state:Landroidx/lifecycle/MediatorLiveData;

    sget-object v0, Ltech/ulo/library/viewmodel/VerifyingFilesystem;->INSTANCE:Ltech/ulo/library/viewmodel/VerifyingFilesystem;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 471
    :cond_0
    instance-of v0, p1, Ltech/ulo/library/model/state/FilesystemAssetVerificationSucceeded;

    if-eqz v0, :cond_1

    new-instance p1, Ltech/ulo/library/viewmodel/MainActivityViewModel$handleAssetVerificationState$1;

    invoke-direct {p1, p0}, Ltech/ulo/library/viewmodel/MainActivityViewModel$handleAssetVerificationState$1;-><init>(Ltech/ulo/library/viewmodel/MainActivityViewModel;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->doTransitionIfRequirementsAreSelected(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 474
    :cond_1
    instance-of v0, p1, Ltech/ulo/library/model/state/AssetsAreMissingFromSupportDirectories;

    if-eqz v0, :cond_2

    sget-object p1, Ltech/ulo/library/viewmodel/AssetsHaveNotBeenDownloaded;->INSTANCE:Ltech/ulo/library/viewmodel/AssetsHaveNotBeenDownloaded;

    check-cast p1, Ltech/ulo/library/viewmodel/IllegalState;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->postIllegalStateWithLog(Ltech/ulo/library/viewmodel/IllegalState;)V

    goto :goto_0

    .line 475
    :cond_2
    instance-of p1, p1, Ltech/ulo/library/model/state/FilesystemAssetCopyFailed;

    if-eqz p1, :cond_3

    sget-object p1, Ltech/ulo/library/viewmodel/FailedToCopyAssetsToFilesystem;->INSTANCE:Ltech/ulo/library/viewmodel/FailedToCopyAssetsToFilesystem;

    check-cast p1, Ltech/ulo/library/viewmodel/IllegalState;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->postIllegalStateWithLog(Ltech/ulo/library/viewmodel/IllegalState;)V

    :goto_0
    return-void

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final handleCopyingFilesLocallyState(Ltech/ulo/library/model/state/CopyingFilesLocallyState;)V
    .locals 1

    .line 455
    instance-of v0, p1, Ltech/ulo/library/model/state/CopyingFilesToLocalDirectories;

    if-eqz v0, :cond_0

    iget-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->state:Landroidx/lifecycle/MediatorLiveData;

    sget-object v0, Ltech/ulo/library/viewmodel/CopyingDownloads;->INSTANCE:Ltech/ulo/library/viewmodel/CopyingDownloads;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 456
    :cond_0
    instance-of v0, p1, Ltech/ulo/library/model/state/LocalDirectoryCopySucceeded;

    if-eqz v0, :cond_2

    .line 457
    invoke-direct {p0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->sessionPreparationRequirementsHaveBeenSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 458
    new-instance p1, Ltech/ulo/library/model/state/VerifyFilesystemAssets;

    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

    invoke-direct {p1, v0}, Ltech/ulo/library/model/state/VerifyFilesystemAssets;-><init>(Ltech/ulo/library/model/entities/Filesystem;)V

    check-cast p1, Ltech/ulo/library/model/state/SessionStartupEvent;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitSessionStartupEvent(Ltech/ulo/library/model/state/SessionStartupEvent;)V

    goto :goto_0

    .line 460
    :cond_1
    iget-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->state:Landroidx/lifecycle/MediatorLiveData;

    sget-object v0, Ltech/ulo/library/viewmodel/ProgressBarOperationComplete;->INSTANCE:Ltech/ulo/library/viewmodel/ProgressBarOperationComplete;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    .line 461
    invoke-direct {p0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->resetStartupState()V

    goto :goto_0

    .line 464
    :cond_2
    instance-of p1, p1, Ltech/ulo/library/model/state/LocalDirectoryCopyFailed;

    if-eqz p1, :cond_3

    sget-object p1, Ltech/ulo/library/viewmodel/FailedToCopyAssetsToLocalStorage;->INSTANCE:Ltech/ulo/library/viewmodel/FailedToCopyAssetsToLocalStorage;

    check-cast p1, Ltech/ulo/library/viewmodel/IllegalState;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->postIllegalStateWithLog(Ltech/ulo/library/viewmodel/IllegalState;)V

    :goto_0
    return-void

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final handleDownloadRequirementsGenerationState(Ltech/ulo/library/model/state/DownloadRequirementsGenerationState;)V
    .locals 2

    .line 423
    instance-of v0, p1, Ltech/ulo/library/model/state/GeneratingDownloadRequirements;

    if-eqz v0, :cond_0

    iget-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->state:Landroidx/lifecycle/MediatorLiveData;

    sget-object v0, Ltech/ulo/library/viewmodel/CheckingForAssetsUpdates;->INSTANCE:Ltech/ulo/library/viewmodel/CheckingForAssetsUpdates;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 424
    :cond_0
    instance-of v0, p1, Ltech/ulo/library/model/state/RemoteUnreachableForGeneration;

    if-eqz v0, :cond_1

    .line 425
    new-instance p1, Ltech/ulo/library/viewmodel/ErrorGeneratingDownloads;

    sget v0, Ltech/ulo/library/R$string;->illegal_state_remote_unreachable_during_generation:I

    invoke-direct {p1, v0}, Ltech/ulo/library/viewmodel/ErrorGeneratingDownloads;-><init>(I)V

    check-cast p1, Ltech/ulo/library/viewmodel/IllegalState;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->postIllegalStateWithLog(Ltech/ulo/library/viewmodel/IllegalState;)V

    goto :goto_0

    .line 427
    :cond_1
    instance-of v0, p1, Ltech/ulo/library/model/state/DownloadsRequired;

    if-eqz v0, :cond_3

    .line 428
    check-cast p1, Ltech/ulo/library/model/state/DownloadsRequired;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/DownloadsRequired;->getLargeDownloadRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 429
    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->state:Landroidx/lifecycle/MediatorLiveData;

    new-instance v1, Ltech/ulo/library/viewmodel/LargeDownloadRequired;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/DownloadsRequired;->getDownloadsRequired()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ltech/ulo/library/viewmodel/LargeDownloadRequired;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 431
    :cond_2
    invoke-virtual {p1}, Ltech/ulo/library/model/state/DownloadsRequired;->getDownloadsRequired()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->startAssetDownloads(Ljava/util/List;)V

    goto :goto_0

    .line 434
    :cond_3
    instance-of p1, p1, Ltech/ulo/library/model/state/NoDownloadsRequired;

    if-eqz p1, :cond_4

    new-instance p1, Ltech/ulo/library/viewmodel/MainActivityViewModel$handleDownloadRequirementsGenerationState$1;

    invoke-direct {p1, p0}, Ltech/ulo/library/viewmodel/MainActivityViewModel$handleDownloadRequirementsGenerationState$1;-><init>(Ltech/ulo/library/viewmodel/MainActivityViewModel;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->doTransitionIfRequirementsAreSelected(Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void

    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final handleDownloadingAssetsState(Ltech/ulo/library/model/state/DownloadingAssetsState;)V
    .locals 3

    .line 442
    instance-of v0, p1, Ltech/ulo/library/model/state/DownloadingAssets;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->state:Landroidx/lifecycle/MediatorLiveData;

    new-instance v1, Ltech/ulo/library/viewmodel/DownloadProgress;

    check-cast p1, Ltech/ulo/library/model/state/DownloadingAssets;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/DownloadingAssets;->getNumCompleted()I

    move-result v2

    invoke-virtual {p1}, Ltech/ulo/library/model/state/DownloadingAssets;->getNumTotal()I

    move-result p1

    invoke-direct {v1, v2, p1}, Ltech/ulo/library/viewmodel/DownloadProgress;-><init>(II)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 443
    :cond_0
    instance-of v0, p1, Ltech/ulo/library/model/state/DownloadsHaveSucceeded;

    if-eqz v0, :cond_1

    sget-object p1, Ltech/ulo/library/model/state/CopyDownloadsToLocalStorage;->INSTANCE:Ltech/ulo/library/model/state/CopyDownloadsToLocalStorage;

    check-cast p1, Ltech/ulo/library/model/state/SessionStartupEvent;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitSessionStartupEvent(Ltech/ulo/library/model/state/SessionStartupEvent;)V

    goto :goto_0

    .line 444
    :cond_1
    instance-of v0, p1, Ltech/ulo/library/model/state/DownloadsHaveFailed;

    if-eqz v0, :cond_2

    .line 445
    new-instance v0, Ltech/ulo/library/viewmodel/DownloadsDidNotCompleteSuccessfully;

    check-cast p1, Ltech/ulo/library/model/state/DownloadsHaveFailed;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/DownloadsHaveFailed;->getReason()Ltech/ulo/library/utils/DownloadFailureLocalizationData;

    move-result-object p1

    invoke-direct {v0, p1}, Ltech/ulo/library/viewmodel/DownloadsDidNotCompleteSuccessfully;-><init>(Ltech/ulo/library/utils/DownloadFailureLocalizationData;)V

    check-cast v0, Ltech/ulo/library/viewmodel/IllegalState;

    invoke-direct {p0, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->postIllegalStateWithLog(Ltech/ulo/library/viewmodel/IllegalState;)V

    goto :goto_0

    .line 447
    :cond_2
    instance-of p1, p1, Ltech/ulo/library/model/state/AttemptedCacheAccessWhileEmpty;

    if-eqz p1, :cond_3

    .line 448
    sget-object p1, Ltech/ulo/library/viewmodel/DownloadCacheAccessedWhileEmpty;->INSTANCE:Ltech/ulo/library/viewmodel/DownloadCacheAccessedWhileEmpty;

    check-cast p1, Ltech/ulo/library/viewmodel/IllegalState;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->postIllegalStateWithLog(Ltech/ulo/library/viewmodel/IllegalState;)V

    :goto_0
    return-void

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final handleSessionPreparationState(Ltech/ulo/library/model/state/SessionStartupState;)V
    .locals 2

    .line 351
    instance-of v0, p1, Ltech/ulo/library/model/state/WaitingForSessionSelection;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 352
    iput-boolean v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->sessionsAreWaitingForSelection:Z

    .line 356
    :cond_0
    instance-of v1, p1, Ltech/ulo/library/model/state/IncorrectSessionTransition;

    if-eqz v1, :cond_1

    .line 357
    new-instance v0, Ltech/ulo/library/viewmodel/IllegalStateTransition;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ltech/ulo/library/viewmodel/IllegalStateTransition;-><init>(Ljava/lang/String;)V

    check-cast v0, Ltech/ulo/library/viewmodel/IllegalState;

    invoke-direct {p0, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->postIllegalStateWithLog(Ltech/ulo/library/viewmodel/IllegalState;)V

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 360
    iput-boolean v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->sessionsAreWaitingForSelection:Z

    goto/16 :goto_0

    .line 362
    :cond_2
    instance-of v0, p1, Ltech/ulo/library/model/state/SingleSessionSupported;

    if-eqz v0, :cond_3

    .line 363
    iget-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->state:Landroidx/lifecycle/MediatorLiveData;

    sget-object v0, Ltech/ulo/library/viewmodel/CanOnlyStartSingleSession;->INSTANCE:Ltech/ulo/library/viewmodel/CanOnlyStartSingleSession;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 365
    :cond_3
    instance-of v0, p1, Ltech/ulo/library/model/state/SessionIsRestartable;

    if-eqz v0, :cond_4

    .line 366
    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->state:Landroidx/lifecycle/MediatorLiveData;

    new-instance v1, Ltech/ulo/library/viewmodel/SessionCanBeRestarted;

    check-cast p1, Ltech/ulo/library/model/state/SessionIsRestartable;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/SessionIsRestartable;->getSession()Ltech/ulo/library/model/entities/Session;

    move-result-object p1

    invoke-direct {v1, p1}, Ltech/ulo/library/viewmodel/SessionCanBeRestarted;-><init>(Ltech/ulo/library/model/entities/Session;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 368
    :cond_4
    instance-of v0, p1, Ltech/ulo/library/model/state/AvfSessionSelected;

    if-eqz v0, :cond_5

    .line 369
    check-cast p1, Ltech/ulo/library/model/state/AvfSessionSelected;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/AvfSessionSelected;->getSession()Ltech/ulo/library/model/entities/Session;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedSession:Ltech/ulo/library/model/entities/Session;

    .line 370
    invoke-virtual {p1}, Ltech/ulo/library/model/state/AvfSessionSelected;->getFilesystem()Ltech/ulo/library/model/entities/Filesystem;

    move-result-object p1

    iput-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

    .line 372
    iget-boolean p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->avfSessionStartDispatched:Z

    if-nez p1, :cond_d

    .line 373
    iput-boolean v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->avfSessionStartDispatched:Z

    .line 374
    iget-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->state:Landroidx/lifecycle/MediatorLiveData;

    new-instance v0, Ltech/ulo/library/viewmodel/SessionCanBeStarted;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedSession:Ltech/ulo/library/model/entities/Session;

    invoke-direct {v0, v1}, Ltech/ulo/library/viewmodel/SessionCanBeStarted;-><init>(Ltech/ulo/library/model/entities/Session;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 379
    :cond_5
    instance-of v0, p1, Ltech/ulo/library/model/state/SessionIsReadyForPreparation;

    if-eqz v0, :cond_6

    .line 380
    check-cast p1, Ltech/ulo/library/model/state/SessionIsReadyForPreparation;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/SessionIsReadyForPreparation;->getSession()Ltech/ulo/library/model/entities/Session;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedSession:Ltech/ulo/library/model/entities/Session;

    .line 381
    invoke-virtual {p1}, Ltech/ulo/library/model/state/SessionIsReadyForPreparation;->getFilesystem()Ltech/ulo/library/model/entities/Filesystem;

    move-result-object p1

    iput-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

    .line 382
    iget-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->state:Landroidx/lifecycle/MediatorLiveData;

    sget-object v0, Ltech/ulo/library/viewmodel/StartingSetup;->INSTANCE:Ltech/ulo/library/viewmodel/StartingSetup;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    .line 383
    new-instance p1, Ltech/ulo/library/viewmodel/MainActivityViewModel$handleSessionPreparationState$1;

    invoke-direct {p1, p0}, Ltech/ulo/library/viewmodel/MainActivityViewModel$handleSessionPreparationState$1;-><init>(Ltech/ulo/library/viewmodel/MainActivityViewModel;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->doTransitionIfRequirementsAreSelected(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 387
    :cond_6
    instance-of v0, p1, Ltech/ulo/library/model/state/AssetRetrievalState;

    if-eqz v0, :cond_7

    .line 388
    check-cast p1, Ltech/ulo/library/model/state/AssetRetrievalState;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->handleAssetRetrievalState(Ltech/ulo/library/model/state/AssetRetrievalState;)V

    goto :goto_0

    .line 390
    :cond_7
    instance-of v0, p1, Ltech/ulo/library/model/state/DownloadRequirementsGenerationState;

    if-eqz v0, :cond_8

    .line 391
    check-cast p1, Ltech/ulo/library/model/state/DownloadRequirementsGenerationState;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->handleDownloadRequirementsGenerationState(Ltech/ulo/library/model/state/DownloadRequirementsGenerationState;)V

    goto :goto_0

    .line 393
    :cond_8
    instance-of v0, p1, Ltech/ulo/library/model/state/DownloadingAssetsState;

    if-eqz v0, :cond_9

    .line 394
    check-cast p1, Ltech/ulo/library/model/state/DownloadingAssetsState;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->handleDownloadingAssetsState(Ltech/ulo/library/model/state/DownloadingAssetsState;)V

    goto :goto_0

    .line 396
    :cond_9
    instance-of v0, p1, Ltech/ulo/library/model/state/CopyingFilesLocallyState;

    if-eqz v0, :cond_a

    .line 397
    check-cast p1, Ltech/ulo/library/model/state/CopyingFilesLocallyState;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->handleCopyingFilesLocallyState(Ltech/ulo/library/model/state/CopyingFilesLocallyState;)V

    goto :goto_0

    .line 399
    :cond_a
    instance-of v0, p1, Ltech/ulo/library/model/state/AssetVerificationState;

    if-eqz v0, :cond_b

    .line 400
    check-cast p1, Ltech/ulo/library/model/state/AssetVerificationState;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->handleAssetVerificationState(Ltech/ulo/library/model/state/AssetVerificationState;)V

    goto :goto_0

    .line 402
    :cond_b
    instance-of v0, p1, Ltech/ulo/library/model/state/ExtractionState;

    if-eqz v0, :cond_c

    .line 403
    check-cast p1, Ltech/ulo/library/model/state/ExtractionState;

    invoke-virtual {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->handleExtractionState(Ltech/ulo/library/model/state/ExtractionState;)V

    goto :goto_0

    .line 405
    :cond_c
    instance-of v0, p1, Ltech/ulo/library/model/state/StorageVerificationState;

    if-eqz v0, :cond_e

    .line 406
    check-cast p1, Ltech/ulo/library/model/state/StorageVerificationState;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->handleStorageVerificationState(Ltech/ulo/library/model/state/StorageVerificationState;)V

    :cond_d
    :goto_0
    return-void

    :cond_e
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final handleStorageVerificationState(Ltech/ulo/library/model/state/StorageVerificationState;)V
    .locals 1

    .line 481
    instance-of v0, p1, Ltech/ulo/library/model/state/VerifyingSufficientStorage;

    if-eqz v0, :cond_0

    iget-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->state:Landroidx/lifecycle/MediatorLiveData;

    sget-object v0, Ltech/ulo/library/viewmodel/VerifyingAvailableStorage;->INSTANCE:Ltech/ulo/library/viewmodel/VerifyingAvailableStorage;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 482
    :cond_0
    instance-of v0, p1, Ltech/ulo/library/model/state/VerifyingSufficientStorageFailed;

    if-eqz v0, :cond_1

    sget-object p1, Ltech/ulo/library/viewmodel/InsufficientAvailableStorage;->INSTANCE:Ltech/ulo/library/viewmodel/InsufficientAvailableStorage;

    check-cast p1, Ltech/ulo/library/viewmodel/IllegalState;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->postIllegalStateWithLog(Ltech/ulo/library/viewmodel/IllegalState;)V

    goto :goto_0

    .line 483
    :cond_1
    instance-of v0, p1, Ltech/ulo/library/model/state/LowAvailableStorage;

    if-eqz v0, :cond_2

    iget-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->state:Landroidx/lifecycle/MediatorLiveData;

    sget-object v0, Ltech/ulo/library/viewmodel/LowStorageAcknowledgementRequired;->INSTANCE:Ltech/ulo/library/viewmodel/LowStorageAcknowledgementRequired;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 484
    :cond_2
    instance-of p1, p1, Ltech/ulo/library/model/state/StorageVerificationCompletedSuccessfully;

    if-eqz p1, :cond_3

    new-instance p1, Ltech/ulo/library/viewmodel/MainActivityViewModel$handleStorageVerificationState$1;

    invoke-direct {p1, p0}, Ltech/ulo/library/viewmodel/MainActivityViewModel$handleStorageVerificationState$1;-><init>(Ltech/ulo/library/viewmodel/MainActivityViewModel;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->doTransitionIfRequirementsAreSelected(Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final postIllegalStateWithLog(Ltech/ulo/library/viewmodel/IllegalState;)V
    .locals 3

    .line 74
    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->logger:Ltech/ulo/library/utils/Logger;

    invoke-interface {v0, p1}, Ltech/ulo/library/utils/Logger;->sendIllegalStateLog(Ltech/ulo/library/viewmodel/IllegalState;)V

    .line 75
    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->state:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    .line 76
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    new-instance v0, Ltech/ulo/library/viewmodel/MainActivityViewModel$postIllegalStateWithLog$$inlined$timerTask$1;

    invoke-direct {v0, p0}, Ltech/ulo/library/viewmodel/MainActivityViewModel$postIllegalStateWithLog$$inlined$timerTask$1;-><init>(Ltech/ulo/library/viewmodel/MainActivityViewModel;)V

    check-cast v0, Ljava/util/TimerTask;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private final resetStartupState()V
    .locals 2

    .line 501
    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->unselectedApp:Ltech/ulo/library/model/entities/App;

    iput-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedApp:Ltech/ulo/library/model/entities/App;

    .line 502
    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->unselectedSession:Ltech/ulo/library/model/entities/Session;

    iput-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedSession:Ltech/ulo/library/model/entities/Session;

    .line 503
    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->unselectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

    iput-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

    const/4 v0, 0x0

    .line 504
    iput-boolean v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->avfSessionStartDispatched:Z

    .line 505
    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->state:Landroidx/lifecycle/MediatorLiveData;

    sget-object v1, Ltech/ulo/library/viewmodel/WaitingForInput;->INSTANCE:Ltech/ulo/library/viewmodel/WaitingForInput;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    .line 506
    sget-object v0, Ltech/ulo/library/model/state/ResetAppState;->INSTANCE:Ltech/ulo/library/model/state/ResetAppState;

    check-cast v0, Ltech/ulo/library/model/state/AppsStartupEvent;

    invoke-direct {p0, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitAppsStartupEvent(Ltech/ulo/library/model/state/AppsStartupEvent;)V

    .line 507
    sget-object v0, Ltech/ulo/library/model/state/ResetSessionState;->INSTANCE:Ltech/ulo/library/model/state/ResetSessionState;

    check-cast v0, Ltech/ulo/library/model/state/SessionStartupEvent;

    invoke-direct {p0, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitSessionStartupEvent(Ltech/ulo/library/model/state/SessionStartupEvent;)V

    return-void
.end method

.method private final selectionsCanBeMade()Z
    .locals 1

    .line 511
    iget-boolean v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->appsAreWaitingForSelection:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->sessionsAreWaitingForSelection:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final sessionPreparationRequirementsHaveBeenSelected()Z
    .locals 2

    .line 527
    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedSession:Ltech/ulo/library/model/entities/Session;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->unselectedSession:Ltech/ulo/library/model/entities/Session;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->unselectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final submitAppsStartupEvent(Ltech/ulo/library/model/state/AppsStartupEvent;)V
    .locals 4

    .line 531
    new-instance v0, Ltech/ulo/library/utils/UlaBreadcrumb;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->className:Ljava/lang/String;

    sget-object v2, Ltech/ulo/library/utils/BreadcrumbType$SubmittedEvent;->INSTANCE:Ltech/ulo/library/utils/BreadcrumbType$SubmittedEvent;

    check-cast v2, Ltech/ulo/library/utils/BreadcrumbType;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ltech/ulo/library/utils/UlaBreadcrumb;-><init>(Ljava/lang/String;Ltech/ulo/library/utils/BreadcrumbType;Ljava/lang/String;)V

    .line 532
    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->logger:Ltech/ulo/library/utils/Logger;

    invoke-interface {v1, v0}, Ltech/ulo/library/utils/Logger;->addBreadcrumb(Ltech/ulo/library/utils/UlaBreadcrumb;)V

    .line 533
    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->appsStartupFsm:Ltech/ulo/library/model/state/AppsStartupFsm;

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {v0, p1, v1}, Ltech/ulo/library/model/state/AppsStartupFsm;->submitEvent(Ltech/ulo/library/model/state/AppsStartupEvent;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static synthetic submitFilesystemFlavor$default(Ltech/ulo/library/viewmodel/MainActivityViewModel;Ljava/lang/String;ZLtech/ulo/library/model/entities/ExecutionType;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 199
    sget-object p3, Ltech/ulo/library/model/entities/ExecutionType;->PROOT:Ltech/ulo/library/model/entities/ExecutionType;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitFilesystemFlavor(Ljava/lang/String;ZLtech/ulo/library/model/entities/ExecutionType;)V

    return-void
.end method

.method private final submitSessionStartupEvent(Ltech/ulo/library/model/state/SessionStartupEvent;)V
    .locals 4

    .line 537
    new-instance v0, Ltech/ulo/library/utils/UlaBreadcrumb;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->className:Ljava/lang/String;

    sget-object v2, Ltech/ulo/library/utils/BreadcrumbType$SubmittedEvent;->INSTANCE:Ltech/ulo/library/utils/BreadcrumbType$SubmittedEvent;

    check-cast v2, Ltech/ulo/library/utils/BreadcrumbType;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ltech/ulo/library/utils/UlaBreadcrumb;-><init>(Ljava/lang/String;Ltech/ulo/library/utils/BreadcrumbType;Ljava/lang/String;)V

    .line 538
    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->logger:Ltech/ulo/library/utils/Logger;

    invoke-interface {v1, v0}, Ltech/ulo/library/utils/Logger;->addBreadcrumb(Ltech/ulo/library/utils/UlaBreadcrumb;)V

    .line 539
    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->sessionStartupFsm:Ltech/ulo/library/model/state/SessionStartupFsm;

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {v0, p1, v1}, Ltech/ulo/library/model/state/SessionStartupFsm;->submitEvent(Ltech/ulo/library/model/state/SessionStartupEvent;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static synthetic waitForPermissions$default(Ltech/ulo/library/viewmodel/MainActivityViewModel;Ltech/ulo/library/model/entities/App;Ltech/ulo/library/model/entities/Session;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 130
    iget-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->unselectedApp:Ltech/ulo/library/model/entities/App;

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->unselectedSession:Ltech/ulo/library/model/entities/Session;

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->waitForPermissions(Ltech/ulo/library/model/entities/App;Ltech/ulo/library/model/entities/Session;ZZ)V

    return-void
.end method


# virtual methods
.method public final companionAppSetupComplete()V
    .locals 2

    .line 162
    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedSession:Ltech/ulo/library/model/entities/Session;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->unselectedSession:Ltech/ulo/library/model/entities/Session;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ltech/ulo/library/model/state/SessionSelected;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedSession:Ltech/ulo/library/model/entities/Session;

    invoke-direct {v0, v1}, Ltech/ulo/library/model/state/SessionSelected;-><init>(Ltech/ulo/library/model/entities/Session;)V

    check-cast v0, Ltech/ulo/library/model/state/SessionStartupEvent;

    invoke-direct {p0, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitSessionStartupEvent(Ltech/ulo/library/model/state/SessionStartupEvent;)V

    :cond_0
    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 2

    .line 83
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->job:Lkotlinx/coroutines/CompletableJob;

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/MainCoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final getLastSelectedApp()Ltech/ulo/library/model/entities/App;
    .locals 1

    .line 54
    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedApp:Ltech/ulo/library/model/entities/App;

    return-object v0
.end method

.method public final getLastSelectedFilesystem()Ltech/ulo/library/model/entities/Filesystem;
    .locals 1

    .line 60
    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

    return-object v0
.end method

.method public final getLastSelectedSession()Ltech/ulo/library/model/entities/Session;
    .locals 1

    .line 57
    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedSession:Ltech/ulo/library/model/entities/Session;

    return-object v0
.end method

.method public final getState()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ltech/ulo/library/viewmodel/State;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->state:Landroidx/lifecycle/MediatorLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final handleClearSupportFiles(Ltech/ulo/library/utils/AssetFileClearer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/utils/AssetFileClearer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Ltech/ulo/library/viewmodel/MainActivityViewModel$handleClearSupportFiles$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ltech/ulo/library/viewmodel/MainActivityViewModel$handleClearSupportFiles$1;

    iget v1, v0, Ltech/ulo/library/viewmodel/MainActivityViewModel$handleClearSupportFiles$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Ltech/ulo/library/viewmodel/MainActivityViewModel$handleClearSupportFiles$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Ltech/ulo/library/viewmodel/MainActivityViewModel$handleClearSupportFiles$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltech/ulo/library/viewmodel/MainActivityViewModel$handleClearSupportFiles$1;

    invoke-direct {v0, p0, p2}, Ltech/ulo/library/viewmodel/MainActivityViewModel$handleClearSupportFiles$1;-><init>(Ltech/ulo/library/viewmodel/MainActivityViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Ltech/ulo/library/viewmodel/MainActivityViewModel$handleClearSupportFiles$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 260
    iget v2, v0, Ltech/ulo/library/viewmodel/MainActivityViewModel$handleClearSupportFiles$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Ltech/ulo/library/viewmodel/MainActivityViewModel$handleClearSupportFiles$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ltech/ulo/library/viewmodel/MainActivityViewModel;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 261
    iget-object p2, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->sessionStartupFsm:Ltech/ulo/library/model/state/SessionStartupFsm;

    invoke-virtual {p2}, Ltech/ulo/library/model/state/SessionStartupFsm;->sessionsAreActive()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 262
    iget-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->state:Landroidx/lifecycle/MediatorLiveData;

    sget-object p2, Ltech/ulo/library/viewmodel/ActiveSessionsMustBeDeactivated;->INSTANCE:Ltech/ulo/library/viewmodel/ActiveSessionsMustBeDeactivated;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    .line 263
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 265
    :cond_3
    iget-object p2, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->state:Landroidx/lifecycle/MediatorLiveData;

    sget-object v2, Ltech/ulo/library/viewmodel/ClearingSupportFiles;->INSTANCE:Ltech/ulo/library/viewmodel/ClearingSupportFiles;

    invoke-virtual {p2, v2}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    .line 267
    :try_start_1
    iput-object p0, v0, Ltech/ulo/library/viewmodel/MainActivityViewModel$handleClearSupportFiles$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Ltech/ulo/library/viewmodel/MainActivityViewModel$handleClearSupportFiles$1;->label:I

    invoke-virtual {p1, v0}, Ltech/ulo/library/utils/AssetFileClearer;->clearAllSupportAssets(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    .line 268
    :goto_1
    :try_start_2
    iget-object p2, p1, Ltech/ulo/library/viewmodel/MainActivityViewModel;->state:Landroidx/lifecycle/MediatorLiveData;

    sget-object v0, Ltech/ulo/library/viewmodel/ProgressBarOperationComplete;->INSTANCE:Ltech/ulo/library/viewmodel/ProgressBarOperationComplete;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_0
    move-object p1, p0

    .line 272
    :catch_1
    sget-object p2, Ltech/ulo/library/viewmodel/BusyboxMissing;->INSTANCE:Ltech/ulo/library/viewmodel/BusyboxMissing;

    check-cast p2, Ltech/ulo/library/viewmodel/IllegalState;

    invoke-direct {p1, p2}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->postIllegalStateWithLog(Ltech/ulo/library/viewmodel/IllegalState;)V

    goto :goto_2

    :catch_2
    move-object p1, p0

    .line 270
    :catch_3
    sget-object p2, Ltech/ulo/library/viewmodel/FailedToClearSupportFiles;->INSTANCE:Ltech/ulo/library/viewmodel/FailedToClearSupportFiles;

    check-cast p2, Ltech/ulo/library/viewmodel/IllegalState;

    invoke-direct {p1, p2}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->postIllegalStateWithLog(Ltech/ulo/library/viewmodel/IllegalState;)V

    .line 274
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final handleExtractionState(Ltech/ulo/library/model/state/ExtractionState;)V
    .locals 2

    const-string v0, "newState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    instance-of v0, p1, Ltech/ulo/library/model/state/ExtractingFilesystem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->state:Landroidx/lifecycle/MediatorLiveData;

    new-instance v1, Ltech/ulo/library/viewmodel/SessionCanBePrepared;

    check-cast p1, Ltech/ulo/library/model/state/ExtractingFilesystem;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/ExtractingFilesystem;->getFilesystem()Ltech/ulo/library/model/entities/Filesystem;

    move-result-object p1

    invoke-direct {v1, p1}, Ltech/ulo/library/viewmodel/SessionCanBePrepared;-><init>(Ltech/ulo/library/model/entities/Filesystem;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 493
    :cond_0
    instance-of v0, p1, Ltech/ulo/library/model/state/ExtractionHasCompletedSuccessfully;

    if-eqz v0, :cond_1

    new-instance p1, Ltech/ulo/library/viewmodel/MainActivityViewModel$handleExtractionState$1;

    invoke-direct {p1, p0}, Ltech/ulo/library/viewmodel/MainActivityViewModel$handleExtractionState$1;-><init>(Ltech/ulo/library/viewmodel/MainActivityViewModel;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->doTransitionIfRequirementsAreSelected(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 496
    :cond_1
    instance-of v0, p1, Ltech/ulo/library/model/state/ExtractionFailed;

    if-eqz v0, :cond_2

    new-instance v0, Ltech/ulo/library/viewmodel/FailedToExtractFilesystem;

    check-cast p1, Ltech/ulo/library/model/state/ExtractionFailed;

    invoke-virtual {p1}, Ltech/ulo/library/model/state/ExtractionFailed;->getReason()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ltech/ulo/library/viewmodel/FailedToExtractFilesystem;-><init>(Ljava/lang/String;)V

    check-cast v0, Ltech/ulo/library/viewmodel/IllegalState;

    invoke-direct {p0, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->postIllegalStateWithLog(Ltech/ulo/library/viewmodel/IllegalState;)V

    :goto_0
    return-void

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final handleOnResume()V
    .locals 1

    .line 127
    sget-object v0, Ltech/ulo/library/model/state/SyncDownloadState;->INSTANCE:Ltech/ulo/library/model/state/SyncDownloadState;

    check-cast v0, Ltech/ulo/library/model/state/SessionStartupEvent;

    invoke-direct {p0, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitSessionStartupEvent(Ltech/ulo/library/model/state/SessionStartupEvent;)V

    return-void
.end method

.method public final handleSessionHasBeenActivated()V
    .locals 0

    .line 257
    invoke-direct {p0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->resetStartupState()V

    return-void
.end method

.method public final handleUserInputCancelled()V
    .locals 0

    .line 248
    invoke-direct {p0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->resetStartupState()V

    return-void
.end method

.method public final lowAvailableStorageAcknowledged()V
    .locals 1

    .line 220
    sget-object v0, Ltech/ulo/library/model/state/VerifyAvailableStorageComplete;->INSTANCE:Ltech/ulo/library/model/state/VerifyAvailableStorageComplete;

    check-cast v0, Ltech/ulo/library/model/state/SessionStartupEvent;

    invoke-direct {p0, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitSessionStartupEvent(Ltech/ulo/library/model/state/SessionStartupEvent;)V

    return-void
.end method

.method protected onCleared()V
    .locals 3

    .line 86
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 87
    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->job:Lkotlinx/coroutines/CompletableJob;

    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public final permissionsHaveBeenGranted()V
    .locals 4

    .line 140
    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedApp:Ltech/ulo/library/model/entities/App;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->unselectedApp:Ltech/ulo/library/model/entities/App;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedSession:Ltech/ulo/library/model/entities/Session;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->unselectedSession:Ltech/ulo/library/model/entities/Session;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    sget-object v0, Ltech/ulo/library/viewmodel/TooManySelectionsMadeWhenPermissionsGranted;->INSTANCE:Ltech/ulo/library/viewmodel/TooManySelectionsMadeWhenPermissionsGranted;

    check-cast v0, Ltech/ulo/library/viewmodel/IllegalState;

    invoke-direct {p0, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->postIllegalStateWithLog(Ltech/ulo/library/viewmodel/IllegalState;)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedApp:Ltech/ulo/library/model/entities/App;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->unselectedApp:Ltech/ulo/library/model/entities/App;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedSession:Ltech/ulo/library/model/entities/Session;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->unselectedSession:Ltech/ulo/library/model/entities/Session;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    sget-object v0, Ltech/ulo/library/viewmodel/NoSelectionsMadeWhenPermissionsGranted;->INSTANCE:Ltech/ulo/library/viewmodel/NoSelectionsMadeWhenPermissionsGranted;

    check-cast v0, Ltech/ulo/library/viewmodel/IllegalState;

    invoke-direct {p0, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->postIllegalStateWithLog(Ltech/ulo/library/viewmodel/IllegalState;)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedApp:Ltech/ulo/library/model/entities/App;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->unselectedApp:Ltech/ulo/library/model/entities/App;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    new-instance v0, Ltech/ulo/library/model/state/AppSelected;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedApp:Ltech/ulo/library/model/entities/App;

    iget-boolean v2, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastAskConnectType:Z

    iget-boolean v3, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastAskDisplayPreferences:Z

    invoke-direct {v0, v1, v2, v3}, Ltech/ulo/library/model/state/AppSelected;-><init>(Ltech/ulo/library/model/entities/App;ZZ)V

    check-cast v0, Ltech/ulo/library/model/state/AppsStartupEvent;

    invoke-direct {p0, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitAppsStartupEvent(Ltech/ulo/library/model/state/AppsStartupEvent;)V

    goto :goto_0

    .line 149
    :cond_2
    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedSession:Ltech/ulo/library/model/entities/Session;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->unselectedSession:Ltech/ulo/library/model/entities/Session;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 150
    new-instance v0, Ltech/ulo/library/model/state/SessionSelected;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedSession:Ltech/ulo/library/model/entities/Session;

    invoke-direct {v0, v1}, Ltech/ulo/library/model/state/SessionSelected;-><init>(Ltech/ulo/library/model/entities/Session;)V

    check-cast v0, Ltech/ulo/library/model/state/SessionStartupEvent;

    invoke-direct {p0, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitSessionStartupEvent(Ltech/ulo/library/model/state/SessionStartupEvent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final setLastSelectedApp(Ltech/ulo/library/model/entities/App;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedApp:Ltech/ulo/library/model/entities/App;

    return-void
.end method

.method public final setLastSelectedFilesystem(Ltech/ulo/library/model/entities/Filesystem;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

    return-void
.end method

.method public final setLastSelectedSession(Ltech/ulo/library/model/entities/Session;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedSession:Ltech/ulo/library/model/entities/Session;

    return-void
.end method

.method public final startAssetDownloads(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/repositories/DownloadMetadata;",
            ">;)V"
        }
    .end annotation

    const-string v0, "downloadRequirements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    new-instance v0, Ltech/ulo/library/model/state/DownloadAssets;

    invoke-direct {v0, p1}, Ltech/ulo/library/model/state/DownloadAssets;-><init>(Ljava/util/List;)V

    check-cast v0, Ltech/ulo/library/model/state/SessionStartupEvent;

    invoke-direct {p0, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitSessionStartupEvent(Ltech/ulo/library/model/state/SessionStartupEvent;)V

    return-void
.end method

.method public final submitAppDisplayPreferences(Ltech/ulo/library/model/entities/DisplayPreferences;)V
    .locals 2

    const-string v0, "displayPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedSession:Ltech/ulo/library/model/entities/Session;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->unselectedSession:Ltech/ulo/library/model/entities/Session;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    sget-object p1, Ltech/ulo/library/viewmodel/NoAppSelectedWhenPreferenceSubmitted;->INSTANCE:Ltech/ulo/library/viewmodel/NoAppSelectedWhenPreferenceSubmitted;

    check-cast p1, Ltech/ulo/library/viewmodel/IllegalState;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->postIllegalStateWithLog(Ltech/ulo/library/viewmodel/IllegalState;)V

    return-void

    .line 236
    :cond_0
    new-instance v0, Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedSession:Ltech/ulo/library/model/entities/Session;

    invoke-direct {v0, v1, p1}, Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;-><init>(Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/DisplayPreferences;)V

    check-cast v0, Ltech/ulo/library/model/state/AppsStartupEvent;

    invoke-direct {p0, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitAppsStartupEvent(Ltech/ulo/library/model/state/AppsStartupEvent;)V

    return-void
.end method

.method public final submitAppSelection(Ltech/ulo/library/model/entities/App;ZZZ)V
    .locals 1

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 168
    invoke-direct {p0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->selectionsCanBeMade()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 169
    :cond_0
    iput-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedApp:Ltech/ulo/library/model/entities/App;

    .line 170
    new-instance p2, Ltech/ulo/library/model/state/AppSelected;

    invoke-direct {p2, p1, p3, p4}, Ltech/ulo/library/model/state/AppSelected;-><init>(Ltech/ulo/library/model/entities/App;ZZ)V

    check-cast p2, Ltech/ulo/library/model/state/AppsStartupEvent;

    invoke-direct {p0, p2}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitAppsStartupEvent(Ltech/ulo/library/model/state/AppsStartupEvent;)V

    return-void
.end method

.method public final submitAppServiceTypePreferences(Ltech/ulo/library/model/entities/ServiceTypePreferences;)V
    .locals 2

    const-string v0, "serviceTypePreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedSession:Ltech/ulo/library/model/entities/Session;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->unselectedSession:Ltech/ulo/library/model/entities/Session;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    sget-object p1, Ltech/ulo/library/viewmodel/NoAppSelectedWhenPreferenceSubmitted;->INSTANCE:Ltech/ulo/library/viewmodel/NoAppSelectedWhenPreferenceSubmitted;

    check-cast p1, Ltech/ulo/library/viewmodel/IllegalState;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->postIllegalStateWithLog(Ltech/ulo/library/viewmodel/IllegalState;)V

    return-void

    .line 228
    :cond_0
    new-instance v0, Ltech/ulo/library/model/state/SubmitAppSessionServiceTypePreferences;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedSession:Ltech/ulo/library/model/entities/Session;

    invoke-direct {v0, v1, p1}, Ltech/ulo/library/model/state/SubmitAppSessionServiceTypePreferences;-><init>(Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/ServiceTypePreferences;)V

    check-cast v0, Ltech/ulo/library/model/state/AppsStartupEvent;

    invoke-direct {p0, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitAppsStartupEvent(Ltech/ulo/library/model/state/AppsStartupEvent;)V

    return-void
.end method

.method public final submitCompletedDownloadId(J)V
    .locals 1

    .line 180
    new-instance v0, Ltech/ulo/library/model/state/AssetDownloadComplete;

    invoke-direct {v0, p1, p2}, Ltech/ulo/library/model/state/AssetDownloadComplete;-><init>(J)V

    check-cast v0, Ltech/ulo/library/model/state/SessionStartupEvent;

    invoke-direct {p0, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitSessionStartupEvent(Ltech/ulo/library/model/state/SessionStartupEvent;)V

    return-void
.end method

.method public final submitCompletedExtraction()V
    .locals 1

    .line 184
    sget-object v0, Ltech/ulo/library/model/state/AssetExtractionComplete;->INSTANCE:Ltech/ulo/library/model/state/AssetExtractionComplete;

    check-cast v0, Ltech/ulo/library/model/state/SessionStartupEvent;

    invoke-direct {p0, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitSessionStartupEvent(Ltech/ulo/library/model/state/SessionStartupEvent;)V

    return-void
.end method

.method public final submitExtractionResult(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 241
    sget-object p1, Ltech/ulo/library/model/state/FilesystemExtractionComplete;->INSTANCE:Ltech/ulo/library/model/state/FilesystemExtractionComplete;

    check-cast p1, Ltech/ulo/library/model/state/SessionStartupEvent;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitSessionStartupEvent(Ltech/ulo/library/model/state/SessionStartupEvent;)V

    goto :goto_0

    .line 243
    :cond_0
    sget-object p1, Ltech/ulo/library/model/state/FilesystemExtractionFailed;->INSTANCE:Ltech/ulo/library/model/state/FilesystemExtractionFailed;

    check-cast p1, Ltech/ulo/library/model/state/SessionStartupEvent;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitSessionStartupEvent(Ltech/ulo/library/model/state/SessionStartupEvent;)V

    :goto_0
    return-void
.end method

.method public final submitFailedExtraction()V
    .locals 1

    .line 188
    sget-object v0, Ltech/ulo/library/model/state/AssetExtractionFailed;->INSTANCE:Ltech/ulo/library/model/state/AssetExtractionFailed;

    check-cast v0, Ltech/ulo/library/model/state/SessionStartupEvent;

    invoke-direct {p0, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitSessionStartupEvent(Ltech/ulo/library/model/state/SessionStartupEvent;)V

    return-void
.end method

.method public final submitFilesystemCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vncPassword"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->unselectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    sget-object p1, Ltech/ulo/library/viewmodel/NoFilesystemSelectedWhenCredentialsSubmitted;->INSTANCE:Ltech/ulo/library/viewmodel/NoFilesystemSelectedWhenCredentialsSubmitted;

    check-cast p1, Ltech/ulo/library/viewmodel/IllegalState;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->postIllegalStateWithLog(Ltech/ulo/library/viewmodel/IllegalState;)V

    return-void

    .line 216
    :cond_0
    new-instance v0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

    invoke-direct {v0, v1, p1, p2, p3}, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;-><init>(Ltech/ulo/library/model/entities/Filesystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Ltech/ulo/library/model/state/AppsStartupEvent;

    invoke-direct {p0, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitAppsStartupEvent(Ltech/ulo/library/model/state/AppsStartupEvent;)V

    return-void
.end method

.method public final submitFilesystemFlavor(Ljava/lang/String;ZLtech/ulo/library/model/entities/ExecutionType;)V
    .locals 2

    const-string v0, "flavor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executionType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->unselectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    sget-object p1, Ltech/ulo/library/viewmodel/NoFilesystemSelectedWhenFlavorSubmitted;->INSTANCE:Ltech/ulo/library/viewmodel/NoFilesystemSelectedWhenFlavorSubmitted;

    check-cast p1, Ltech/ulo/library/viewmodel/IllegalState;

    invoke-direct {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->postIllegalStateWithLog(Ltech/ulo/library/viewmodel/IllegalState;)V

    return-void

    .line 204
    :cond_0
    new-instance v0, Ltech/ulo/library/model/state/SubmitAppsFilesystemFlavor;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

    invoke-direct {v0, v1, p1, p2, p3}, Ltech/ulo/library/model/state/SubmitAppsFilesystemFlavor;-><init>(Ltech/ulo/library/model/entities/Filesystem;Ljava/lang/String;ZLtech/ulo/library/model/entities/ExecutionType;)V

    check-cast v0, Ltech/ulo/library/model/state/AppsStartupEvent;

    invoke-direct {p0, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitAppsStartupEvent(Ltech/ulo/library/model/state/AppsStartupEvent;)V

    return-void
.end method

.method public final submitSessionSelection(Ltech/ulo/library/model/entities/Session;)V
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->selectionsCanBeMade()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    iput-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedSession:Ltech/ulo/library/model/entities/Session;

    .line 176
    new-instance v0, Ltech/ulo/library/model/state/SessionSelected;

    invoke-direct {v0, p1}, Ltech/ulo/library/model/state/SessionSelected;-><init>(Ltech/ulo/library/model/entities/Session;)V

    check-cast v0, Ltech/ulo/library/model/state/SessionStartupEvent;

    invoke-direct {p0, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitSessionStartupEvent(Ltech/ulo/library/model/state/SessionStartupEvent;)V

    return-void
.end method

.method public final submitUserPayment()V
    .locals 2

    .line 208
    new-instance v0, Ltech/ulo/library/model/state/SubmitPayment;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedFilesystem:Ltech/ulo/library/model/entities/Filesystem;

    invoke-direct {v0, v1}, Ltech/ulo/library/model/state/SubmitPayment;-><init>(Ltech/ulo/library/model/entities/Filesystem;)V

    check-cast v0, Ltech/ulo/library/model/state/AppsStartupEvent;

    invoke-direct {p0, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitAppsStartupEvent(Ltech/ulo/library/model/state/AppsStartupEvent;)V

    return-void
.end method

.method public final userContributionChecked()V
    .locals 1

    .line 196
    sget-object v0, Ltech/ulo/library/model/state/UserContributionChecked;->INSTANCE:Ltech/ulo/library/model/state/UserContributionChecked;

    check-cast v0, Ltech/ulo/library/model/state/AppsStartupEvent;

    invoke-direct {p0, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitAppsStartupEvent(Ltech/ulo/library/model/state/AppsStartupEvent;)V

    return-void
.end method

.method public final userFeedbackChecked()V
    .locals 1

    .line 192
    sget-object v0, Ltech/ulo/library/model/state/UserFeedbackChecked;->INSTANCE:Ltech/ulo/library/model/state/UserFeedbackChecked;

    check-cast v0, Ltech/ulo/library/model/state/AppsStartupEvent;

    invoke-direct {p0, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitAppsStartupEvent(Ltech/ulo/library/model/state/AppsStartupEvent;)V

    return-void
.end method

.method public final waitForPermissions(Ltech/ulo/library/model/entities/App;Ltech/ulo/library/model/entities/Session;ZZ)V
    .locals 1

    const-string v0, "appToContinue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionToContinue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->resetStartupState()V

    .line 132
    iput-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedApp:Ltech/ulo/library/model/entities/App;

    .line 133
    iput-object p2, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastSelectedSession:Ltech/ulo/library/model/entities/Session;

    .line 134
    iput-boolean p3, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastAskConnectType:Z

    .line 135
    iput-boolean p4, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel;->lastAskDisplayPreferences:Z

    return-void
.end method
