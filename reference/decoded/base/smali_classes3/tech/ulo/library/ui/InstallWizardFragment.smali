.class public final Ltech/ulo/library/ui/InstallWizardFragment;
.super Landroidx/fragment/app/Fragment;
.source "InstallWizardFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/ulo/library/ui/InstallWizardFragment$Companion;,
        Ltech/ulo/library/ui/InstallWizardFragment$CompanionAppSetupListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInstallWizardFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InstallWizardFragment.kt\ntech/ulo/library/ui/InstallWizardFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,908:1\n1549#2:909\n1620#2,3:910\n1549#2:918\n1620#2,3:919\n766#2:922\n857#2,2:923\n1247#3:913\n1247#3,2:914\n1248#3:916\n1#4:917\n*S KotlinDebug\n*F\n+ 1 InstallWizardFragment.kt\ntech/ulo/library/ui/InstallWizardFragment\n*L\n186#1:909\n186#1:910,3\n772#1:918\n772#1:919,3\n776#1:922\n776#1:923,2\n392#1:913\n393#1:914,2\n392#1:916\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001d*\u0002!\'\u0018\u0000 i2\u00020\u0001:\u0002ijB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010.\u001a\u00020/H\u0002J\u0010\u00100\u001a\u00020/2\u0006\u00101\u001a\u00020\rH\u0002J$\u00102\u001a\u0004\u0018\u00010\r2\u0006\u00103\u001a\u00020\r2\u0006\u00104\u001a\u00020\r2\u0008\u0008\u0002\u00105\u001a\u000206H\u0002J\u0008\u00107\u001a\u00020/H\u0002J\u0010\u00108\u001a\u00020/2\u0006\u00109\u001a\u00020:H\u0002J\u0012\u0010;\u001a\u0004\u0018\u00010<2\u0006\u00109\u001a\u00020:H\u0002J\u0008\u0010=\u001a\u00020/H\u0002J\u0012\u0010>\u001a\u00020\t2\u0008\u0010?\u001a\u0004\u0018\u00010\rH\u0002J\u0012\u0010@\u001a\u00020\t2\u0008\u0010A\u001a\u0004\u0018\u00010BH\u0002J\u0010\u0010C\u001a\u00020\t2\u0006\u0010D\u001a\u00020\rH\u0002J\u0010\u0010E\u001a\u00020\u000b2\u0006\u0010F\u001a\u00020\tH\u0002J$\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020J2\u0008\u0010K\u001a\u0004\u0018\u00010L2\u0008\u0010M\u001a\u0004\u0018\u00010NH\u0016J\u0008\u0010O\u001a\u00020/H\u0016J\u0008\u0010P\u001a\u00020/H\u0016J\u0008\u0010Q\u001a\u00020/H\u0016J\u0008\u0010R\u001a\u00020/H\u0002J\u001a\u0010S\u001a\u00020/2\u0006\u0010T\u001a\u00020H2\u0008\u0010M\u001a\u0004\u0018\u00010NH\u0016J\u0010\u0010U\u001a\u00020\r2\u0006\u0010V\u001a\u00020\rH\u0002J(\u0010W\u001a\u00020/2\u0006\u0010X\u001a\u00020\r2\u0006\u0010Y\u001a\u00020\r2\u0006\u0010Z\u001a\u00020\r2\u0006\u0010[\u001a\u00020\rH\u0002J\u0018\u0010\\\u001a\u00020/2\u0006\u00101\u001a\u00020\r2\u0006\u0010Y\u001a\u00020\rH\u0002J\u0008\u0010]\u001a\u00020/H\u0002J\u0018\u0010^\u001a\u00020/2\u0006\u0010_\u001a\u00020\r2\u0006\u0010`\u001a\u00020\tH\u0002J\u0008\u0010a\u001a\u00020/H\u0002J\u0010\u0010b\u001a\u00020/2\u0006\u00109\u001a\u00020:H\u0002J\u0010\u0010c\u001a\u00020/2\u0006\u0010d\u001a\u000206H\u0002J\u0008\u0010e\u001a\u00020/H\u0002J\u0008\u0010f\u001a\u00020/H\u0002J\u0008\u0010g\u001a\u00020/H\u0002J\u0010\u0010h\u001a\u00020/2\u0006\u00101\u001a\u00020\rH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n \u0014*\u0004\u0018\u00010\u00130\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\"R\u000e\u0010#\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u00020\'X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010(R\u000e\u0010)\u001a\u00020*X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006k"
    }
    d2 = {
        "Ltech/ulo/library/ui/InstallWizardFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "_binding",
        "Ltech/ulo/library/databinding/FragInstallWizardBinding;",
        "binding",
        "getBinding",
        "()Ltech/ulo/library/databinding/FragInstallWizardBinding;",
        "connectDiscoveryActive",
        "",
        "connectListener",
        "Landroid/net/nsd/NsdManager$DiscoveryListener;",
        "connectionPort",
        "",
        "consentGiven",
        "devWasOn",
        "doInstallDispatched",
        "doneDispatched",
        "executor",
        "Ljava/util/concurrent/ExecutorService;",
        "kotlin.jvm.PlatformType",
        "httpClient",
        "Lokhttp3/OkHttpClient;",
        "installDone",
        "lastAutoConnectPort",
        "lastConnectAddr",
        "mainHandler",
        "Landroid/os/Handler;",
        "nm",
        "Landroid/app/NotificationManager;",
        "nsdManager",
        "Landroid/net/nsd/NsdManager;",
        "pairedReceiver",
        "tech/ulo/library/ui/InstallWizardFragment$pairedReceiver$1",
        "Ltech/ulo/library/ui/InstallWizardFragment$pairedReceiver$1;",
        "pairingDiscoveryActive",
        "pairingListener",
        "pairingPort",
        "settingsObserver",
        "tech/ulo/library/ui/InstallWizardFragment$settingsObserver$1",
        "Ltech/ulo/library/ui/InstallWizardFragment$settingsObserver$1;",
        "showPairStepFallback",
        "Ljava/lang/Runnable;",
        "target",
        "Ltech/ulo/library/ui/InstallTarget;",
        "wdWasOn",
        "checkDevSettings",
        "",
        "checkIfAlreadyPaired",
        "port",
        "connectWithRetry",
        "connectAddr",
        "tag",
        "maxAttempts",
        "",
        "createNotificationChannel",
        "doInstall",
        "ctx",
        "Landroid/content/Context;",
        "downloadApk",
        "Ljava/io/File;",
        "grantStorageAccessAndFinish",
        "isConnected",
        "result",
        "isLocalAddress",
        "host",
        "Ljava/net/InetAddress;",
        "isSignatureMismatch",
        "output",
        "makeNsdListener",
        "isPairing",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "onPause",
        "onResume",
        "onSettingsChanged",
        "onViewCreated",
        "view",
        "permissionLabel",
        "permission",
        "postGuidanceNotification",
        "title",
        "body",
        "settingsAction",
        "actionLabel",
        "postPairingNotification",
        "requestNotificationPermission",
        "setInstallStatus",
        "msg",
        "failed",
        "showDone",
        "showInstallSection",
        "showStep",
        "step",
        "startNsd",
        "stopKeepAliveService",
        "stopNsd",
        "updatePairingNotification",
        "Companion",
        "CompanionAppSetupListener",
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
.field public static final ARG_TARGET:Ljava/lang/String; = "target"

.field public static final Companion:Ltech/ulo/library/ui/InstallWizardFragment$Companion;

.field public static final NOTIF_CHANNEL_ID:Ljava/lang/String; = "companion_app_install"

.field public static final NOTIF_ID:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "InstallWizardFragment"

.field private static volatile sPaired:Z

.field private static volatile sServerStarted:Z


# instance fields
.field private _binding:Ltech/ulo/library/databinding/FragInstallWizardBinding;

.field private connectDiscoveryActive:Z

.field private connectListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

.field private volatile connectionPort:Ljava/lang/String;

.field private consentGiven:Z

.field private devWasOn:Z

.field private doInstallDispatched:Z

.field private doneDispatched:Z

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final httpClient:Lokhttp3/OkHttpClient;

.field private installDone:Z

.field private lastAutoConnectPort:Ljava/lang/String;

.field private volatile lastConnectAddr:Ljava/lang/String;

.field private final mainHandler:Landroid/os/Handler;

.field private nm:Landroid/app/NotificationManager;

.field private nsdManager:Landroid/net/nsd/NsdManager;

.field private final pairedReceiver:Ltech/ulo/library/ui/InstallWizardFragment$pairedReceiver$1;

.field private pairingDiscoveryActive:Z

.field private pairingListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

.field private volatile pairingPort:Ljava/lang/String;

.field private final settingsObserver:Ltech/ulo/library/ui/InstallWizardFragment$settingsObserver$1;

.field private final showPairStepFallback:Ljava/lang/Runnable;

.field private target:Ltech/ulo/library/ui/InstallTarget;

.field private wdWasOn:Z


# direct methods
.method public static synthetic $r8$lambda$3CfkQ_moAcUTLeY0sPK3Vy559Gw(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->onViewCreated$lambda$2(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5G9jl0rSTXDF4UiPH92XJbxvh-4(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->onViewCreated$lambda$3(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7ifgk1ED3uGOsqPs6NG5Jei1cUs(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->onViewCreated$lambda$6(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$96o3QpJBp567Qfoy4OZUrQEoO60(Ltech/ulo/library/ui/InstallWizardFragment;)V
    .locals 0

    invoke-static {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->showPairStepFallback$lambda$7(Ltech/ulo/library/ui/InstallWizardFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cre0FsV9zAogM4TgrszfTGjKY_k(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->onViewCreated$lambda$1(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IuYHbM5crZ1i9jmYiBz0d_efKOs(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->checkIfAlreadyPaired$lambda$11$lambda$10(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K1dw56BlWg6ihP6kLs5dpdEjMQw(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->onViewCreated$lambda$4(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LN1OPeXIZKcAf1h10xD_4p2kgOQ(Ltech/ulo/library/ui/InstallWizardFragment;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/ulo/library/ui/InstallWizardFragment;->setInstallStatus$lambda$21(Ltech/ulo/library/ui/InstallWizardFragment;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$SsLokLOLart-15kJM6Xmo_00unU(Ltech/ulo/library/ui/InstallWizardFragment;)V
    .locals 0

    invoke-static {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->onViewCreated$lambda$6$lambda$5(Ltech/ulo/library/ui/InstallWizardFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lZeZqBB9DaMvWxhBV2HZawxz2_c(Landroid/content/Context;Ltech/ulo/library/ui/InstallWizardFragment;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->doInstall$lambda$18(Landroid/content/Context;Ltech/ulo/library/ui/InstallWizardFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mceah5sqAGCdz-5WHNywE2GXzYM(Ltech/ulo/library/ui/InstallWizardFragment;)V
    .locals 0

    invoke-static {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->grantStorageAccessAndFinish$lambda$20(Ltech/ulo/library/ui/InstallWizardFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q0MHF5zTkLHNkmB8WKc29ks4_Mg(Landroid/content/Context;Ltech/ulo/library/ui/InstallWizardFragment;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/ulo/library/ui/InstallWizardFragment;->checkIfAlreadyPaired$lambda$11(Landroid/content/Context;Ltech/ulo/library/ui/InstallWizardFragment;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltech/ulo/library/ui/InstallWizardFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/ulo/library/ui/InstallWizardFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/ulo/library/ui/InstallWizardFragment;->Companion:Ltech/ulo/library/ui/InstallWizardFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 54
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 85
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->executor:Ljava/util/concurrent/ExecutorService;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->mainHandler:Landroid/os/Handler;

    .line 93
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 94
    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 95
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 96
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 97
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->httpClient:Lokhttp3/OkHttpClient;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->pairingPort:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->connectionPort:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->lastConnectAddr:Ljava/lang/String;

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ltech/ulo/library/ui/InstallWizardFragment$settingsObserver$1;

    invoke-direct {v1, p0, v0}, Ltech/ulo/library/ui/InstallWizardFragment$settingsObserver$1;-><init>(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/os/Handler;)V

    iput-object v1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->settingsObserver:Ltech/ulo/library/ui/InstallWizardFragment$settingsObserver$1;

    .line 130
    new-instance v0, Ltech/ulo/library/ui/InstallWizardFragment$pairedReceiver$1;

    invoke-direct {v0, p0}, Ltech/ulo/library/ui/InstallWizardFragment$pairedReceiver$1;-><init>(Ltech/ulo/library/ui/InstallWizardFragment;)V

    iput-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->pairedReceiver:Ltech/ulo/library/ui/InstallWizardFragment$pairedReceiver$1;

    .line 329
    new-instance v0, Ltech/ulo/library/ui/InstallWizardFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Ltech/ulo/library/ui/InstallWizardFragment$$ExternalSyntheticLambda2;-><init>(Ltech/ulo/library/ui/InstallWizardFragment;)V

    iput-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->showPairStepFallback:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$checkIfAlreadyPaired(Ltech/ulo/library/ui/InstallWizardFragment;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->checkIfAlreadyPaired(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$doInstall(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->doInstall(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getBinding(Ltech/ulo/library/ui/InstallWizardFragment;)Ltech/ulo/library/databinding/FragInstallWizardBinding;
    .locals 0

    .line 54
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getConnectionPort$p(Ltech/ulo/library/ui/InstallWizardFragment;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->connectionPort:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getDoInstallDispatched$p(Ltech/ulo/library/ui/InstallWizardFragment;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->doInstallDispatched:Z

    return p0
.end method

.method public static final synthetic access$getLastAutoConnectPort$p(Ltech/ulo/library/ui/InstallWizardFragment;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->lastAutoConnectPort:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getMainHandler$p(Ltech/ulo/library/ui/InstallWizardFragment;)Landroid/os/Handler;
    .locals 0

    .line 54
    iget-object p0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getNm$p(Ltech/ulo/library/ui/InstallWizardFragment;)Landroid/app/NotificationManager;
    .locals 0

    .line 54
    iget-object p0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->nm:Landroid/app/NotificationManager;

    return-object p0
.end method

.method public static final synthetic access$getNsdManager$p(Ltech/ulo/library/ui/InstallWizardFragment;)Landroid/net/nsd/NsdManager;
    .locals 0

    .line 54
    iget-object p0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->nsdManager:Landroid/net/nsd/NsdManager;

    return-object p0
.end method

.method public static final synthetic access$getSPaired$cp()Z
    .locals 1

    .line 54
    sget-boolean v0, Ltech/ulo/library/ui/InstallWizardFragment;->sPaired:Z

    return v0
.end method

.method public static final synthetic access$getSServerStarted$cp()Z
    .locals 1

    .line 54
    sget-boolean v0, Ltech/ulo/library/ui/InstallWizardFragment;->sServerStarted:Z

    return v0
.end method

.method public static final synthetic access$get_binding$p(Ltech/ulo/library/ui/InstallWizardFragment;)Ltech/ulo/library/databinding/FragInstallWizardBinding;
    .locals 0

    .line 54
    iget-object p0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->_binding:Ltech/ulo/library/databinding/FragInstallWizardBinding;

    return-object p0
.end method

.method public static final synthetic access$isLocalAddress(Ltech/ulo/library/ui/InstallWizardFragment;Ljava/net/InetAddress;)Z
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->isLocalAddress(Ljava/net/InetAddress;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onSettingsChanged(Ltech/ulo/library/ui/InstallWizardFragment;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->onSettingsChanged()V

    return-void
.end method

.method public static final synthetic access$setConnectionPort$p(Ltech/ulo/library/ui/InstallWizardFragment;Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->connectionPort:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setDoInstallDispatched$p(Ltech/ulo/library/ui/InstallWizardFragment;Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->doInstallDispatched:Z

    return-void
.end method

.method public static final synthetic access$setLastAutoConnectPort$p(Ltech/ulo/library/ui/InstallWizardFragment;Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->lastAutoConnectPort:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setPairingPort$p(Ltech/ulo/library/ui/InstallWizardFragment;Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->pairingPort:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setSPaired$cp(Z)V
    .locals 0

    .line 54
    sput-boolean p0, Ltech/ulo/library/ui/InstallWizardFragment;->sPaired:Z

    return-void
.end method

.method public static final synthetic access$setSServerStarted$cp(Z)V
    .locals 0

    .line 54
    sput-boolean p0, Ltech/ulo/library/ui/InstallWizardFragment;->sServerStarted:Z

    return-void
.end method

.method public static final synthetic access$showInstallSection(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->showInstallSection(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$startNsd(Ltech/ulo/library/ui/InstallWizardFragment;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->startNsd()V

    return-void
.end method

.method public static final synthetic access$updatePairingNotification(Ltech/ulo/library/ui/InstallWizardFragment;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->updatePairingNotification(Ljava/lang/String;)V

    return-void
.end method

.method private final checkDevSettings()V
    .locals 5

    .line 341
    sget-boolean v0, Ltech/ulo/library/ui/InstallWizardFragment;->sPaired:Z

    if-eqz v0, :cond_0

    return-void

    .line 343
    :cond_0
    invoke-virtual {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 344
    const-string v1, "development_settings_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 345
    const-string v4, "adb_wifi_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    .line 347
    :goto_1
    iput-boolean v1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->devWasOn:Z

    .line 348
    iput-boolean v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->wdWasOn:Z

    if-nez v1, :cond_3

    .line 352
    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->showPairStepFallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 353
    invoke-direct {p0, v3}, Ltech/ulo/library/ui/InstallWizardFragment;->showStep(I)V

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    .line 356
    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->showPairStepFallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x2

    .line 357
    invoke-direct {p0, v0}, Ltech/ulo/library/ui/InstallWizardFragment;->showStep(I)V

    goto :goto_2

    .line 360
    :cond_4
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/ulo/library/databinding/FragInstallWizardBinding;->sectionConsent:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 361
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/ulo/library/databinding/FragInstallWizardBinding;->sectionDevOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 362
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/ulo/library/databinding/FragInstallWizardBinding;->sectionWirelessDebug:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 363
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/ulo/library/databinding/FragInstallWizardBinding;->sectionPair:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 364
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/ulo/library/databinding/FragInstallWizardBinding;->sectionInstall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 365
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/ulo/library/databinding/FragInstallWizardBinding;->tvInstallStatus:Landroid/widget/TextView;

    sget v1, Ltech/ulo/library/R$string;->install_wizard_checking_paired:I

    invoke-virtual {p0, v1}, Ltech/ulo/library/ui/InstallWizardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->startNsd()V

    .line 367
    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->showPairStepFallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 368
    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->showPairStepFallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void
.end method

.method private final checkIfAlreadyPaired(Ljava/lang/String;)V
    .locals 3

    .line 506
    invoke-virtual {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 507
    iget-object v1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Ltech/ulo/library/ui/InstallWizardFragment$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0, p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment$$ExternalSyntheticLambda9;-><init>(Landroid/content/Context;Ltech/ulo/library/ui/InstallWizardFragment;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static final checkIfAlreadyPaired$lambda$11(Landroid/content/Context;Ltech/ulo/library/ui/InstallWizardFragment;Ljava/lang/String;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$port"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    sget-boolean v0, Ltech/ulo/library/ui/InstallWizardFragment;->sServerStarted:Z

    if-nez v0, :cond_1

    .line 509
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltech/userland/adbndk/AdbClient;->init(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 511
    sput-boolean v0, Ltech/ulo/library/ui/InstallWizardFragment;->sServerStarted:Z

    .line 513
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "127.0.0.1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "checkIfAlreadyPaired"

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Ltech/ulo/library/ui/InstallWizardFragment;->connectWithRetry$default(Ltech/ulo/library/ui/InstallWizardFragment;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 514
    invoke-direct {p1, p2}, Ltech/ulo/library/ui/InstallWizardFragment;->isConnected(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 515
    iget-object p2, p1, Ltech/ulo/library/ui/InstallWizardFragment;->mainHandler:Landroid/os/Handler;

    new-instance v0, Ltech/ulo/library/ui/InstallWizardFragment$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p0}, Ltech/ulo/library/ui/InstallWizardFragment$$ExternalSyntheticLambda10;-><init>(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private static final checkIfAlreadyPaired$lambda$11$lambda$10(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/content/Context;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->_binding:Ltech/ulo/library/databinding/FragInstallWizardBinding;

    if-nez v0, :cond_0

    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->nm:Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    const-string v0, "nm"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 518
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->showInstallSection(Landroid/content/Context;)V

    .line 519
    invoke-direct {p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->doInstall(Landroid/content/Context;)V

    return-void
.end method

.method private final connectWithRetry(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt v1, p3, :cond_4

    .line 684
    :goto_0
    invoke-static {p1}, Ltech/userland/adbndk/AdbClient;->connect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 685
    invoke-direct {p0, v2}, Ltech/ulo/library/ui/InstallWizardFragment;->isConnected(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    if-eqz v2, :cond_1

    .line 686
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " connect attempt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InstallWizardFragment"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-ge v1, p3, :cond_2

    const-wide/16 v3, 0x2ee

    int-to-long v5, v1

    mul-long/2addr v5, v3

    .line 687
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    :cond_2
    if-eq v1, p3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move-object v0, v2

    :cond_4
    return-object v0
.end method

.method static synthetic connectWithRetry$default(Ltech/ulo/library/ui/InstallWizardFragment;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    const/4 p5, 0x4

    and-int/2addr p4, p5

    if-eqz p4, :cond_0

    move p3, p5

    .line 681
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ltech/ulo/library/ui/InstallWizardFragment;->connectWithRetry(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final createNotificationChannel()V
    .locals 5

    .line 528
    new-instance v0, Landroid/app/NotificationChannel;

    .line 529
    sget v1, Ltech/ulo/library/R$string;->install_notif_channel_name:I

    iget-object v2, p0, Ltech/ulo/library/ui/InstallWizardFragment;->target:Ltech/ulo/library/ui/InstallTarget;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "target"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    invoke-virtual {v2}, Ltech/ulo/library/ui/InstallTarget;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ltech/ulo/library/ui/InstallWizardFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x4

    .line 528
    const-string v4, "companion_app_install"

    invoke-direct {v0, v4, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 531
    iget-object v1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->nm:Landroid/app/NotificationManager;

    if-nez v1, :cond_1

    const-string v1, "nm"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private final doInstall(Landroid/content/Context;)V
    .locals 2

    .line 697
    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->showPairStepFallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 698
    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ltech/ulo/library/ui/InstallWizardFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p0}, Ltech/ulo/library/ui/InstallWizardFragment$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Ltech/ulo/library/ui/InstallWizardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static final doInstall$lambda$18(Landroid/content/Context;Ltech/ulo/library/ui/InstallWizardFragment;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const-string v1, "$ctx"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "this$0"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 699
    sget-boolean v1, Ltech/ulo/library/ui/InstallWizardFragment;->sServerStarted:Z

    const-string v8, "getString(...)"

    const/4 v9, 0x1

    if-nez v1, :cond_1

    .line 700
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltech/userland/adbndk/AdbClient;->init(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 702
    sget v1, Ltech/ulo/library/R$string;->install_wizard_adb_init_failed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v0, v9}, Ltech/ulo/library/ui/InstallWizardFragment;->setInstallStatus(Ljava/lang/String;Z)V

    return-void

    .line 705
    :cond_0
    sput-boolean v9, Ltech/ulo/library/ui/InstallWizardFragment;->sServerStarted:Z

    .line 708
    :cond_1
    iget-object v1, v7, Ltech/ulo/library/ui/InstallWizardFragment;->connectionPort:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, v7, Ltech/ulo/library/ui/InstallWizardFragment;->connectionPort:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "127.0.0.1:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 709
    :cond_2
    const-string v1, "127.0.0.1"

    :goto_0
    move-object v10, v1

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 711
    const-string v3, "doInstall"

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object v2, v10

    invoke-static/range {v1 .. v6}, Ltech/ulo/library/ui/InstallWizardFragment;->connectWithRetry$default(Ltech/ulo/library/ui/InstallWizardFragment;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 713
    invoke-direct {v7, v1}, Ltech/ulo/library/ui/InstallWizardFragment;->isConnected(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "(no output)"

    if-nez v2, :cond_5

    .line 714
    sget v2, Ltech/ulo/library/R$string;->install_wizard_connect_failed:I

    if-eqz v1, :cond_4

    .line 715
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v1

    :cond_4
    :goto_1
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 714
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v0, v9}, Ltech/ulo/library/ui/InstallWizardFragment;->setInstallStatus(Ljava/lang/String;Z)V

    return-void

    .line 719
    :cond_5
    iput-object v10, v7, Ltech/ulo/library/ui/InstallWizardFragment;->lastConnectAddr:Ljava/lang/String;

    const/16 v1, 0x8

    .line 732
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "-s"

    aput-object v4, v1, v2

    aput-object v10, v1, v9

    const/4 v5, 0x2

    const-string v6, "shell"

    aput-object v6, v1, v5

    const-string v11, "settings"

    const/4 v12, 0x3

    aput-object v11, v1, v12

    const-string v11, "put"

    const/4 v13, 0x4

    aput-object v11, v1, v13

    const-string v11, "global"

    const/4 v14, 0x5

    aput-object v11, v1, v14

    .line 733
    const-string v11, "hidden_api_policy"

    const/4 v15, 0x6

    aput-object v11, v1, v15

    const-string v11, "1"

    const/4 v15, 0x7

    aput-object v11, v1, v15

    .line 732
    invoke-static {v1}, Ltech/userland/adbndk/AdbClient;->runCommand([Ljava/lang/String;)Ljava/lang/String;

    .line 735
    invoke-direct {v7, v0}, Ltech/ulo/library/ui/InstallWizardFragment;->downloadApk(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_6

    return-void

    .line 737
    :cond_6
    sget v11, Ltech/ulo/library/R$string;->install_wizard_installing:I

    iget-object v15, v7, Ltech/ulo/library/ui/InstallWizardFragment;->target:Ltech/ulo/library/ui/InstallTarget;

    const/16 v18, 0x0

    const-string v19, "target"

    if-nez v15, :cond_7

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v15, v18

    :cond_7
    invoke-virtual {v15}, Ltech/ulo/library/ui/InstallTarget;->getDisplayName()Ljava/lang/String;

    move-result-object v15

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v0, v11, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v11, v2}, Ltech/ulo/library/ui/InstallWizardFragment;->setInstallStatus(Ljava/lang/String;Z)V

    .line 739
    new-array v11, v14, [Ljava/lang/String;

    aput-object v4, v11, v2

    aput-object v10, v11, v9

    const-string v15, "install"

    aput-object v15, v11, v5

    const-string v20, "-r"

    aput-object v20, v11, v12

    .line 740
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v11, v13

    .line 739
    invoke-static {v11}, Ltech/userland/adbndk/AdbClient;->runCommandChecked([Ljava/lang/String;)Ltech/userland/adbndk/AdbClient$CommandResult;

    move-result-object v11

    .line 742
    invoke-virtual {v11}, Ltech/userland/adbndk/AdbClient$CommandResult;->isSuccess()Z

    move-result v21

    const-string v14, "output"

    if-nez v21, :cond_a

    iget-object v12, v11, Ltech/userland/adbndk/AdbClient$CommandResult;->output:Ljava/lang/String;

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v12}, Ltech/ulo/library/ui/InstallWizardFragment;->isSignatureMismatch(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 752
    sget v11, Ltech/ulo/library/R$string;->install_wizard_reinstalling_incompatible:I

    .line 753
    iget-object v12, v7, Ltech/ulo/library/ui/InstallWizardFragment;->target:Ltech/ulo/library/ui/InstallTarget;

    if-nez v12, :cond_8

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v12, v18

    :cond_8
    invoke-virtual {v12}, Ltech/ulo/library/ui/InstallTarget;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    .line 752
    invoke-virtual {v0, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v11, v2}, Ltech/ulo/library/ui/InstallWizardFragment;->setInstallStatus(Ljava/lang/String;Z)V

    .line 754
    new-array v11, v13, [Ljava/lang/String;

    aput-object v4, v11, v2

    aput-object v10, v11, v9

    const-string v12, "uninstall"

    aput-object v12, v11, v5

    iget-object v12, v7, Ltech/ulo/library/ui/InstallWizardFragment;->target:Ltech/ulo/library/ui/InstallTarget;

    if-nez v12, :cond_9

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v12, v18

    :cond_9
    invoke-virtual {v12}, Ltech/ulo/library/ui/InstallTarget;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/16 v21, 0x3

    aput-object v12, v11, v21

    invoke-static {v11}, Ltech/userland/adbndk/AdbClient;->runCommand([Ljava/lang/String;)Ljava/lang/String;

    const/4 v11, 0x5

    .line 755
    new-array v12, v11, [Ljava/lang/String;

    aput-object v4, v12, v2

    aput-object v10, v12, v9

    aput-object v15, v12, v5

    aput-object v20, v12, v21

    .line 756
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v13

    .line 755
    invoke-static {v12}, Ltech/userland/adbndk/AdbClient;->runCommandChecked([Ljava/lang/String;)Ltech/userland/adbndk/AdbClient$CommandResult;

    move-result-object v11

    .line 759
    :cond_a
    invoke-virtual {v11}, Ltech/userland/adbndk/AdbClient$CommandResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_c

    .line 760
    sget v1, Ltech/ulo/library/R$string;->install_wizard_install_failed:I

    .line 761
    iget-object v2, v11, Ltech/userland/adbndk/AdbClient$CommandResult;->output:Ljava/lang/String;

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_b

    goto :goto_2

    :cond_b
    move-object v3, v2

    :goto_2
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 760
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 761
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 760
    invoke-direct {v7, v0, v9}, Ltech/ulo/library/ui/InstallWizardFragment;->setInstallStatus(Ljava/lang/String;Z)V

    return-void

    .line 765
    :cond_c
    iget-object v1, v7, Ltech/ulo/library/ui/InstallWizardFragment;->target:Ltech/ulo/library/ui/InstallTarget;

    if-nez v1, :cond_d

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v1, v18

    :cond_d
    invoke-virtual {v1}, Ltech/ulo/library/ui/InstallTarget;->getPermissionsToGrant()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 766
    invoke-direct/range {p1 .. p1}, Ltech/ulo/library/ui/InstallWizardFragment;->grantStorageAccessAndFinish()V

    return-void

    .line 770
    :cond_e
    sget v1, Ltech/ulo/library/R$string;->install_wizard_granting:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v1, v2}, Ltech/ulo/library/ui/InstallWizardFragment;->setInstallStatus(Ljava/lang/String;Z)V

    .line 772
    iget-object v1, v7, Ltech/ulo/library/ui/InstallWizardFragment;->target:Ltech/ulo/library/ui/InstallTarget;

    if-nez v1, :cond_f

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v1, v18

    :cond_f
    invoke-virtual {v1}, Ltech/ulo/library/ui/InstallTarget;->getPermissionsToGrant()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 918
    new-instance v3, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v1, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 919
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 920
    check-cast v11, Ljava/lang/String;

    const/4 v12, 0x7

    .line 773
    new-array v14, v12, [Ljava/lang/String;

    aput-object v4, v14, v2

    aput-object v10, v14, v9

    aput-object v6, v14, v5

    const-string v15, "pm"

    const/16 v17, 0x3

    aput-object v15, v14, v17

    const-string v15, "grant"

    aput-object v15, v14, v13

    .line 774
    iget-object v15, v7, Ltech/ulo/library/ui/InstallWizardFragment;->target:Ltech/ulo/library/ui/InstallTarget;

    if-nez v15, :cond_10

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v15, v18

    :cond_10
    invoke-virtual {v15}, Ltech/ulo/library/ui/InstallTarget;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v20, 0x5

    aput-object v15, v14, v20

    const/4 v15, 0x6

    aput-object v11, v14, v15

    .line 773
    invoke-static {v14}, Ltech/userland/adbndk/AdbClient;->runCommandChecked([Ljava/lang/String;)Ltech/userland/adbndk/AdbClient$CommandResult;

    move-result-object v14

    invoke-static {v11, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    .line 920
    invoke-interface {v3, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 921
    :cond_11
    check-cast v3, Ljava/util/List;

    .line 776
    check-cast v3, Ljava/lang/Iterable;

    .line 922
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 923
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lkotlin/Pair;

    .line 776
    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltech/userland/adbndk/AdbClient$CommandResult;

    invoke-virtual {v4}, Ltech/userland/adbndk/AdbClient$CommandResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_12

    .line 923
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 924
    :cond_13
    check-cast v1, Ljava/util/List;

    .line 778
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 779
    invoke-direct/range {p1 .. p1}, Ltech/ulo/library/ui/InstallWizardFragment;->grantStorageAccessAndFinish()V

    goto :goto_5

    .line 781
    :cond_14
    move-object v10, v1

    check-cast v10, Ljava/lang/Iterable;

    const-string v1, "\n"

    move-object v11, v1

    check-cast v11, Ljava/lang/CharSequence;

    sget-object v1, Ltech/ulo/library/ui/InstallWizardFragment$doInstall$1$msg$1;->INSTANCE:Ltech/ulo/library/ui/InstallWizardFragment$doInstall$1$msg$1;

    move-object/from16 v16, v1

    check-cast v16, Lkotlin/jvm/functions/Function1;

    const/16 v17, 0x1e

    const/16 v18, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v18}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 784
    sget v2, Ltech/ulo/library/R$string;->install_wizard_grant_failed:I

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v0, v9}, Ltech/ulo/library/ui/InstallWizardFragment;->setInstallStatus(Ljava/lang/String;Z)V

    :goto_5
    return-void
.end method

.method private final downloadApk(Landroid/content/Context;)Ljava/io/File;
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 612
    const-string v3, "downloadApk attempt "

    const-string v4, "InstallWizardFragment"

    const/4 v6, 0x1

    .line 614
    :goto_0
    sget v0, Ltech/ulo/library/R$string;->install_wizard_downloading_pack:I

    iget-object v7, v1, Ltech/ulo/library/ui/InstallWizardFragment;->target:Ltech/ulo/library/ui/InstallTarget;

    const-string v8, "target"

    if-nez v7, :cond_0

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v7, 0x0

    :cond_0
    invoke-virtual {v7}, Ltech/ulo/library/ui/InstallTarget;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v0, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "getString(...)"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-direct {v1, v0, v10}, Ltech/ulo/library/ui/InstallWizardFragment;->setInstallStatus(Ljava/lang/String;Z)V

    .line 616
    new-instance v11, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iget-object v12, v1, Ltech/ulo/library/ui/InstallWizardFragment;->target:Ltech/ulo/library/ui/InstallTarget;

    if-nez v12, :cond_1

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v12, 0x0

    :cond_1
    invoke-virtual {v12}, Ltech/ulo/library/ui/InstallTarget;->getApkAssetName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v0, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 617
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v12, v1, Ltech/ulo/library/ui/InstallWizardFragment;->target:Ltech/ulo/library/ui/InstallTarget;

    if-nez v12, :cond_2

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v12, 0x0

    :cond_2
    invoke-virtual {v12}, Ltech/ulo/library/ui/InstallTarget;->getDownloadUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 619
    :try_start_0
    iget-object v13, v1, Ltech/ulo/library/ui/InstallWizardFragment;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v13, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v0, v13

    check-cast v0, Lokhttp3/Response;

    .line 620
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v14

    .line 621
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    if-eqz v15, :cond_8

    if-nez v14, :cond_3

    goto/16 :goto_5

    .line 625
    :cond_3
    :try_start_2
    invoke-virtual {v14}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v15

    .line 628
    invoke-virtual {v14}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/io/Closeable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    :try_start_3
    move-object v0, v14

    check-cast v0, Ljava/io/InputStream;

    .line 629
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v5, Ljava/io/Closeable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    move-object v12, v5

    check-cast v12, Ljava/io/FileOutputStream;

    const/16 v9, 0x2000

    .line 630
    new-array v9, v9, [B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v10, -0x1

    const-wide/16 v17, 0x0

    move-object/from16 v22, v4

    move/from16 v21, v10

    move-wide/from16 v19, v17

    .line 632
    :goto_1
    :try_start_5
    invoke-virtual {v0, v9}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v10, :cond_7

    const/4 v10, 0x0

    .line 634
    invoke-virtual {v12, v9, v10, v4}, Ljava/io/FileOutputStream;->write([BII)V

    move-object/from16 v23, v9

    int-to-long v9, v4

    add-long v19, v19, v9

    cmp-long v4, v15, v17

    if-lez v4, :cond_6

    const/16 v4, 0x64

    int-to-long v9, v4

    mul-long v9, v9, v19

    .line 637
    div-long/2addr v9, v15

    long-to-int v4, v9

    move/from16 v10, v21

    if-eq v4, v10, :cond_5

    .line 641
    sget v9, Ltech/ulo/library/R$string;->install_wizard_downloading_pack_progress:I

    .line 642
    iget-object v10, v1, Ltech/ulo/library/ui/InstallWizardFragment;->target:Ltech/ulo/library/ui/InstallTarget;

    if-nez v10, :cond_4

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v10, 0x0

    :cond_4
    invoke-virtual {v10}, Ltech/ulo/library/ui/InstallTarget;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v21, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v10, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 640
    invoke-virtual {v2, v9, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-direct {v1, v0, v9}, Ltech/ulo/library/ui/InstallWizardFragment;->setInstallStatus(Ljava/lang/String;Z)V

    move-object/from16 v0, v21

    move-object/from16 v9, v23

    const/4 v10, -0x1

    move/from16 v21, v4

    goto :goto_1

    :cond_5
    move-object/from16 v21, v0

    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    move/from16 v10, v21

    const/4 v9, 0x0

    move-object/from16 v21, v0

    :goto_2
    move-object/from16 v0, v21

    move-object/from16 v9, v23

    move/from16 v21, v10

    const/4 v10, -0x1

    goto :goto_1

    .line 646
    :cond_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v4, 0x0

    .line 629
    :try_start_6
    invoke-static {v5, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 647
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 628
    :try_start_7
    invoke-static {v14, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 648
    :try_start_8
    invoke-static {v13, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    return-object v11

    :catch_0
    move-exception v0

    move-object/from16 v4, v22

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v22, v4

    :goto_3
    move-object v4, v0

    .line 629
    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    move-object v9, v0

    :try_start_a
    invoke-static {v5, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object/from16 v22, v4

    :goto_4
    move-object v4, v0

    .line 628
    :try_start_b
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception v0

    move-object v5, v0

    :try_start_c
    invoke-static {v14, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :catchall_6
    move-exception v0

    move-object/from16 v22, v4

    goto :goto_7

    :cond_8
    :goto_5
    move-object/from16 v22, v4

    .line 622
    :try_start_d
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    iget-object v4, v1, Ltech/ulo/library/ui/InstallWizardFragment;->target:Ltech/ulo/library/ui/InstallTarget;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    if-nez v4, :cond_9

    :try_start_e
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    const/4 v4, 0x0

    goto :goto_6

    :catchall_7
    move-exception v0

    move-object v5, v0

    move-object/from16 v4, v22

    goto :goto_8

    :cond_9
    :goto_6
    :try_start_f
    invoke-virtual {v4}, Ltech/ulo/library/ui/InstallTarget;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v9, 0x3

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ": HTTP "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    move-object/from16 v4, v22

    :try_start_10
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    const/4 v5, 0x0

    .line 619
    :try_start_11
    invoke-static {v13, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1

    goto :goto_a

    :catchall_8
    move-exception v0

    move-object/from16 v4, v22

    goto :goto_7

    :catchall_9
    move-exception v0

    :goto_7
    move-object v5, v0

    :goto_8
    :try_start_12
    throw v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    :catchall_a
    move-exception v0

    move-object v9, v0

    :try_start_13
    invoke-static {v13, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v9
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1

    :catch_1
    move-exception v0

    .line 651
    :goto_9
    iget-object v5, v1, Ltech/ulo/library/ui/InstallWizardFragment;->target:Ltech/ulo/library/ui/InstallTarget;

    if-nez v5, :cond_a

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_a
    invoke-virtual {v5}, Ltech/ulo/library/ui/InstallTarget;->getDownloadUrl()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/3 failed for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 653
    :goto_a
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    const/4 v5, 0x3

    if-ge v6, v5, :cond_b

    const-wide/16 v9, 0x3e8

    int-to-long v11, v6

    mul-long/2addr v11, v9

    .line 654
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V

    :cond_b
    if-eq v6, v5, :cond_c

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 656
    :cond_c
    sget v0, Ltech/ulo/library/R$string;->install_wizard_apk_missing:I

    iget-object v4, v1, Ltech/ulo/library/ui/InstallWizardFragment;->target:Ltech/ulo/library/ui/InstallTarget;

    if-nez v4, :cond_d

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_d
    invoke-virtual {v4}, Ltech/ulo/library/ui/InstallTarget;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ltech/ulo/library/ui/InstallWizardFragment;->setInstallStatus(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    return-object v2
.end method

.method private final getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;
    .locals 1

    .line 81
    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->_binding:Ltech/ulo/library/databinding/FragInstallWizardBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final grantStorageAccessAndFinish()V
    .locals 4

    .line 802
    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->lastConnectAddr:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "127.0.0.1"

    :cond_0
    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x8

    .line 803
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "-s"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    const-string v2, "shell"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "appops"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string v2, "set"

    aput-object v2, v1, v0

    .line 804
    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->target:Ltech/ulo/library/ui/InstallTarget;

    if-nez v0, :cond_1

    const-string v0, "target"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Ltech/ulo/library/ui/InstallTarget;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v1, v2

    const/4 v0, 0x6

    const-string v2, "MANAGE_EXTERNAL_STORAGE"

    aput-object v2, v1, v0

    const/4 v0, 0x7

    const-string v2, "allow"

    aput-object v2, v1, v0

    .line 803
    invoke-static {v1}, Ltech/userland/adbndk/AdbClient;->runCommand([Ljava/lang/String;)Ljava/lang/String;

    .line 805
    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->mainHandler:Landroid/os/Handler;

    new-instance v1, Ltech/ulo/library/ui/InstallWizardFragment$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Ltech/ulo/library/ui/InstallWizardFragment$$ExternalSyntheticLambda11;-><init>(Ltech/ulo/library/ui/InstallWizardFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final grantStorageAccessAndFinish$lambda$20(Ltech/ulo/library/ui/InstallWizardFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->_binding:Ltech/ulo/library/databinding/FragInstallWizardBinding;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->showDone()V

    :cond_0
    return-void
.end method

.method private final isConnected(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 668
    check-cast p1, Ljava/lang/CharSequence;

    const-string v1, "connected to"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "already connected"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1, v0, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private final isLocalAddress(Ljava/net/InetAddress;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 392
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    const-string v2, "getNetworkInterfaces(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->iterator(Ljava/util/Enumeration;)Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 913
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 393
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    const-string v3, "getInetAddresses(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->iterator(Ljava/util/Enumeration;)Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v2

    .line 914
    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 393
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    move v0, p1

    :catch_0
    :cond_3
    return v0
.end method

.method private final isSignatureMismatch(Ljava/lang/String;)Z
    .locals 4

    .line 665
    check-cast p1, Ljava/lang/CharSequence;

    const-string v0, "INSTALL_FAILED_UPDATE_INCOMPATIBLE"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "signatures do not match"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private final makeNsdListener(Z)Landroid/net/nsd/NsdManager$DiscoveryListener;
    .locals 1

    .line 431
    new-instance v0, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1;

    invoke-direct {v0, p1, p0}, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1;-><init>(ZLtech/ulo/library/ui/InstallWizardFragment;)V

    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    return-object v0
.end method

.method private final onSettingsChanged()V
    .locals 7

    .line 290
    invoke-virtual {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 291
    const-string v1, "development_settings_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 292
    const-string v4, "adb_wifi_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    .line 294
    :goto_1
    const-string v4, "getString(...)"

    if-eqz v0, :cond_2

    iget-boolean v5, p0, Ltech/ulo/library/ui/InstallWizardFragment;->wdWasOn:Z

    if-nez v5, :cond_2

    .line 295
    iput-boolean v3, p0, Ltech/ulo/library/ui/InstallWizardFragment;->wdWasOn:Z

    .line 296
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->startNsd()V

    .line 297
    sget v3, Ltech/ulo/library/R$string;->install_notif_pair_waiting_body:I

    invoke-virtual {p0, v3}, Ltech/ulo/library/ui/InstallWizardFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, ""

    invoke-direct {p0, v4, v3}, Ltech/ulo/library/ui/InstallWizardFragment;->postPairingNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 298
    iget-boolean v5, p0, Ltech/ulo/library/ui/InstallWizardFragment;->devWasOn:Z

    if-nez v5, :cond_3

    .line 299
    iput-boolean v3, p0, Ltech/ulo/library/ui/InstallWizardFragment;->devWasOn:Z

    .line 301
    sget v3, Ltech/ulo/library/R$string;->install_notif_step2_title:I

    invoke-virtual {p0, v3}, Ltech/ulo/library/ui/InstallWizardFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    sget v5, Ltech/ulo/library/R$string;->install_notif_step2_body:I

    invoke-virtual {p0, v5}, Ltech/ulo/library/ui/InstallWizardFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    sget v6, Ltech/ulo/library/R$string;->install_notif_step2_action:I

    invoke-virtual {p0, v6}, Ltech/ulo/library/ui/InstallWizardFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    const-string v4, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {p0, v3, v5, v4, v6}, Ltech/ulo/library/ui/InstallWizardFragment;->postGuidanceNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    .line 307
    iget-boolean v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->wdWasOn:Z

    if-eqz v0, :cond_4

    .line 308
    iput-boolean v2, p0, Ltech/ulo/library/ui/InstallWizardFragment;->wdWasOn:Z

    const/4 v0, 0x0

    .line 309
    iput-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->lastAutoConnectPort:Ljava/lang/String;

    .line 310
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->stopNsd()V

    :cond_4
    if-nez v1, :cond_5

    .line 312
    iput-boolean v2, p0, Ltech/ulo/library/ui/InstallWizardFragment;->devWasOn:Z

    .line 314
    :cond_5
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->checkDevSettings()V

    return-void
.end method

.method private static final onViewCreated$lambda$1(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 189
    iput-boolean p1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->consentGiven:Z

    .line 190
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/ulo/library/databinding/FragInstallWizardBinding;->sectionConsent:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 191
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->checkDevSettings()V

    return-void
.end method

.method private static final onViewCreated$lambda$2(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->popBackStack()Z

    return-void
.end method

.method private static final onViewCreated$lambda$3(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    sget p1, Ltech/ulo/library/R$string;->install_notif_step1_title:I

    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    sget v1, Ltech/ulo/library/R$string;->install_notif_step1_body:I

    invoke-virtual {p0, v1}, Ltech/ulo/library/ui/InstallWizardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    sget v2, Ltech/ulo/library/R$string;->install_notif_step1_action:I

    invoke-virtual {p0, v2}, Ltech/ulo/library/ui/InstallWizardFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    const-string v0, "android.settings.DEVICE_INFO_SETTINGS"

    invoke-direct {p0, p1, v1, v0, v2}, Ltech/ulo/library/ui/InstallWizardFragment;->postGuidanceNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 229
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 228
    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final onViewCreated$lambda$4(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    sget p1, Ltech/ulo/library/R$string;->install_notif_step2_title:I

    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    sget v1, Ltech/ulo/library/R$string;->install_notif_step2_body:I

    invoke-virtual {p0, v1}, Ltech/ulo/library/ui/InstallWizardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    sget v2, Ltech/ulo/library/R$string;->install_notif_step2_action:I

    invoke-virtual {p0, v2}, Ltech/ulo/library/ui/InstallWizardFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    const-string v0, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {p0, p1, v1, v0, v2}, Ltech/ulo/library/ui/InstallWizardFragment;->postGuidanceNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 239
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 238
    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final onViewCreated$lambda$6(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    sget p1, Ltech/ulo/library/R$string;->install_notif_pair_waiting_body:I

    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    invoke-direct {p0, v0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->postPairingNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object p1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->mainHandler:Landroid/os/Handler;

    new-instance v0, Ltech/ulo/library/ui/InstallWizardFragment$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Ltech/ulo/library/ui/InstallWizardFragment$$ExternalSyntheticLambda8;-><init>(Ltech/ulo/library/ui/InstallWizardFragment;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 248
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 249
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 248
    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final onViewCreated$lambda$6$lambda$5(Ltech/ulo/library/ui/InstallWizardFragment;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->_binding:Ltech/ulo/library/databinding/FragInstallWizardBinding;

    if-nez v0, :cond_0

    return-void

    .line 246
    :cond_0
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/ulo/library/databinding/FragInstallWizardBinding;->tvPairStatus:Landroid/widget/TextView;

    sget v1, Ltech/ulo/library/R$string;->install_wizard_waiting_pairing:I

    invoke-virtual {p0, v1}, Ltech/ulo/library/ui/InstallWizardFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final permissionLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 820
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x72ca2557

    const-string v2, "getString(...)"

    if-eq v0, v1, :cond_4

    const v1, -0x393a10e3

    if-eq v0, v1, :cond_2

    const v1, 0x34ce4739

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.MANAGE_VIRTUAL_MACHINE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 821
    :cond_1
    sget p1, Ltech/ulo/library/R$string;->install_wizard_permission_manage_vm:I

    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 820
    :cond_2
    const-string v0, "android.permission.USE_CUSTOM_VIRTUAL_MACHINE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 822
    :cond_3
    sget p1, Ltech/ulo/library/R$string;->install_wizard_permission_custom_vm:I

    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 820
    :cond_4
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 823
    :cond_5
    sget p1, Ltech/ulo/library/R$string;->install_wizard_permission_notifications:I

    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private final postGuidanceNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 544
    invoke-virtual {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 545
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p3, 0x10000000

    invoke-virtual {v1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p3

    const/high16 v1, 0xc000000

    const/4 v2, 0x2

    .line 544
    invoke-static {v0, v2, p3, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 548
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "companion_app_install"

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 549
    invoke-virtual {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Ltech/ulo/library/R$drawable;->ic_app_icon_24dp:I

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 550
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 551
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 552
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v0, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p2

    check-cast p2, Landroid/app/Notification$Style;

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 553
    new-instance p2, Landroid/app/Notification$Action$Builder;

    .line 554
    invoke-virtual {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Ltech/ulo/library/R$drawable;->ic_app_icon_24dp:I

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 555
    check-cast p4, Ljava/lang/CharSequence;

    .line 553
    invoke-direct {p2, v0, p4, p3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 555
    invoke-virtual {p2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p2

    .line 553
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 556
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 557
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    iget-object p2, p0, Ltech/ulo/library/ui/InstallWizardFragment;->nm:Landroid/app/NotificationManager;

    if-nez p2, :cond_0

    const-string p2, "nm"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    const/16 p3, 0x3e9

    invoke-virtual {p2, p3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private final postPairingNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 562
    new-instance v0, Landroid/content/Intent;

    const-string v1, "tech.ulo.library.INSTALL_PAIR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 564
    const-string v1, "install_pairing_port"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "putExtra(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0xa000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 568
    new-instance v1, Landroid/app/RemoteInput$Builder;

    const-string v2, "install_pairing_code"

    invoke-direct {v1, v2}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 569
    sget v2, Ltech/ulo/library/R$string;->install_notif_pair_action:I

    invoke-virtual {p0, v2}, Ltech/ulo/library/ui/InstallWizardFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v1

    .line 570
    invoke-virtual {v1}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-string v4, "target"

    const/4 v5, 0x0

    if-nez v3, :cond_1

    sget p1, Ltech/ulo/library/R$string;->install_notif_pair_waiting_title:I

    iget-object v3, p0, Ltech/ulo/library/ui/InstallWizardFragment;->target:Ltech/ulo/library/ui/InstallTarget;

    if-nez v3, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v5

    :cond_0
    invoke-virtual {v3}, Ltech/ulo/library/ui/InstallTarget;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Ltech/ulo/library/ui/InstallWizardFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 573
    :cond_1
    sget v3, Ltech/ulo/library/R$string;->install_notif_pair_ready_title:I

    iget-object v6, p0, Ltech/ulo/library/ui/InstallWizardFragment;->target:Ltech/ulo/library/ui/InstallTarget;

    if-nez v6, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v5

    :cond_2
    invoke-virtual {v6}, Ltech/ulo/library/ui/InstallTarget;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 572
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 575
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "companion_app_install"

    invoke-direct {v3, v4, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Ltech/ulo/library/R$drawable;->ic_app_icon_24dp:I

    invoke-static {v4, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 577
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 578
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 579
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p2

    check-cast p2, Landroid/app/Notification$Style;

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 580
    new-instance p2, Landroid/app/Notification$Action$Builder;

    .line 581
    invoke-virtual {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Ltech/ulo/library/R$drawable;->ic_app_icon_24dp:I

    invoke-static {v3, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 582
    sget v4, Ltech/ulo/library/R$string;->install_notif_pair_action:I

    invoke-virtual {p0, v4}, Ltech/ulo/library/ui/InstallWizardFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 580
    invoke-direct {p2, v3, v4, v0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 583
    invoke-virtual {p2, v1}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p2

    .line 580
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 584
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 585
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 586
    iget-object p2, p0, Ltech/ulo/library/ui/InstallWizardFragment;->nm:Landroid/app/NotificationManager;

    if-nez p2, :cond_3

    const-string p2, "nm"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v5, p2

    :goto_1
    const/16 p2, 0x3e9

    invoke-virtual {v5, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private final requestNotificationPermission()V
    .locals 3

    .line 535
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 536
    invoke-virtual {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 538
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Ltech/ulo/library/ui/InstallWizardFragment;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private final setInstallStatus(Ljava/lang/String;Z)V
    .locals 2

    .line 809
    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->mainHandler:Landroid/os/Handler;

    new-instance v1, Ltech/ulo/library/ui/InstallWizardFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Ltech/ulo/library/ui/InstallWizardFragment$$ExternalSyntheticLambda7;-><init>(Ltech/ulo/library/ui/InstallWizardFragment;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final setInstallStatus$lambda$21(Ltech/ulo/library/ui/InstallWizardFragment;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->_binding:Ltech/ulo/library/databinding/FragInstallWizardBinding;

    if-nez v0, :cond_0

    return-void

    .line 811
    :cond_0
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/ulo/library/databinding/FragInstallWizardBinding;->tvInstallStatus:Landroid/widget/TextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object p0

    iget-object p0, p0, Ltech/ulo/library/databinding/FragInstallWizardBinding;->progressInstall:Landroid/widget/ProgressBar;

    if-eqz p2, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private final showDone()V
    .locals 2

    .line 832
    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->nm:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v0, "nm"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 833
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->stopKeepAliveService()V

    const/4 v0, 0x0

    .line 834
    sput-boolean v0, Ltech/ulo/library/ui/InstallWizardFragment;->sPaired:Z

    .line 835
    iput-boolean v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->doInstallDispatched:Z

    const/4 v0, 0x1

    .line 836
    iput-boolean v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->installDone:Z

    .line 843
    iget-boolean v1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->doneDispatched:Z

    if-nez v1, :cond_1

    .line 844
    iput-boolean v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->doneDispatched:Z

    .line 845
    invoke-virtual {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type tech.ulo.library.ui.InstallWizardFragment.CompanionAppSetupListener"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ltech/ulo/library/ui/InstallWizardFragment$CompanionAppSetupListener;

    invoke-interface {v0}, Ltech/ulo/library/ui/InstallWizardFragment$CompanionAppSetupListener;->companionAppSetupComplete()V

    .line 846
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->popBackStack()Z

    :cond_1
    return-void
.end method

.method private final showInstallSection(Landroid/content/Context;)V
    .locals 3

    .line 596
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/ulo/library/databinding/FragInstallWizardBinding;->sectionConsent:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 597
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/ulo/library/databinding/FragInstallWizardBinding;->sectionDevOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 598
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/ulo/library/databinding/FragInstallWizardBinding;->sectionWirelessDebug:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 599
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/ulo/library/databinding/FragInstallWizardBinding;->sectionPair:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 600
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/ulo/library/databinding/FragInstallWizardBinding;->sectionInstall:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 601
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/ulo/library/databinding/FragInstallWizardBinding;->sectionDone:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 602
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/ulo/library/databinding/FragInstallWizardBinding;->tvInstallStatus:Landroid/widget/TextView;

    sget v1, Ltech/ulo/library/R$string;->install_wizard_connecting:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final showPairStepFallback$lambda$7(Ltech/ulo/library/ui/InstallWizardFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->_binding:Ltech/ulo/library/databinding/FragInstallWizardBinding;

    if-eqz v0, :cond_0

    sget-boolean v0, Ltech/ulo/library/ui/InstallWizardFragment;->sPaired:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Ltech/ulo/library/ui/InstallWizardFragment;->showStep(I)V

    :cond_0
    return-void
.end method

.method private final showStep(I)V
    .locals 4

    .line 374
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/ulo/library/databinding/FragInstallWizardBinding;->sectionConsent:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 375
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/ulo/library/databinding/FragInstallWizardBinding;->sectionDevOptions:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 376
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/ulo/library/databinding/FragInstallWizardBinding;->sectionWirelessDebug:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 377
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/ulo/library/databinding/FragInstallWizardBinding;->sectionPair:Landroid/widget/LinearLayout;

    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 378
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/ulo/library/databinding/FragInstallWizardBinding;->sectionInstall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 379
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/ulo/library/databinding/FragInstallWizardBinding;->sectionDone:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-ne p1, v2, :cond_3

    .line 381
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->startNsd()V

    goto :goto_3

    :cond_3
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->stopNsd()V

    :goto_3
    return-void
.end method

.method private final startNsd()V
    .locals 4

    .line 401
    iget-boolean v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->pairingDiscoveryActive:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 402
    invoke-direct {p0, v1}, Ltech/ulo/library/ui/InstallWizardFragment;->makeNsdListener(Z)Landroid/net/nsd/NsdManager$DiscoveryListener;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->pairingListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 404
    :try_start_0
    iget-object v2, p0, Ltech/ulo/library/ui/InstallWizardFragment;->nsdManager:Landroid/net/nsd/NsdManager;

    if-eqz v2, :cond_0

    const-string v3, "_adb-tls-pairing._tcp"

    invoke-virtual {v2, v3, v1, v0}, Landroid/net/nsd/NsdManager;->discoverServices(Ljava/lang/String;ILandroid/net/nsd/NsdManager$DiscoveryListener;)V

    .line 406
    :cond_0
    iput-boolean v1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->pairingDiscoveryActive:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :catch_0
    :cond_1
    iget-boolean v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->connectDiscoveryActive:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 410
    invoke-direct {p0, v0}, Ltech/ulo/library/ui/InstallWizardFragment;->makeNsdListener(Z)Landroid/net/nsd/NsdManager$DiscoveryListener;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->connectListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 412
    :try_start_1
    iget-object v2, p0, Ltech/ulo/library/ui/InstallWizardFragment;->nsdManager:Landroid/net/nsd/NsdManager;

    if-eqz v2, :cond_2

    const-string v3, "_adb-tls-connect._tcp"

    invoke-virtual {v2, v3, v1, v0}, Landroid/net/nsd/NsdManager;->discoverServices(Ljava/lang/String;ILandroid/net/nsd/NsdManager$DiscoveryListener;)V

    .line 414
    :cond_2
    iput-boolean v1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->connectDiscoveryActive:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_3
    return-void
.end method

.method private final stopKeepAliveService()V
    .locals 4

    .line 828
    invoke-virtual {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Ltech/ulo/library/ui/InstallWizardKeepAliveService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method private final stopNsd()V
    .locals 3

    .line 420
    iget-boolean v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->pairingDiscoveryActive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->pairingListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    if-eqz v0, :cond_1

    .line 421
    :try_start_0
    iget-object v2, p0, Ltech/ulo/library/ui/InstallWizardFragment;->nsdManager:Landroid/net/nsd/NsdManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/net/nsd/NsdManager;->stopServiceDiscovery(Landroid/net/nsd/NsdManager$DiscoveryListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :catch_0
    :cond_0
    iput-boolean v1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->pairingDiscoveryActive:Z

    .line 424
    :cond_1
    iget-boolean v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->connectDiscoveryActive:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->connectListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    if-eqz v0, :cond_3

    .line 425
    :try_start_1
    iget-object v2, p0, Ltech/ulo/library/ui/InstallWizardFragment;->nsdManager:Landroid/net/nsd/NsdManager;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Landroid/net/nsd/NsdManager;->stopServiceDiscovery(Landroid/net/nsd/NsdManager$DiscoveryListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 426
    :catch_1
    :cond_2
    iput-boolean v1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->connectDiscoveryActive:Z

    :cond_3
    return-void
.end method

.method private final updatePairingNotification(Ljava/lang/String;)V
    .locals 2

    .line 590
    sget v0, Ltech/ulo/library/R$string;->install_notif_pair_ready_body:I

    invoke-virtual {p0, v0}, Ltech/ulo/library/ui/InstallWizardFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Ltech/ulo/library/ui/InstallWizardFragment;->postPairingNotification(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 162
    invoke-static {p1, p2, p3}, Ltech/ulo/library/databinding/FragInstallWizardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object p1

    iput-object p1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->_binding:Ltech/ulo/library/databinding/FragInstallWizardBinding;

    .line 163
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/databinding/FragInstallWizardBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 167
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 168
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->stopNsd()V

    .line 169
    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->showPairStepFallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 170
    invoke-virtual {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->settingsObserver:Ltech/ulo/library/ui/InstallWizardFragment$settingsObserver$1;

    check-cast v1, Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 171
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->stopKeepAliveService()V

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->_binding:Ltech/ulo/library/databinding/FragInstallWizardBinding;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 282
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 283
    invoke-virtual {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 284
    iget-object v1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->pairedReceiver:Ltech/ulo/library/ui/InstallWizardFragment$pairedReceiver$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 255
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 256
    invoke-virtual {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 257
    iget-object v1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->pairedReceiver:Ltech/ulo/library/ui/InstallWizardFragment$pairedReceiver$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "tech.ulo.library.INSTALL_PAIRED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 259
    iget-boolean v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->installDone:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->showDone()V

    goto :goto_0

    .line 260
    :cond_0
    sget-boolean v0, Ltech/ulo/library/ui/InstallWizardFragment;->sPaired:Z

    if-eqz v0, :cond_3

    .line 261
    invoke-virtual {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 262
    iget-object v1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->nm:Landroid/app/NotificationManager;

    if-nez v1, :cond_1

    const-string v1, "nm"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 263
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ltech/ulo/library/ui/InstallWizardFragment;->showInstallSection(Landroid/content/Context;)V

    .line 264
    iget-boolean v1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->doInstallDispatched:Z

    if-nez v1, :cond_4

    .line 265
    iget-object v1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->connectionPort:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    .line 266
    iput-boolean v1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->doInstallDispatched:Z

    .line 267
    invoke-direct {p0, v0}, Ltech/ulo/library/ui/InstallWizardFragment;->doInstall(Landroid/content/Context;)V

    goto :goto_0

    .line 270
    :cond_2
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->startNsd()V

    goto :goto_0

    .line 277
    :cond_3
    iget-boolean v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->consentGiven:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->checkDevSettings()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 178
    sget-object p1, Ltech/ulo/library/ui/InstallTarget;->Companion:Ltech/ulo/library/ui/InstallTarget$Companion;

    invoke-virtual {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "target"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltech/ulo/library/ui/InstallTarget$Companion;->fromArg(Ljava/lang/String;)Ltech/ulo/library/ui/InstallTarget;

    move-result-object p1

    iput-object p1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->target:Ltech/ulo/library/ui/InstallTarget;

    .line 180
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/ulo/library/databinding/FragInstallWizardBinding;->tvWizardTitle:Landroid/widget/TextView;

    sget p2, Ltech/ulo/library/R$string;->install_wizard_title:I

    iget-object v1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->target:Ltech/ulo/library/ui/InstallTarget;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Ltech/ulo/library/ui/InstallTarget;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Ltech/ulo/library/ui/InstallWizardFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/ulo/library/databinding/FragInstallWizardBinding;->tvWizardSubtitle:Landroid/widget/TextView;

    sget p2, Ltech/ulo/library/R$string;->install_wizard_subtitle:I

    iget-object v1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->target:Ltech/ulo/library/ui/InstallTarget;

    if-nez v1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    invoke-virtual {v1}, Ltech/ulo/library/ui/InstallTarget;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Ltech/ulo/library/ui/InstallWizardFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/ulo/library/databinding/FragInstallWizardBinding;->tvStep4Title:Landroid/widget/TextView;

    sget p2, Ltech/ulo/library/R$string;->install_wizard_step4_title:I

    iget-object v1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->target:Ltech/ulo/library/ui/InstallTarget;

    if-nez v1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_2
    invoke-virtual {v1}, Ltech/ulo/library/ui/InstallTarget;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Ltech/ulo/library/ui/InstallWizardFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/ulo/library/databinding/FragInstallWizardBinding;->tvConsentTitle:Landroid/widget/TextView;

    sget p2, Ltech/ulo/library/R$string;->install_wizard_consent_title:I

    iget-object v1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->target:Ltech/ulo/library/ui/InstallTarget;

    if-nez v1, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_3
    invoke-virtual {v1}, Ltech/ulo/library/ui/InstallTarget;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Ltech/ulo/library/ui/InstallWizardFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/ulo/library/databinding/FragInstallWizardBinding;->tvConsentBody:Landroid/widget/TextView;

    sget p2, Ltech/ulo/library/R$string;->install_wizard_consent_body:I

    iget-object v1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->target:Ltech/ulo/library/ui/InstallTarget;

    if-nez v1, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_4
    invoke-virtual {v1}, Ltech/ulo/library/ui/InstallTarget;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 186
    iget-object v3, p0, Ltech/ulo/library/ui/InstallWizardFragment;->target:Ltech/ulo/library/ui/InstallTarget;

    if-nez v3, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v2, v3

    :goto_0
    invoke-virtual {v2}, Ltech/ulo/library/ui/InstallTarget;->getPermissionsToGrant()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 909
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 910
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 911
    check-cast v3, Ljava/lang/String;

    .line 186
    invoke-direct {p0, v3}, Ltech/ulo/library/ui/InstallWizardFragment;->permissionLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 911
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 912
    :cond_6
    check-cast v2, Ljava/util/List;

    .line 909
    check-cast v2, Ljava/util/Collection;

    .line 187
    sget v0, Ltech/ulo/library/R$string;->install_wizard_permission_storage:I

    invoke-virtual {p0, v0}, Ltech/ulo/library/ui/InstallWizardFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getString(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    .line 187
    const-string v0, ", "

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 185
    invoke-virtual {p0, p2, v0}, Ltech/ulo/library/ui/InstallWizardFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/ulo/library/databinding/FragInstallWizardBinding;->btnConsentContinue:Landroid/widget/Button;

    new-instance p2, Ltech/ulo/library/ui/InstallWizardFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Ltech/ulo/library/ui/InstallWizardFragment$$ExternalSyntheticLambda0;-><init>(Ltech/ulo/library/ui/InstallWizardFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/ulo/library/databinding/FragInstallWizardBinding;->btnConsentCancel:Landroid/widget/Button;

    new-instance p2, Ltech/ulo/library/ui/InstallWizardFragment$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Ltech/ulo/library/ui/InstallWizardFragment$$ExternalSyntheticLambda3;-><init>(Ltech/ulo/library/ui/InstallWizardFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    invoke-virtual {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/app/NotificationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "getSystemService(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->nm:Landroid/app/NotificationManager;

    .line 204
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->createNotificationChannel()V

    .line 205
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->requestNotificationPermission()V

    .line 210
    invoke-virtual {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    .line 211
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Ltech/ulo/library/ui/InstallWizardKeepAliveService;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 213
    invoke-virtual {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/net/nsd/NsdManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/nsd/NsdManager;

    iput-object p1, p0, Ltech/ulo/library/ui/InstallWizardFragment;->nsdManager:Landroid/net/nsd/NsdManager;

    .line 215
    invoke-virtual {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 216
    const-string p2, "development_settings_enabled"

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 217
    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->settingsObserver:Ltech/ulo/library/ui/InstallWizardFragment$settingsObserver$1;

    check-cast v0, Landroid/database/ContentObserver;

    const/4 v1, 0x0

    .line 215
    invoke-virtual {p1, p2, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 218
    invoke-virtual {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 219
    const-string p2, "adb_wifi_enabled"

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 220
    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment;->settingsObserver:Ltech/ulo/library/ui/InstallWizardFragment$settingsObserver$1;

    check-cast v0, Landroid/database/ContentObserver;

    .line 218
    invoke-virtual {p1, p2, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 222
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/ulo/library/databinding/FragInstallWizardBinding;->btnAboutPhone:Landroid/widget/Button;

    new-instance p2, Ltech/ulo/library/ui/InstallWizardFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Ltech/ulo/library/ui/InstallWizardFragment$$ExternalSyntheticLambda4;-><init>(Ltech/ulo/library/ui/InstallWizardFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/ulo/library/databinding/FragInstallWizardBinding;->btnOpenDevOptions:Landroid/widget/Button;

    new-instance p2, Ltech/ulo/library/ui/InstallWizardFragment$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Ltech/ulo/library/ui/InstallWizardFragment$$ExternalSyntheticLambda5;-><init>(Ltech/ulo/library/ui/InstallWizardFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->getBinding()Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/ulo/library/databinding/FragInstallWizardBinding;->btnOpenWd:Landroid/widget/Button;

    new-instance p2, Ltech/ulo/library/ui/InstallWizardFragment$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Ltech/ulo/library/ui/InstallWizardFragment$$ExternalSyntheticLambda6;-><init>(Ltech/ulo/library/ui/InstallWizardFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
