.class public final Ltech/ulo/library/ServerService;
.super Landroid/app/Service;
.source "ServerService.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/ulo/library/ServerService$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nServerService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServerService.kt\ntech/ulo/library/ServerService\n+ 2 Extensions.kt\ntech/ulo/library/utils/ExtensionsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 6 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,1231:1\n49#2:1232\n49#2:1237\n49#2:1238\n49#2:1258\n49#2:1259\n49#2:1260\n49#2:1261\n49#2:1262\n49#2:1263\n1855#3,2:1233\n1855#3,2:1235\n766#3:1239\n857#3,2:1240\n766#3:1242\n857#3,2:1243\n766#3:1246\n857#3,2:1247\n766#3:1264\n857#3,2:1265\n1855#3,2:1267\n1#4:1245\n526#5:1249\n511#5,6:1250\n215#6,2:1256\n*S KotlinDebug\n*F\n+ 1 ServerService.kt\ntech/ulo/library/ServerService\n*L\n131#1:1232\n259#1:1237\n267#1:1238\n1085#1:1258\n1086#1:1259\n1089#1:1260\n1110#1:1261\n1111#1:1262\n1114#1:1263\n155#1:1233,2\n196#1:1235,2\n383#1:1239\n383#1:1240,2\n414#1:1242\n414#1:1243,2\n542#1:1246\n542#1:1247,2\n1158#1:1264\n1158#1:1265,2\n1159#1:1267,2\n1055#1:1249\n1055#1:1250,6\n1058#1:1256,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00aa\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0008\u0005\u0018\u0000 \u008a\u00012\u00020\u00012\u00020\u0002:\u0002\u008a\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0016\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u0006H\u0082@\u00a2\u0006\u0002\u00109J\u000e\u0010:\u001a\u000207H\u0082@\u00a2\u0006\u0002\u0010;J\u000e\u0010<\u001a\u000207H\u0082@\u00a2\u0006\u0002\u0010;J\u0010\u0010=\u001a\u00020,2\u0006\u0010>\u001a\u00020?H\u0002J\u0019\u0010@\u001a\u0002002\u0006\u0010A\u001a\u00020\'2\u0006\u0010B\u001a\u00020\'H\u0086 J9\u0010C\u001a\u0002002\u0006\u0010D\u001a\u00020\'2\u0006\u0010E\u001a\u00020\'2\u0006\u0010F\u001a\u0002002\u0006\u0010G\u001a\u00020,2\u0006\u0010H\u001a\u00020,2\u0006\u0010I\u001a\u00020\u0006H\u0086 J\u0019\u0010J\u001a\u0002002\u0006\u0010K\u001a\u0002002\u0006\u0010F\u001a\u000200H\u0086 J\u0019\u0010L\u001a\u0002002\u0006\u0010A\u001a\u00020\'2\u0006\u0010B\u001a\u00020\'H\u0086 J\u0010\u0010M\u001a\u0002072\u0006\u0010N\u001a\u00020\'H\u0002J\u000e\u0010O\u001a\u0002072\u0006\u0010P\u001a\u00020,J\u0008\u0010Q\u001a\u000207H\u0002J\u0016\u0010R\u001a\u0002072\u0006\u0010S\u001a\u00020\u0007H\u0082@\u00a2\u0006\u0002\u0010TJ\u0014\u0010U\u001a\u0004\u0018\u00010V2\u0008\u0010>\u001a\u0004\u0018\u00010?H\u0016J\u0008\u0010W\u001a\u000207H\u0016J\u0008\u0010X\u001a\u000207H\u0016J\"\u0010Y\u001a\u0002002\u0008\u0010>\u001a\u0004\u0018\u00010?2\u0006\u0010Z\u001a\u0002002\u0006\u0010[\u001a\u000200H\u0016J\u0012\u0010\\\u001a\u0002072\u0008\u0010]\u001a\u0004\u0018\u00010?H\u0016J.\u0010^\u001a\u0002072\u0006\u0010_\u001a\u0002002\u0006\u0010`\u001a\u0002002\u0006\u0010a\u001a\u00020\'2\u0006\u0010Z\u001a\u0002002\u0006\u0010b\u001a\u000200J\u0016\u0010c\u001a\u0002072\u0006\u0010d\u001a\u00020eH\u0082@\u00a2\u0006\u0002\u0010fJ\u000e\u0010g\u001a\u0002072\u0006\u0010>\u001a\u00020?J\u0010\u0010h\u001a\u0002072\u0006\u0010S\u001a\u00020\u0007H\u0002J\u0016\u0010i\u001a\u0002072\u0006\u0010S\u001a\u00020\u0007H\u0082@\u00a2\u0006\u0002\u0010TJ\u0016\u0010j\u001a\u0002072\u0006\u0010S\u001a\u00020\u0007H\u0082@\u00a2\u0006\u0002\u0010TJ\u000e\u0010k\u001a\u0002072\u0006\u0010a\u001a\u00020\'J\u0010\u0010l\u001a\u0002072\u0006\u0010a\u001a\u00020\'H\u0002J\u0008\u0010m\u001a\u000207H\u0002J\u001a\u0010n\u001a\u0002072\u0006\u0010o\u001a\u00020\'2\u0008\u0008\u0002\u0010p\u001a\u00020,H\u0002J\u0018\u0010n\u001a\u0002072\u0006\u0010o\u001a\u00020\'2\u0006\u0010q\u001a\u00020\'H\u0002J\u0008\u0010r\u001a\u000207H\u0002J\u0008\u0010s\u001a\u000207H\u0002J\u0010\u0010t\u001a\u0002072\u0006\u0010S\u001a\u00020\u0007H\u0002J\u0016\u0010u\u001a\u0002072\u0006\u0010S\u001a\u00020\u0007H\u0082@\u00a2\u0006\u0002\u0010TJ\u0010\u0010v\u001a\u0002072\u0006\u0010S\u001a\u00020\u0007H\u0002J\u0018\u0010w\u001a\u0002072\u0006\u0010S\u001a\u00020\u00072\u0006\u0010N\u001a\u00020\'H\u0002J\u0018\u0010x\u001a\u0002072\u0006\u0010S\u001a\u00020\u00072\u0006\u0010y\u001a\u000200H\u0002J\u0010\u0010z\u001a\u0002072\u0006\u0010N\u001a\u00020\'H\u0002J\u000e\u0010{\u001a\u0002002\u0006\u0010|\u001a\u000200J\u0017\u0010}\u001a\u0002072\u0006\u0010~\u001a\u00020\u007fH\u0082@\u00a2\u0006\u0003\u0010\u0080\u0001J\n\u0010\u0081\u0001\u001a\u00020\'H\u0086 J\u0018\u0010\u0082\u0001\u001a\u0002072\u0006\u0010B\u001a\u00020\'H\u0082@\u00a2\u0006\u0003\u0010\u0083\u0001J)\u0010\u0084\u0001\u001a\u0002002\u000e\u0010\u0085\u0001\u001a\t\u0012\u0004\u0012\u00020\'0\u0086\u00012\u0007\u0010\u0087\u0001\u001a\u00020\'H\u0086 \u00a2\u0006\u0003\u0010\u0088\u0001J\u0011\u0010\u0089\u0001\u001a\u00020\t2\u0006\u0010S\u001a\u00020\u0007H\u0002R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u00158VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u001c\u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u0013\u001a\u0004\u0008\u001e\u0010\u001fR\u001b\u0010!\u001a\u00020\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010\u0013\u001a\u0004\u0008#\u0010$R\u0010\u0010&\u001a\u0004\u0018\u00010\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00060.X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u000200X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u000200X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00103\u001a\u000200X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00104\u001a\u000200X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020,X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u008b\u0001"
    }
    d2 = {
        "Ltech/ulo/library/ServerService;",
        "Landroid/app/Service;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "()V",
        "activeSessions",
        "",
        "",
        "Ltech/ulo/library/model/entities/Session;",
        "avfCleanupJob",
        "Lkotlinx/coroutines/Job;",
        "avfSessionManager",
        "Ltech/ulo/library/utils/AvfSessionManager;",
        "broadcaster",
        "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;",
        "busyboxExecutor",
        "Ltech/ulo/library/utils/BusyboxExecutor;",
        "getBusyboxExecutor",
        "()Ltech/ulo/library/utils/BusyboxExecutor;",
        "busyboxExecutor$delegate",
        "Lkotlin/Lazy;",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "droidFileJob",
        "job",
        "Lkotlinx/coroutines/CompletableJob;",
        "lastSession",
        "localServerManager",
        "Ltech/ulo/library/utils/LocalServerManager;",
        "getLocalServerManager",
        "()Ltech/ulo/library/utils/LocalServerManager;",
        "localServerManager$delegate",
        "notificationManager",
        "Ltech/ulo/library/utils/NotificationConstructor;",
        "getNotificationManager",
        "()Ltech/ulo/library/utils/NotificationConstructor;",
        "notificationManager$delegate",
        "pendingFailureDialogType",
        "",
        "qemuCleanupJob",
        "qemuSessionManager",
        "Ltech/ulo/library/utils/QemuSessionManager;",
        "sessionActivatedPending",
        "",
        "sessionsCurrentlyStarting",
        "",
        "uriFlags",
        "",
        "uriMode",
        "uriPath",
        "uriSock",
        "uriSysCall",
        "waitingForStart",
        "cleanUpFilesystem",
        "",
        "filesystemId",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cleanUpOrphanedAvfSessions",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cleanUpOrphanedQemuSessions",
        "clientIsPresent",
        "intent",
        "Landroid/content/Intent;",
        "droidFileClientRun",
        "sockPath",
        "filePath",
        "droidFileSendDent",
        "direntsFileName",
        "name",
        "fd",
        "isDir",
        "is64",
        "cnt",
        "droidFileSendFd",
        "client",
        "droidFileServerRun",
        "getClient",
        "packageName",
        "getUri",
        "getPerms",
        "intentRequest",
        "killSession",
        "session",
        "(Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onBind",
        "Landroid/os/IBinder;",
        "onCreate",
        "onDestroy",
        "onStartCommand",
        "flags",
        "startId",
        "onTaskRemoved",
        "rootIntent",
        "open",
        "sock",
        "sysCall",
        "path",
        "mode",
        "prepareSession",
        "filesystem",
        "Ltech/ulo/library/model/entities/Filesystem;",
        "(Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "processGetDirPermResult",
        "removeSession",
        "repairAvfSession",
        "repairQemuSession",
        "requestUriPerms",
        "runDroidFileClient",
        "runDroidFileServer",
        "sendDialogBroadcast",
        "type",
        "terminal",
        "message",
        "sendSessionActivatedBroadcast",
        "sendSessionReadyBroadcast",
        "startClient",
        "startSession",
        "startSshClient",
        "startVncClient",
        "startVncClientOnPort",
        "port",
        "startXsdlClient",
        "staticMethod",
        "int",
        "stopApp",
        "app",
        "Ltech/ulo/library/model/entities/App;",
        "(Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "stringFromJNI",
        "tailFile",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "toyboxMain",
        "args",
        "",
        "logPath",
        "([Ljava/lang/String;Ljava/lang/String;)I",
        "updateSession",
        "Companion",
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


# static fields
.field public static final Companion:Ltech/ulo/library/ServerService$Companion;

.field public static final SERVER_SERVICE_RESULT:Ljava/lang/String; = "tech.ulo.library.ServerService.RESULT"


# instance fields
.field private final activeSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ltech/ulo/library/model/entities/Session;",
            ">;"
        }
    .end annotation
.end field

.field private avfCleanupJob:Lkotlinx/coroutines/Job;

.field private avfSessionManager:Ltech/ulo/library/utils/AvfSessionManager;

.field private broadcaster:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private final busyboxExecutor$delegate:Lkotlin/Lazy;

.field private droidFileJob:Lkotlinx/coroutines/Job;

.field private final job:Lkotlinx/coroutines/CompletableJob;

.field private lastSession:Ltech/ulo/library/model/entities/Session;

.field private final localServerManager$delegate:Lkotlin/Lazy;

.field private final notificationManager$delegate:Lkotlin/Lazy;

.field private pendingFailureDialogType:Ljava/lang/String;

.field private qemuCleanupJob:Lkotlinx/coroutines/Job;

.field private qemuSessionManager:Ltech/ulo/library/utils/QemuSessionManager;

.field private sessionActivatedPending:Z

.field private final sessionsCurrentlyStarting:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private uriFlags:I

.field private uriMode:I

.field private uriPath:Ljava/lang/String;

.field private uriSock:I

.field private uriSysCall:I

.field private waitingForStart:Z


