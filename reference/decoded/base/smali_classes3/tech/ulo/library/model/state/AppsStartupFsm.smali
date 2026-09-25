.class public final Ltech/ulo/library/model/state/AppsStartupFsm;
.super Ljava/lang/Object;
.source "AppsStartupFsm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppsStartupFsm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppsStartupFsm.kt\ntech/ulo/library/model/state/AppsStartupFsm\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,285:1\n1#2:286\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a2\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0010\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0010\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0018\u0010\u001f\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u001aH\u0002J\u0010\u0010!\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u001e\u0010\"\u001a\u00020\u00182\u0006\u0010#\u001a\u00020$2\u0006\u0010 \u001a\u00020\u001aH\u0082@\u00a2\u0006\u0002\u0010%J&\u0010&\u001a\u00020\u00182\u0006\u0010#\u001a\u00020$2\u0006\u0010\'\u001a\u00020\u00102\u0006\u0010(\u001a\u00020\u0010H\u0082@\u00a2\u0006\u0002\u0010)J\u001e\u0010*\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020$2\u0006\u0010+\u001a\u00020,H\u0082@\u00a2\u0006\u0002\u0010-J\u0016\u0010.\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020$H\u0082@\u00a2\u0006\u0002\u0010/J\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u001601J.\u00102\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u001a2\u0006\u00103\u001a\u00020\u000c2\u0006\u00104\u001a\u00020\u000c2\u0006\u00105\u001a\u00020\u000cH\u0082@\u00a2\u0006\u0002\u00106J.\u00107\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u001a2\u0006\u00108\u001a\u00020\u000c2\u0006\u00109\u001a\u00020\u00102\u0006\u0010:\u001a\u00020;H\u0082@\u00a2\u0006\u0002\u0010<J\u001e\u0010=\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010>\u001a\u00020?H\u0082@\u00a2\u0006\u0002\u0010@J\u001e\u0010A\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010B\u001a\u00020CH\u0082@\u00a2\u0006\u0002\u0010DJ\u0015\u0010E\u001a\u00020\u00182\u0006\u0010F\u001a\u00020\u0016H\u0000\u00a2\u0006\u0002\u0008GJ\u0016\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020MJ\u0010\u0010N\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u001aH\u0002J\u000e\u0010O\u001a\u00020\u00102\u0006\u0010J\u001a\u00020KJ&\u0010P\u001a\u00020\u00182\u0006\u0010#\u001a\u00020$2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u001aH\u0082@\u00a2\u0006\u0002\u0010QR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006R"
    }
    d2 = {
        "Ltech/ulo/library/model/state/AppsStartupFsm;",
        "",
        "ulaDatabase",
        "Ltech/ulo/library/model/repositories/UlaDatabase;",
        "filesystemManager",
        "Ltech/ulo/library/utils/FilesystemManager;",
        "ulaFiles",
        "Ltech/ulo/library/utils/UlaFiles;",
        "logger",
        "Ltech/ulo/library/utils/Logger;",
        "(Ltech/ulo/library/model/repositories/UlaDatabase;Ltech/ulo/library/utils/FilesystemManager;Ltech/ulo/library/utils/UlaFiles;Ltech/ulo/library/utils/Logger;)V",
        "className",
        "",
        "filesystemDao",
        "Ltech/ulo/library/model/daos/FilesystemDao;",
        "lastAskConnectType",
        "",
        "lastAskDisplayPreferences",
        "sessionDao",
        "Ltech/ulo/library/model/daos/SessionDao;",
        "state",
        "Landroidx/lifecycle/MutableLiveData;",
        "Ltech/ulo/library/model/state/AppsStartupState;",
        "checkAppsFilesystemCredentials",
        "",
        "appsFilesystem",
        "Ltech/ulo/library/model/entities/Filesystem;",
        "checkAppsFilesystemFlavor",
        "checkDisplayPreferences",
        "appSession",
        "Ltech/ulo/library/model/entities/Session;",
        "checkPayment",
        "filesystem",
        "checkServiceType",
        "copyAppScriptToFilesystem",
        "app",
        "Ltech/ulo/library/model/entities/App;",
        "(Ltech/ulo/library/model/entities/App;Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "fetchDatabaseEntries",
        "askConnectType",
        "askDisplayPreferences",
        "(Ltech/ulo/library/model/entities/App;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "findAppSession",
        "filesystemId",
        "",
        "(Ltech/ulo/library/model/entities/App;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "findAppsFilesystem",
        "(Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getState",
        "Landroidx/lifecycle/LiveData;",
        "setAppsFilesystemCredentials",
        "username",
        "password",
        "vncPassword",
        "(Ltech/ulo/library/model/entities/Filesystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setAppsFilesystemFlavor",
        "flavor",
        "isPaid",
        "executionType",
        "Ltech/ulo/library/model/entities/ExecutionType;",
        "(Ltech/ulo/library/model/entities/Filesystem;Ljava/lang/String;ZLtech/ulo/library/model/entities/ExecutionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setDisplayPreferences",
        "displayPreferences",
        "Ltech/ulo/library/model/entities/DisplayPreferences;",
        "(Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/DisplayPreferences;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setServiceTypePreferences",
        "serviceTypePreferences",
        "Ltech/ulo/library/model/entities/ServiceTypePreferences;",
        "(Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/ServiceTypePreferences;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setState",
        "newState",
        "setState$UserLOstLibrary_UserLOstRelease",
        "submitEvent",
        "Lkotlinx/coroutines/Job;",
        "event",
        "Ltech/ulo/library/model/state/AppsStartupEvent;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "submitPayment",
        "transitionIsAcceptable",
        "updateAppSession",
        "(Ltech/ulo/library/model/entities/App;Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final className:Ljava/lang/String;

.field private final filesystemDao:Ltech/ulo/library/model/daos/FilesystemDao;

.field private final filesystemManager:Ltech/ulo/library/utils/FilesystemManager;

.field private lastAskConnectType:Z

.field private lastAskDisplayPreferences:Z

.field private final logger:Ltech/ulo/library/utils/Logger;

.field private final sessionDao:Ltech/ulo/library/model/daos/SessionDao;

.field private final state:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ltech/ulo/library/model/state/AppsStartupState;",
            ">;"
        }
    .end annotation