# direct methods
.method public static synthetic $r8$lambda$lCO4juhuxHBgAguasIr1GX6_xJc(Ljava/util/List;Ltech/ulo/library/ServerService;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/ServerService;->onDestroy$lambda$7(Ljava/util/List;Ltech/ulo/library/ServerService;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltech/ulo/library/ServerService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/ulo/library/ServerService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/ulo/library/ServerService;->Companion:Ltech/ulo/library/ServerService$Companion;

    .line 85
    const-string v0, "toybox"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 86
    const-string v0, "droid_files"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 42
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/ServerService;->job:Lkotlinx/coroutines/CompletableJob;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Ltech/ulo/library/ServerService;->uriPath:Ljava/lang/String;

    .line 288
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Ltech/ulo/library/ServerService;->activeSessions:Ljava/util/Map;

    .line 304
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Ltech/ulo/library/ServerService;->sessionsCurrentlyStarting:Ljava/util/Set;

    .line 330
    new-instance v0, Ltech/ulo/library/ServerService$notificationManager$2;

    invoke-direct {v0, p0}, Ltech/ulo/library/ServerService$notificationManager$2;-><init>(Ltech/ulo/library/ServerService;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/ServerService;->notificationManager$delegate:Lkotlin/Lazy;

    .line 344
    new-instance v0, Ltech/ulo/library/ServerService$busyboxExecutor$2;

    invoke-direct {v0, p0}, Ltech/ulo/library/ServerService$busyboxExecutor$2;-><init>(Ltech/ulo/library/ServerService;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/ServerService;->busyboxExecutor$delegate:Lkotlin/Lazy;

    .line 350
    new-instance v0, Ltech/ulo/library/ServerService$localServerManager$2;

    invoke-direct {v0, p0}, Ltech/ulo/library/ServerService$localServerManager$2;-><init>(Ltech/ulo/library/ServerService;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/ServerService;->localServerManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$cleanUpFilesystem(Ltech/ulo/library/ServerService;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Ltech/ulo/library/ServerService;->cleanUpFilesystem(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$cleanUpOrphanedAvfSessions(Ltech/ulo/library/ServerService;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Ltech/ulo/library/ServerService;->cleanUpOrphanedAvfSessions(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$cleanUpOrphanedQemuSessions(Ltech/ulo/library/ServerService;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Ltech/ulo/library/ServerService;->cleanUpOrphanedQemuSessions(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getActiveSessions$p(Ltech/ulo/library/ServerService;)Ljava/util/Map;
    .locals 0

    .line 40
    iget-object p0, p0, Ltech/ulo/library/ServerService;->activeSessions:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getBusyboxExecutor(Ltech/ulo/library/ServerService;)Ltech/ulo/library/utils/BusyboxExecutor;
    .locals 0

    .line 40
    invoke-direct {p0}, Ltech/ulo/library/ServerService;->getBusyboxExecutor()Ltech/ulo/library/utils/BusyboxExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSessionsCurrentlyStarting$p(Ltech/ulo/library/ServerService;)Ljava/util/Set;
    .locals 0

    .line 40
    iget-object p0, p0, Ltech/ulo/library/ServerService;->sessionsCurrentlyStarting:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$killSession(Ltech/ulo/library/ServerService;Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/ServerService;->killSession(Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$prepareSession(Ltech/ulo/library/ServerService;Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/ServerService;->prepareSession(Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$repairAvfSession(Ltech/ulo/library/ServerService;Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/ServerService;->repairAvfSession(Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$repairQemuSession(Ltech/ulo/library/ServerService;Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/ServerService;->repairQemuSession(Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$runDroidFileServer(Ltech/ulo/library/ServerService;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ltech/ulo/library/ServerService;->runDroidFileServer()V

    return-void
.end method

.method public static final synthetic access$sendDialogBroadcast(Ltech/ulo/library/ServerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/ServerService;->sendDialogBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$startSession(Ltech/ulo/library/ServerService;Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/ServerService;->startSession(Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$stopApp(Ltech/ulo/library/ServerService;Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/ServerService;->stopApp(Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$tailFile(Ltech/ulo/library/ServerService;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/ServerService;->tailFile(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final cleanUpFilesystem(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Ltech/ulo/library/ServerService$cleanUpFilesystem$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Ltech/ulo/library/ServerService$cleanUpFilesystem$1;

    iget v1, v0, Ltech/ulo/library/ServerService$cleanUpFilesystem$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Ltech/ulo/library/ServerService$cleanUpFilesystem$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Ltech/ulo/library/ServerService$cleanUpFilesystem$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltech/ulo/library/ServerService$cleanUpFilesystem$1;

    invoke-direct {v0, p0, p3}, Ltech/ulo/library/ServerService$cleanUpFilesystem$1;-><init>(Ltech/ulo/library/ServerService;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Ltech/ulo/library/ServerService$cleanUpFilesystem$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1157
    iget v2, v0, Ltech/ulo/library/ServerService$cleanUpFilesystem$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Ltech/ulo/library/ServerService$cleanUpFilesystem$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object p2, v0, Ltech/ulo/library/ServerService$cleanUpFilesystem$1;->L$0:Ljava/lang/Object;

    check-cast p2, Ltech/ulo/library/ServerService;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1158
    iget-object p3, p0, Ltech/ulo/library/ServerService;->activeSessions:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    .line 1264
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 1265
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ltech/ulo/library/model/entities/Session;

    .line 1158
    invoke-virtual {v5}, Ltech/ulo/library/model/entities/Session;->getFilesystemId()J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-nez v5, :cond_3

    .line 1265
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1266
    :cond_4
    check-cast v2, Ljava/util/List;

    .line 1264
    check-cast v2, Ljava/lang/Iterable;

    .line 1267
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object p2, p0

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ltech/ulo/library/model/entities/Session;

    .line 1159
    iput-object p2, v0, Ltech/ulo/library/ServerService$cleanUpFilesystem$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Ltech/ulo/library/ServerService$cleanUpFilesystem$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Ltech/ulo/library/ServerService$cleanUpFilesystem$1;->label:I

    invoke-direct {p2, p3, v0}, Ltech/ulo/library/ServerService;->killSession(Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    .line 1160
    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final cleanUpOrphanedAvfSessions(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
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

    instance-of v0, p1, Ltech/ulo/library/ServerService$cleanUpOrphanedAvfSessions$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ltech/ulo/library/ServerService$cleanUpOrphanedAvfSessions$1;

    iget v1, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedAvfSessions$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedAvfSessions$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedAvfSessions$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltech/ulo/library/ServerService$cleanUpOrphanedAvfSessions$1;

    invoke-direct {v0, p0, p1}, Ltech/ulo/library/ServerService$cleanUpOrphanedAvfSessions$1;-><init>(Ltech/ulo/library/ServerService;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedAvfSessions$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 380
    iget v2, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedAvfSessions$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v1, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedAvfSessions$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ltech/ulo/library/utils/AvfSessionManager;

    iget-object v0, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedAvfSessions$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedAvfSessions$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ltech/ulo/library/ServerService;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 381
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Ltech/ulo/library/ServerService$cleanUpOrphanedAvfSessions$avfSessions$1;

    invoke-direct {v2, p0, v3}, Ltech/ulo/library/ServerService$cleanUpOrphanedAvfSessions$avfSessions$1;-><init>(Ltech/ulo/library/ServerService;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedAvfSessions$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedAvfSessions$1;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 380
    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    .line 1239
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .line 1240
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ltech/ulo/library/model/entities/Session;

    .line 383
    invoke-virtual {v7}, Ltech/ulo/library/model/entities/Session;->getExecutionType()Ltech/ulo/library/model/entities/ExecutionType;

    move-result-object v7

    sget-object v8, Ltech/ulo/library/model/entities/ExecutionType;->AVF:Ltech/ulo/library/model/entities/ExecutionType;

    if-ne v7, v8, :cond_5

    .line 1240
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1241
    :cond_6
    move-object p1, v5

    check-cast p1, Ljava/util/List;

    .line 384
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 386
    :cond_7
    new-instance v5, Ltech/ulo/library/utils/AvfSessionManager;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v5, v2}, Ltech/ulo/library/utils/AvfSessionManager;-><init>(Landroid/content/Context;)V

    .line 387
    invoke-virtual {v5}, Ltech/ulo/library/utils/AvfSessionManager;->isAvfRunnerInstalled()Z

    move-result v2

    if-nez v2, :cond_8

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 388
    :cond_8
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v6, Ltech/ulo/library/ServerService$cleanUpOrphanedAvfSessions$2;

    invoke-direct {v6, v5, v3}, Ltech/ulo/library/ServerService$cleanUpOrphanedAvfSessions$2;-><init>(Ltech/ulo/library/utils/AvfSessionManager;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    iput-object p1, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedAvfSessions$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedAvfSessions$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedAvfSessions$1;->label:I

    invoke-static {v2, v6, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_9

    return-object v1

    :cond_9
    move-object v1, v5

    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_a

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 397
    :cond_a
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/ulo/library/model/entities/Session;

    .line 398
    const-string v2, "ServerService"

    invoke-virtual {v0}, Ltech/ulo/library/model/entities/Session;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stopping any orphaned AVF session for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " left over from a previous process"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {v1, v0}, Ltech/ulo/library/utils/AvfSessionManager;->stopSession(Ltech/ulo/library/model/entities/Session;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 403
    :cond_b
    invoke-virtual {v1}, Ltech/ulo/library/utils/AvfSessionManager;->unbind()V

    .line 405
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    .line 403
    invoke-virtual {v1}, Ltech/ulo/library/utils/AvfSessionManager;->unbind()V

    throw p1
.end method

.method private final cleanUpOrphanedQemuSessions(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
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

    instance-of v0, p1, Ltech/ulo/library/ServerService$cleanUpOrphanedQemuSessions$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ltech/ulo/library/ServerService$cleanUpOrphanedQemuSessions$1;

    iget v1, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedQemuSessions$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedQemuSessions$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedQemuSessions$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltech/ulo/library/ServerService$cleanUpOrphanedQemuSessions$1;

    invoke-direct {v0, p0, p1}, Ltech/ulo/library/ServerService$cleanUpOrphanedQemuSessions$1;-><init>(Ltech/ulo/library/ServerService;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedQemuSessions$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 411
    iget v2, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedQemuSessions$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v2, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedQemuSessions$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v3, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedQemuSessions$1;->L$0:Ljava/lang/Object;

    check-cast v3, Ltech/ulo/library/utils/QemuSessionManager;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedQemuSessions$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ltech/ulo/library/utils/QemuSessionManager;

    iget-object v3, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedQemuSessions$1;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object v2, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedQemuSessions$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ltech/ulo/library/ServerService;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 412
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Ltech/ulo/library/ServerService$cleanUpOrphanedQemuSessions$qemuSessions$1;

    invoke-direct {v2, p0, v3}, Ltech/ulo/library/ServerService$cleanUpOrphanedQemuSessions$qemuSessions$1;-><init>(Ltech/ulo/library/ServerService;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedQemuSessions$1;->L$0:Ljava/lang/Object;

    iput v6, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedQemuSessions$1;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 411
    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    .line 1242
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 1243
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ltech/ulo/library/model/entities/Session;

    .line 414
    invoke-virtual {v8}, Ltech/ulo/library/model/entities/Session;->getExecutionType()Ltech/ulo/library/model/entities/ExecutionType;

    move-result-object v8

    sget-object v9, Ltech/ulo/library/model/entities/ExecutionType;->QEMU:Ltech/ulo/library/model/entities/ExecutionType;

    if-ne v8, v9, :cond_6

    .line 1243
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1244
    :cond_7
    move-object p1, v6

    check-cast p1, Ljava/util/List;

    .line 415
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 417
    :cond_8
    new-instance v6, Ltech/ulo/library/utils/QemuSessionManager;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v6, v2}, Ltech/ulo/library/utils/QemuSessionManager;-><init>(Landroid/content/Context;)V

    .line 418
    invoke-virtual {v6}, Ltech/ulo/library/utils/QemuSessionManager;->isQemuRunnerInstalled()Z

    move-result v2

    if-nez v2, :cond_9

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 419
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v7, Ltech/ulo/library/ServerService$cleanUpOrphanedQemuSessions$2;

    invoke-direct {v7, v6, v3}, Ltech/ulo/library/ServerService$cleanUpOrphanedQemuSessions$2;-><init>(Ltech/ulo/library/utils/QemuSessionManager;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    iput-object p1, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedQemuSessions$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedQemuSessions$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedQemuSessions$1;->label:I

    invoke-static {v2, v7, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_a

    return-object v1

    :cond_a
    move-object v3, p1

    move-object p1, v2

    move-object v2, v6

    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_b

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 422
    :cond_b
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v2

    move-object v2, p1

    :cond_c
    :goto_4
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltech/ulo/library/model/entities/Session;

    .line 423
    const-string v5, "ServerService"

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Stopping any orphaned QEMU session for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " left over from a previous process"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iput-object v3, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedQemuSessions$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedQemuSessions$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Ltech/ulo/library/ServerService$cleanUpOrphanedQemuSessions$1;->label:I

    invoke-virtual {v3, p1, v0}, Ltech/ulo/library/utils/QemuSessionManager;->stopSession(Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p1, v1, :cond_c

    return-object v1

    .line 428
    :cond_d
    invoke-virtual {v3}, Ltech/ulo/library/utils/QemuSessionManager;->unbind()V

    .line 430
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_1
    move-exception p1

    move-object v3, v2

    .line 428
    :goto_5
    invoke-virtual {v3}, Ltech/ulo/library/utils/QemuSessionManager;->unbind()V

    throw p1
.end method

.method private final clientIsPresent(Landroid/content/Intent;)Z
    .locals 2

    .line 1143
    invoke-virtual {p0}, Ltech/ulo/library/ServerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    const-string v0, "queryIntentActivities(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1144
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private final getBusyboxExecutor()Ltech/ulo/library/utils/BusyboxExecutor;
    .locals 1

    .line 344
    iget-object v0, p0, Ltech/ulo/library/ServerService;->busyboxExecutor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/ulo/library/utils/BusyboxExecutor;

    return-object v0
.end method

.method private final getClient(Ljava/lang/String;)V
    .locals 3

    .line 1148
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "market://details?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 1149
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1151
    :try_start_0
    invoke-virtual {p0, v0}, Ltech/ulo/library/ServerService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 1153
    const-string v1, "playStoreMissingForClient"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, p1, v0}, Ltech/ulo/library/ServerService;->sendDialogBroadcast$default(Ltech/ulo/library/ServerService;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final getLocalServerManager()Ltech/ulo/library/utils/LocalServerManager;
    .locals 1

    .line 350
    iget-object v0, p0, Ltech/ulo/library/ServerService;->localServerManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/ulo/library/utils/LocalServerManager;

    return-object v0
.end method

.method private final getNotificationManager()Ltech/ulo/library/utils/NotificationConstructor;
    .locals 1

    .line 330
    iget-object v0, p0, Ltech/ulo/library/ServerService;->notificationManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/ulo/library/utils/NotificationConstructor;

    return-object v0
.end method

.method private final intentRequest()V
    .locals 11

    .line 1196
    new-instance v6, Ltech/ulo/library/utils/UlaFiles;

    move-object v7, p0

    check-cast v7, Landroid/content/Context;

    invoke-virtual {p0}, Ltech/ulo/library/ServerService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-string v0, "nativeLibraryDir"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, v7

    invoke-direct/range {v0 .. v5}, Ltech/ulo/library/utils/UlaFiles;-><init>(Landroid/content/Context;Ljava/lang/String;Ltech/ulo/library/utils/Symlinker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1197
    new-instance v0, Ljava/io/File;

    invoke-virtual {v6}, Ltech/ulo/library/utils/UlaFiles;->getIntentsDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "cameraRequest.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1198
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1199
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lkotlin/io/FilesKt;->readText(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1200
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1201
    const-string v0, "barcode.txt"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const/high16 v5, 0x14000000

    if-eqz v0, :cond_0

    .line 1202
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;

    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1203
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1204
    invoke-virtual {p0, v0}, Ltech/ulo/library/ServerService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1205
    :cond_0
    const-string v0, "tone.txt"

    invoke-static {v1, v0, v2, v3, v4}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1206
    new-instance v1, Ljava/io/File;

    invoke-virtual {v6}, Ltech/ulo/library/utils/UlaFiles;->getIntentsDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1207
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, v0}, Lkotlin/io/FilesKt;->readText(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1212
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "ENGLISH"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "toLowerCase(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const-string v4, ","

    aput-object v4, v6, v2

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1209
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1210
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1213
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1214
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v4, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v4, v0}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 1215
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    goto :goto_0

    .line 1216
    :cond_1
    const-string v0, "record_speech.txt"

    invoke-static {v1, v0, v2, v3, v4}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1217
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ltech/ulo/library/RecordSpeechActivity;

    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1218
    const-string v1, "record_speech"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1219
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1220
    invoke-virtual {p0, v0}, Ltech/ulo/library/ServerService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1222
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Ltech/ulo/library/CameraActivity;

    invoke-direct {v0, v7, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1223
    const-string v2, "take_picture"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1224
    const-string v2, "cameraRequest"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1225
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1226
    invoke-virtual {p0, v0}, Ltech/ulo/library/ServerService;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private final killSession(Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/Session;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Ltech/ulo/library/ServerService$killSession$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ltech/ulo/library/ServerService$killSession$1;

    iget v1, v0, Ltech/ulo/library/ServerService$killSession$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Ltech/ulo/library/ServerService$killSession$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Ltech/ulo/library/ServerService$killSession$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltech/ulo/library/ServerService$killSession$1;

    invoke-direct {v0, p0, p2}, Ltech/ulo/library/ServerService$killSession$1;-><init>(Ltech/ulo/library/ServerService;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Ltech/ulo/library/ServerService$killSession$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 571
    iget v2, v0, Ltech/ulo/library/ServerService$killSession$1;->label:I

    const-string v3, "ServerService"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Ltech/ulo/library/ServerService$killSession$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ltech/ulo/library/utils/QemuSessionManager;

    iget-object v1, v0, Ltech/ulo/library/ServerService$killSession$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ltech/ulo/library/model/entities/Session;

    iget-object v0, v0, Ltech/ulo/library/ServerService$killSession$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ltech/ulo/library/ServerService;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Ltech/ulo/library/ServerService$killSession$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ltech/ulo/library/utils/QemuSessionManager;

    iget-object v2, v0, Ltech/ulo/library/ServerService$killSession$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ltech/ulo/library/model/entities/Session;

    iget-object v5, v0, Ltech/ulo/library/ServerService$killSession$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ltech/ulo/library/ServerService;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object p1, v0, Ltech/ulo/library/ServerService$killSession$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ltech/ulo/library/utils/AvfSessionManager;

    iget-object v1, v0, Ltech/ulo/library/ServerService$killSession$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ltech/ulo/library/model/entities/Session;

    iget-object v0, v0, Ltech/ulo/library/ServerService$killSession$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ltech/ulo/library/ServerService;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 572
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getExecutionType()Ltech/ulo/library/model/entities/ExecutionType;

    move-result-object p2

    sget-object v2, Ltech/ulo/library/model/entities/ExecutionType;->AVF:Ltech/ulo/library/model/entities/ExecutionType;

    if-ne p2, v2, :cond_8

    .line 584
    iget-object p2, p0, Ltech/ulo/library/ServerService;->avfSessionManager:Ltech/ulo/library/utils/AvfSessionManager;

    if-nez p2, :cond_5

    new-instance p2, Ltech/ulo/library/utils/AvfSessionManager;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {p2, v2}, Ltech/ulo/library/utils/AvfSessionManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ltech/ulo/library/ServerService;->avfSessionManager:Ltech/ulo/library/utils/AvfSessionManager;

    .line 585
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Ltech/ulo/library/ServerService$killSession$2;

    invoke-direct {v4, p2, v7}, Ltech/ulo/library/ServerService$killSession$2;-><init>(Ltech/ulo/library/utils/AvfSessionManager;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Ltech/ulo/library/ServerService$killSession$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Ltech/ulo/library/ServerService$killSession$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Ltech/ulo/library/ServerService$killSession$1;->L$2:Ljava/lang/Object;

    iput v6, v0, Ltech/ulo/library/ServerService$killSession$1;->label:I

    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_6

    return-object v1

    :cond_6
    move-object v1, p1

    move-object p1, p2

    move-object p2, v0

    move-object v0, p0

    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 586
    invoke-virtual {p1, v1}, Ltech/ulo/library/utils/AvfSessionManager;->stopSession(Ltech/ulo/library/model/entities/Session;)V

    .line 588
    :cond_7
    invoke-virtual {p1}, Ltech/ulo/library/utils/AvfSessionManager;->unbind()V

    .line 589
    iput-object v7, v0, Ltech/ulo/library/ServerService;->avfSessionManager:Ltech/ulo/library/utils/AvfSessionManager;

    :goto_2
    move-object p1, v1

    goto/16 :goto_6

    .line 590
    :cond_8
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getExecutionType()Ltech/ulo/library/model/entities/ExecutionType;

    move-result-object p2

    sget-object v2, Ltech/ulo/library/model/entities/ExecutionType;->QEMU:Ltech/ulo/library/model/entities/ExecutionType;

    if-ne p2, v2, :cond_e

    .line 606
    iget-object p2, p0, Ltech/ulo/library/ServerService;->qemuSessionManager:Ltech/ulo/library/utils/QemuSessionManager;

    if-nez p2, :cond_9

    new-instance p2, Ltech/ulo/library/utils/QemuSessionManager;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {p2, v2}, Ltech/ulo/library/utils/QemuSessionManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ltech/ulo/library/ServerService;->qemuSessionManager:Ltech/ulo/library/utils/QemuSessionManager;

    .line 607
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v6, Ltech/ulo/library/ServerService$killSession$3;

    invoke-direct {v6, p2, v7}, Ltech/ulo/library/ServerService$killSession$3;-><init>(Ltech/ulo/library/utils/QemuSessionManager;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Ltech/ulo/library/ServerService$killSession$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Ltech/ulo/library/ServerService$killSession$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Ltech/ulo/library/ServerService$killSession$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Ltech/ulo/library/ServerService$killSession$1;->label:I

    invoke-static {v2, v6, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_a

    return-object v1

    :cond_a
    move-object v5, p0

    move-object v8, v2

    move-object v2, p1

    move-object p1, p2

    move-object p2, v8

    :goto_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 618
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    new-instance v6, Ltech/ulo/library/ServerService$killSession$stopped$1;

    invoke-direct {v6, p1, v2, v7}, Ltech/ulo/library/ServerService$killSession$stopped$1;-><init>(Ltech/ulo/library/utils/QemuSessionManager;Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    iput-object v5, v0, Ltech/ulo/library/ServerService$killSession$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Ltech/ulo/library/ServerService$killSession$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Ltech/ulo/library/ServerService$killSession$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Ltech/ulo/library/ServerService$killSession$1;->label:I

    invoke-static {p2, v6, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_b

    return-object v1

    :cond_b
    move-object v1, v2

    move-object v0, v5

    :goto_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_d

    .line 620
    invoke-virtual {v1}, Ltech/ulo/library/model/entities/Session;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "QEMU session for "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " may not have fully stopped; the next start attempt could fail"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_c
    move-object v1, v2

    move-object v0, v5

    .line 624
    :cond_d
    :goto_5
    invoke-virtual {p1}, Ltech/ulo/library/utils/QemuSessionManager;->unbind()V

    .line 625
    iput-object v7, v0, Ltech/ulo/library/ServerService;->qemuSessionManager:Ltech/ulo/library/utils/QemuSessionManager;

    goto/16 :goto_2

    .line 627
    :cond_e
    invoke-direct {p0}, Ltech/ulo/library/ServerService;->getLocalServerManager()Ltech/ulo/library/utils/LocalServerManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Ltech/ulo/library/utils/LocalServerManager;->stopService(Ltech/ulo/library/model/entities/Session;)V

    move-object v0, p0

    .line 629
    :goto_6
    invoke-direct {v0, p1}, Ltech/ulo/library/ServerService;->removeSession(Ltech/ulo/library/model/entities/Session;)V

    const/4 p2, 0x0

    .line 630
    invoke-virtual {p1, p2}, Ltech/ulo/library/model/entities/Session;->setActive(Z)V

    .line 631
    invoke-direct {v0, p1}, Ltech/ulo/library/ServerService;->updateSession(Ltech/ulo/library/model/entities/Session;)Lkotlinx/coroutines/Job;

    .line 653
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getServiceType()Ltech/ulo/library/model/entities/ServiceType;

    move-result-object p1

    sget-object p2, Ltech/ulo/library/model/entities/ServiceType$Ssh;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Ssh;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 654
    new-instance p1, Landroid/content/Intent;

    const-string p2, "tech.ulo.CLOSE_TERMINAL"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ltech/ulo/library/ServerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 656
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    move-object p2, v0

    check-cast p2, Landroid/content/Context;

    const-class v1, Lcom/termux/app/TermuxService;

    invoke-direct {p1, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "com.termux.service_stop"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltech/ulo/library/ServerService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception p1

    .line 658
    const-string p2, "failed to stop TermuxService"

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 661
    :cond_f
    :goto_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private static final onDestroy$lambda$7(Ljava/util/List;Ltech/ulo/library/ServerService;)V
    .locals 2

    const-string v0, "$sessionsToStop"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    new-instance v0, Ltech/ulo/library/ServerService$onDestroy$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ltech/ulo/library/ServerService$onDestroy$1$1;-><init>(Ljava/util/List;Ltech/ulo/library/ServerService;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 p0, 0x1

    invoke-static {v1, v0, p0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final prepareSession(Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
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

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Ltech/ulo/library/ServerService$prepareSession$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ltech/ulo/library/ServerService$prepareSession$1;

    iget v3, v2, Ltech/ulo/library/ServerService$prepareSession$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Ltech/ulo/library/ServerService$prepareSession$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Ltech/ulo/library/ServerService$prepareSession$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Ltech/ulo/library/ServerService$prepareSession$1;

    invoke-direct {v2, v0, v1}, Ltech/ulo/library/ServerService$prepareSession$1;-><init>(Ltech/ulo/library/ServerService;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Ltech/ulo/library/ServerService$prepareSession$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 703
    iget v4, v2, Ltech/ulo/library/ServerService$prepareSession$1;->label:I

    const-string v5, "extractionCompleteFailure"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v8, :cond_1

    iget-object v2, v2, Ltech/ulo/library/ServerService$prepareSession$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ltech/ulo/library/ServerService;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget v4, v2, Ltech/ulo/library/ServerService$prepareSession$1;->I$0:I

    iget-object v6, v2, Ltech/ulo/library/ServerService$prepareSession$1;->L$3:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    iget-object v10, v2, Ltech/ulo/library/ServerService$prepareSession$1;->L$2:Ljava/lang/Object;

    check-cast v10, Ltech/ulo/library/utils/FilesystemManager;

    iget-object v11, v2, Ltech/ulo/library/ServerService$prepareSession$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ltech/ulo/library/model/entities/Filesystem;

    iget-object v12, v2, Ltech/ulo/library/ServerService$prepareSession$1;->L$0:Ljava/lang/Object;

    check-cast v12, Ltech/ulo/library/ServerService;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 704
    invoke-direct/range {p0 .. p0}, Ltech/ulo/library/ServerService;->getNotificationManager()Ltech/ulo/library/utils/NotificationConstructor;

    move-result-object v1

    invoke-virtual {v1}, Ltech/ulo/library/utils/NotificationConstructor;->buildPersistentServiceNotification()Landroid/app/Notification;

    move-result-object v1

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4, v1}, Ltech/ulo/library/ServerService;->startForeground(ILandroid/app/Notification;)V

    .line 707
    sget-object v1, Ltech/ulo/library/model/repositories/UlaDatabase;->Companion:Ltech/ulo/library/model/repositories/UlaDatabase$Companion;

    move-object v11, v0

    check-cast v11, Landroid/content/Context;

    invoke-virtual {v1, v11}, Ltech/ulo/library/model/repositories/UlaDatabase$Companion;->getInstance(Landroid/content/Context;)Ltech/ulo/library/model/repositories/UlaDatabase;

    move-result-object v1

    .line 708
    invoke-virtual {v1}, Ltech/ulo/library/model/repositories/UlaDatabase;->filesystemDao()Ltech/ulo/library/model/daos/FilesystemDao;

    .line 709
    new-instance v1, Ltech/ulo/library/utils/UlaFiles;

    invoke-virtual/range {p0 .. p0}, Ltech/ulo/library/ServerService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v12, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-string v4, "nativeLibraryDir"

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Ltech/ulo/library/utils/UlaFiles;-><init>(Landroid/content/Context;Ljava/lang/String;Ltech/ulo/library/utils/Symlinker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 710
    new-instance v10, Ltech/ulo/library/utils/FilesystemManager;

    invoke-direct/range {p0 .. p0}, Ltech/ulo/library/ServerService;->getBusyboxExecutor()Ltech/ulo/library/utils/BusyboxExecutor;

    move-result-object v14

    const/16 v16, 0x4

    const/16 v17, 0x0

    move-object v12, v10

    move-object v13, v1

    invoke-direct/range {v12 .. v17}, Ltech/ulo/library/utils/FilesystemManager;-><init>(Ltech/ulo/library/utils/UlaFiles;Ltech/ulo/library/utils/BusyboxExecutor;Ltech/ulo/library/utils/Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 712
    new-instance v4, Ltech/ulo/library/ServerService$prepareSession$listener$1;

    invoke-direct {v4, v0}, Ltech/ulo/library/ServerService$prepareSession$listener$1;-><init>(Ltech/ulo/library/ServerService;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 713
    invoke-virtual/range {p1 .. p1}, Ltech/ulo/library/model/entities/Filesystem;->getId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ltech/ulo/library/utils/FilesystemManager;->hasFilesystemBeenSuccessfullyExtracted(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 714
    const-string v11, "extractionStarted"

    invoke-static {v0, v11, v7, v8, v9}, Ltech/ulo/library/ServerService;->sendDialogBroadcast$default(Ltech/ulo/library/ServerService;Ljava/lang/String;ZILjava/lang/Object;)V

    const/16 v11, 0x1e

    .line 767
    new-array v11, v11, [Ljava/lang/String;

    const-string v12, "toybox"

    aput-object v12, v11, v7

    .line 768
    const-string v12, "tar"

    aput-object v12, v11, v6

    .line 769
    const-string v12, "-xzvf"

    aput-object v12, v11, v8

    .line 770
    invoke-virtual {v1}, Ltech/ulo/library/utils/UlaFiles;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Ltech/ulo/library/model/entities/Filesystem;->getId()J

    move-result-wide v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "/"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/support/rootfs.tar.gz"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const/4 v12, 0x4

    .line 771
    const-string v13, "--exclude"

    aput-object v13, v11, v12

    const/4 v12, 0x5

    .line 772
    const-string v14, "sys"

    aput-object v14, v11, v12

    const/4 v12, 0x6

    .line 773
    aput-object v13, v11, v12

    const/4 v12, 0x7

    .line 774
    const-string v14, "dev"

    aput-object v14, v11, v12

    const/16 v12, 0x8

    .line 775
    aput-object v13, v11, v12

    const/16 v12, 0x9

    .line 776
    const-string v14, "proc"

    aput-object v14, v11, v12

    const/16 v12, 0xa

    .line 777
    aput-object v13, v11, v12

    const/16 v12, 0xb

    .line 778
    const-string v14, "data"

    aput-object v14, v11, v12

    const/16 v12, 0xc

    .line 779
    aput-object v13, v11, v12

    const/16 v12, 0xd

    .line 780
    const-string v14, "mnt"

    aput-object v14, v11, v12

    const/16 v12, 0xe

    .line 781
    aput-object v13, v11, v12

    const/16 v12, 0xf

    .line 782
    const-string v14, "host-rootfs"

    aput-object v14, v11, v12

    const/16 v12, 0x10

    .line 783
    aput-object v13, v11, v12

    const/16 v12, 0x11

    .line 784
    const-string v14, "support"

    aput-object v14, v11, v12

    const/16 v12, 0x12

    .line 785
    aput-object v13, v11, v12

    const/16 v12, 0x13

    .line 786
    const-string v14, "sdcard"

    aput-object v14, v11, v12

    const/16 v12, 0x14

    .line 787
    aput-object v13, v11, v12

    const/16 v12, 0x15

    .line 788
    const-string v14, "etc/mtab"

    aput-object v14, v11, v12

    const/16 v12, 0x16

    .line 789
    aput-object v13, v11, v12

    const/16 v12, 0x17

    .line 790
    const-string v14, "usr/local/bin/sudo"

    aput-object v14, v11, v12

    const/16 v12, 0x18

    .line 791
    aput-object v13, v11, v12

    const/16 v12, 0x19

    .line 792
    const-string v14, "etc/profile.d/userland_profile.sh"

    aput-object v14, v11, v12

    const/16 v12, 0x1a

    .line 793
    aput-object v13, v11, v12

    const/16 v12, 0x1b

    .line 794
    const-string v13, "etc/ld.so.preload"

    aput-object v13, v11, v12

    const/16 v12, 0x1c

    .line 795
    const-string v13, "-C"

    aput-object v13, v11, v12

    .line 796
    invoke-virtual {v1}, Ltech/ulo/library/utils/UlaFiles;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Ltech/ulo/library/model/entities/Filesystem;->getId()J

    move-result-wide v13

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v12, 0x1d

    aput-object v7, v11, v12

    .line 798
    move-object v13, v0

    check-cast v13, Lkotlinx/coroutines/CoroutineScope;

    new-instance v7, Ltech/ulo/library/ServerService$prepareSession$tailProcess$1;

    invoke-direct {v7, v0, v1, v9}, Ltech/ulo/library/ServerService$prepareSession$tailProcess$1;-><init>(Ltech/ulo/library/ServerService;Ltech/ulo/library/utils/UlaFiles;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v16, v7

    check-cast v16, Lkotlin/jvm/functions/Function2;

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v7

    .line 799
    invoke-virtual {v1}, Ltech/ulo/library/utils/UlaFiles;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "/support/toyboxout"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Ltech/ulo/library/ServerService;->toyboxMain([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 800
    iput-object v0, v2, Ltech/ulo/library/ServerService$prepareSession$1;->L$0:Ljava/lang/Object;

    move-object/from16 v11, p1

    iput-object v11, v2, Ltech/ulo/library/ServerService$prepareSession$1;->L$1:Ljava/lang/Object;

    iput-object v10, v2, Ltech/ulo/library/ServerService$prepareSession$1;->L$2:Ljava/lang/Object;

    iput-object v4, v2, Ltech/ulo/library/ServerService$prepareSession$1;->L$3:Ljava/lang/Object;

    iput v1, v2, Ltech/ulo/library/ServerService$prepareSession$1;->I$0:I

    iput v6, v2, Ltech/ulo/library/ServerService$prepareSession$1;->label:I

    invoke-static {v7, v2}, Lkotlinx/coroutines/JobKt;->cancelAndJoin(Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_4

    return-object v3

    :cond_4
    move-object v12, v0

    move-object v6, v4

    move v4, v1

    :goto_1
    if-nez v4, :cond_7

    .line 805
    iput-object v12, v2, Ltech/ulo/library/ServerService$prepareSession$1;->L$0:Ljava/lang/Object;

    iput-object v9, v2, Ltech/ulo/library/ServerService$prepareSession$1;->L$1:Ljava/lang/Object;

    iput-object v9, v2, Ltech/ulo/library/ServerService$prepareSession$1;->L$2:Ljava/lang/Object;

    iput-object v9, v2, Ltech/ulo/library/ServerService$prepareSession$1;->L$3:Ljava/lang/Object;

    iput v8, v2, Ltech/ulo/library/ServerService$prepareSession$1;->label:I

    invoke-virtual {v10, v11, v6, v2}, Ltech/ulo/library/utils/FilesystemManager;->extractFilesystem(Ltech/ulo/library/model/entities/Filesystem;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    return-object v3

    :cond_5
    move-object v2, v12

    .line 703
    :goto_2
    check-cast v1, Ltech/ulo/library/utils/ExecutionResult;

    .line 806
    sget-object v3, Ltech/ulo/library/utils/SuccessfulExecution;->INSTANCE:Ltech/ulo/library/utils/SuccessfulExecution;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    .line 807
    invoke-static {v2, v5, v1, v8, v9}, Ltech/ulo/library/ServerService;->sendDialogBroadcast$default(Ltech/ulo/library/ServerService;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 808
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :cond_6
    const/4 v1, 0x0

    .line 814
    const-string v3, "extractionCompleteSuccess"

    invoke-static {v2, v3, v1, v8, v9}, Ltech/ulo/library/ServerService;->sendDialogBroadcast$default(Ltech/ulo/library/ServerService;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 815
    invoke-direct {v2}, Ltech/ulo/library/ServerService;->sendSessionReadyBroadcast()V

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    .line 811
    invoke-static {v12, v5, v1, v8, v9}, Ltech/ulo/library/ServerService;->sendDialogBroadcast$default(Ltech/ulo/library/ServerService;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 812
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 817
    :cond_8
    invoke-direct/range {p0 .. p0}, Ltech/ulo/library/ServerService;->sendSessionReadyBroadcast()V

    .line 819
    :goto_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method private final removeSession(Ltech/ulo/library/model/entities/Session;)V
    .locals 3

    .line 560
    iget-object v0, p0, Ltech/ulo/library/ServerService;->activeSessions:Ljava/util/Map;

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getPid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    iget-object p1, p0, Ltech/ulo/library/ServerService;->activeSessions:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 562
    invoke-virtual {p0, p1}, Ltech/ulo/library/ServerService;->stopForeground(Z)V

    .line 563
    invoke-virtual {p0}, Ltech/ulo/library/ServerService;->stopSelf()V

    :cond_0
    return-void
.end method

.method private final repairAvfSession(Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/Session;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Ltech/ulo/library/ServerService$repairAvfSession$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ltech/ulo/library/ServerService$repairAvfSession$1;

    iget v1, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltech/ulo/library/ServerService$repairAvfSession$1;

    invoke-direct {v0, p0, p2}, Ltech/ulo/library/ServerService$repairAvfSession$1;-><init>(Ltech/ulo/library/ServerService;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 996
    iget v2, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->label:I

    const-string v3, "avfSessionStartFailed"

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ltech/ulo/library/utils/AvfSessionManager;

    iget-object v2, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ltech/ulo/library/model/entities/Session;

    iget-object v5, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ltech/ulo/library/ServerService;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object p1, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ltech/ulo/library/utils/AvfSessionManager;

    iget-object v2, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ltech/ulo/library/model/entities/Session;

    iget-object v6, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ltech/ulo/library/ServerService;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    iget-object p1, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ltech/ulo/library/utils/AvfSessionManager;

    iget-object v2, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ltech/ulo/library/model/entities/Session;

    iget-object v9, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->L$0:Ljava/lang/Object;

    check-cast v9, Ltech/ulo/library/ServerService;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, p2

    move-object p2, p1

    move-object p1, v2

    move-object v2, v11

    goto :goto_1

    :cond_5
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 997
    const-string p2, "serverStarting"

    const/4 v2, 0x0

    invoke-static {p0, p2, v2, v6, v8}, Ltech/ulo/library/ServerService;->sendDialogBroadcast$default(Ltech/ulo/library/ServerService;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 998
    iget-object p2, p0, Ltech/ulo/library/ServerService;->avfSessionManager:Ltech/ulo/library/utils/AvfSessionManager;

    if-nez p2, :cond_6

    new-instance p2, Ltech/ulo/library/utils/AvfSessionManager;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {p2, v2}, Ltech/ulo/library/utils/AvfSessionManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ltech/ulo/library/ServerService;->avfSessionManager:Ltech/ulo/library/utils/AvfSessionManager;

    .line 999
    :cond_6
    invoke-virtual {p2}, Ltech/ulo/library/utils/AvfSessionManager;->isAvfRunnerInstalled()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1000
    const-string p1, "avfRunnerNotInstalled"

    invoke-direct {p0, p1, v7}, Ltech/ulo/library/ServerService;->sendDialogBroadcast(Ljava/lang/String;Z)V

    .line 1001
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1003
    :cond_7
    invoke-virtual {p2}, Ltech/ulo/library/utils/AvfSessionManager;->bind()V

    .line 1004
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v9, Ltech/ulo/library/ServerService$repairAvfSession$2;

    invoke-direct {v9, p2, v8}, Ltech/ulo/library/ServerService$repairAvfSession$2;-><init>(Ltech/ulo/library/utils/AvfSessionManager;Lkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->L$2:Ljava/lang/Object;

    iput v7, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->label:I

    invoke-static {v2, v9, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8

    return-object v1

    :cond_8
    move-object v9, p0

    :goto_1
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1005
    invoke-direct {v9, v3, v7}, Ltech/ulo/library/ServerService;->sendDialogBroadcast(Ljava/lang/String;Z)V

    .line 1006
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1008
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v10, Ltech/ulo/library/ServerService$repairAvfSession$filesystem$1;

    invoke-direct {v10, v9, p1, v8}, Ltech/ulo/library/ServerService$repairAvfSession$filesystem$1;-><init>(Ltech/ulo/library/ServerService;Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    iput-object v9, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->L$2:Ljava/lang/Object;

    iput v6, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->label:I

    invoke-static {v2, v10, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_a

    return-object v1

    :cond_a
    move-object v6, v9

    move-object v11, v2

    move-object v2, p1

    move-object p1, p2

    move-object p2, v11

    .line 996
    :goto_2
    check-cast p2, Ltech/ulo/library/model/entities/Filesystem;

    .line 1012
    new-instance v9, Ltech/ulo/library/ServerService$repairAvfSession$repairOk$1;

    invoke-direct {v9, v6}, Ltech/ulo/library/ServerService$repairAvfSession$repairOk$1;-><init>(Ltech/ulo/library/ServerService;)V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    iput-object v6, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->label:I

    invoke-virtual {p1, p2, v9, v0}, Ltech/ulo/library/utils/AvfSessionManager;->repair(Ltech/ulo/library/model/entities/Filesystem;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_b

    return-object v1

    :cond_b
    move-object v5, v6

    :goto_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_c

    .line 1014
    invoke-direct {v5, v3, v7}, Ltech/ulo/library/ServerService;->sendDialogBroadcast(Ljava/lang/String;Z)V

    .line 1015
    invoke-virtual {p1}, Ltech/ulo/library/utils/AvfSessionManager;->unbind()V

    .line 1016
    iput-object v8, v5, Ltech/ulo/library/ServerService;->avfSessionManager:Ltech/ulo/library/utils/AvfSessionManager;

    .line 1017
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1019
    :cond_c
    iput-object v8, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->L$1:Ljava/lang/Object;

    iput-object v8, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Ltech/ulo/library/ServerService$repairAvfSession$1;->label:I

    invoke-direct {v5, v2, v0}, Ltech/ulo/library/ServerService;->startSession(Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_d

    return-object v1

    .line 1020
    :cond_d
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final repairQemuSession(Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/Session;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Ltech/ulo/library/ServerService$repairQemuSession$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ltech/ulo/library/ServerService$repairQemuSession$1;

    iget v1, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltech/ulo/library/ServerService$repairQemuSession$1;

    invoke-direct {v0, p0, p2}, Ltech/ulo/library/ServerService$repairQemuSession$1;-><init>(Ltech/ulo/library/ServerService;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1028
    iget v2, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->label:I

    const-string v3, "qemuSessionStartFailed"

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ltech/ulo/library/utils/QemuSessionManager;

    iget-object v2, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ltech/ulo/library/model/entities/Session;

    iget-object v5, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ltech/ulo/library/ServerService;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object p1, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ltech/ulo/library/utils/QemuSessionManager;

    iget-object v2, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ltech/ulo/library/model/entities/Session;

    iget-object v6, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ltech/ulo/library/ServerService;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    iget-object p1, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ltech/ulo/library/utils/QemuSessionManager;

    iget-object v2, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ltech/ulo/library/model/entities/Session;

    iget-object v9, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->L$0:Ljava/lang/Object;

    check-cast v9, Ltech/ulo/library/ServerService;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, p2

    move-object p2, p1

    move-object p1, v2

    move-object v2, v11

    goto :goto_1

    :cond_5
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1029
    const-string p2, "serverStarting"

    const/4 v2, 0x0

    invoke-static {p0, p2, v2, v6, v8}, Ltech/ulo/library/ServerService;->sendDialogBroadcast$default(Ltech/ulo/library/ServerService;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1030
    iget-object p2, p0, Ltech/ulo/library/ServerService;->qemuSessionManager:Ltech/ulo/library/utils/QemuSessionManager;

    if-nez p2, :cond_6

    new-instance p2, Ltech/ulo/library/utils/QemuSessionManager;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {p2, v2}, Ltech/ulo/library/utils/QemuSessionManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ltech/ulo/library/ServerService;->qemuSessionManager:Ltech/ulo/library/utils/QemuSessionManager;

    .line 1031
    :cond_6
    invoke-virtual {p2}, Ltech/ulo/library/utils/QemuSessionManager;->isQemuRunnerInstalled()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1032
    const-string p1, "qemuRunnerNotInstalled"

    invoke-direct {p0, p1, v7}, Ltech/ulo/library/ServerService;->sendDialogBroadcast(Ljava/lang/String;Z)V

    .line 1033
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1035
    :cond_7
    invoke-virtual {p2}, Ltech/ulo/library/utils/QemuSessionManager;->bind()V

    .line 1036
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v9, Ltech/ulo/library/ServerService$repairQemuSession$2;

    invoke-direct {v9, p2, v8}, Ltech/ulo/library/ServerService$repairQemuSession$2;-><init>(Ltech/ulo/library/utils/QemuSessionManager;Lkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->L$2:Ljava/lang/Object;

    iput v7, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->label:I

    invoke-static {v2, v9, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8

    return-object v1

    :cond_8
    move-object v9, p0

    :goto_1
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1037
    invoke-direct {v9, v3, v7}, Ltech/ulo/library/ServerService;->sendDialogBroadcast(Ljava/lang/String;Z)V

    .line 1038
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1040
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v10, Ltech/ulo/library/ServerService$repairQemuSession$filesystem$1;

    invoke-direct {v10, v9, p1, v8}, Ltech/ulo/library/ServerService$repairQemuSession$filesystem$1;-><init>(Ltech/ulo/library/ServerService;Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    iput-object v9, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->L$2:Ljava/lang/Object;

    iput v6, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->label:I

    invoke-static {v2, v10, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_a

    return-object v1

    :cond_a
    move-object v6, v9

    move-object v11, v2

    move-object v2, p1

    move-object p1, p2

    move-object p2, v11

    .line 1028
    :goto_2
    check-cast p2, Ltech/ulo/library/model/entities/Filesystem;

    .line 1044
    new-instance v9, Ltech/ulo/library/ServerService$repairQemuSession$repairOk$1;

    invoke-direct {v9, v6}, Ltech/ulo/library/ServerService$repairQemuSession$repairOk$1;-><init>(Ltech/ulo/library/ServerService;)V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    iput-object v6, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->label:I

    invoke-virtual {p1, p2, v9, v0}, Ltech/ulo/library/utils/QemuSessionManager;->repair(Ltech/ulo/library/model/entities/Filesystem;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_b

    return-object v1

    :cond_b
    move-object v5, v6

    :goto_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_c

    .line 1046
    invoke-direct {v5, v3, v7}, Ltech/ulo/library/ServerService;->sendDialogBroadcast(Ljava/lang/String;Z)V

    .line 1047
    invoke-virtual {p1}, Ltech/ulo/library/utils/QemuSessionManager;->unbind()V

    .line 1048
    iput-object v8, v5, Ltech/ulo/library/ServerService;->qemuSessionManager:Ltech/ulo/library/utils/QemuSessionManager;

    .line 1049
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1051
    :cond_c
    iput-object v8, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->L$1:Ljava/lang/Object;

    iput-object v8, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Ltech/ulo/library/ServerService$repairQemuSession$1;->label:I

    invoke-direct {v5, v2, v0}, Ltech/ulo/library/ServerService;->startSession(Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_d

    return-object v1

    .line 1052
    :cond_d
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final runDroidFileClient(Ljava/lang/String;)V
    .locals 7

    .line 340
    new-instance v6, Ltech/ulo/library/utils/UlaFiles;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p0}, Ltech/ulo/library/ServerService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-string v0, "nativeLibraryDir"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltech/ulo/library/utils/UlaFiles;-><init>(Landroid/content/Context;Ljava/lang/String;Ltech/ulo/library/utils/Symlinker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 341
    invoke-virtual {v6}, Ltech/ulo/library/utils/UlaFiles;->getSupportDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/droid_files_socket"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ltech/ulo/library/ServerService;->droidFileClientRun(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final runDroidFileServer()V
    .locals 7

    .line 335
    new-instance v6, Ltech/ulo/library/utils/UlaFiles;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p0}, Ltech/ulo/library/ServerService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-string v0, "nativeLibraryDir"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltech/ulo/library/utils/UlaFiles;-><init>(Landroid/content/Context;Ljava/lang/String;Ltech/ulo/library/utils/Symlinker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 336
    invoke-virtual {v6}, Ltech/ulo/library/utils/UlaFiles;->getSupportDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/droid_files_socket"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ltech/ulo/library/utils/UlaFiles;->getSupportDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/test.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ltech/ulo/library/ServerService;->droidFileServerRun(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final sendDialogBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1188
    new-instance v0, Landroid/content/Intent;

    const-string v1, "tech.ulo.library.ServerService.RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1189
    const-string v1, "type"

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1190
    const-string v1, "dialogType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1191
    const-string v0, "message"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "putExtra(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1192
    iget-object p2, p0, Ltech/ulo/library/ServerService;->broadcaster:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    if-nez p2, :cond_0

    const-string p2, "broadcaster"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p2, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private final sendDialogBroadcast(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1180
    iput-object p1, p0, Ltech/ulo/library/ServerService;->pendingFailureDialogType:Ljava/lang/String;

    .line 1181
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "tech.ulo.library.ServerService.RESULT"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1182
    const-string v0, "type"

    const-string v1, "dialog"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 1183
    const-string v0, "dialogType"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "putExtra(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1184
    iget-object p2, p0, Ltech/ulo/library/ServerService;->broadcaster:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    if-nez p2, :cond_1

    const-string p2, "broadcaster"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_1
    invoke-virtual {p2, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method static synthetic sendDialogBroadcast$default(Ltech/ulo/library/ServerService;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1179
    :cond_0
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/ServerService;->sendDialogBroadcast(Ljava/lang/String;Z)V

    return-void
.end method

.method private final sendSessionActivatedBroadcast()V
    .locals 3

    const/4 v0, 0x1

    .line 1170
    iput-boolean v0, p0, Ltech/ulo/library/ServerService;->sessionActivatedPending:Z

    .line 1171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "tech.ulo.library.ServerService.RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1172
    const-string v1, "type"

    const-string v2, "sessionActivated"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "putExtra(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1173
    iget-object v1, p0, Ltech/ulo/library/ServerService;->broadcaster:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    if-nez v1, :cond_0

    const-string v1, "broadcaster"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private final sendSessionReadyBroadcast()V
    .locals 3

    const/4 v0, 0x1

    .line 1163
    iput-boolean v0, p0, Ltech/ulo/library/ServerService;->waitingForStart:Z

    .line 1164
    new-instance v0, Landroid/content/Intent;

    const-string v1, "tech.ulo.library.ServerService.RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1165
    const-string v1, "type"

    const-string v2, "sessionReady"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "putExtra(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1166
    iget-object v1, p0, Ltech/ulo/library/ServerService;->broadcaster:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    if-nez v1, :cond_0

    const-string v1, "broadcaster"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private final startClient(Ltech/ulo/library/model/entities/Session;)V
    .locals 3

    .line 1064
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getServiceType()Ltech/ulo/library/model/entities/ServiceType;

    move-result-object v0

    .line 1065
    sget-object v1, Ltech/ulo/library/model/entities/ServiceType$Ssh;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Ssh;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Ltech/ulo/library/ServerService;->startSshClient(Ltech/ulo/library/model/entities/Session;)V

    goto :goto_1

    .line 1066
    :cond_0
    sget-object v1, Ltech/ulo/library/model/entities/ServiceType$Vnc;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Vnc;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1067
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getExecutionType()Ltech/ulo/library/model/entities/ExecutionType;

    move-result-object v0

    sget-object v1, Ltech/ulo/library/model/entities/ExecutionType;->AVF:Ltech/ulo/library/model/entities/ExecutionType;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getExecutionType()Ltech/ulo/library/model/entities/ExecutionType;

    move-result-object v0

    sget-object v1, Ltech/ulo/library/model/entities/ExecutionType;->QEMU:Ltech/ulo/library/model/entities/ExecutionType;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1070
    :cond_1
    const-string v0, "com.iiordanov.freebVNC"

    invoke-direct {p0, p1, v0}, Ltech/ulo/library/ServerService;->startVncClient(Ltech/ulo/library/model/entities/Session;Ljava/lang/String;)V

    goto :goto_1

    .line 1068
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getPort()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, p1, v0}, Ltech/ulo/library/ServerService;->startVncClientOnPort(Ltech/ulo/library/model/entities/Session;I)V

    goto :goto_1

    .line 1073
    :cond_3
    sget-object p1, Ltech/ulo/library/model/entities/ServiceType$Xsdl;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Xsdl;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "x.org.server"

    invoke-direct {p0, p1}, Ltech/ulo/library/ServerService;->startXsdlClient(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 1074
    const-string v1, "unhandledSessionServiceType"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, p1, v0}, Ltech/ulo/library/ServerService;->sendDialogBroadcast$default(Ltech/ulo/library/ServerService;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1076
    :goto_1
    invoke-direct {p0}, Ltech/ulo/library/ServerService;->sendSessionActivatedBroadcast()V

    return-void
.end method

.method private final startSession(Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/Session;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Ltech/ulo/library/ServerService$startSession$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Ltech/ulo/library/ServerService$startSession$1;

    iget v4, v3, Ltech/ulo/library/ServerService$startSession$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v2, v3, Ltech/ulo/library/ServerService$startSession$1;->label:I

    sub-int/2addr v2, v5

    iput v2, v3, Ltech/ulo/library/ServerService$startSession$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Ltech/ulo/library/ServerService$startSession$1;

    invoke-direct {v3, v0, v2}, Ltech/ulo/library/ServerService$startSession$1;-><init>(Ltech/ulo/library/ServerService;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Ltech/ulo/library/ServerService$startSession$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 821
    iget v5, v3, Ltech/ulo/library/ServerService$startSession$1;->label:I

    const-string v6, "avfDiskCorrupted"

    const-string v7, "qemuDiskCorrupted"

    const-string v8, "corrupt"

    const-string v9, "serverStarting"

    const-string v10, "avfSessionStartFailed"

    const-string v11, "qemuSessionStartFailed"

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    packed-switch v5, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v1, v3, Ltech/ulo/library/ServerService$startSession$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ltech/ulo/library/model/entities/Session;

    iget-object v5, v3, Ltech/ulo/library/ServerService$startSession$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ltech/ulo/library/ServerService;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_14

    :pswitch_1
    iget-object v1, v3, Ltech/ulo/library/ServerService$startSession$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ltech/ulo/library/utils/AvfSessionManager;

    iget-object v4, v3, Ltech/ulo/library/ServerService$startSession$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ltech/ulo/library/model/entities/Session;

    iget-object v3, v3, Ltech/ulo/library/ServerService$startSession$1;->L$0:Ljava/lang/Object;

    check-cast v3, Ltech/ulo/library/ServerService;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_11

    :pswitch_2
    iget-object v1, v3, Ltech/ulo/library/ServerService$startSession$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ltech/ulo/library/utils/AvfSessionManager;

    iget-object v5, v3, Ltech/ulo/library/ServerService$startSession$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ltech/ulo/library/model/entities/Session;

    iget-object v7, v3, Ltech/ulo/library/ServerService$startSession$1;->L$0:Ljava/lang/Object;

    check-cast v7, Ltech/ulo/library/ServerService;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_10

    :pswitch_3
    iget-object v1, v3, Ltech/ulo/library/ServerService$startSession$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ltech/ulo/library/utils/AvfSessionManager;

    iget-object v5, v3, Ltech/ulo/library/ServerService$startSession$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ltech/ulo/library/model/entities/Session;

    iget-object v7, v3, Ltech/ulo/library/ServerService$startSession$1;->L$0:Ljava/lang/Object;

    check-cast v7, Ltech/ulo/library/ServerService;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_4
    iget-object v1, v3, Ltech/ulo/library/ServerService$startSession$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ltech/ulo/library/utils/AvfSessionManager;

    iget-object v5, v3, Ltech/ulo/library/ServerService$startSession$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ltech/ulo/library/model/entities/Session;

    iget-object v7, v3, Ltech/ulo/library/ServerService$startSession$1;->L$0:Ljava/lang/Object;

    check-cast v7, Ltech/ulo/library/ServerService;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_5
    iget-object v1, v3, Ltech/ulo/library/ServerService$startSession$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ltech/ulo/library/utils/AvfSessionManager;

    iget-object v5, v3, Ltech/ulo/library/ServerService$startSession$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ltech/ulo/library/model/entities/Session;

    iget-object v7, v3, Ltech/ulo/library/ServerService$startSession$1;->L$0:Ljava/lang/Object;

    check-cast v7, Ltech/ulo/library/ServerService;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_6
    iget-object v1, v3, Ltech/ulo/library/ServerService$startSession$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ltech/ulo/library/utils/AvfSessionManager;

    iget-object v5, v3, Ltech/ulo/library/ServerService$startSession$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ltech/ulo/library/model/entities/Session;

    iget-object v7, v3, Ltech/ulo/library/ServerService$startSession$1;->L$0:Ljava/lang/Object;

    check-cast v7, Ltech/ulo/library/ServerService;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_7
    iget-object v1, v3, Ltech/ulo/library/ServerService$startSession$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ltech/ulo/library/model/entities/Session;

    iget-object v5, v3, Ltech/ulo/library/ServerService$startSession$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ltech/ulo/library/ServerService;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_8
    iget-object v1, v3, Ltech/ulo/library/ServerService$startSession$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ltech/ulo/library/utils/QemuSessionManager;

    iget-object v4, v3, Ltech/ulo/library/ServerService$startSession$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ltech/ulo/library/model/entities/Session;

    iget-object v3, v3, Ltech/ulo/library/ServerService$startSession$1;->L$0:Ljava/lang/Object;

    check-cast v3, Ltech/ulo/library/ServerService;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_9
    iget-object v1, v3, Ltech/ulo/library/ServerService$startSession$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ltech/ulo/library/utils/QemuSessionManager;

    iget-object v5, v3, Ltech/ulo/library/ServerService$startSession$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ltech/ulo/library/model/entities/Session;

    iget-object v6, v3, Ltech/ulo/library/ServerService$startSession$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ltech/ulo/library/ServerService;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_a
    iget-object v1, v3, Ltech/ulo/library/ServerService$startSession$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ltech/ulo/library/utils/QemuSessionManager;

    iget-object v5, v3, Ltech/ulo/library/ServerService$startSession$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ltech/ulo/library/model/entities/Session;

    iget-object v6, v3, Ltech/ulo/library/ServerService$startSession$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ltech/ulo/library/ServerService;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_b
    iget-object v1, v3, Ltech/ulo/library/ServerService$startSession$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ltech/ulo/library/utils/QemuSessionManager;

    iget-object v5, v3, Ltech/ulo/library/ServerService$startSession$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ltech/ulo/library/model/entities/Session;

    iget-object v6, v3, Ltech/ulo/library/ServerService$startSession$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ltech/ulo/library/ServerService;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_c
    iget-object v1, v3, Ltech/ulo/library/ServerService$startSession$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ltech/ulo/library/utils/QemuSessionManager;

    iget-object v5, v3, Ltech/ulo/library/ServerService$startSession$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ltech/ulo/library/model/entities/Session;

    iget-object v6, v3, Ltech/ulo/library/ServerService$startSession$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ltech/ulo/library/ServerService;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_d
    iget-object v1, v3, Ltech/ulo/library/ServerService$startSession$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ltech/ulo/library/model/entities/Session;

    iget-object v5, v3, Ltech/ulo/library/ServerService$startSession$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ltech/ulo/library/ServerService;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_e
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 822
    iput-boolean v13, v0, Ltech/ulo/library/ServerService;->waitingForStart:Z

    .line 823
    iput-boolean v13, v0, Ltech/ulo/library/ServerService;->sessionActivatedPending:Z

    .line 824
    iput-object v15, v0, Ltech/ulo/library/ServerService;->pendingFailureDialogType:Ljava/lang/String;

    .line 825
    invoke-static {v0, v9, v13, v12, v15}, Ltech/ulo/library/ServerService;->sendDialogBroadcast$default(Ltech/ulo/library/ServerService;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 838
    invoke-direct/range {p0 .. p0}, Ltech/ulo/library/ServerService;->getNotificationManager()Ltech/ulo/library/utils/NotificationConstructor;

    move-result-object v2

    invoke-virtual {v2}, Ltech/ulo/library/utils/NotificationConstructor;->buildPersistentServiceNotification()Landroid/app/Notification;

    move-result-object v2

    const/16 v5, 0x3e8

    invoke-virtual {v0, v5, v2}, Ltech/ulo/library/ServerService;->startForeground(ILandroid/app/Notification;)V

    .line 840
    invoke-virtual/range {p1 .. p1}, Ltech/ulo/library/model/entities/Session;->getExecutionType()Ltech/ulo/library/model/entities/ExecutionType;

    move-result-object v2

    sget-object v5, Ltech/ulo/library/model/entities/ExecutionType;->QEMU:Ltech/ulo/library/model/entities/ExecutionType;

    if-ne v2, v5, :cond_10

    .line 844
    iget-object v2, v0, Ltech/ulo/library/ServerService;->qemuCleanupJob:Lkotlinx/coroutines/Job;

    if-eqz v2, :cond_2

    iput-object v0, v3, Ltech/ulo/library/ServerService$startSession$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Ltech/ulo/library/ServerService$startSession$1;->L$1:Ljava/lang/Object;

    iput v14, v3, Ltech/ulo/library/ServerService$startSession$1;->label:I

    invoke-interface {v2, v3}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_1

    return-object v4

    :cond_1
    move-object v5, v0

    :goto_1
    move-object v6, v5

    goto :goto_2

    :cond_2
    move-object v6, v0

    .line 845
    :goto_2
    iget-object v2, v6, Ltech/ulo/library/ServerService;->qemuSessionManager:Ltech/ulo/library/utils/QemuSessionManager;

    if-nez v2, :cond_3

    new-instance v2, Ltech/ulo/library/utils/QemuSessionManager;

    move-object v5, v6

    check-cast v5, Landroid/content/Context;

    invoke-direct {v2, v5}, Ltech/ulo/library/utils/QemuSessionManager;-><init>(Landroid/content/Context;)V

    iput-object v2, v6, Ltech/ulo/library/ServerService;->qemuSessionManager:Ltech/ulo/library/utils/QemuSessionManager;

    .line 846
    :cond_3
    invoke-virtual {v2}, Ltech/ulo/library/utils/QemuSessionManager;->isQemuRunnerInstalled()Z

    move-result v5

    if-nez v5, :cond_4

    .line 847
    const-string v1, "qemuRunnerNotInstalled"

    invoke-direct {v6, v1, v14}, Ltech/ulo/library/ServerService;->sendDialogBroadcast(Ljava/lang/String;Z)V

    .line 848
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 863
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v5

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Ltech/ulo/library/ServerService$startSession$2;

    invoke-direct {v8, v2, v15}, Ltech/ulo/library/ServerService$startSession$2;-><init>(Ltech/ulo/library/utils/QemuSessionManager;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    iput-object v6, v3, Ltech/ulo/library/ServerService$startSession$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Ltech/ulo/library/ServerService$startSession$1;->L$1:Ljava/lang/Object;

    iput-object v2, v3, Ltech/ulo/library/ServerService$startSession$1;->L$2:Ljava/lang/Object;

    iput v12, v3, Ltech/ulo/library/ServerService$startSession$1;->label:I

    invoke-static {v5, v8, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_5

    return-object v4

    :cond_5
    move-object/from16 v16, v5

    move-object v5, v1

    move-object v1, v2

    move-object/from16 v2, v16

    :goto_3
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 864
    const-string v1, "qemuUpdateAvailable"

    invoke-direct {v6, v1, v14}, Ltech/ulo/library/ServerService;->sendDialogBroadcast(Ljava/lang/String;Z)V

    .line 865
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 867
    :cond_6
    invoke-virtual {v1}, Ltech/ulo/library/utils/QemuSessionManager;->bind()V

    .line 868
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Ltech/ulo/library/ServerService$startSession$3;

    invoke-direct {v8, v1, v15}, Ltech/ulo/library/ServerService$startSession$3;-><init>(Ltech/ulo/library/utils/QemuSessionManager;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    iput-object v6, v3, Ltech/ulo/library/ServerService$startSession$1;->L$0:Ljava/lang/Object;

    iput-object v5, v3, Ltech/ulo/library/ServerService$startSession$1;->L$1:Ljava/lang/Object;

    iput-object v1, v3, Ltech/ulo/library/ServerService$startSession$1;->L$2:Ljava/lang/Object;

    const/4 v9, 0x3

    iput v9, v3, Ltech/ulo/library/ServerService$startSession$1;->label:I

    invoke-static {v2, v8, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_7

    return-object v4

    :cond_7
    :goto_4
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_8

    .line 869
    invoke-direct {v6, v11, v14}, Ltech/ulo/library/ServerService;->sendDialogBroadcast(Ljava/lang/String;Z)V

    .line 870
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 872
    :cond_8
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Ltech/ulo/library/ServerService$startSession$filesystem$1;

    invoke-direct {v8, v6, v5, v15}, Ltech/ulo/library/ServerService$startSession$filesystem$1;-><init>(Ltech/ulo/library/ServerService;Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    iput-object v6, v3, Ltech/ulo/library/ServerService$startSession$1;->L$0:Ljava/lang/Object;

    iput-object v5, v3, Ltech/ulo/library/ServerService$startSession$1;->L$1:Ljava/lang/Object;

    iput-object v1, v3, Ltech/ulo/library/ServerService$startSession$1;->L$2:Ljava/lang/Object;

    const/4 v9, 0x4

    iput v9, v3, Ltech/ulo/library/ServerService$startSession$1;->label:I

    invoke-static {v2, v8, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_9

    return-object v4

    .line 821
    :cond_9
    :goto_5
    check-cast v2, Ltech/ulo/library/model/entities/Filesystem;

    .line 876
    new-instance v8, Ltech/ulo/library/ServerService$startSession$setupOk$1;

    invoke-direct {v8, v6}, Ltech/ulo/library/ServerService$startSession$setupOk$1;-><init>(Ltech/ulo/library/ServerService;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    iput-object v6, v3, Ltech/ulo/library/ServerService$startSession$1;->L$0:Ljava/lang/Object;

    iput-object v5, v3, Ltech/ulo/library/ServerService$startSession$1;->L$1:Ljava/lang/Object;

    iput-object v1, v3, Ltech/ulo/library/ServerService$startSession$1;->L$2:Ljava/lang/Object;

    const/4 v9, 0x5

    iput v9, v3, Ltech/ulo/library/ServerService$startSession$1;->label:I

    invoke-virtual {v1, v2, v8, v3}, Ltech/ulo/library/utils/QemuSessionManager;->setup(Ltech/ulo/library/model/entities/Filesystem;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_a

    return-object v4

    :cond_a
    :goto_6
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_c

    .line 884
    invoke-virtual {v1, v5}, Ltech/ulo/library/utils/QemuSessionManager;->isCorrupted(Ltech/ulo/library/model/entities/Session;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_7

    :cond_b
    move-object v7, v11

    :goto_7
    invoke-direct {v6, v7, v14}, Ltech/ulo/library/ServerService;->sendDialogBroadcast(Ljava/lang/String;Z)V

    .line 885
    invoke-virtual {v1}, Ltech/ulo/library/utils/QemuSessionManager;->unbind()V

    .line 886
    iput-object v15, v6, Ltech/ulo/library/ServerService;->qemuSessionManager:Ltech/ulo/library/utils/QemuSessionManager;

    .line 887
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 889
    :cond_c
    new-instance v2, Ltech/ulo/library/ServerService$startSession$port$1;

    invoke-direct {v2, v6}, Ltech/ulo/library/ServerService$startSession$port$1;-><init>(Ltech/ulo/library/ServerService;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    iput-object v6, v3, Ltech/ulo/library/ServerService$startSession$1;->L$0:Ljava/lang/Object;

    iput-object v5, v3, Ltech/ulo/library/ServerService$startSession$1;->L$1:Ljava/lang/Object;

    iput-object v1, v3, Ltech/ulo/library/ServerService$startSession$1;->L$2:Ljava/lang/Object;

    const/4 v8, 0x6

    iput v8, v3, Ltech/ulo/library/ServerService$startSession$1;->label:I

    invoke-virtual {v1, v5, v2, v3}, Ltech/ulo/library/utils/QemuSessionManager;->startSession(Ltech/ulo/library/model/entities/Session;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_d

    return-object v4

    :cond_d
    move-object v4, v5

    move-object v3, v6

    :goto_8
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-gez v2, :cond_f

    .line 894
    invoke-virtual {v1, v4}, Ltech/ulo/library/utils/QemuSessionManager;->isCorrupted(Ltech/ulo/library/model/entities/Session;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_9

    :cond_e
    move-object v7, v11

    :goto_9
    invoke-direct {v3, v7, v14}, Ltech/ulo/library/ServerService;->sendDialogBroadcast(Ljava/lang/String;Z)V

    .line 895
    invoke-virtual {v1}, Ltech/ulo/library/utils/QemuSessionManager;->unbind()V

    .line 896
    iput-object v15, v3, Ltech/ulo/library/ServerService;->qemuSessionManager:Ltech/ulo/library/utils/QemuSessionManager;

    .line 897
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :cond_f
    int-to-long v1, v2

    .line 899
    invoke-virtual {v4, v1, v2}, Ltech/ulo/library/model/entities/Session;->setPort(J)V

    .line 900
    invoke-virtual {v4, v14}, Ltech/ulo/library/model/entities/Session;->setActive(Z)V

    goto/16 :goto_15

    .line 901
    :cond_10
    invoke-virtual/range {p1 .. p1}, Ltech/ulo/library/model/entities/Session;->getExecutionType()Ltech/ulo/library/model/entities/ExecutionType;

    move-result-object v2

    sget-object v5, Ltech/ulo/library/model/entities/ExecutionType;->AVF:Ltech/ulo/library/model/entities/ExecutionType;

    if-ne v2, v5, :cond_21

    .line 905
    iget-object v2, v0, Ltech/ulo/library/ServerService;->avfCleanupJob:Lkotlinx/coroutines/Job;

    if-eqz v2, :cond_11

    iput-object v0, v3, Ltech/ulo/library/ServerService$startSession$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Ltech/ulo/library/ServerService$startSession$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x7

    iput v5, v3, Ltech/ulo/library/ServerService$startSession$1;->label:I

    invoke-interface {v2, v3}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_11

    return-object v4

    :cond_11
    move-object v5, v0

    .line 906
    :goto_a
    iget-object v2, v5, Ltech/ulo/library/ServerService;->avfSessionManager:Ltech/ulo/library/utils/AvfSessionManager;

    if-nez v2, :cond_12

    new-instance v2, Ltech/ulo/library/utils/AvfSessionManager;

    move-object v7, v5

    check-cast v7, Landroid/content/Context;

    invoke-direct {v2, v7}, Ltech/ulo/library/utils/AvfSessionManager;-><init>(Landroid/content/Context;)V

    iput-object v2, v5, Ltech/ulo/library/ServerService;->avfSessionManager:Ltech/ulo/library/utils/AvfSessionManager;

    .line 907
    :cond_12
    invoke-virtual {v2}, Ltech/ulo/library/utils/AvfSessionManager;->isAvfRunnerInstalled()Z

    move-result v7

    if-nez v7, :cond_13

    .line 908
    const-string v1, "avfRunnerNotInstalled"

    invoke-direct {v5, v1, v14}, Ltech/ulo/library/ServerService;->sendDialogBroadcast(Ljava/lang/String;Z)V

    .line 909
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 912
    :cond_13
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v7

    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    new-instance v11, Ltech/ulo/library/ServerService$startSession$4;

    invoke-direct {v11, v2, v15}, Ltech/ulo/library/ServerService$startSession$4;-><init>(Ltech/ulo/library/utils/AvfSessionManager;Lkotlin/coroutines/Continuation;)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    iput-object v5, v3, Ltech/ulo/library/ServerService$startSession$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Ltech/ulo/library/ServerService$startSession$1;->L$1:Ljava/lang/Object;

    iput-object v2, v3, Ltech/ulo/library/ServerService$startSession$1;->L$2:Ljava/lang/Object;

    const/16 v12, 0x8

    iput v12, v3, Ltech/ulo/library/ServerService$startSession$1;->label:I

    invoke-static {v7, v11, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_14

    return-object v4

    :cond_14
    move-object/from16 v16, v5

    move-object v5, v1

    move-object v1, v2

    move-object v2, v7

    move-object/from16 v7, v16

    :goto_b
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 913
    const-string v1, "avfUpdateAvailable"

    invoke-direct {v7, v1, v14}, Ltech/ulo/library/ServerService;->sendDialogBroadcast(Ljava/lang/String;Z)V

    .line 914
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 916
    :cond_15
    invoke-virtual {v1}, Ltech/ulo/library/utils/AvfSessionManager;->bind()V

    .line 917
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v11, Ltech/ulo/library/ServerService$startSession$5;

    invoke-direct {v11, v1, v15}, Ltech/ulo/library/ServerService$startSession$5;-><init>(Ltech/ulo/library/utils/AvfSessionManager;Lkotlin/coroutines/Continuation;)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    iput-object v7, v3, Ltech/ulo/library/ServerService$startSession$1;->L$0:Ljava/lang/Object;

    iput-object v5, v3, Ltech/ulo/library/ServerService$startSession$1;->L$1:Ljava/lang/Object;

    iput-object v1, v3, Ltech/ulo/library/ServerService$startSession$1;->L$2:Ljava/lang/Object;

    const/16 v12, 0x9

    iput v12, v3, Ltech/ulo/library/ServerService$startSession$1;->label:I

    invoke-static {v2, v11, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_16

    return-object v4

    :cond_16
    :goto_c
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_17

    .line 918
    invoke-direct {v7, v10, v14}, Ltech/ulo/library/ServerService;->sendDialogBroadcast(Ljava/lang/String;Z)V

    .line 919
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 922
    :cond_17
    invoke-virtual {v1, v5}, Ltech/ulo/library/utils/AvfSessionManager;->getStatus(Ltech/ulo/library/model/entities/Session;)Ljava/lang/String;

    move-result-object v2

    .line 923
    const-string v11, "ready"

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1b

    const-string v11, "running"

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 924
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v11, Ltech/ulo/library/ServerService$startSession$filesystem$2;

    invoke-direct {v11, v7, v5, v15}, Ltech/ulo/library/ServerService$startSession$filesystem$2;-><init>(Ltech/ulo/library/ServerService;Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    iput-object v7, v3, Ltech/ulo/library/ServerService$startSession$1;->L$0:Ljava/lang/Object;

    iput-object v5, v3, Ltech/ulo/library/ServerService$startSession$1;->L$1:Ljava/lang/Object;

    iput-object v1, v3, Ltech/ulo/library/ServerService$startSession$1;->L$2:Ljava/lang/Object;

    const/16 v12, 0xa

    iput v12, v3, Ltech/ulo/library/ServerService$startSession$1;->label:I

    invoke-static {v2, v11, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_18

    return-object v4

    .line 821
    :cond_18
    :goto_d
    check-cast v2, Ltech/ulo/library/model/entities/Filesystem;

    .line 928
    new-instance v11, Ltech/ulo/library/ServerService$startSession$setupOk$2;

    invoke-direct {v11, v7}, Ltech/ulo/library/ServerService$startSession$setupOk$2;-><init>(Ltech/ulo/library/ServerService;)V

    check-cast v11, Lkotlin/jvm/functions/Function1;

    iput-object v7, v3, Ltech/ulo/library/ServerService$startSession$1;->L$0:Ljava/lang/Object;

    iput-object v5, v3, Ltech/ulo/library/ServerService$startSession$1;->L$1:Ljava/lang/Object;

    iput-object v1, v3, Ltech/ulo/library/ServerService$startSession$1;->L$2:Ljava/lang/Object;

    const/16 v12, 0xb

    iput v12, v3, Ltech/ulo/library/ServerService$startSession$1;->label:I

    invoke-virtual {v1, v2, v11, v3}, Ltech/ulo/library/utils/AvfSessionManager;->setup(Ltech/ulo/library/model/entities/Filesystem;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_19

    return-object v4

    :cond_19
    :goto_e
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 937
    invoke-virtual {v1, v5}, Ltech/ulo/library/utils/AvfSessionManager;->getStatus(Ltech/ulo/library/model/entities/Session;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_f

    :cond_1a
    move-object v6, v10

    :goto_f
    invoke-direct {v7, v6, v14}, Ltech/ulo/library/ServerService;->sendDialogBroadcast(Ljava/lang/String;Z)V

    .line 938
    invoke-virtual {v1}, Ltech/ulo/library/utils/AvfSessionManager;->unbind()V

    .line 939
    iput-object v15, v7, Ltech/ulo/library/ServerService;->avfSessionManager:Ltech/ulo/library/utils/AvfSessionManager;

    .line 940
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 943
    :cond_1b
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v11, Ltech/ulo/library/ServerService$startSession$port$2;

    invoke-direct {v11, v1, v5, v15}, Ltech/ulo/library/ServerService$startSession$port$2;-><init>(Ltech/ulo/library/utils/AvfSessionManager;Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    iput-object v7, v3, Ltech/ulo/library/ServerService$startSession$1;->L$0:Ljava/lang/Object;

    iput-object v5, v3, Ltech/ulo/library/ServerService$startSession$1;->L$1:Ljava/lang/Object;

    iput-object v1, v3, Ltech/ulo/library/ServerService$startSession$1;->L$2:Ljava/lang/Object;

    const/16 v12, 0xc

    iput v12, v3, Ltech/ulo/library/ServerService$startSession$1;->label:I

    invoke-static {v2, v11, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_1c

    return-object v4

    :cond_1c
    :goto_10
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-gez v2, :cond_1e

    .line 944
    invoke-virtual {v1, v5}, Ltech/ulo/library/utils/AvfSessionManager;->getStatus(Ltech/ulo/library/model/entities/Session;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "wedged"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 954
    invoke-virtual {v5}, Ltech/ulo/library/model/entities/Session;->getFilesystemId()J

    move-result-wide v11

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v14, "AVF session for fsId="

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, " hit a wedged shell; retrying once"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v11, "ServerService"

    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    .line 955
    invoke-static {v7, v9, v13, v2, v15}, Ltech/ulo/library/ServerService;->sendDialogBroadcast$default(Ltech/ulo/library/ServerService;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 956
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v9, Ltech/ulo/library/ServerService$startSession$6;

    invoke-direct {v9, v1, v5, v15}, Ltech/ulo/library/ServerService$startSession$6;-><init>(Ltech/ulo/library/utils/AvfSessionManager;Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    iput-object v7, v3, Ltech/ulo/library/ServerService$startSession$1;->L$0:Ljava/lang/Object;

    iput-object v5, v3, Ltech/ulo/library/ServerService$startSession$1;->L$1:Ljava/lang/Object;

    iput-object v1, v3, Ltech/ulo/library/ServerService$startSession$1;->L$2:Ljava/lang/Object;

    const/16 v11, 0xd

    iput v11, v3, Ltech/ulo/library/ServerService$startSession$1;->label:I

    invoke-static {v2, v9, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_1d

    return-object v4

    :cond_1d
    move-object v4, v5

    move-object v3, v7

    :goto_11
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    goto :goto_12

    :cond_1e
    move-object v4, v5

    move-object v3, v7

    :goto_12
    if-gez v2, :cond_20

    .line 962
    invoke-virtual {v1, v4}, Ltech/ulo/library/utils/AvfSessionManager;->getStatus(Ltech/ulo/library/model/entities/Session;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_13

    :cond_1f
    move-object v6, v10

    :goto_13
    const/4 v5, 0x1

    invoke-direct {v3, v6, v5}, Ltech/ulo/library/ServerService;->sendDialogBroadcast(Ljava/lang/String;Z)V

    .line 963
    invoke-virtual {v1}, Ltech/ulo/library/utils/AvfSessionManager;->unbind()V

    .line 964
    iput-object v15, v3, Ltech/ulo/library/ServerService;->avfSessionManager:Ltech/ulo/library/utils/AvfSessionManager;

    .line 965
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :cond_20
    const/4 v5, 0x1

    int-to-long v1, v2

    .line 967
    invoke-virtual {v4, v1, v2}, Ltech/ulo/library/model/entities/Session;->setPort(J)V

    .line 968
    invoke-virtual {v4, v5}, Ltech/ulo/library/model/entities/Session;->setActive(Z)V

    goto :goto_15

    .line 970
    :cond_21
    invoke-direct/range {p0 .. p0}, Ltech/ulo/library/ServerService;->getLocalServerManager()Ltech/ulo/library/utils/LocalServerManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Ltech/ulo/library/utils/LocalServerManager;->startServer(Ltech/ulo/library/model/entities/Session;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ltech/ulo/library/model/entities/Session;->setPid(J)V

    move-object v5, v0

    .line 977
    :cond_22
    :goto_14
    invoke-direct {v5}, Ltech/ulo/library/ServerService;->getLocalServerManager()Ltech/ulo/library/utils/LocalServerManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Ltech/ulo/library/utils/LocalServerManager;->isServerRunning(Ltech/ulo/library/model/entities/Session;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 978
    iput-object v5, v3, Ltech/ulo/library/ServerService$startSession$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Ltech/ulo/library/ServerService$startSession$1;->L$1:Ljava/lang/Object;

    const/16 v2, 0xe

    iput v2, v3, Ltech/ulo/library/ServerService$startSession$1;->label:I

    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7, v3}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_22

    return-object v4

    :cond_23
    const/4 v2, 0x1

    .line 980
    invoke-virtual {v1, v2}, Ltech/ulo/library/model/entities/Session;->setActive(Z)V

    move-object v4, v1

    move-object v3, v5

    .line 983
    :goto_15
    invoke-direct {v3, v4}, Ltech/ulo/library/ServerService;->updateSession(Ltech/ulo/library/model/entities/Session;)Lkotlinx/coroutines/Job;

    .line 984
    const-string v1, "clientStarting"

    const/4 v2, 0x2

    invoke-static {v3, v1, v13, v2, v15}, Ltech/ulo/library/ServerService;->sendDialogBroadcast$default(Ltech/ulo/library/ServerService;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 985
    invoke-direct {v3, v4}, Ltech/ulo/library/ServerService;->startClient(Ltech/ulo/library/model/entities/Session;)V

    .line 986
    iget-object v1, v3, Ltech/ulo/library/ServerService;->activeSessions:Ljava/util/Map;

    invoke-virtual {v4}, Ltech/ulo/library/model/entities/Session;->getPid()J

    move-result-wide v5

    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    iput-object v4, v3, Ltech/ulo/library/ServerService;->lastSession:Ltech/ulo/library/model/entities/Session;

    .line 988
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final startSession$lambda$13(Ltech/ulo/library/ServerService;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 974
    invoke-direct {p0}, Ltech/ulo/library/ServerService;->intentRequest()V

    return-void
.end method

.method private final startSshClient(Ltech/ulo/library/model/entities/Session;)V
    .locals 4

    .line 1096
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/termux/app/TermuxActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1097
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1098
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getPassword()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ssh://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@localhost:2022/#userland/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 1099
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1101
    invoke-virtual {p0, v0}, Ltech/ulo/library/ServerService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final startVncClient(Ltech/ulo/library/model/entities/Session;Ljava/lang/String;)V
    .locals 9

    .line 1105
    new-instance v0, Landroid/content/Intent;

    move-object v7, p0

    check-cast v7, Landroid/content/Context;

    const-class v1, Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1106
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getVncPassword()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "vnc://127.0.0.1:5951/?VncUsername="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&VncPassword="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    .line 1107
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1108
    new-instance v8, Ltech/ulo/library/utils/UlaFiles;

    invoke-virtual {p0}, Ltech/ulo/library/ServerService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-string v1, "nativeLibraryDir"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v8

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Ltech/ulo/library/utils/UlaFiles;-><init>(Landroid/content/Context;Ljava/lang/String;Ltech/ulo/library/utils/Symlinker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1109
    invoke-virtual {v8}, Ltech/ulo/library/utils/UlaFiles;->getIntentsDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "command_dir"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1261
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_preferences"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v7, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "getSharedPreferences(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1110
    const-string v5, "pref_hide_vnc_toolbar"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v5, "hide_toolbar"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1262
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1111
    const-string v5, "pref_hide_vnc_extra_keys"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v5, "hide_extra_keys"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1112
    const-string v1, "display_locked"

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getDisplayLocked()Z

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1113
    const-string v1, "display_orientation"

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getDisplayOrientation()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1263
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1114
    const-string v1, "pref_default_vnc_input_mode"

    const-string v2, "Direct, Hold Pan"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1115
    sget v1, Lcom/undatech/remoteClientUi/R$string;->input_method_direct_swipe_pan:I

    invoke-virtual {p0, v1}, Ltech/ulo/library/ServerService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget p1, Lcom/undatech/remoteClientUi/R$id;->itemInputTouchPanZoomMouse:I

    goto :goto_0

    .line 1116
    :cond_0
    sget v1, Lcom/undatech/remoteClientUi/R$string;->input_method_direct_drag_pan:I

    invoke-virtual {p0, v1}, Ltech/ulo/library/ServerService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget p1, Lcom/undatech/remoteClientUi/R$id;->itemInputDragPanZoomMouse:I

    goto :goto_0

    .line 1117
    :cond_1
    sget v1, Lcom/undatech/remoteClientUi/R$string;->input_method_touchpad:I

    invoke-virtual {p0, v1}, Ltech/ulo/library/ServerService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget p1, Lcom/undatech/remoteClientUi/R$id;->itemInputTouchpad:I

    goto :goto_0

    .line 1118
    :cond_2
    sget v1, Lcom/undatech/remoteClientUi/R$string;->input_method_single_handed:I

    invoke-virtual {p0, v1}, Ltech/ulo/library/ServerService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Lcom/undatech/remoteClientUi/R$id;->itemInputSingleHanded:I

    goto :goto_0

    .line 1119
    :cond_3
    sget p1, Lcom/undatech/remoteClientUi/R$id;->itemInputTouchPanZoomMouse:I

    .line 1121
    :goto_0
    const-string v1, "input_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1123
    invoke-direct {p0, v0}, Ltech/ulo/library/ServerService;->clientIsPresent(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1124
    invoke-virtual {p0, v0}, Ltech/ulo/library/ServerService;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1126
    :cond_4
    invoke-direct {p0, p2}, Ltech/ulo/library/ServerService;->getClient(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private final startVncClientOnPort(Ltech/ulo/library/model/entities/Session;I)V
    .locals 8

    .line 1080
    new-instance v0, Landroid/content/Intent;

    move-object v7, p0

    check-cast v7, Landroid/content/Context;

    const-class v1, Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1081
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getVncPassword()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "vnc://127.0.0.1:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, "/?VncUsername="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "&VncPassword="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p2, 0x14000000

    .line 1082
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1083
    new-instance p2, Ltech/ulo/library/utils/UlaFiles;

    invoke-virtual {p0}, Ltech/ulo/library/ServerService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-string v1, "nativeLibraryDir"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Ltech/ulo/library/utils/UlaFiles;-><init>(Landroid/content/Context;Ljava/lang/String;Ltech/ulo/library/utils/Symlinker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1084
    invoke-virtual {p2}, Ltech/ulo/library/utils/UlaFiles;->getIntentsDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const-string v1, "command_dir"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1258
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "_preferences"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {v7, p2, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v3, "getSharedPreferences(...)"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1085
    const-string v4, "pref_hide_vnc_toolbar"

    invoke-interface {p2, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    const-string v4, "hide_toolbar"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1259
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1086
    const-string v4, "pref_hide_vnc_extra_keys"

    invoke-interface {p2, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    const-string v4, "hide_extra_keys"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1087
    const-string p2, "display_locked"

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getDisplayLocked()Z

    move-result v4

    invoke-virtual {v0, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1088
    const-string p2, "display_orientation"

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getDisplayOrientation()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1260
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1089
    const-string p2, "pref_vnc_input_mode"

    const-string v1, "Direct, Hold Pan"

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "input_mode"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1090
    invoke-direct {p0, v0}, Ltech/ulo/library/ServerService;->clientIsPresent(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1091
    invoke-virtual {p0, v0}, Ltech/ulo/library/ServerService;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private final startXsdlClient(Ljava/lang/String;)V
    .locals 2

    .line 1131
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 1132
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1133
    const-string v1, "x11://give.me.display:4721"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1135
    invoke-direct {p0, v0}, Ltech/ulo/library/ServerService;->clientIsPresent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1136
    invoke-virtual {p0, v0}, Ltech/ulo/library/ServerService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1138
    :cond_0
    invoke-direct {p0, p1}, Ltech/ulo/library/ServerService;->getClient(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final stopApp(Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/App;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Ltech/ulo/library/ServerService$stopApp$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ltech/ulo/library/ServerService$stopApp$1;

    iget v1, v0, Ltech/ulo/library/ServerService$stopApp$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Ltech/ulo/library/ServerService$stopApp$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Ltech/ulo/library/ServerService$stopApp$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltech/ulo/library/ServerService$stopApp$1;

    invoke-direct {v0, p0, p2}, Ltech/ulo/library/ServerService$stopApp$1;-><init>(Ltech/ulo/library/ServerService;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Ltech/ulo/library/ServerService$stopApp$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1054
    iget v2, v0, Ltech/ulo/library/ServerService$stopApp$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Ltech/ulo/library/ServerService$stopApp$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v2, v0, Ltech/ulo/library/ServerService$stopApp$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ltech/ulo/library/ServerService;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1055
    iget-object p2, p0, Ltech/ulo/library/ServerService;->activeSessions:Ljava/util/Map;

    .line 1249
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 1250
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1055
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltech/ulo/library/model/entities/Session;

    .line 1056
    invoke-virtual {v5}, Ltech/ulo/library/model/entities/Session;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/App;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1252
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1256
    :cond_4
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, p0

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 1058
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ltech/ulo/library/model/entities/Session;

    .line 1059
    iput-object v2, v0, Ltech/ulo/library/ServerService$stopApp$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Ltech/ulo/library/ServerService$stopApp$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Ltech/ulo/library/ServerService$stopApp$1;->label:I

    invoke-direct {v2, p2, v0}, Ltech/ulo/library/ServerService;->killSession(Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    .line 1061
    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final tailFile(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Ltech/ulo/library/ServerService$tailFile$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ltech/ulo/library/ServerService$tailFile$1;

    iget v1, v0, Ltech/ulo/library/ServerService$tailFile$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Ltech/ulo/library/ServerService$tailFile$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Ltech/ulo/library/ServerService$tailFile$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltech/ulo/library/ServerService$tailFile$1;

    invoke-direct {v0, p0, p2}, Ltech/ulo/library/ServerService$tailFile$1;-><init>(Ltech/ulo/library/ServerService;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Ltech/ulo/library/ServerService$tailFile$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 663
    iget v2, v0, Ltech/ulo/library/ServerService$tailFile$1;->label:I

    const-wide/16 v3, 0x64

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v5, :cond_1

    iget-wide v6, v0, Ltech/ulo/library/ServerService$tailFile$1;->J$0:J

    iget-object p1, v0, Ltech/ulo/library/ServerService$tailFile$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/io/RandomAccessFile;

    iget-object v2, v0, Ltech/ulo/library/ServerService$tailFile$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    iget-object v8, v0, Ltech/ulo/library/ServerService$tailFile$1;->L$0:Ljava/lang/Object;

    check-cast v8, Ltech/ulo/library/ServerService;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Ltech/ulo/library/ServerService$tailFile$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    iget-object v2, v0, Ltech/ulo/library/ServerService$tailFile$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ltech/ulo/library/ServerService;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 664
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, p0

    move-object p1, p2

    .line 665
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_5

    .line 666
    iput-object v2, v0, Ltech/ulo/library/ServerService$tailFile$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Ltech/ulo/library/ServerService$tailFile$1;->L$1:Ljava/lang/Object;

    iput v6, v0, Ltech/ulo/library/ServerService$tailFile$1;->label:I

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    .line 669
    :cond_5
    new-instance p2, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {p2, p1, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 670
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    move-object v8, v2

    move-object v2, p1

    move-object p1, p2

    .line 675
    :cond_6
    :goto_2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long p2, v9, v6

    if-lez p2, :cond_9

    .line 678
    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 681
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 682
    const-string v6, ""

    move-object v7, v6

    .line 683
    :goto_3
    :try_start_2
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v11, :cond_7

    .line 684
    iget-object v7, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Ljava/lang/String;

    goto :goto_3

    .line 686
    :cond_7
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 687
    const-string p2, "extractionStatus"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v8, p2, v7}, Ltech/ulo/library/ServerService;->sendDialogBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    move-wide v6, v9

    .line 694
    :cond_9
    iput-object v8, v0, Ltech/ulo/library/ServerService$tailFile$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Ltech/ulo/library/ServerService$tailFile$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Ltech/ulo/library/ServerService$tailFile$1;->L$2:Ljava/lang/Object;

    iput-wide v6, v0, Ltech/ulo/library/ServerService$tailFile$1;->J$0:J

    iput v5, v0, Ltech/ulo/library/ServerService$tailFile$1;->label:I

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p2, v1, :cond_6

    return-object v1

    .line 699
    :goto_4
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    throw p2

    :catch_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    .line 701
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final updateSession(Ltech/ulo/library/model/entities/Session;)Lkotlinx/coroutines/Job;
    .locals 7

    .line 567
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Ltech/ulo/library/ServerService$updateSession$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Ltech/ulo/library/ServerService$updateSession$1;-><init>(Ltech/ulo/library/ServerService;Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final native droidFileClientRun(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public final native droidFileSendDent(Ljava/lang/String;Ljava/lang/String;IZZJ)I
.end method

.method public final native droidFileSendFd(II)I
.end method

.method public final native droidFileServerRun(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 2

    .line 44
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    iget-object v1, p0, Ltech/ulo/library/ServerService;->job:Lkotlinx/coroutines/CompletableJob;

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final getUri(Z)V
    .locals 24

    move-object/from16 v8, p0

    .line 101
    const-string v0, ""

    const-string v9, "nativeLibraryDir"

    const-string v10, "open FD = -1"

    const-string v11, "droid_files"

    .line 0
    const-string v1, "/"

    const-string v2, "uriSysCall = "

    const/4 v12, -0x1

    .line 102
    :try_start_0
    iget v3, v8, Ltech/ulo/library/ServerService;->uriSysCall:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v13, v8, Ltech/ulo/library/ServerService;->uriPath:Ljava/lang/String;

    const-string v14, "//"

    const-string v15, "/"

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Ltech/ulo/library/ServerService;->uriPath:Ljava/lang/String;

    .line 105
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Ltech/ulo/library/ServerService;->uriPath:Ljava/lang/String;

    .line 106
    move-object v13, v2

    check-cast v13, Ljava/lang/CharSequence;

    const/4 v6, 0x1

    new-array v14, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v14, v7

    const/16 v17, 0x6

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 107
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    const/4 v13, 0x2

    if-lt v4, v5, :cond_0

    .line 109
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v2

    .line 112
    :cond_0
    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2, v13}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v2

    .line 113
    const-string v4, "/sdcard/Download"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 115
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v2

    .line 120
    :cond_1
    new-instance v1, Ltech/ulo/library/utils/UlaFiles;

    move-object v15, v8

    check-cast v15, Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Ltech/ulo/library/ServerService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v17, 0x0

    move-object v14, v1

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v19}, Ltech/ulo/library/utils/UlaFiles;-><init>(Landroid/content/Context;Ljava/lang/String;Ltech/ulo/library/utils/Symlinker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 121
    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Ltech/ulo/library/utils/UlaFiles;->getSdcardDir()Ljava/io/File;

    move-result-object v1

    const-string v14, "/sdcard/"

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v3, v14}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v1, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 123
    iget v0, v8, Ltech/ulo/library/ServerService;->uriSock:I

    invoke-virtual {v8, v0, v12}, Ltech/ulo/library/ServerService;->droidFileSendFd(II)I

    return-void

    .line 128
    :cond_2
    const-string v1, "/sdcard"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "parse(...)"

    if-eqz v1, :cond_3

    .line 129
    :try_start_1
    const-string v0, "content://com.android.externalstorage.documents/tree/primary"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 131
    :cond_3
    move-object v1, v8

    check-cast v1, Landroid/content/Context;

    .line 1232
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_preferences"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v14, "getSharedPreferences(...)"

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    const-string v14, "uriStore"

    invoke-interface {v1, v14, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 133
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 134
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 135
    new-instance v14, Ltech/ulo/library/ServerService$getUri$hashType$1;

    invoke-direct {v14}, Ltech/ulo/library/ServerService$getUri$hashType$1;-><init>()V

    invoke-virtual {v14}, Ltech/ulo/library/ServerService$getUri$hashType$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v14

    .line 136
    invoke-virtual {v0, v1, v14}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "fromJson(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v0

    check-cast v14, Ljava/util/HashMap;

    .line 138
    :cond_4
    move-object v0, v14

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p1, :cond_5

    .line 140
    invoke-virtual {v8, v3}, Ltech/ulo/library/ServerService;->requestUriPerms(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_5
    const-string v0, "no perms and not getting them"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget v0, v8, Ltech/ulo/library/ServerService;->uriSock:I

    invoke-virtual {v8, v0, v12}, Ltech/ulo/library/ServerService;->droidFileSendFd(II)I

    :goto_0
    return-void

    .line 147
    :cond_6
    invoke-virtual {v14, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    :goto_1
    move-object v1, v8

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, v0}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    if-nez v0, :cond_7

    .line 151
    const-string v0, "filetree == null"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget v0, v8, Ltech/ulo/library/ServerService;->uriSock:I

    invoke-virtual {v8, v0, v12}, Ltech/ulo/library/ServerService;->droidFileSendFd(II)I

    return-void

    .line 155
    :cond_7
    move-object v1, v2

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->withIndex(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    .line 1233
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v14, v0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/collections/IndexedValue;

    .line 155
    invoke-virtual {v0}, Lkotlin/collections/IndexedValue;->component1()I

    move-result v3

    invoke-virtual {v0}, Lkotlin/collections/IndexedValue;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    invoke-virtual {v14, v0}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 158
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v15

    if-ne v3, v15, :cond_9

    iget v15, v8, Ltech/ulo/library/ServerService;->uriSysCall:I

    const/4 v6, 0x5

    if-eq v15, v6, :cond_8

    const/4 v6, 0x6

    if-ne v15, v6, :cond_9

    .line 159
    :cond_8
    invoke-virtual {v4}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    .line 160
    iget v0, v8, Ltech/ulo/library/ServerService;->uriSock:I

    invoke-virtual {v8, v0, v7}, Ltech/ulo/library/ServerService;->droidFileSendFd(II)I

    return-void

    :cond_9
    if-nez v4, :cond_b

    .line 164
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v6

    if-ne v3, v6, :cond_b

    iget v6, v8, Ltech/ulo/library/ServerService;->uriSysCall:I

    if-eq v6, v5, :cond_a

    const/4 v15, 0x4

    if-ne v6, v15, :cond_b

    .line 165
    :cond_a
    invoke-virtual {v14, v0}, Landroidx/documentfile/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    .line 166
    iget v0, v8, Ltech/ulo/library/ServerService;->uriSock:I

    invoke-virtual {v8, v0, v7}, Ltech/ulo/library/ServerService;->droidFileSendFd(II)I

    return-void

    :cond_b
    if-nez v4, :cond_c

    .line 170
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v6

    if-ne v3, v6, :cond_c

    iget v3, v8, Ltech/ulo/library/ServerService;->uriFlags:I

    const/16 v6, 0x40

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_c

    .line 171
    const-string v3, "application/userland"

    invoke-virtual {v14, v3, v0}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    move-object v14, v0

    goto :goto_3

    :cond_c
    move-object v14, v4

    :goto_3
    if-nez v14, :cond_d

    .line 175
    const-string v0, "newFileTree == null"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget v0, v8, Ltech/ulo/library/ServerService;->uriSock:I

    invoke-virtual {v8, v0, v12}, Ltech/ulo/library/ServerService;->droidFileSendFd(II)I

    return-void

    :cond_d
    const/4 v6, 0x1

    goto :goto_2

    .line 183
    :cond_e
    iget v0, v8, Ltech/ulo/library/ServerService;->uriSysCall:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v15, "r"

    const/16 v6, 0x8

    const/4 v1, 0x7

    if-eq v0, v1, :cond_15

    if-ne v0, v6, :cond_f

    goto/16 :goto_5

    .line 217
    :cond_f
    :try_start_2
    iget v0, v8, Ltech/ulo/library/ServerService;->uriFlags:I

    and-int/lit8 v1, v0, 0x7

    if-ne v1, v13, :cond_10

    .line 218
    const-string v15, "rw"

    goto :goto_4

    :cond_10
    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 220
    const-string v15, "w"

    :cond_11
    :goto_4
    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_12

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 227
    :cond_12
    iget v0, v8, Ltech/ulo/library/ServerService;->uriFlags:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_13

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 230
    :cond_13
    invoke-virtual/range {p0 .. p0}, Ltech/ulo/library/ServerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v14}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 232
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open FD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget v1, v8, Ltech/ulo/library/ServerService;->uriSock:I

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-virtual {v8, v1, v2}, Ltech/ulo/library/ServerService;->droidFileSendFd(II)I

    .line 234
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    goto/16 :goto_9

    .line 236
    :cond_14
    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget v0, v8, Ltech/ulo/library/ServerService;->uriSock:I

    invoke-virtual {v8, v0, v12}, Ltech/ulo/library/ServerService;->droidFileSendFd(II)I

    goto/16 :goto_9

    .line 184
    :cond_15
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getdents uriSysCall = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v14}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_16

    .line 186
    const-string v0, "dirents but not a directory"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget v0, v8, Ltech/ulo/library/ServerService;->uriSock:I

    invoke-virtual {v8, v0, v12}, Ltech/ulo/library/ServerService;->droidFileSendFd(II)I

    return-void

    .line 190
    :cond_16
    invoke-virtual {v14}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    const-string v1, "listFiles(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget v1, v8, Ltech/ulo/library/ServerService;->uriFlags:I

    array-length v2, v0

    if-lt v1, v2, :cond_17

    .line 192
    const-string v0, "Should be last dirents call"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget v0, v8, Ltech/ulo/library/ServerService;->uriSock:I

    const/4 v13, 0x1

    invoke-virtual {v8, v0, v13}, Ltech/ulo/library/ServerService;->droidFileSendFd(II)I

    return-void

    :cond_17
    const/4 v13, 0x1

    .line 196
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->withIndex([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    .line 1235
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/collections/IndexedValue;

    .line 196
    invoke-virtual {v0}, Lkotlin/collections/IndexedValue;->component1()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/collections/IndexedValue;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/documentfile/provider/DocumentFile;

    .line 197
    iget v2, v8, Ltech/ulo/library/ServerService;->uriFlags:I

    if-ne v1, v2, :cond_19

    .line 198
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v14, v2}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v2

    .line 199
    invoke-virtual/range {p0 .. p0}, Ltech/ulo/library/ServerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2, v15}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v17

    .line 200
    new-instance v2, Ltech/ulo/library/utils/UlaFiles;

    move-object/from16 v19, v8

    check-cast v19, Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Ltech/ulo/library/ServerService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v22, 0x4

    const/16 v23, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    invoke-direct/range {v18 .. v23}, Ltech/ulo/library/utils/UlaFiles;-><init>(Landroid/content/Context;Ljava/lang/String;Ltech/ulo/library/utils/Symlinker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 201
    invoke-virtual {v2}, Ltech/ulo/library/utils/UlaFiles;->getSupportDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/droid_files_getdents"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {v17 .. v17}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v5

    iget v0, v8, Ltech/ulo/library/ServerService;->uriSysCall:I

    if-ne v0, v6, :cond_18

    move/from16 v18, v13

    goto :goto_7

    :cond_18
    move/from16 v18, v7

    :goto_7
    int-to-long v0, v1

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move/from16 v5, v18

    move/from16 v18, v13

    move v13, v7

    move-wide/from16 v6, v19

    invoke-virtual/range {v0 .. v7}, Ltech/ulo/library/ServerService;->droidFileSendDent(Ljava/lang/String;Ljava/lang/String;IZZJ)I

    .line 202
    invoke-virtual/range {v17 .. v17}, Landroid/os/ParcelFileDescriptor;->close()V

    goto :goto_8

    :cond_19
    move/from16 v18, v13

    move v13, v7

    :goto_8
    move v7, v13

    move/from16 v13, v18

    const/16 v6, 0x8

    goto/16 :goto_6

    :cond_1a
    move v13, v7

    .line 205
    iget v0, v8, Ltech/ulo/library/ServerService;->uriSock:I

    invoke-virtual {v8, v0, v13}, Ltech/ulo/library/ServerService;->droidFileSendFd(II)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 240
    :catch_0
    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget v0, v8, Ltech/ulo/library/ServerService;->uriSock:I

    invoke-virtual {v8, v0, v12}, Ltech/ulo/library/ServerService;->droidFileSendFd(II)I

    :goto_9
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 9

    .line 355
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ltech/ulo/library/ServerService;->broadcaster:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 356
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Ltech/ulo/library/ServerService$onCreate$1;

    const/4 v8, 0x0

    invoke-direct {v1, p0, v8}, Ltech/ulo/library/ServerService$onCreate$1;-><init>(Ltech/ulo/library/ServerService;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    iput-object v1, p0, Ltech/ulo/library/ServerService;->droidFileJob:Lkotlinx/coroutines/Job;

    .line 357
    const-string v1, "nativeTest"

    invoke-virtual {p0}, Ltech/ulo/library/ServerService;->stringFromJNI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    new-instance v1, Ltech/ulo/library/ServerService$onCreate$2;

    invoke-direct {v1, p0, v8}, Ltech/ulo/library/ServerService$onCreate$2;-><init>(Ltech/ulo/library/ServerService;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    iput-object v1, p0, Ltech/ulo/library/ServerService;->avfCleanupJob:Lkotlinx/coroutines/Job;

    .line 359
    new-instance v1, Ltech/ulo/library/ServerService$onCreate$3;

    invoke-direct {v1, p0, v8}, Ltech/ulo/library/ServerService$onCreate$3;-><init>(Ltech/ulo/library/ServerService;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/ServerService;->qemuCleanupJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onDestroy()V
    .locals 8

    .line 521
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 522
    iget-object v0, p0, Ltech/ulo/library/ServerService;->droidFileJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 542
    :cond_0
    iget-object v0, p0, Ltech/ulo/library/ServerService;->activeSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1246
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 1247
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ltech/ulo/library/model/entities/Session;

    .line 543
    invoke-virtual {v5}, Ltech/ulo/library/model/entities/Session;->getExecutionType()Ltech/ulo/library/model/entities/ExecutionType;

    move-result-object v6

    sget-object v7, Ltech/ulo/library/model/entities/ExecutionType;->AVF:Ltech/ulo/library/model/entities/ExecutionType;

    if-eq v6, v7, :cond_2

    invoke-virtual {v5}, Ltech/ulo/library/model/entities/Session;->getExecutionType()Ltech/ulo/library/model/entities/ExecutionType;

    move-result-object v5

    sget-object v6, Ltech/ulo/library/model/entities/ExecutionType;->QEMU:Ltech/ulo/library/model/entities/ExecutionType;

    if-ne v5, v6, :cond_1

    .line 1247
    :cond_2
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1248
    :cond_3
    check-cast v3, Ljava/util/List;

    .line 545
    move-object v0, v3

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 546
    new-instance v0, Ljava/lang/Thread;

    .line 550
    new-instance v4, Ltech/ulo/library/ServerService$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p0}, Ltech/ulo/library/ServerService$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Ltech/ulo/library/ServerService;)V

    const-string v3, "serverservice-shutdown-cleanup"

    .line 546
    invoke-direct {v0, v4, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 550
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 552
    :cond_4
    iget-object v0, p0, Ltech/ulo/library/ServerService;->avfSessionManager:Ltech/ulo/library/utils/AvfSessionManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ltech/ulo/library/utils/AvfSessionManager;->unbind()V

    .line 553
    :cond_5
    iput-object v2, p0, Ltech/ulo/library/ServerService;->avfSessionManager:Ltech/ulo/library/utils/AvfSessionManager;

    .line 554
    iget-object v0, p0, Ltech/ulo/library/ServerService;->qemuSessionManager:Ltech/ulo/library/utils/QemuSessionManager;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ltech/ulo/library/utils/QemuSessionManager;->unbind()V

    .line 555
    :cond_6
    iput-object v2, p0, Ltech/ulo/library/ServerService;->qemuSessionManager:Ltech/ulo/library/utils/QemuSessionManager;

    .line 556
    invoke-virtual {p0}, Ltech/ulo/library/ServerService;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/JobKt;->cancel$default(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8

    .line 437
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 439
    const-string p3, "type"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    if-eqz p3, :cond_e

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "session"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "repairQemu"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    goto/16 :goto_1

    .line 475
    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ltech/ulo/library/model/entities/Session;

    .line 476
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p3, Ltech/ulo/library/ServerService$onStartCommand$5;

    invoke-direct {p3, p0, p1, p2}, Ltech/ulo/library/ServerService$onStartCommand$5;-><init>(Ltech/ulo/library/ServerService;Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)V

    move-object v3, p3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto/16 :goto_1

    .line 439
    :sswitch_1
    const-string p2, "restartRunningSession"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_1

    .line 483
    :cond_2
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ltech/ulo/library/model/entities/Session;

    .line 484
    invoke-direct {p0, p1}, Ltech/ulo/library/ServerService;->startClient(Ltech/ulo/library/model/entities/Session;)V

    goto/16 :goto_1

    .line 439
    :sswitch_2
    const-string v0, "start"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto/16 :goto_1

    .line 456
    :cond_3
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ltech/ulo/library/model/entities/Session;

    .line 460
    iget-object p3, p0, Ltech/ulo/library/ServerService;->sessionsCurrentlyStarting:Ljava/util/Set;

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 461
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p3, Ltech/ulo/library/ServerService$onStartCommand$3;

    invoke-direct {p3, p0, p1, p2}, Ltech/ulo/library/ServerService$onStartCommand$3;-><init>(Ltech/ulo/library/ServerService;Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)V

    move-object v3, p3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto/16 :goto_1

    .line 439
    :sswitch_3
    const-string v0, "kill"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    goto/16 :goto_1

    .line 487
    :cond_4
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ltech/ulo/library/model/entities/Session;

    .line 488
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p3, Ltech/ulo/library/ServerService$onStartCommand$7;

    invoke-direct {p3, p0, p1, p2}, Ltech/ulo/library/ServerService$onStartCommand$7;-><init>(Ltech/ulo/library/ServerService;Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)V

    move-object v3, p3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto/16 :goto_1

    .line 439
    :sswitch_4
    const-string v0, "prepare"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    goto/16 :goto_1

    .line 452
    :cond_5
    const-string p3, "filesystem"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ltech/ulo/library/model/entities/Filesystem;

    .line 453
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p3, Ltech/ulo/library/ServerService$onStartCommand$2;

    invoke-direct {p3, p0, p1, p2}, Ltech/ulo/library/ServerService$onStartCommand$2;-><init>(Ltech/ulo/library/ServerService;Ltech/ulo/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)V

    move-object v3, p3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto/16 :goto_1

    .line 439
    :sswitch_5
    const-string p2, "getDirPermsResult"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto/16 :goto_1

    .line 502
    :cond_6
    const-string p2, "droid_files"

    const-string p3, "getDirPerms"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {p0, p1}, Ltech/ulo/library/ServerService;->processGetDirPermResult(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 439
    :sswitch_6
    const-string v0, "repairAvf"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    goto/16 :goto_1

    .line 471
    :cond_7
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ltech/ulo/library/model/entities/Session;

    .line 472
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p3, Ltech/ulo/library/ServerService$onStartCommand$4;

    invoke-direct {p3, p0, p1, p2}, Ltech/ulo/library/ServerService$onStartCommand$4;-><init>(Ltech/ulo/library/ServerService;Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)V

    move-object v3, p3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto/16 :goto_1

    .line 439
    :sswitch_7
    const-string p1, "status"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_1

    .line 441
    :cond_8
    iget-boolean p1, p0, Ltech/ulo/library/ServerService;->waitingForStart:Z

    if-eqz p1, :cond_9

    .line 442
    invoke-direct {p0}, Ltech/ulo/library/ServerService;->sendSessionReadyBroadcast()V

    .line 445
    :cond_9
    iget-boolean p1, p0, Ltech/ulo/library/ServerService;->sessionActivatedPending:Z

    if-eqz p1, :cond_a

    .line 446
    invoke-direct {p0}, Ltech/ulo/library/ServerService;->sendSessionActivatedBroadcast()V

    .line 449
    :cond_a
    iget-object p1, p0, Ltech/ulo/library/ServerService;->pendingFailureDialogType:Ljava/lang/String;

    if-eqz p1, :cond_e

    const/4 p3, 0x0

    const/4 v0, 0x2

    invoke-static {p0, p1, p3, v0, p2}, Ltech/ulo/library/ServerService;->sendDialogBroadcast$default(Ltech/ulo/library/ServerService;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_1

    .line 439
    :sswitch_8
    const-string v0, "filesystemIsBeingDeleted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    goto :goto_1

    .line 491
    :cond_b
    const-string p3, "filesystemId"

    const-wide/16 v0, -0x1

    invoke-virtual {p1, p3, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 492
    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Ltech/ulo/library/ServerService$onStartCommand$8;

    invoke-direct {p1, p0, v0, v1, p2}, Ltech/ulo/library/ServerService$onStartCommand$8;-><init>(Ltech/ulo/library/ServerService;JLkotlin/coroutines/Continuation;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_1

    .line 439
    :sswitch_9
    const-string v0, "stopApp"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_c

    goto :goto_1

    .line 479
    :cond_c
    const-string p3, "app"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ltech/ulo/library/model/entities/App;

    .line 480
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p3, Ltech/ulo/library/ServerService$onStartCommand$6;

    invoke-direct {p3, p0, p1, p2}, Ltech/ulo/library/ServerService$onStartCommand$6;-><init>(Ltech/ulo/library/ServerService;Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)V

    move-object v3, p3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_1

    .line 439
    :sswitch_a
    const-string p1, "stopAll"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_1

    .line 495
    :cond_d
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Ltech/ulo/library/ServerService$onStartCommand$9;

    invoke-direct {p1, p0, p2}, Ltech/ulo/library/ServerService$onStartCommand$9;-><init>(Ltech/ulo/library/ServerService;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_e
    :goto_1
    const/4 p1, 0x1

    return p1

    :sswitch_data_0
    .sparse-switch
        -0x70511dc1 -> :sswitch_a
        -0x70511d41 -> :sswitch_9
        -0x57ababd1 -> :sswitch_8
        -0x3532300e -> :sswitch_7
        -0x2d7363fc -> :sswitch_6
        -0x1701c857 -> :sswitch_5
        -0x12f9f2f9 -> :sswitch_4
        0x323b5e -> :sswitch_3
        0x68ac462 -> :sswitch_2
        0x5f8903c6 -> :sswitch_1
        0x7f0debe9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2

    .line 513
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 515
    invoke-virtual {p0}, Ltech/ulo/library/ServerService;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lkotlinx/coroutines/JobKt;->cancel$default(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 516
    invoke-virtual {p0, v1}, Ltech/ulo/library/ServerService;->stopForeground(Z)V

    .line 517
    invoke-virtual {p0}, Ltech/ulo/library/ServerService;->stopSelf()V

    return-void
.end method

.method public final open(IILjava/lang/String;II)V
    .locals 2

    const-string v0, "path"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    const-string v0, "droid_files"

    const-string v1, "open"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iput p1, p0, Ltech/ulo/library/ServerService;->uriSock:I

    .line 280
    iput p2, p0, Ltech/ulo/library/ServerService;->uriSysCall:I

    .line 281
    iput-object p3, p0, Ltech/ulo/library/ServerService;->uriPath:Ljava/lang/String;

    .line 282
    iput p4, p0, Ltech/ulo/library/ServerService;->uriFlags:I

    .line 283
    iput p5, p0, Ltech/ulo/library/ServerService;->uriMode:I

    const/4 p1, 0x1

    .line 284
    invoke-virtual {p0, p1}, Ltech/ulo/library/ServerService;->getUri(Z)V

    return-void
.end method

.method public final processGetDirPermResult(Landroid/content/Intent;)V
    .locals 9

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    const-string v0, "resultCode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 256
    iget p1, p0, Ltech/ulo/library/ServerService;->uriSock:I

    invoke-virtual {p0, p1, v2}, Ltech/ulo/library/ServerService;->droidFileSendFd(II)I

    return-void

    .line 259
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 1237
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_preferences"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "getSharedPreferences(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    const-string v5, "uriStore"

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 260
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 261
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 262
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    .line 263
    new-instance v7, Ltech/ulo/library/ServerService$processGetDirPermResult$hashType$1;

    invoke-direct {v7}, Ltech/ulo/library/ServerService$processGetDirPermResult$hashType$1;-><init>()V

    invoke-virtual {v7}, Ltech/ulo/library/ServerService$processGetDirPermResult$hashType$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 264
    invoke-virtual {v6, v2, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    const-string v2, "fromJson(...)"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    :cond_1
    move-object v2, v7

    check-cast v2, Ljava/util/HashMap;

    const-string v6, "path"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v8, "uri"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 268
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 269
    new-instance v2, Ltech/ulo/library/ServerService$processGetDirPermResult$1$hashType$1;

    invoke-direct {v2}, Ltech/ulo/library/ServerService$processGetDirPermResult$1$hashType$1;-><init>()V

    invoke-virtual {v2}, Ltech/ulo/library/ServerService$processGetDirPermResult$1$hashType$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 270
    invoke-virtual {v0, v7, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-interface {p1, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 272
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 274
    invoke-virtual {p0, v1}, Ltech/ulo/library/ServerService;->getUri(Z)V

    return-void
.end method

.method public final requestUriPerms(Ljava/lang/String;)V
    .locals 4

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    new-instance v1, Landroid/content/Intent;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const-class v3, Ltech/ulo/library/RequestDirPermissionsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    const-string v2, "get_dir"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x14000000

    .line 250
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 251
    invoke-virtual {p0, v1}, Ltech/ulo/library/ServerService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final staticMethod(I)I
    .locals 0

    return p1
.end method

.method public final native stringFromJNI()Ljava/lang/String;
.end method

.method public final native toyboxMain([Ljava/lang/String;Ljava/lang/String;)I
.end method