.end field

.field private final ulaFiles:Ltech/ulo/library/utils/UlaFiles;


# direct methods
.method public constructor <init>(Ltech/ulo/library/model/repositories/UlaDatabase;Ltech/ulo/library/utils/FilesystemManager;Ltech/ulo/library/utils/UlaFiles;Ltech/ulo/library/utils/Logger;)V
    .locals 1

    const-string v0, "ulaDatabase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filesystemManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ulaFiles"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->filesystemManager:Ltech/ulo/library/utils/FilesystemManager;

    .line 19
    iput-object p3, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->ulaFiles:Ltech/ulo/library/utils/UlaFiles;

    .line 20
    iput-object p4, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->logger:Ltech/ulo/library/utils/Logger;

    .line 23
    const-string p2, "AppsFSM"

    iput-object p2, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->className:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Ltech/ulo/library/model/repositories/UlaDatabase;->sessionDao()Ltech/ulo/library/model/daos/SessionDao;

    move-result-object p2

    iput-object p2, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->sessionDao:Ltech/ulo/library/model/daos/SessionDao;

    .line 26
    invoke-virtual {p1}, Ltech/ulo/library/model/repositories/UlaDatabase;->filesystemDao()Ltech/ulo/library/model/daos/FilesystemDao;

    move-result-object p1

    iput-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->filesystemDao:Ltech/ulo/library/model/daos/FilesystemDao;

    .line 28
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    sget-object p2, Ltech/ulo/library/model/state/WaitingForAppSelection;->INSTANCE:Ltech/ulo/library/model/state/WaitingForAppSelection;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iput-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public synthetic constructor <init>(Ltech/ulo/library/model/repositories/UlaDatabase;Ltech/ulo/library/utils/FilesystemManager;Ltech/ulo/library/utils/UlaFiles;Ltech/ulo/library/utils/Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 20
    new-instance p4, Ltech/ulo/library/utils/SentryLogger;

    invoke-direct {p4}, Ltech/ulo/library/utils/SentryLogger;-><init>()V

    check-cast p4, Ltech/ulo/library/utils/Logger;

    .line 16
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Ltech/ulo/library/model/state/AppsStartupFsm;-><init>(Ltech/ulo/library/model/repositories/UlaDatabase;Ltech/ulo/library/utils/FilesystemManager;Ltech/ulo/library/utils/UlaFiles;Ltech/ulo/library/utils/Logger;)V

    return-void
.end method

.method public static final synthetic access$checkAppsFilesystemCredentials(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/Filesystem;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Ltech/ulo/library/model/state/AppsStartupFsm;->checkAppsFilesystemCredentials(Ltech/ulo/library/model/entities/Filesystem;)V

    return-void
.end method

.method public static final synthetic access$checkAppsFilesystemFlavor(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/Filesystem;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Ltech/ulo/library/model/state/AppsStartupFsm;->checkAppsFilesystemFlavor(Ltech/ulo/library/model/entities/Filesystem;)V

    return-void
.end method

.method public static final synthetic access$checkDisplayPreferences(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/Session;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Ltech/ulo/library/model/state/AppsStartupFsm;->checkDisplayPreferences(Ltech/ulo/library/model/entities/Session;)V

    return-void
.end method

.method public static final synthetic access$checkPayment(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/Filesystem;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/model/state/AppsStartupFsm;->checkPayment(Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/Filesystem;)V

    return-void
.end method

.method public static final synthetic access$checkServiceType(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/Session;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Ltech/ulo/library/model/state/AppsStartupFsm;->checkServiceType(Ltech/ulo/library/model/entities/Session;)V

    return-void
.end method

.method public static final synthetic access$copyAppScriptToFilesystem(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/App;Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Ltech/ulo/library/model/state/AppsStartupFsm;->copyAppScriptToFilesystem(Ltech/ulo/library/model/entities/App;Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$fetchDatabaseEntries(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/App;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Ltech/ulo/library/model/state/AppsStartupFsm;->fetchDatabaseEntries(Ltech/ulo/library/model/entities/App;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$findAppSession(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/App;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Ltech/ulo/library/model/state/AppsStartupFsm;->findAppSession(Ltech/ulo/library/model/entities/App;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$findAppsFilesystem(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/model/state/AppsStartupFsm;->findAppsFilesystem(Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getClassName$p(Ltech/ulo/library/model/state/AppsStartupFsm;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->className:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getFilesystemDao$p(Ltech/ulo/library/model/state/AppsStartupFsm;)Ltech/ulo/library/model/daos/FilesystemDao;
    .locals 0

    .line 16
    iget-object p0, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->filesystemDao:Ltech/ulo/library/model/daos/FilesystemDao;

    return-object p0
.end method

.method public static final synthetic access$getFilesystemManager$p(Ltech/ulo/library/model/state/AppsStartupFsm;)Ltech/ulo/library/utils/FilesystemManager;
    .locals 0

    .line 16
    iget-object p0, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->filesystemManager:Ltech/ulo/library/utils/FilesystemManager;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Ltech/ulo/library/model/state/AppsStartupFsm;)Ltech/ulo/library/utils/Logger;
    .locals 0

    .line 16
    iget-object p0, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->logger:Ltech/ulo/library/utils/Logger;

    return-object p0
.end method

.method public static final synthetic access$getSessionDao$p(Ltech/ulo/library/model/state/AppsStartupFsm;)Ltech/ulo/library/model/daos/SessionDao;
    .locals 0

    .line 16
    iget-object p0, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->sessionDao:Ltech/ulo/library/model/daos/SessionDao;

    return-object p0
.end method

.method public static final synthetic access$getState$p(Ltech/ulo/library/model/state/AppsStartupFsm;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 16
    iget-object p0, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$getUlaFiles$p(Ltech/ulo/library/model/state/AppsStartupFsm;)Ltech/ulo/library/utils/UlaFiles;
    .locals 0

    .line 16
    iget-object p0, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->ulaFiles:Ltech/ulo/library/utils/UlaFiles;

    return-object p0
.end method

.method public static final synthetic access$setAppsFilesystemCredentials(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/Filesystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-direct/range {p0 .. p5}, Ltech/ulo/library/model/state/AppsStartupFsm;->setAppsFilesystemCredentials(Ltech/ulo/library/model/entities/Filesystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setAppsFilesystemFlavor(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/Filesystem;Ljava/lang/String;ZLtech/ulo/library/model/entities/ExecutionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-direct/range {p0 .. p5}, Ltech/ulo/library/model/state/AppsStartupFsm;->setAppsFilesystemFlavor(Ltech/ulo/library/model/entities/Filesystem;Ljava/lang/String;ZLtech/ulo/library/model/entities/ExecutionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setDisplayPreferences(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/DisplayPreferences;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Ltech/ulo/library/model/state/AppsStartupFsm;->setDisplayPreferences(Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/DisplayPreferences;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setServiceTypePreferences(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/ServiceTypePreferences;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Ltech/ulo/library/model/state/AppsStartupFsm;->setServiceTypePreferences(Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/ServiceTypePreferences;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$submitPayment(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/Filesystem;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Ltech/ulo/library/model/state/AppsStartupFsm;->submitPayment(Ltech/ulo/library/model/entities/Filesystem;)V

    return-void
.end method

.method public static final synthetic access$updateAppSession(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/App;Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Ltech/ulo/library/model/state/AppsStartupFsm;->updateAppSession(Ltech/ulo/library/model/entities/App;Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final checkAppsFilesystemCredentials(Ltech/ulo/library/model/entities/Filesystem;)V
    .locals 2

    .line 130
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Filesystem;->getDefaultUsername()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 131
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Filesystem;->getDefaultPassword()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 132
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Filesystem;->getDefaultVncPassword()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 134
    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ltech/ulo/library/model/state/AppsFilesystemHasCredentials;->INSTANCE:Ltech/ulo/library/model/state/AppsFilesystemHasCredentials;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Ltech/ulo/library/model/state/AppsFilesystemRequiresCredentials;

    invoke-direct {v1, p1}, Ltech/ulo/library/model/state/AppsFilesystemRequiresCredentials;-><init>(Ltech/ulo/library/model/entities/Filesystem;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final checkAppsFilesystemFlavor(Ltech/ulo/library/model/entities/Filesystem;)V
    .locals 2

    .line 108
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Filesystem;->getFlavor()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Filesystem;->isPaid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Filesystem;->getHasPaidUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ltech/ulo/library/model/state/AppsFilesystemHasFlavor;->INSTANCE:Ltech/ulo/library/model/state/AppsFilesystemHasFlavor;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Ltech/ulo/library/model/state/AppsFilesystemRequiresFlavor;

    invoke-direct {v1, p1}, Ltech/ulo/library/model/state/AppsFilesystemRequiresFlavor;-><init>(Ltech/ulo/library/model/entities/Filesystem;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final checkDisplayPreferences(Ltech/ulo/library/model/entities/Session;)V
    .locals 2

    .line 149
    iget-boolean v0, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->lastAskDisplayPreferences:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getDisplayRemember()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getServiceType()Ltech/ulo/library/model/entities/ServiceType;

    move-result-object v0

    sget-object v1, Ltech/ulo/library/model/entities/ServiceType$Vnc;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Vnc;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getActive()Z

    move-result p1

    if-nez p1, :cond_1

    .line 150
    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ltech/ulo/library/model/state/AppRequiresDisplayPreferences;->INSTANCE:Ltech/ulo/library/model/state/AppRequiresDisplayPreferences;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 153
    :cond_1
    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ltech/ulo/library/model/state/AppHasDisplayPreferencesSet;->INSTANCE:Ltech/ulo/library/model/state/AppHasDisplayPreferencesSet;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final checkPayment(Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/Filesystem;)V
    .locals 0

    .line 117
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->isPaid()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getSoundSupport()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getMicSupport()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Ltech/ulo/library/model/state/PaymentMade;->INSTANCE:Ltech/ulo/library/model/state/PaymentMade;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 118
    :cond_1
    :goto_0
    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Ltech/ulo/library/model/state/PaymentRequired;->INSTANCE:Ltech/ulo/library/model/state/PaymentRequired;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final checkServiceType(Ltech/ulo/library/model/entities/Session;)V
    .locals 2

    .line 141
    iget-boolean v0, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->lastAskConnectType:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getServiceType()Ltech/ulo/library/model/entities/ServiceType;

    move-result-object v0

    sget-object v1, Ltech/ulo/library/model/entities/ServiceType$Unselected;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Unselected;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getServiceTypeRemember()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getActive()Z

    move-result p1

    if-nez p1, :cond_1

    .line 142
    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ltech/ulo/library/model/state/AppRequiresServiceTypePreferences;->INSTANCE:Ltech/ulo/library/model/state/AppRequiresServiceTypePreferences;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 145
    :cond_1
    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ltech/ulo/library/model/state/AppHasServiceTypePreferencesSet;->INSTANCE:Ltech/ulo/library/model/state/AppHasServiceTypePreferencesSet;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final copyAppScriptToFilesystem(Ltech/ulo/library/model/entities/App;Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/App;",
            "Ltech/ulo/library/model/entities/Filesystem;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Ltech/ulo/library/model/state/AppsStartupFsm$copyAppScriptToFilesystem$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Ltech/ulo/library/model/state/AppsStartupFsm$copyAppScriptToFilesystem$1;

    iget v1, v0, Ltech/ulo/library/model/state/AppsStartupFsm$copyAppScriptToFilesystem$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Ltech/ulo/library/model/state/AppsStartupFsm$copyAppScriptToFilesystem$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Ltech/ulo/library/model/state/AppsStartupFsm$copyAppScriptToFilesystem$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltech/ulo/library/model/state/AppsStartupFsm$copyAppScriptToFilesystem$1;

    invoke-direct {v0, p0, p3}, Ltech/ulo/library/model/state/AppsStartupFsm$copyAppScriptToFilesystem$1;-><init>(Ltech/ulo/library/model/state/AppsStartupFsm;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Ltech/ulo/library/model/state/AppsStartupFsm$copyAppScriptToFilesystem$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 156
    iget v2, v0, Ltech/ulo/library/model/state/AppsStartupFsm$copyAppScriptToFilesystem$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Ltech/ulo/library/model/state/AppsStartupFsm$copyAppScriptToFilesystem$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ltech/ulo/library/model/state/AppsStartupFsm;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 157
    iget-object p3, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Ltech/ulo/library/model/state/CopyingAppScript;->INSTANCE:Ltech/ulo/library/model/state/CopyingAppScript;

    invoke-virtual {p3, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 159
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p3

    check-cast p3, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Ltech/ulo/library/model/state/AppsStartupFsm$copyAppScriptToFilesystem$2;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, p2, v4}, Ltech/ulo/library/model/state/AppsStartupFsm$copyAppScriptToFilesystem$2;-><init>(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/App;Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Ltech/ulo/library/model/state/AppsStartupFsm$copyAppScriptToFilesystem$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Ltech/ulo/library/model/state/AppsStartupFsm$copyAppScriptToFilesystem$1;->label:I

    invoke-static {p3, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 162
    :goto_1
    :try_start_2
    iget-object p2, p1, Ltech/ulo/library/model/state/AppsStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object p3, Ltech/ulo/library/model/state/AppScriptCopySucceeded;->INSTANCE:Ltech/ulo/library/model/state/AppScriptCopySucceeded;

    invoke-virtual {p2, p3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_0
    move-object p1, p0

    .line 164
    :catch_1
    iget-object p1, p1, Ltech/ulo/library/model/state/AppsStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Ltech/ulo/library/model/state/AppScriptCopyFailed;->INSTANCE:Ltech/ulo/library/model/state/AppScriptCopyFailed;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 166
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final fetchDatabaseEntries(Ltech/ulo/library/model/entities/App;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/App;",
            "ZZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Ltech/ulo/library/model/state/AppsStartupFsm$fetchDatabaseEntries$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Ltech/ulo/library/model/state/AppsStartupFsm$fetchDatabaseEntries$1;

    iget v1, v0, Ltech/ulo/library/model/state/AppsStartupFsm$fetchDatabaseEntries$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Ltech/ulo/library/model/state/AppsStartupFsm$fetchDatabaseEntries$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Ltech/ulo/library/model/state/AppsStartupFsm$fetchDatabaseEntries$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltech/ulo/library/model/state/AppsStartupFsm$fetchDatabaseEntries$1;

    invoke-direct {v0, p0, p4}, Ltech/ulo/library/model/state/AppsStartupFsm$fetchDatabaseEntries$1;-><init>(Ltech/ulo/library/model/state/AppsStartupFsm;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Ltech/ulo/library/model/state/AppsStartupFsm$fetchDatabaseEntries$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 94
    iget v2, v0, Ltech/ulo/library/model/state/AppsStartupFsm$fetchDatabaseEntries$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p1, v0, Ltech/ulo/library/model/state/AppsStartupFsm$fetchDatabaseEntries$1;->Z$1:Z

    iget-boolean p2, v0, Ltech/ulo/library/model/state/AppsStartupFsm$fetchDatabaseEntries$1;->Z$0:Z

    iget-object p3, v0, Ltech/ulo/library/model/state/AppsStartupFsm$fetchDatabaseEntries$1;->L$1:Ljava/lang/Object;

    check-cast p3, Ltech/ulo/library/model/entities/Filesystem;

    iget-object v0, v0, Ltech/ulo/library/model/state/AppsStartupFsm$fetchDatabaseEntries$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ltech/ulo/library/model/state/AppsStartupFsm;

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-boolean p3, v0, Ltech/ulo/library/model/state/AppsStartupFsm$fetchDatabaseEntries$1;->Z$1:Z

    iget-boolean p2, v0, Ltech/ulo/library/model/state/AppsStartupFsm$fetchDatabaseEntries$1;->Z$0:Z

    iget-object p1, v0, Ltech/ulo/library/model/state/AppsStartupFsm$fetchDatabaseEntries$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ltech/ulo/library/model/entities/App;

    iget-object v2, v0, Ltech/ulo/library/model/state/AppsStartupFsm$fetchDatabaseEntries$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ltech/ulo/library/model/state/AppsStartupFsm;

    :try_start_1
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object v0, v2

    goto :goto_3

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 95
    iget-object p4, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Ltech/ulo/library/model/state/FetchingDatabaseEntries;->INSTANCE:Ltech/ulo/library/model/state/FetchingDatabaseEntries;

    invoke-virtual {p4, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 97
    :try_start_2
    iput-object p0, v0, Ltech/ulo/library/model/state/AppsStartupFsm$fetchDatabaseEntries$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Ltech/ulo/library/model/state/AppsStartupFsm$fetchDatabaseEntries$1;->L$1:Ljava/lang/Object;

    iput-boolean p2, v0, Ltech/ulo/library/model/state/AppsStartupFsm$fetchDatabaseEntries$1;->Z$0:Z

    iput-boolean p3, v0, Ltech/ulo/library/model/state/AppsStartupFsm$fetchDatabaseEntries$1;->Z$1:Z

    iput v4, v0, Ltech/ulo/library/model/state/AppsStartupFsm$fetchDatabaseEntries$1;->label:I

    invoke-direct {p0, p1, v0}, Ltech/ulo/library/model/state/AppsStartupFsm;->findAppsFilesystem(Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-ne p4, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 94
    :goto_1
    :try_start_3
    check-cast p4, Ltech/ulo/library/model/entities/Filesystem;

    .line 98
    invoke-virtual {p4}, Ltech/ulo/library/model/entities/Filesystem;->getId()J

    move-result-wide v4

    iput-object v2, v0, Ltech/ulo/library/model/state/AppsStartupFsm$fetchDatabaseEntries$1;->L$0:Ljava/lang/Object;

    iput-object p4, v0, Ltech/ulo/library/model/state/AppsStartupFsm$fetchDatabaseEntries$1;->L$1:Ljava/lang/Object;

    iput-boolean p2, v0, Ltech/ulo/library/model/state/AppsStartupFsm$fetchDatabaseEntries$1;->Z$0:Z

    iput-boolean p3, v0, Ltech/ulo/library/model/state/AppsStartupFsm$fetchDatabaseEntries$1;->Z$1:Z

    iput v3, v0, Ltech/ulo/library/model/state/AppsStartupFsm$fetchDatabaseEntries$1;->label:I

    invoke-direct {v2, p1, v4, v5, v0}, Ltech/ulo/library/model/state/AppsStartupFsm;->findAppSession(Ltech/ulo/library/model/entities/App;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v0, v2

    move-object v6, p4

    move-object p4, p1

    move p1, p3

    move-object p3, v6

    .line 94
    :goto_2
    :try_start_4
    check-cast p4, Ltech/ulo/library/model/entities/Session;

    .line 99
    iput-boolean p2, v0, Ltech/ulo/library/model/state/AppsStartupFsm;->lastAskConnectType:Z

    .line 100
    iput-boolean p1, v0, Ltech/ulo/library/model/state/AppsStartupFsm;->lastAskDisplayPreferences:Z

    .line 101
    iget-object p1, v0, Ltech/ulo/library/model/state/AppsStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    new-instance p2, Ltech/ulo/library/model/state/DatabaseEntriesFetched;

    invoke-direct {p2, p3, p4}, Ltech/ulo/library/model/state/DatabaseEntriesFetched;-><init>(Ltech/ulo/library/model/entities/Filesystem;Ltech/ulo/library/model/entities/Session;)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_1
    move-object v0, p0

    .line 103
    :catch_2
    :goto_3
    iget-object p1, v0, Ltech/ulo/library/model/state/AppsStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Ltech/ulo/library/model/state/DatabaseEntriesFetchFailed;->INSTANCE:Ltech/ulo/library/model/state/DatabaseEntriesFetchFailed;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 105
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final findAppSession(Ltech/ulo/library/model/entities/App;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/App;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ulo/library/model/entities/Session;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 205
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v7, Ltech/ulo/library/model/state/AppsStartupFsm$findAppSession$2;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Ltech/ulo/library/model/state/AppsStartupFsm$findAppSession$2;-><init>(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/App;JLkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v7, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final findAppsFilesystem(Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/App;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ulo/library/model/entities/Filesystem;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 191
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Ltech/ulo/library/model/state/AppsStartupFsm$findAppsFilesystem$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Ltech/ulo/library/model/state/AppsStartupFsm$findAppsFilesystem$2;-><init>(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final setAppsFilesystemCredentials(Ltech/ulo/library/model/entities/Filesystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/Filesystem;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Ltech/ulo/library/model/state/AppsStartupFsm$setAppsFilesystemCredentials$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Ltech/ulo/library/model/state/AppsStartupFsm$setAppsFilesystemCredentials$1;

    iget v1, v0, Ltech/ulo/library/model/state/AppsStartupFsm$setAppsFilesystemCredentials$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p5, v0, Ltech/ulo/library/model/state/AppsStartupFsm$setAppsFilesystemCredentials$1;->label:I

    sub-int/2addr p5, v2

    iput p5, v0, Ltech/ulo/library/model/state/AppsStartupFsm$setAppsFilesystemCredentials$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltech/ulo/library/model/state/AppsStartupFsm$setAppsFilesystemCredentials$1;

    invoke-direct {v0, p0, p5}, Ltech/ulo/library/model/state/AppsStartupFsm$setAppsFilesystemCredentials$1;-><init>(Ltech/ulo/library/model/state/AppsStartupFsm;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Ltech/ulo/library/model/state/AppsStartupFsm$setAppsFilesystemCredentials$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 224
    iget v2, v0, Ltech/ulo/library/model/state/AppsStartupFsm$setAppsFilesystemCredentials$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Ltech/ulo/library/model/state/AppsStartupFsm$setAppsFilesystemCredentials$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ltech/ulo/library/model/state/AppsStartupFsm;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 225
    invoke-virtual {p1, p2}, Ltech/ulo/library/model/entities/Filesystem;->setDefaultUsername(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1, p3}, Ltech/ulo/library/model/entities/Filesystem;->setDefaultPassword(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1, p4}, Ltech/ulo/library/model/entities/Filesystem;->setDefaultVncPassword(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    new-instance p3, Ltech/ulo/library/model/state/AppsStartupFsm$setAppsFilesystemCredentials$2;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p1, p4}, Ltech/ulo/library/model/state/AppsStartupFsm$setAppsFilesystemCredentials$2;-><init>(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)V

    check-cast p3, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Ltech/ulo/library/model/state/AppsStartupFsm$setAppsFilesystemCredentials$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Ltech/ulo/library/model/state/AppsStartupFsm$setAppsFilesystemCredentials$1;->label:I

    invoke-static {p2, p3, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 229
    :goto_1
    iget-object p1, p1, Ltech/ulo/library/model/state/AppsStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Ltech/ulo/library/model/state/AppsFilesystemHasCredentials;->INSTANCE:Ltech/ulo/library/model/state/AppsFilesystemHasCredentials;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 230
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final setAppsFilesystemFlavor(Ltech/ulo/library/model/entities/Filesystem;Ljava/lang/String;ZLtech/ulo/library/model/entities/ExecutionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/Filesystem;",
            "Ljava/lang/String;",
            "Z",
            "Ltech/ulo/library/model/entities/ExecutionType;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Ltech/ulo/library/model/state/AppsStartupFsm$setAppsFilesystemFlavor$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Ltech/ulo/library/model/state/AppsStartupFsm$setAppsFilesystemFlavor$1;

    iget v1, v0, Ltech/ulo/library/model/state/AppsStartupFsm$setAppsFilesystemFlavor$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p5, v0, Ltech/ulo/library/model/state/AppsStartupFsm$setAppsFilesystemFlavor$1;->label:I

    sub-int/2addr p5, v2

    iput p5, v0, Ltech/ulo/library/model/state/AppsStartupFsm$setAppsFilesystemFlavor$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltech/ulo/library/model/state/AppsStartupFsm$setAppsFilesystemFlavor$1;

    invoke-direct {v0, p0, p5}, Ltech/ulo/library/model/state/AppsStartupFsm$setAppsFilesystemFlavor$1;-><init>(Ltech/ulo/library/model/state/AppsStartupFsm;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Ltech/ulo/library/model/state/AppsStartupFsm$setAppsFilesystemFlavor$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 216
    iget v2, v0, Ltech/ulo/library/model/state/AppsStartupFsm$setAppsFilesystemFlavor$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Ltech/ulo/library/model/state/AppsStartupFsm$setAppsFilesystemFlavor$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ltech/ulo/library/model/state/AppsStartupFsm;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 217
    invoke-virtual {p1, p2}, Ltech/ulo/library/model/entities/Filesystem;->setFlavor(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p1, p3}, Ltech/ulo/library/model/entities/Filesystem;->setPaid(Z)V

    .line 219
    invoke-virtual {p1, p4}, Ltech/ulo/library/model/entities/Filesystem;->setExecutionType(Ltech/ulo/library/model/entities/ExecutionType;)V

    .line 220
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    new-instance p3, Ltech/ulo/library/model/state/AppsStartupFsm$setAppsFilesystemFlavor$2;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p1, p4}, Ltech/ulo/library/model/state/AppsStartupFsm$setAppsFilesystemFlavor$2;-><init>(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)V

    check-cast p3, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Ltech/ulo/library/model/state/AppsStartupFsm$setAppsFilesystemFlavor$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Ltech/ulo/library/model/state/AppsStartupFsm$setAppsFilesystemFlavor$1;->label:I

    invoke-static {p2, p3, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 221
    :goto_1
    iget-object p1, p1, Ltech/ulo/library/model/state/AppsStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Ltech/ulo/library/model/state/AppsFilesystemHasFlavor;->INSTANCE:Ltech/ulo/library/model/state/AppsFilesystemHasFlavor;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 222
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final setDisplayPreferences(Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/DisplayPreferences;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/Session;",
            "Ltech/ulo/library/model/entities/DisplayPreferences;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 180
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Ltech/ulo/library/model/state/AppsStartupFsm$setDisplayPreferences$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p0, v2}, Ltech/ulo/library/model/state/AppsStartupFsm$setDisplayPreferences$2;-><init>(Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/DisplayPreferences;Ltech/ulo/library/model/state/AppsStartupFsm;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final setServiceTypePreferences(Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/ServiceTypePreferences;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/Session;",
            "Ltech/ulo/library/model/entities/ServiceTypePreferences;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 168
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p0, v2}, Ltech/ulo/library/model/state/AppsStartupFsm$setServiceTypePreferences$2;-><init>(Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/ServiceTypePreferences;Ltech/ulo/library/model/state/AppsStartupFsm;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final submitPayment(Ltech/ulo/library/model/entities/Filesystem;)V
    .locals 1

    const/4 v0, 0x1

    .line 125
    invoke-virtual {p1, v0}, Ltech/ulo/library/model/entities/Filesystem;->setHasPaidUp(Z)V

    .line 126
    iget-object p1, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ltech/ulo/library/model/state/PaymentMade;->INSTANCE:Ltech/ulo/library/model/state/PaymentMade;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final updateAppSession(Ltech/ulo/library/model/entities/App;Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/App;",
            "Ltech/ulo/library/model/entities/Session;",
            "Ltech/ulo/library/model/entities/Filesystem;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Ltech/ulo/library/model/state/AppsStartupFsm$updateAppSession$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Ltech/ulo/library/model/state/AppsStartupFsm$updateAppSession$1;

    iget v1, v0, Ltech/ulo/library/model/state/AppsStartupFsm$updateAppSession$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Ltech/ulo/library/model/state/AppsStartupFsm$updateAppSession$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Ltech/ulo/library/model/state/AppsStartupFsm$updateAppSession$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltech/ulo/library/model/state/AppsStartupFsm$updateAppSession$1;

    invoke-direct {v0, p0, p4}, Ltech/ulo/library/model/state/AppsStartupFsm$updateAppSession$1;-><init>(Ltech/ulo/library/model/state/AppsStartupFsm;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Ltech/ulo/library/model/state/AppsStartupFsm$updateAppSession$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 232
    iget v2, v0, Ltech/ulo/library/model/state/AppsStartupFsm$updateAppSession$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Ltech/ulo/library/model/state/AppsStartupFsm$updateAppSession$1;->L$3:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Ltech/ulo/library/model/entities/Filesystem;

    iget-object p1, v0, Ltech/ulo/library/model/state/AppsStartupFsm$updateAppSession$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ltech/ulo/library/model/entities/Session;

    iget-object p1, v0, Ltech/ulo/library/model/state/AppsStartupFsm$updateAppSession$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ltech/ulo/library/model/entities/App;

    iget-object v0, v0, Ltech/ulo/library/model/state/AppsStartupFsm$updateAppSession$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ltech/ulo/library/model/state/AppsStartupFsm;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 233
    iget-object p4, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Ltech/ulo/library/model/state/SyncingDatabaseEntries;->INSTANCE:Ltech/ulo/library/model/state/SyncingDatabaseEntries;

    invoke-virtual {p4, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 234
    invoke-virtual {p3}, Ltech/ulo/library/model/entities/Filesystem;->getId()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ltech/ulo/library/model/entities/Session;->setFilesystemId(J)V

    .line 235
    invoke-virtual {p3}, Ltech/ulo/library/model/entities/Filesystem;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ltech/ulo/library/model/entities/Session;->setFilesystemName(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p3}, Ltech/ulo/library/model/entities/Filesystem;->getDefaultUsername()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ltech/ulo/library/model/entities/Session;->setUsername(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p3}, Ltech/ulo/library/model/entities/Filesystem;->getDefaultPassword()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ltech/ulo/library/model/entities/Session;->setPassword(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p3}, Ltech/ulo/library/model/entities/Filesystem;->getDefaultVncPassword()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ltech/ulo/library/model/entities/Session;->setVncPassword(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p3}, Ltech/ulo/library/model/entities/Filesystem;->getExecutionType()Ltech/ulo/library/model/entities/ExecutionType;

    move-result-object p4

    invoke-virtual {p2, p4}, Ltech/ulo/library/model/entities/Session;->setExecutionType(Ltech/ulo/library/model/entities/ExecutionType;)V

    .line 240
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p4

    check-cast p4, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Ltech/ulo/library/model/state/AppsStartupFsm$updateAppSession$2;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p2, v4}, Ltech/ulo/library/model/state/AppsStartupFsm$updateAppSession$2;-><init>(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Ltech/ulo/library/model/state/AppsStartupFsm$updateAppSession$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Ltech/ulo/library/model/state/AppsStartupFsm$updateAppSession$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Ltech/ulo/library/model/state/AppsStartupFsm$updateAppSession$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Ltech/ulo/library/model/state/AppsStartupFsm$updateAppSession$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Ltech/ulo/library/model/state/AppsStartupFsm$updateAppSession$1;->label:I

    invoke-static {p4, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 241
    :goto_1
    iget-object p4, v0, Ltech/ulo/library/model/state/AppsStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Ltech/ulo/library/model/state/AppDatabaseEntriesSynced;

    invoke-direct {v0, p1, p2, p3}, Ltech/ulo/library/model/state/AppDatabaseEntriesSynced;-><init>(Ltech/ulo/library/model/entities/App;Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/Filesystem;)V

    invoke-virtual {p4, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 242
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
            "Ltech/ulo/library/model/state/AppsStartupState;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final setState$UserLOstLibrary_UserLOstRelease(Ltech/ulo/library/model/state/AppsStartupState;)V
    .locals 1

    const-string v0, "newState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final submitEvent(Ltech/ulo/library/model/state/AppsStartupEvent;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
    .locals 8

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ltech/ulo/library/model/state/AppsStartupFsm$submitEvent$1;-><init>(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/state/AppsStartupEvent;Lkotlin/coroutines/Continuation;)V

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

.method public final transitionIsAcceptable(Ltech/ulo/library/model/state/AppsStartupEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Ltech/ulo/library/model/state/AppsStartupFsm;->state:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ltech/ulo/library/model/state/AppsStartupState;

    .line 44
    instance-of v1, p1, Ltech/ulo/library/model/state/AppSelected;

    if-eqz v1, :cond_0

    instance-of p1, v0, Ltech/ulo/library/model/state/WaitingForAppSelection;

    goto/16 :goto_0

    .line 45
    :cond_0
    instance-of v1, p1, Ltech/ulo/library/model/state/UserFeedbackChecked;

    if-eqz v1, :cond_1

    instance-of p1, v0, Ltech/ulo/library/model/state/DatabaseEntriesFetched;

    goto/16 :goto_0

    .line 46
    :cond_1
    instance-of v1, p1, Ltech/ulo/library/model/state/UserContributionChecked;

    if-eqz v1, :cond_2

    instance-of p1, v0, Ltech/ulo/library/model/state/UserFeedbackCheckComplete;

    goto/16 :goto_0

    .line 47
    :cond_2
    instance-of v1, p1, Ltech/ulo/library/model/state/CheckAppsFilesystemFlavor;

    if-eqz v1, :cond_3

    instance-of p1, v0, Ltech/ulo/library/model/state/UserContributionCheckComplete;

    goto :goto_0

    .line 48
    :cond_3
    instance-of v1, p1, Ltech/ulo/library/model/state/SubmitAppsFilesystemFlavor;

    if-eqz v1, :cond_4

    instance-of p1, v0, Ltech/ulo/library/model/state/AppsFilesystemRequiresFlavor;

    goto :goto_0

    .line 49
    :cond_4
    instance-of v1, p1, Ltech/ulo/library/model/state/CheckPayment;

    if-eqz v1, :cond_5

    instance-of p1, v0, Ltech/ulo/library/model/state/AppsFilesystemHasFlavor;

    goto :goto_0

    .line 50
    :cond_5
    instance-of v1, p1, Ltech/ulo/library/model/state/SubmitPayment;

    if-eqz v1, :cond_6

    instance-of p1, v0, Ltech/ulo/library/model/state/PaymentRequired;

    goto :goto_0

    .line 51
    :cond_6
    instance-of v1, p1, Ltech/ulo/library/model/state/CheckAppsFilesystemCredentials;

    if-eqz v1, :cond_7

    instance-of p1, v0, Ltech/ulo/library/model/state/PaymentMade;

    goto :goto_0

    .line 52
    :cond_7
    instance-of v1, p1, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;

    if-eqz v1, :cond_8

    instance-of p1, v0, Ltech/ulo/library/model/state/AppsFilesystemRequiresCredentials;

    goto :goto_0

    .line 53
    :cond_8
    instance-of v1, p1, Ltech/ulo/library/model/state/CheckAppSessionServiceTypePreferences;

    if-eqz v1, :cond_9

    instance-of p1, v0, Ltech/ulo/library/model/state/AppsFilesystemHasCredentials;

    goto :goto_0

    .line 54
    :cond_9
    instance-of v1, p1, Ltech/ulo/library/model/state/SubmitAppSessionServiceTypePreferences;

    if-eqz v1, :cond_a

    instance-of p1, v0, Ltech/ulo/library/model/state/AppRequiresServiceTypePreferences;

    goto :goto_0

    .line 55
    :cond_a
    instance-of v1, p1, Ltech/ulo/library/model/state/CheckAppSessionDisplayPreferences;

    if-eqz v1, :cond_b

    instance-of p1, v0, Ltech/ulo/library/model/state/AppHasServiceTypePreferencesSet;

    goto :goto_0

    .line 56
    :cond_b
    instance-of v1, p1, Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;

    if-eqz v1, :cond_c

    instance-of p1, v0, Ltech/ulo/library/model/state/AppRequiresDisplayPreferences;

    goto :goto_0

    .line 57
    :cond_c
    instance-of v1, p1, Ltech/ulo/library/model/state/CopyAppScriptToFilesystem;

    if-eqz v1, :cond_d

    instance-of p1, v0, Ltech/ulo/library/model/state/AppHasDisplayPreferencesSet;

    goto :goto_0

    .line 58
    :cond_d
    instance-of v1, p1, Ltech/ulo/library/model/state/SyncDatabaseEntries;

    if-eqz v1, :cond_e

    instance-of p1, v0, Ltech/ulo/library/model/state/AppScriptCopySucceeded;

    goto :goto_0

    .line 59
    :cond_e
    instance-of p1, p1, Ltech/ulo/library/model/state/ResetAppState;

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    :goto_0
    return p1

    :cond_f
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
