.class public final Ltech/ulo/library/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.kt"

# interfaces
.implements Ltech/ulo/library/ui/SessionListFragment$SessionSelection;
.implements Ltech/ulo/library/ui/AppsListFragment$AppSelection;
.implements Ltech/ulo/library/ui/FilesystemListFragment$FilesystemListProgress;
.implements Ltech/ulo/library/ui/InstallWizardFragment$CompanionAppSetupListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ntech/ulo/library/MainActivity\n+ 2 Extensions.kt\ntech/ulo/library/utils/ExtensionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1687:1\n49#2:1688\n49#2:1689\n49#2:1690\n49#2:1691\n49#2:1692\n49#2:1693\n49#2:1694\n49#2:1695\n49#2:1696\n49#2:1697\n49#2:1698\n49#2:1699\n49#2:1700\n49#2:1701\n49#2:1702\n49#2:1703\n51#2:1704\n51#2:1710\n51#2:1711\n51#2:1712\n51#2:1713\n52#2:1717\n52#2:1718\n52#2:1719\n52#2:1720\n52#2:1721\n52#2:1722\n52#2:1723\n52#2:1724\n52#2:1725\n52#2:1726\n52#2:1727\n52#2:1728\n52#2:1729\n52#2:1730\n52#2:1731\n52#2:1732\n52#2:1733\n1#3:1705\n1549#4:1706\n1620#4,3:1707\n766#4:1714\n857#4,2:1715\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ntech/ulo/library/MainActivity\n*L\n202#1:1688\n229#1:1689\n232#1:1690\n249#1:1691\n278#1:1692\n303#1:1693\n330#1:1694\n360#1:1695\n366#1:1696\n371#1:1697\n372#1:1698\n394#1:1699\n406#1:1700\n407#1:1701\n416#1:1702\n422#1:1703\n1255#1:1704\n1296#1:1710\n1297#1:1711\n1300#1:1712\n1303#1:1713\n1347#1:1717\n1348#1:1718\n1349#1:1719\n1405#1:1720\n1406#1:1721\n1407#1:1722\n1408#1:1723\n1409#1:1724\n1508#1:1725\n1509#1:1726\n1510#1:1727\n1511#1:1728\n1512#1:1729\n1513#1:1730\n1514#1:1731\n1515#1:1732\n1516#1:1733\n1262#1:1706\n1262#1:1707,3\n1326#1:1714\n1326#1:1715,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00aa\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0014*\u0002%@\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010U\u001a\u00020<2\u0006\u0010V\u001a\u00020W2\u0006\u0010X\u001a\u00020\nH\u0016J\u0008\u0010X\u001a\u00020<H\u0002J\u0010\u0010Y\u001a\u00020<2\u0006\u0010Z\u001a\u00020[H\u0002J\u0008\u0010\\\u001a\u00020<H\u0016J\u0010\u0010]\u001a\u00020<2\u0006\u0010^\u001a\u00020_H\u0002J\u0008\u0010`\u001a\u00020<H\u0002J\u0010\u0010a\u001a\u00020<2\u0006\u0010b\u001a\u00020*H\u0002J\u0008\u0010c\u001a\u00020<H\u0002J\u0016\u0010d\u001a\u00020<2\u000c\u0010e\u001a\u0008\u0012\u0004\u0012\u00020g0fH\u0002J\u0008\u0010h\u001a\u00020<H\u0002J\u0010\u0010i\u001a\u00020<2\u0006\u0010^\u001a\u00020_H\u0002J\u0008\u0010j\u001a\u00020<H\u0002J\u0008\u0010k\u001a\u00020<H\u0002J\u0010\u0010l\u001a\u00020<2\u0006\u0010^\u001a\u00020_H\u0002J\u0010\u0010m\u001a\u00020<2\u0006\u0010n\u001a\u00020oH\u0002J\n\u0010p\u001a\u0004\u0018\u00010\u0019H\u0002J\u0008\u0010q\u001a\u00020<H\u0002J\u000e\u0010r\u001a\u00020\u00192\u0006\u0010s\u001a\u00020*J\u0010\u0010t\u001a\u00020<2\u0006\u0010^\u001a\u00020_H\u0002J\u0008\u0010u\u001a\u00020<H\u0002J\u0008\u0010v\u001a\u00020<H\u0002J\u0008\u0010w\u001a\u00020<H\u0002J\u0010\u0010x\u001a\u00020<2\u0006\u0010y\u001a\u00020zH\u0002J\u0010\u0010{\u001a\u00020<2\u0006\u0010y\u001a\u00020|H\u0002J\u0008\u0010}\u001a\u00020<H\u0002J\u0008\u0010~\u001a\u00020<H\u0002J\u0011\u0010\u007f\u001a\u00020<2\u0007\u0010\u0080\u0001\u001a\u00020DH\u0002J\u0012\u0010\u0081\u0001\u001a\u00020<2\u0007\u0010y\u001a\u00030\u0082\u0001H\u0002J\t\u0010\u0083\u0001\u001a\u00020<H\u0002J&\u0010\u0084\u0001\u001a\u00020<2\u0007\u0010\u0085\u0001\u001a\u00020*2\u0007\u0010\u0086\u0001\u001a\u00020*2\t\u0010\u0087\u0001\u001a\u0004\u0018\u00010[H\u0014J\u0015\u0010\u0088\u0001\u001a\u00020<2\n\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u008a\u0001H\u0014J\u0013\u0010\u008b\u0001\u001a\u00020\n2\u0008\u0010\u008c\u0001\u001a\u00030\u008d\u0001H\u0016J\t\u0010\u008e\u0001\u001a\u00020<H\u0014J\u0013\u0010\u008f\u0001\u001a\u00020<2\u0008\u0010Z\u001a\u0004\u0018\u00010[H\u0014J\u0013\u0010\u0090\u0001\u001a\u00020\n2\u0008\u0010\u0091\u0001\u001a\u00030\u0092\u0001H\u0016J4\u0010\u0093\u0001\u001a\u00020<2\u0007\u0010\u0085\u0001\u001a\u00020*2\u0010\u0010\u0094\u0001\u001a\u000b\u0012\u0006\u0008\u0001\u0012\u00020\u00190\u0095\u00012\u0008\u0010\u0096\u0001\u001a\u00030\u0097\u0001H\u0016\u00a2\u0006\u0003\u0010\u0098\u0001J\t\u0010\u0099\u0001\u001a\u00020<H\u0014J\t\u0010\u009a\u0001\u001a\u00020<H\u0014J\t\u0010\u009b\u0001\u001a\u00020<H\u0014J\t\u0010\u009c\u0001\u001a\u00020\nH\u0016J\u0013\u0010\u009d\u0001\u001a\u00020<2\u0008\u0010\u009e\u0001\u001a\u00030\u009f\u0001H\u0002J\u0011\u0010\u00a0\u0001\u001a\u00020<2\u0006\u0010^\u001a\u00020_H\u0002J\t\u0010\u00a1\u0001\u001a\u00020<H\u0002J\u0011\u0010\u00a2\u0001\u001a\u00020<2\u0006\u0010^\u001a\u00020_H\u0002J\t\u0010\u00a3\u0001\u001a\u00020<H\u0002J\t\u0010\u00a4\u0001\u001a\u00020<H\u0002J\u0011\u0010\u00a5\u0001\u001a\u00020<2\u0006\u0010^\u001a\u00020_H\u0016J\t\u0010\u00a6\u0001\u001a\u00020<H\u0002J\t\u0010\u00a7\u0001\u001a\u00020<H\u0002J\u001b\u0010\u00a8\u0001\u001a\u00020<2\u0007\u0010\u00a9\u0001\u001a\u00020\u00192\u0007\u0010\u00aa\u0001\u001a\u00020\u0019H\u0002J\u0011\u0010\u00ab\u0001\u001a\u00020<2\u0008\u0010\u00ac\u0001\u001a\u00030\u00ad\u0001J\u0012\u0010\u00ae\u0001\u001a\u00020<2\u0007\u0010\u00af\u0001\u001a\u00020*H\u0002J\u0012\u0010\u00ae\u0001\u001a\u00020<2\u0007\u0010\u00b0\u0001\u001a\u00020\u0019H\u0002J\u0011\u0010\u00b1\u0001\u001a\u00020<2\u0006\u0010^\u001a\u00020_H\u0002J\t\u0010\u00b2\u0001\u001a\u00020<H\u0016J\t\u0010\u00b3\u0001\u001a\u00020<H\u0016J\u0012\u0010\u00b4\u0001\u001a\u00020<2\u0007\u0010\u00b5\u0001\u001a\u00020\u0019H\u0016J\u001b\u0010\u00b6\u0001\u001a\u00020<2\u0007\u0010\u00b7\u0001\u001a\u00020\u00192\u0007\u0010\u00b5\u0001\u001a\u00020\u0019H\u0002J\u0007\u0010\u00b8\u0001\u001a\u00020<J\u0007\u0010\u00b9\u0001\u001a\u00020<J\u0010\u0010\u00ba\u0001\u001a\u00020<2\u0007\u0010\u00bb\u0001\u001a\u00020\nJ$\u0010\u00bc\u0001\u001a\u00020\n2\u0007\u0010\u00bd\u0001\u001a\u00020\u00192\u0007\u0010\u00be\u0001\u001a\u00020\u00192\u0007\u0010\u00bf\u0001\u001a\u00020\u0019H\u0002J\t\u0010\u00c0\u0001\u001a\u00020\nH\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\u000c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0010\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0018\u001a\u00020\u0019X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u001b\u0010\u001c\u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u0010\u001a\u0004\u0008\u001e\u0010\u001fR\u000e\u0010!\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u00020%X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010&R\u000e\u0010\'\u001a\u00020(X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020*X\u0082D\u00a2\u0006\u0002\n\u0000R\u001b\u0010+\u001a\u00020,8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008/\u0010\u0010\u001a\u0004\u0008-\u0010.R\u001b\u00100\u001a\u0002018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00084\u0010\u0010\u001a\u0004\u00082\u00103R\u001b\u00105\u001a\u0002068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00089\u0010\u0010\u001a\u0004\u00087\u00108R\u0014\u0010:\u001a\u0008\u0012\u0004\u0012\u00020<0;X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010=\u001a\u0008\u0012\u0004\u0012\u00020<0;X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010?\u001a\u00020@X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010AR\u0014\u0010B\u001a\u0008\u0012\u0004\u0012\u00020D0CX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010E\u001a\u00020F8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008I\u0010\u0010\u001a\u0004\u0008G\u0010HR\u001b\u0010J\u001a\u00020K8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008N\u0010\u0010\u001a\u0004\u0008L\u0010MR\u001b\u0010O\u001a\u00020P8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008S\u0010\u0010\u001a\u0004\u0008Q\u0010RR\u000e\u0010T\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00c1\u0001"
    }
    d2 = {
        "Ltech/ulo/library/MainActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Ltech/ulo/library/ui/SessionListFragment$SessionSelection;",
        "Ltech/ulo/library/ui/AppsListFragment$AppSelection;",
        "Ltech/ulo/library/ui/FilesystemListFragment$FilesystemListProgress;",
        "Ltech/ulo/library/ui/InstallWizardFragment$CompanionAppSetupListener;",
        "()V",
        "VM_MEMORY_FLOOR_MB",
        "",
        "autoStarted",
        "",
        "billingManager",
        "Ltech/ulo/library/utils/BillingManager;",
        "getBillingManager",
        "()Ltech/ulo/library/utils/BillingManager;",
        "billingManager$delegate",
        "Lkotlin/Lazy;",
        "binding",
        "Ltech/ulo/library/databinding/ActivityMainBinding;",
        "busyboxExecutor",
        "Ltech/ulo/library/utils/BusyboxExecutor;",
        "getBusyboxExecutor",
        "()Ltech/ulo/library/utils/BusyboxExecutor;",
        "busyboxExecutor$delegate",
        "className",
        "",
        "getClassName",
        "()Ljava/lang/String;",
        "contributionPrompter",
        "Ltech/ulo/library/utils/ContributionPrompter;",
        "getContributionPrompter",
        "()Ltech/ulo/library/utils/ContributionPrompter;",
        "contributionPrompter$delegate",
        "currentFragmentDisplaysProgressDialog",
        "customDialog",
        "Landroid/app/AlertDialog;",
        "downloadBroadcastReceiver",
        "tech/ulo/library/MainActivity$downloadBroadcastReceiver$1",
        "Ltech/ulo/library/MainActivity$downloadBroadcastReceiver$1;",
        "logger",
        "Ltech/ulo/library/utils/SentryLogger;",
        "micPermissionRequestCode",
        "",
        "navController",
        "Landroidx/navigation/NavController;",
        "getNavController",
        "()Landroidx/navigation/NavController;",
        "navController$delegate",
        "notificationManager",
        "Ltech/ulo/library/utils/NotificationConstructor;",
        "getNotificationManager",
        "()Ltech/ulo/library/utils/NotificationConstructor;",
        "notificationManager$delegate",
        "optInPrompter",
        "Ltech/ulo/library/utils/CollectionOptInPrompter;",
        "getOptInPrompter",
        "()Ltech/ulo/library/utils/CollectionOptInPrompter;",
        "optInPrompter$delegate",
        "proFeatureDeclined",
        "Lkotlin/Function0;",
        "",
        "proFeaturePaid",
        "progressBarIsVisible",
        "serverServiceBroadcastReceiver",
        "tech/ulo/library/MainActivity$serverServiceBroadcastReceiver$1",
        "Ltech/ulo/library/MainActivity$serverServiceBroadcastReceiver$1;",
        "stateObserver",
        "Landroidx/lifecycle/Observer;",
        "Ltech/ulo/library/viewmodel/State;",
        "ulaFiles",
        "Ltech/ulo/library/utils/UlaFiles;",
        "getUlaFiles",
        "()Ltech/ulo/library/utils/UlaFiles;",
        "ulaFiles$delegate",
        "userFeedbackPrompter",
        "Ltech/ulo/library/utils/UserFeedbackPrompter;",
        "getUserFeedbackPrompter",
        "()Ltech/ulo/library/utils/UserFeedbackPrompter;",
        "userFeedbackPrompter$delegate",
        "viewModel",
        "Ltech/ulo/library/viewmodel/MainActivityViewModel;",
        "getViewModel",
        "()Ltech/ulo/library/viewmodel/MainActivityViewModel;",
        "viewModel$delegate",
        "waitingForExtractionStatus",
        "appHasBeenSelected",
        "app",
        "Ltech/ulo/library/model/entities/App;",
        "autoStart",
        "checkForAppIntent",
        "intent",
        "Landroid/content/Intent;",
        "companionAppSetupComplete",
        "displayAvfDiskCorruptedDialog",
        "session",
        "Ltech/ulo/library/model/entities/Session;",
        "displayClearSupportFilesDialog",
        "displayCompanionAppUpdateDialog",
        "wizardDestination",
        "displayLowStorageDialog",
        "displayNetworkChoicesDialog",
        "downloadsToContinue",
        "",
        "Ltech/ulo/library/model/repositories/DownloadMetadata;",
        "displayProgressBar",
        "displayQemuDiskCorruptedDialog",
        "getCameraInfo",
        "getCredentials",
        "getDisplayPreferences",
        "getFlavor",
        "file",
        "Ljava/io/File;",
        "getMacAddr",
        "getNetInfo",
        "getRandPassword",
        "n",
        "getServiceTypePreference",
        "getUserContribution",
        "getUserFeedback",
        "handleClearSupportFiles",
        "handleIllegalState",
        "state",
        "Ltech/ulo/library/viewmodel/IllegalState;",
        "handleProgressBarUpdateState",
        "Ltech/ulo/library/viewmodel/ProgressBarUpdateState;",
        "handleSessionHasBeenActivated",
        "handleSessionIsReady",
        "handleStateUpdate",
        "newState",
        "handleUserInputState",
        "Ltech/ulo/library/viewmodel/UserInputRequiredState;",
        "killProgressBar",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateOptionsMenu",
        "menu",
        "Landroid/view/Menu;",
        "onDestroy",
        "onNewIntent",
        "onOptionsItemSelected",
        "item",
        "Landroid/view/MenuItem;",
        "onRequestPermissionsResult",
        "permissions",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "onResume",
        "onStart",
        "onStop",
        "onSupportNavigateUp",
        "prepareSession",
        "filesystem",
        "Ltech/ulo/library/model/entities/Filesystem;",
        "prepareSessionForStart",
        "requestMicPermissions",
        "restartRunningSession",
        "sendWikiIntent",
        "sendXsdlIntentToSetDisplayNumberAndExpectResult",
        "sessionHasBeenSelected",
        "setNavStartDestination",
        "setProgressDialogNavListeners",
        "showDialog",
        "dialogType",
        "message",
        "showProFeaturesRequiredDialog",
        "activity",
        "Landroid/app/Activity;",
        "showToast",
        "resId",
        "content",
        "startSession",
        "stopProgressFromFilesystemList",
        "updateFilesystemDeleteProgress",
        "updateFilesystemExportProgress",
        "details",
        "updateProgressBar",
        "step",
        "userHasCompletedContribution",
        "userHasCompletedFeedback",
        "userHasCompletedPayment",
        "paid",
        "validateCredentials",
        "username",
        "password",
        "vncPassword",
        "wifiIsEnabled",
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
.field private final VM_MEMORY_FLOOR_MB:J

.field private autoStarted:Z

.field private final billingManager$delegate:Lkotlin/Lazy;

.field private binding:Ltech/ulo/library/databinding/ActivityMainBinding;

.field private final busyboxExecutor$delegate:Lkotlin/Lazy;

.field private final className:Ljava/lang/String;

.field private final contributionPrompter$delegate:Lkotlin/Lazy;

.field private currentFragmentDisplaysProgressDialog:Z

.field private customDialog:Landroid/app/AlertDialog;

.field private final downloadBroadcastReceiver:Ltech/ulo/library/MainActivity$downloadBroadcastReceiver$1;

.field private final logger:Ltech/ulo/library/utils/SentryLogger;

.field private final micPermissionRequestCode:I

.field private final navController$delegate:Lkotlin/Lazy;

.field private final notificationManager$delegate:Lkotlin/Lazy;

.field private final optInPrompter$delegate:Lkotlin/Lazy;

.field private proFeatureDeclined:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private proFeaturePaid:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private progressBarIsVisible:Z

.field private final serverServiceBroadcastReceiver:Ltech/ulo/library/MainActivity$serverServiceBroadcastReceiver$1;

.field private final stateObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ltech/ulo/library/viewmodel/State;",
            ">;"
        }
    .end annotation
.end field

.field private final ulaFiles$delegate:Lkotlin/Lazy;

.field private final userFeedbackPrompter$delegate:Lkotlin/Lazy;

.field private final viewModel$delegate:Lkotlin/Lazy;

.field private waitingForExtractionStatus:Z


# direct methods
.method public static synthetic $r8$lambda$0I3IcSRLY10ufdGsEXqThDurQrA(Landroid/app/AlertDialog;Ljava/util/ArrayList;Ltech/ulo/library/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ltech/ulo/library/MainActivity;->getFlavor$lambda$39$lambda$38(Landroid/app/AlertDialog;Ljava/util/ArrayList;Ltech/ulo/library/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4OuM-EJ_WzhBW6YQ5KkKgtvU7tg(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/MainActivity;->getUserFeedback$lambda$30(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6wEzfubdjigVOWKxVlXzFb12__Q(Ltech/ulo/library/MainActivity;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ltech/ulo/library/MainActivity;->displayNetworkChoicesDialog$lambda$26(Ltech/ulo/library/MainActivity;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$78ufJ-TC_C101gNr0PZcuySbFGE(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/MainActivity;->showProFeaturesRequiredDialog$lambda$34(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7otkm6fk6SZD2dwUmMAwqGiWEE4(Ltech/ulo/library/MainActivity;Ltech/ulo/library/model/entities/Session;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ltech/ulo/library/MainActivity;->displayQemuDiskCorruptedDialog$lambda$20(Ltech/ulo/library/MainActivity;Ltech/ulo/library/model/entities/Session;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$B1ViPlVLTMlWETiGdJO8PPx84us(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/ulo/library/MainActivity;->showProFeaturesRequiredDialog$lambda$31(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$BZ4tcUwziSYeFr2R7fh12NejKCg(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/MainActivity;->displayNetworkChoicesDialog$lambda$29(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EsciYLCkMA7d_n_38K_ze7Tlgos(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/MainActivity;->displayClearSupportFilesDialog$lambda$25(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$HK-Bqco66qXBXPANc8zb7vqArEc(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/ulo/library/MainActivity;->displayNetworkChoicesDialog$lambda$28(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$HrWouCosAgiS27FHol1_zi4jvts(Ltech/ulo/library/MainActivity;)V
    .locals 0

    invoke-static {p0}, Ltech/ulo/library/MainActivity;->handleSessionHasBeenActivated$lambda$15(Ltech/ulo/library/MainActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IoqAcQ9lD0aTz-B0Nq89_kjrJzA(Ltech/ulo/library/MainActivity;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ltech/ulo/library/MainActivity;->displayCompanionAppUpdateDialog$lambda$22(Ltech/ulo/library/MainActivity;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$M-Boa8zGeR6XMX3uwH_X7PjnODw(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/ulo/library/MainActivity;->showProFeaturesRequiredDialog$lambda$32(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q1OzRkRijZEkFJUcbX-nWvKtljY(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/ulo/library/MainActivity;->displayCompanionAppUpdateDialog$lambda$23(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$R0lQoLGLjakH7zoJISy0TGj6QSs(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/ulo/library/MainActivity;->displayQemuDiskCorruptedDialog$lambda$21(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$T_N8TYien-47-v9OOJ6iP6iXqjg(Landroid/app/AlertDialog;Ltech/ulo/library/MainActivity;Ltech/ulo/library/model/entities/Session;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ltech/ulo/library/MainActivity;->getServiceTypePreference$lambda$51(Landroid/app/AlertDialog;Ltech/ulo/library/MainActivity;Ltech/ulo/library/model/entities/Session;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tm6w-9AZGU24UBhjUZcikJr-5ek(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/MainActivity;->getFlavor$lambda$40(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XQRLNhzDKIqx9KpR-EoCjeKzFIo(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/widget/TextView;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, Ltech/ulo/library/MainActivity;->getDisplayPreferences$lambda$46$lambda$44(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/widget/TextView;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZoPyZ_I1n8AXAS86F8AiWh_1qek(Ltech/ulo/library/MainActivity;Ltech/ulo/library/viewmodel/State;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/MainActivity;->stateObserver$lambda$1(Ltech/ulo/library/MainActivity;Ltech/ulo/library/viewmodel/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aUjcnIwepHkiRxaZF-PVmXrj-8U(Ltech/ulo/library/MainActivity;Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ltech/ulo/library/MainActivity;->getServiceTypePreference$lambda$51$lambda$49(Ltech/ulo/library/MainActivity;Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$fbpFK0MYUpIro3agHlHJrzlXKIg(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/MainActivity;->handleIllegalState$lambda$16(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gBzP1QjZDpXxIrsBJTtXZz06YWs(Ltech/ulo/library/MainActivity;Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ltech/ulo/library/MainActivity;->setProgressDialogNavListeners$lambda$4(Ltech/ulo/library/MainActivity;Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gEPK1M55Sm0OdOPDX19r3Jb0i1w(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/MainActivity;->getDisplayPreferences$lambda$47(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gNKlWjKQyp_FhSCVZyTnZyi3Ydw(Ltech/ulo/library/MainActivity;)V
    .locals 0

    invoke-static {p0}, Ltech/ulo/library/MainActivity;->showDialog$lambda$17(Ltech/ulo/library/MainActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h-4PR7HE7tIbyOERywKHoBDiTpQ(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/MainActivity;->getCredentials$lambda$43(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hvvJTzxuej4rDQpnIYMmJh9OSEs(Ltech/ulo/library/MainActivity;Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ltech/ulo/library/MainActivity;->getServiceTypePreference$lambda$51$lambda$48(Ltech/ulo/library/MainActivity;Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ijJvVx5dcBWBn-3e6Jcjwwzy65k(Landroid/app/AlertDialog;Ljava/util/ArrayList;Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ltech/ulo/library/MainActivity;->getFlavor$lambda$39(Landroid/app/AlertDialog;Ljava/util/ArrayList;Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lvse1oP9EkUR64Z_r_HBarM5TVY(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/ulo/library/MainActivity;->displayNetworkChoicesDialog$lambda$27(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mCl1GxZ7erEPD-HtN7ZHnVxGUoM(Ltech/ulo/library/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/MainActivity;->getCredentials$lambda$42$lambda$41(Ltech/ulo/library/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mPa5xvOYZsorgLGqFQ-eDqRYOVk(Landroid/app/AlertDialog;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/widget/RadioGroup;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Ltech/ulo/library/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p8}, Ltech/ulo/library/MainActivity;->getDisplayPreferences$lambda$46$lambda$45(Landroid/app/AlertDialog;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/widget/RadioGroup;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Ltech/ulo/library/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mTtqyd_CUPXsfUAAZawzi-45mWw(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/ulo/library/MainActivity;->showProFeaturesRequiredDialog$lambda$33(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sqlyh8w0gr14HyvvObUDeaok4ng(Landroid/app/AlertDialog;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/SeekBar;JLandroid/widget/CheckBox;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Ltech/ulo/library/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p12}, Ltech/ulo/library/MainActivity;->getServiceTypePreference$lambda$51$lambda$50(Landroid/app/AlertDialog;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/SeekBar;JLandroid/widget/CheckBox;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Ltech/ulo/library/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t3Gfj5xUtgBsU3J5otW9U0e26u8(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/MainActivity;->getServiceTypePreference$lambda$52(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xgzBgoRSc8wNDQnWS_VSozNy3rY(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/MainActivity;->getCredentials$lambda$42(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yEy2uJ3AznD_6r4zKp31S2ALn9Q(Landroid/app/AlertDialog;Ltech/ulo/library/model/entities/Session;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Ltech/ulo/library/MainActivity;->getDisplayPreferences$lambda$46(Landroid/app/AlertDialog;Ltech/ulo/library/model/entities/Session;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yQEhlnGOfrxCn-JnZRFlOfJdLtY(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/ulo/library/MainActivity;->displayAvfDiskCorruptedDialog$lambda$19(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yhedJlvUxVCYaIuMQu9BdGAOmOo(Ltech/ulo/library/MainActivity;Ltech/ulo/library/model/entities/Session;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ltech/ulo/library/MainActivity;->displayAvfDiskCorruptedDialog$lambda$18(Ltech/ulo/library/MainActivity;Ltech/ulo/library/model/entities/Session;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zMttbgea0E5o34hq3kPTGOwm0iw(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/ulo/library/MainActivity;->displayClearSupportFilesDialog$lambda$24(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 71
    const-string v0, "MainActivity"

    iput-object v0, p0, Ltech/ulo/library/MainActivity;->className:Ljava/lang/String;

    const-wide/16 v0, 0x100

    .line 77
    iput-wide v0, p0, Ltech/ulo/library/MainActivity;->VM_MEMORY_FLOOR_MB:J

    .line 86
    sget-object v0, Ltech/ulo/library/MainActivity$proFeatureDeclined$1;->INSTANCE:Ltech/ulo/library/MainActivity$proFeatureDeclined$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iput-object v0, p0, Ltech/ulo/library/MainActivity;->proFeatureDeclined:Lkotlin/jvm/functions/Function0;

    .line 87
    sget-object v0, Ltech/ulo/library/MainActivity$proFeaturePaid$1;->INSTANCE:Ltech/ulo/library/MainActivity$proFeaturePaid$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iput-object v0, p0, Ltech/ulo/library/MainActivity;->proFeaturePaid:Lkotlin/jvm/functions/Function0;

    const/16 v0, 0x457

    .line 89
    iput v0, p0, Ltech/ulo/library/MainActivity;->micPermissionRequestCode:I

    .line 91
    new-instance v0, Ltech/ulo/library/utils/SentryLogger;

    invoke-direct {v0}, Ltech/ulo/library/utils/SentryLogger;-><init>()V

    iput-object v0, p0, Ltech/ulo/library/MainActivity;->logger:Ltech/ulo/library/utils/SentryLogger;

    .line 92
    new-instance v0, Ltech/ulo/library/MainActivity$ulaFiles$2;

    invoke-direct {v0, p0}, Ltech/ulo/library/MainActivity$ulaFiles$2;-><init>(Ltech/ulo/library/MainActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/MainActivity;->ulaFiles$delegate:Lkotlin/Lazy;

    .line 93
    new-instance v0, Ltech/ulo/library/MainActivity$busyboxExecutor$2;

    invoke-direct {v0, p0}, Ltech/ulo/library/MainActivity$busyboxExecutor$2;-><init>(Ltech/ulo/library/MainActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/MainActivity;->busyboxExecutor$delegate:Lkotlin/Lazy;

    .line 98
    new-instance v0, Ltech/ulo/library/MainActivity$navController$2;

    invoke-direct {v0, p0}, Ltech/ulo/library/MainActivity$navController$2;-><init>(Ltech/ulo/library/MainActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/MainActivity;->navController$delegate:Lkotlin/Lazy;

    .line 102
    new-instance v0, Ltech/ulo/library/MainActivity$notificationManager$2;

    invoke-direct {v0, p0}, Ltech/ulo/library/MainActivity$notificationManager$2;-><init>(Ltech/ulo/library/MainActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/MainActivity;->notificationManager$delegate:Lkotlin/Lazy;

    .line 106
    new-instance v0, Ltech/ulo/library/MainActivity$userFeedbackPrompter$2;

    invoke-direct {v0, p0}, Ltech/ulo/library/MainActivity$userFeedbackPrompter$2;-><init>(Ltech/ulo/library/MainActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/MainActivity;->userFeedbackPrompter$delegate:Lkotlin/Lazy;

    .line 110
    new-instance v0, Ltech/ulo/library/MainActivity$optInPrompter$2;

    invoke-direct {v0, p0}, Ltech/ulo/library/MainActivity$optInPrompter$2;-><init>(Ltech/ulo/library/MainActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/MainActivity;->optInPrompter$delegate:Lkotlin/Lazy;

    .line 114
    new-instance v0, Ltech/ulo/library/MainActivity$billingManager$2;

    invoke-direct {v0, p0}, Ltech/ulo/library/MainActivity$billingManager$2;-><init>(Ltech/ulo/library/MainActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/MainActivity;->billingManager$delegate:Lkotlin/Lazy;

    .line 125
    new-instance v0, Ltech/ulo/library/MainActivity$contributionPrompter$2;

    invoke-direct {v0, p0}, Ltech/ulo/library/MainActivity$contributionPrompter$2;-><init>(Ltech/ulo/library/MainActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/MainActivity;->contributionPrompter$delegate:Lkotlin/Lazy;

    .line 129
    new-instance v0, Ltech/ulo/library/MainActivity$downloadBroadcastReceiver$1;

    invoke-direct {v0, p0}, Ltech/ulo/library/MainActivity$downloadBroadcastReceiver$1;-><init>(Ltech/ulo/library/MainActivity;)V

    iput-object v0, p0, Ltech/ulo/library/MainActivity;->downloadBroadcastReceiver:Ltech/ulo/library/MainActivity$downloadBroadcastReceiver$1;

    .line 137
    new-instance v0, Ltech/ulo/library/MainActivity$serverServiceBroadcastReceiver$1;

    invoke-direct {v0, p0}, Ltech/ulo/library/MainActivity$serverServiceBroadcastReceiver$1;-><init>(Ltech/ulo/library/MainActivity;)V

    iput-object v0, p0, Ltech/ulo/library/MainActivity;->serverServiceBroadcastReceiver:Ltech/ulo/library/MainActivity$serverServiceBroadcastReceiver$1;

    .line 159
    new-instance v0, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda17;-><init>(Ltech/ulo/library/MainActivity;)V

    iput-object v0, p0, Ltech/ulo/library/MainActivity;->stateObserver:Landroidx/lifecycle/Observer;

    .line 167
    new-instance v0, Ltech/ulo/library/MainActivity$viewModel$2;

    invoke-direct {v0, p0}, Ltech/ulo/library/MainActivity$viewModel$2;-><init>(Ltech/ulo/library/MainActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/MainActivity;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getBusyboxExecutor(Ltech/ulo/library/MainActivity;)Ltech/ulo/library/utils/BusyboxExecutor;
    .locals 0

    .line 69
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getBusyboxExecutor()Ltech/ulo/library/utils/BusyboxExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContributionPrompter(Ltech/ulo/library/MainActivity;)Ltech/ulo/library/utils/ContributionPrompter;
    .locals 0

    .line 69
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getContributionPrompter()Ltech/ulo/library/utils/ContributionPrompter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Ltech/ulo/library/MainActivity;)Ltech/ulo/library/utils/SentryLogger;
    .locals 0

    .line 69
    iget-object p0, p0, Ltech/ulo/library/MainActivity;->logger:Ltech/ulo/library/utils/SentryLogger;

    return-object p0
.end method

.method public static final synthetic access$getServiceTypePreference$lambda$51$updateMemoryLabel(Landroid/widget/TextView;Ltech/ulo/library/MainActivity;J)V
    .locals 0

    .line 69
    invoke-static {p0, p1, p2, p3}, Ltech/ulo/library/MainActivity;->getServiceTypePreference$lambda$51$updateMemoryLabel(Landroid/widget/TextView;Ltech/ulo/library/MainActivity;J)V

    return-void
.end method

.method public static final synthetic access$getUlaFiles(Ltech/ulo/library/MainActivity;)Ltech/ulo/library/utils/UlaFiles;
    .locals 0

    .line 69
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getUlaFiles()Ltech/ulo/library/utils/UlaFiles;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleSessionHasBeenActivated(Ltech/ulo/library/MainActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->handleSessionHasBeenActivated()V

    return-void
.end method

.method public static final synthetic access$handleSessionIsReady(Ltech/ulo/library/MainActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->handleSessionIsReady()V

    return-void
.end method

.method public static final synthetic access$requestMicPermissions(Ltech/ulo/library/MainActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->requestMicPermissions()V

    return-void
.end method

.method public static final synthetic access$showDialog(Ltech/ulo/library/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/MainActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final autoStart()V
    .locals 10

    .line 416
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 1702
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

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

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "getSharedPreferences(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    const-string v5, "photo_pending"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    new-instance v1, Ljava/io/File;

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Ltech/ulo/library/MainActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    const-string v8, "Intents"

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 418
    new-instance v7, Ljava/io/File;

    const-string v8, ".cameraResponse.txt"

    invoke-direct {v7, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 419
    new-instance v8, Ljava/io/File;

    const-string v9, "cameraResponse.txt"

    invoke-direct {v8, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 420
    const-string v1, "1"

    const/4 v9, 0x2

    invoke-static {v7, v1, v6, v9, v6}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 421
    invoke-virtual {v7, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1703
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 423
    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 424
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 427
    :cond_0
    const-string v0, "apps"

    invoke-virtual {p0, v0, v3}, Ltech/ulo/library/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 428
    const-string v1, "AutoApp"

    const-string v2, " "

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 430
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 431
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 432
    const-class v2, Ltech/ulo/library/model/entities/App;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/ulo/library/model/entities/App;

    .line 433
    invoke-virtual {v0}, Ltech/ulo/library/model/entities/App;->getSupportsStandalone()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 434
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ltech/ulo/library/model/entities/App;->setSupportsStandalone(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x1

    .line 435
    iput-boolean v1, p0, Ltech/ulo/library/MainActivity;->autoStarted:Z

    .line 436
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Ltech/ulo/library/MainActivity;->appHasBeenSelected(Ltech/ulo/library/model/entities/App;Z)V

    :cond_2
    return-void
.end method

.method private final checkForAppIntent(Landroid/content/Intent;)V
    .locals 7

    .line 245
    const-string v0, "apps"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ltech/ulo/library/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 246
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 247
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v3, "env"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 248
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, kotlin.String>"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/HashMap;

    .line 249
    move-object v4, p0

    check-cast v4, Landroid/content/Context;

    .line 1691
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_preferences"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "getSharedPreferences(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 250
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 251
    invoke-virtual {v4, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 253
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 256
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "app"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 257
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ltech/ulo/library/model/entities/App;

    .line 258
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 259
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 260
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 261
    const-string v1, "AutoApp"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 262
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method private final displayAvfDiskCorruptedDialog(Ltech/ulo/library/model/entities/Session;)V
    .locals 3

    .line 949
    new-instance v0, Landroid/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 950
    sget v1, Ltech/ulo/library/R$string;->avf_disk_corrupted_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 951
    sget v1, Ltech/ulo/library/R$string;->avf_disk_corrupted_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 952
    sget v1, Ltech/ulo/library/R$string;->avf_disk_corrupted_repair_button:I

    new-instance v2, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0, p1}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda22;-><init>(Ltech/ulo/library/MainActivity;Ltech/ulo/library/model/entities/Session;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 959
    sget v0, Ltech/ulo/library/R$string;->button_cancel:I

    new-instance v1, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda30;-><init>(Ltech/ulo/library/MainActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 966
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static final displayAvfDiskCorruptedDialog$lambda$18(Ltech/ulo/library/MainActivity;Ltech/ulo/library/model/entities/Session;Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$session"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 953
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 954
    new-instance p2, Landroid/content/Intent;

    move-object p3, p0

    check-cast p3, Landroid/content/Context;

    const-class v0, Ltech/ulo/library/ServerService;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 955
    const-string p3, "type"

    const-string v0, "repairAvf"

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 956
    const-string p3, "session"

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "putExtra(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 957
    invoke-virtual {p0, p1}, Ltech/ulo/library/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private static final displayAvfDiskCorruptedDialog$lambda$19(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 960
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 964
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p0

    invoke-virtual {p0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->handleUserInputCancelled()V

    return-void
.end method

.method private final displayClearSupportFilesDialog()V
    .locals 3

    .line 1020
    new-instance v0, Landroid/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1021
    sget v1, Ltech/ulo/library/R$string;->alert_clear_support_files_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1022
    sget v1, Ltech/ulo/library/R$string;->alert_clear_support_files_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1023
    sget v1, Ltech/ulo/library/R$string;->alert_clear_support_files_clear_button:I

    new-instance v2, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda24;-><init>(Ltech/ulo/library/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1027
    sget v1, Ltech/ulo/library/R$string;->button_cancel:I

    new-instance v2, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda25;

    invoke-direct {v2}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda25;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1030
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static final displayClearSupportFilesDialog$lambda$24(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1024
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->handleClearSupportFiles()V

    .line 1025
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static final displayClearSupportFilesDialog$lambda$25(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1028
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private final displayCompanionAppUpdateDialog(I)V
    .locals 3

    .line 999
    new-instance v0, Landroid/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1000
    sget v1, Ltech/ulo/library/R$string;->companion_app_update_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1001
    sget v1, Ltech/ulo/library/R$string;->companion_app_update_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 1002
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1003
    sget v1, Ltech/ulo/library/R$string;->companion_app_update_button:I

    new-instance v2, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda0;-><init>(Ltech/ulo/library/MainActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1010
    sget v0, Ltech/ulo/library/R$string;->button_cancel:I

    new-instance v1, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda11;-><init>(Ltech/ulo/library/MainActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1016
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static final displayCompanionAppUpdateDialog$lambda$22(Ltech/ulo/library/MainActivity;ILandroid/content/DialogInterface;I)V
    .locals 7

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1004
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 1006
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object v0

    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p2

    invoke-virtual {p2}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->getLastSelectedSession()Ltech/ulo/library/model/entities/Session;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->waitForPermissions$default(Ltech/ulo/library/viewmodel/MainActivityViewModel;Ltech/ulo/library/model/entities/App;Ltech/ulo/library/model/entities/Session;ZZILjava/lang/Object;)V

    .line 1008
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getNavController()Landroidx/navigation/NavController;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/navigation/NavController;->navigate(I)V

    return-void
.end method

.method private static final displayCompanionAppUpdateDialog$lambda$23(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1011
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1014
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p0

    invoke-virtual {p0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->handleUserInputCancelled()V

    return-void
.end method

.method private final displayLowStorageDialog()V
    .locals 4

    .line 1364
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 1365
    sget v1, Ltech/ulo/library/R$string;->alert_storage_low_title:I

    .line 1366
    sget v2, Ltech/ulo/library/R$string;->alert_storage_low_message:I

    sget v3, Ltech/ulo/customlibrary/R$string;->app_name:I

    invoke-virtual {p0, v3}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ltech/ulo/library/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1364
    new-instance v3, Ltech/ulo/library/MainActivity$displayLowStorageDialog$1;

    invoke-direct {v3, p0}, Ltech/ulo/library/MainActivity$displayLowStorageDialog$1;-><init>(Ltech/ulo/library/MainActivity;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, v2, v3}, Ltech/ulo/library/utils/ExtensionsKt;->displayGenericErrorDialog(Landroid/content/Context;ILjava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final displayNetworkChoicesDialog(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/repositories/DownloadMetadata;",
            ">;)V"
        }
    .end annotation

    .line 1163
    new-instance v0, Landroid/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1164
    sget v1, Ltech/ulo/library/R$string;->alert_wifi_disabled_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1165
    sget v1, Ltech/ulo/library/R$string;->alert_wifi_disabled_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1166
    sget v1, Ltech/ulo/library/R$string;->alert_wifi_disabled_continue_button:I

    new-instance v2, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda31;

    invoke-direct {v2, p0, p1}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda31;-><init>(Ltech/ulo/library/MainActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1170
    sget v0, Ltech/ulo/library/R$string;->alert_wifi_disabled_turn_on_wifi_button:I

    new-instance v1, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda32;-><init>(Ltech/ulo/library/MainActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1176
    sget v0, Ltech/ulo/library/R$string;->alert_wifi_disabled_cancel_button:I

    new-instance v1, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda33;

    invoke-direct {v1, p0}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda33;-><init>(Ltech/ulo/library/MainActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1181
    new-instance v0, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda34;-><init>(Ltech/ulo/library/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1185
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1186
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static final displayNetworkChoicesDialog$lambda$26(Ltech/ulo/library/MainActivity;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$downloadsToContinue"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1167
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 1168
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->startAssetDownloads(Ljava/util/List;)V

    return-void
.end method

.method private static final displayNetworkChoicesDialog$lambda$27(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1171
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1172
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ltech/ulo/library/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1173
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->handleUserInputCancelled()V

    .line 1174
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->killProgressBar()V

    return-void
.end method

.method private static final displayNetworkChoicesDialog$lambda$28(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1177
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1178
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->handleUserInputCancelled()V

    .line 1179
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->killProgressBar()V

    return-void
.end method

.method private static final displayNetworkChoicesDialog$lambda$29(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1182
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->handleUserInputCancelled()V

    .line 1183
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->killProgressBar()V

    return-void
.end method

.method private final displayProgressBar()V
    .locals 4

    .line 1116
    iget-boolean v0, p0, Ltech/ulo/library/MainActivity;->currentFragmentDisplaysProgressDialog:Z

    if-nez v0, :cond_0

    return-void

    .line 1118
    :cond_0
    iget-boolean v0, p0, Ltech/ulo/library/MainActivity;->progressBarIsVisible:Z

    if-nez v0, :cond_5

    .line 1119
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xc8

    .line 1120
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1121
    iget-object v1, p0, Ltech/ulo/library/MainActivity;->binding:Ltech/ulo/library/databinding/ActivityMainBinding;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    iget-object v1, v1, Ltech/ulo/library/databinding/ActivityMainBinding;->layoutProgress:Landroidx/constraintlayout/widget/ConstraintLayout;

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1123
    iget-object v0, p0, Ltech/ulo/library/MainActivity;->binding:Ltech/ulo/library/databinding/ActivityMainBinding;

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v0, v0, Ltech/ulo/library/databinding/ActivityMainBinding;->layoutProgress:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 1124
    iget-object v0, p0, Ltech/ulo/library/MainActivity;->binding:Ltech/ulo/library/databinding/ActivityMainBinding;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget-object v0, v0, Ltech/ulo/library/databinding/ActivityMainBinding;->layoutProgress:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setFocusable(Z)V

    .line 1125
    iget-object v0, p0, Ltech/ulo/library/MainActivity;->binding:Ltech/ulo/library/databinding/ActivityMainBinding;

    if-nez v0, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v2, v0

    :goto_0
    iget-object v0, v2, Ltech/ulo/library/databinding/ActivityMainBinding;->layoutProgress:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setClickable(Z)V

    .line 1126
    iput-boolean v1, p0, Ltech/ulo/library/MainActivity;->progressBarIsVisible:Z

    :cond_5
    return-void
.end method

.method private final displayQemuDiskCorruptedDialog(Ltech/ulo/library/model/entities/Session;)V
    .locals 3

    .line 971
    new-instance v0, Landroid/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 972
    sget v1, Ltech/ulo/library/R$string;->avf_disk_corrupted_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 973
    sget v1, Ltech/ulo/library/R$string;->avf_disk_corrupted_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 974
    sget v1, Ltech/ulo/library/R$string;->avf_disk_corrupted_repair_button:I

    new-instance v2, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda26;

    invoke-direct {v2, p0, p1}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda26;-><init>(Ltech/ulo/library/MainActivity;Ltech/ulo/library/model/entities/Session;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 981
    sget v0, Ltech/ulo/library/R$string;->button_cancel:I

    new-instance v1, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda27;-><init>(Ltech/ulo/library/MainActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 986
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static final displayQemuDiskCorruptedDialog$lambda$20(Ltech/ulo/library/MainActivity;Ltech/ulo/library/model/entities/Session;Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$session"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 975
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 976
    new-instance p2, Landroid/content/Intent;

    move-object p3, p0

    check-cast p3, Landroid/content/Context;

    const-class v0, Ltech/ulo/library/ServerService;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 977
    const-string p3, "type"

    const-string v0, "repairQemu"

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 978
    const-string p3, "session"

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "putExtra(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 979
    invoke-virtual {p0, p1}, Ltech/ulo/library/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private static final displayQemuDiskCorruptedDialog$lambda$21(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 982
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 984
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p0

    invoke-virtual {p0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->handleUserInputCancelled()V

    return-void
.end method

.method private final getBusyboxExecutor()Ltech/ulo/library/utils/BusyboxExecutor;
    .locals 1

    .line 93
    iget-object v0, p0, Ltech/ulo/library/MainActivity;->busyboxExecutor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/ulo/library/utils/BusyboxExecutor;

    return-object v0
.end method

.method private final getCameraInfo()V
    .locals 5

    .line 329
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 1694
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

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "getSharedPreferences(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 333
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "android.hardware.camera.any"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 331
    const-string v4, "camera_supported"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 338
    const-string v2, "android.hardware.microphone"

    .line 337
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    .line 335
    :cond_0
    const-string v1, "microphone_supported"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 342
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final getContributionPrompter()Ltech/ulo/library/utils/ContributionPrompter;
    .locals 1

    .line 125
    iget-object v0, p0, Ltech/ulo/library/MainActivity;->contributionPrompter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/ulo/library/utils/ContributionPrompter;

    return-object v0
.end method

.method private final getCredentials()V
    .locals 4

    .line 1338
    new-instance v0, Landroid/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1339
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Ltech/ulo/library/R$layout;->dia_app_credentials:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1340
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 1341
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1342
    sget v1, Ltech/ulo/library/R$string;->button_continue:I

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1343
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/MainActivity;->customDialog:Landroid/app/AlertDialog;

    .line 1345
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda12;-><init>(Ltech/ulo/library/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1357
    iget-object v0, p0, Ltech/ulo/library/MainActivity;->customDialog:Landroid/app/AlertDialog;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda13;-><init>(Ltech/ulo/library/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1360
    iget-object v0, p0, Ltech/ulo/library/MainActivity;->customDialog:Landroid/app/AlertDialog;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static final getCredentials$lambda$42(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1346
    iget-object p1, p0, Ltech/ulo/library/MainActivity;->customDialog:Landroid/app/AlertDialog;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda10;-><init>(Ltech/ulo/library/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final getCredentials$lambda$42$lambda$41(Ltech/ulo/library/MainActivity;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1347
    iget-object p1, p0, Ltech/ulo/library/MainActivity;->customDialog:Landroid/app/AlertDialog;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/app/Dialog;

    sget v0, Ltech/ulo/library/R$id;->text_input_username:I

    .line 1717
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 1347
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1348
    iget-object v1, p0, Ltech/ulo/library/MainActivity;->customDialog:Landroid/app/AlertDialog;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroid/app/Dialog;

    sget v2, Ltech/ulo/library/R$id;->text_input_password:I

    .line 1718
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 1348
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1349
    iget-object v2, p0, Ltech/ulo/library/MainActivity;->customDialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Landroid/app/Dialog;

    sget v3, Ltech/ulo/library/R$id;->text_input_vnc_password:I

    .line 1719
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/google/android/material/textfield/TextInputEditText;

    .line 1349
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1351
    invoke-direct {p0, p1, v1, v0}, Ltech/ulo/library/MainActivity;->validateCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1352
    iget-object v2, p0, Ltech/ulo/library/MainActivity;->customDialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1353
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p0

    invoke-virtual {p0, p1, v1, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitFilesystemCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final getCredentials$lambda$43(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1358
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p0

    invoke-virtual {p0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->handleUserInputCancelled()V

    return-void
.end method

.method private final getDisplayPreferences(Ltech/ulo/library/model/entities/Session;)V
    .locals 10

    .line 1374
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    .line 1375
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1376
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1377
    new-instance v6, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iput v2, v6, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1378
    new-instance v7, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iput v1, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1379
    new-instance v8, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getDisplayScaling()F

    move-result v1

    iput v1, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1380
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 1381
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1383
    iget v1, v6, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v6, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1384
    iget v1, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    add-int/2addr v2, v0

    int-to-float v0, v2

    sub-float/2addr v1, v0

    iput v1, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1387
    :cond_0
    iget v0, v6, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v1, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 1388
    iget v0, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1389
    iget v1, v6, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iput v1, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1390
    iput v0, v6, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1392
    :cond_1
    iget v0, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const v1, 0x461c4000    # 10000.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 1393
    iget v0, v6, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    mul-float/2addr v0, v1

    iget v2, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    div-float/2addr v0, v2

    iput v0, v6, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1394
    iput v1, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1397
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1398
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Ltech/ulo/library/R$layout;->dia_app_display_preferences:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1399
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 1400
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1401
    sget v1, Ltech/ulo/library/R$string;->button_continue:I

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1402
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1404
    new-instance v1, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda18;

    move-object v3, v1

    move-object v4, v0

    move-object v5, p1

    move-object v9, p0

    invoke-direct/range {v3 .. v9}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda18;-><init>(Landroid/app/AlertDialog;Ltech/ulo/library/model/entities/Session;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Ltech/ulo/library/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1479
    new-instance p1, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda19;

    invoke-direct {p1, p0}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda19;-><init>(Ltech/ulo/library/MainActivity;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1483
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static final getDisplayPreferences$lambda$46(Landroid/app/AlertDialog;Ltech/ulo/library/model/entities/Session;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    const-string v0, "$session"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$height"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$width"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$scaling"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    move-object/from16 v11, p5

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1405
    invoke-static/range {p0 .. p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, v1

    check-cast v0, Landroid/app/Dialog;

    sget v3, Ltech/ulo/library/R$id;->text_geometry_value:I

    .line 1720
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1405
    move-object v5, v3

    check-cast v5, Landroid/widget/TextView;

    .line 1406
    sget v3, Ltech/ulo/library/R$id;->radio_orientation_preference:I

    .line 1721
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1406
    move-object v12, v3

    check-cast v12, Landroid/widget/RadioGroup;

    .line 1407
    sget v3, Ltech/ulo/library/R$id;->scaling_factor_spinner:I

    .line 1722
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1407
    move-object v13, v3

    check-cast v13, Landroid/widget/Spinner;

    .line 1408
    sget v3, Ltech/ulo/library/R$id;->checkbox_lock_orientation:I

    .line 1723
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1408
    move-object v14, v3

    check-cast v14, Landroid/widget/CheckBox;

    .line 1409
    sget v3, Ltech/ulo/library/R$id;->checkbox_remember_graphical_preferences:I

    .line 1724
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1409
    move-object v15, v0

    check-cast v15, Landroid/widget/CheckBox;

    .line 1412
    invoke-virtual {v13}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    const/4 v3, 0x0

    move v4, v3

    move v6, v4

    :goto_0
    if-ge v4, v0, :cond_1

    .line 1413
    invoke-virtual {v13, v4}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Ltech/ulo/library/model/entities/Session;->getDisplayScaling()F

    move-result v16

    cmpg-float v7, v7, v16

    if-nez v7, :cond_0

    move v6, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1417
    :cond_1
    invoke-virtual {v13, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1418
    invoke-virtual/range {p1 .. p1}, Ltech/ulo/library/model/entities/Session;->getDisplayLocked()Z

    move-result v0

    invoke-virtual {v14, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1419
    invoke-virtual {v15, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1420
    invoke-virtual/range {p1 .. p1}, Ltech/ulo/library/model/entities/Session;->getDisplayOrientation()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 1421
    sget v0, Ltech/ulo/library/R$id;->landscape_radio_button:I

    invoke-virtual {v12, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 1422
    iget v0, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v2, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 1423
    iget v0, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1424
    iget v2, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iput v2, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1425
    iput v0, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    goto :goto_1

    .line 1428
    :cond_2
    sget v0, Ltech/ulo/library/R$id;->portrait_radio_button:I

    invoke-virtual {v12, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 1429
    iget v0, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v2, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    .line 1430
    iget v0, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1431
    iget v2, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iput v2, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1432
    iput v0, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1436
    :cond_3
    :goto_1
    iget v0, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v2, v10, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v3, v10, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "px x "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "px"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1438
    new-instance v0, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda28;

    invoke-direct {v0, v8, v9, v5, v10}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda28;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/widget/TextView;Lkotlin/jvm/internal/Ref$FloatRef;)V

    invoke-virtual {v12, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1455
    new-instance v0, Ltech/ulo/library/MainActivity$getDisplayPreferences$1$2;

    move-object v2, v0

    move-object/from16 v3, p4

    move-object v4, v13

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Ltech/ulo/library/MainActivity$getDisplayPreferences$1$2;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Landroid/widget/Spinner;Landroid/widget/TextView;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;)V

    check-cast v0, Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v13, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/4 v0, -0x1

    .line 1464
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v13

    new-instance v7, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda29;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v5, v12

    move-object v6, v14

    move-object v9, v7

    move-object v7, v15

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda29;-><init>(Landroid/app/AlertDialog;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/widget/RadioGroup;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Ltech/ulo/library/MainActivity;)V

    invoke-virtual {v13, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final getDisplayPreferences$lambda$46$lambda$44(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/widget/TextView;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/widget/RadioGroup;I)V
    .locals 0

    const-string p4, "$height"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$width"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$text_geometry_value"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$scaling"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1439
    sget p4, Ltech/ulo/library/R$id;->landscape_radio_button:I

    if-ne p5, p4, :cond_0

    .line 1440
    iget p4, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget p5, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    cmpl-float p4, p4, p5

    if-lez p4, :cond_1

    .line 1441
    iget p4, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1442
    iget p5, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iput p5, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1443
    iput p4, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    goto :goto_0

    .line 1446
    :cond_0
    iget p4, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget p5, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    cmpg-float p4, p4, p5

    if-gez p4, :cond_1

    .line 1447
    iget p4, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1448
    iget p5, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iput p5, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1449
    iput p4, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1452
    :cond_1
    :goto_0
    iget p1, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget p4, p3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    div-float/2addr p1, p4

    float-to-int p1, p1

    iget p0, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget p3, p3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    div-float/2addr p0, p3

    float-to-int p0, p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "px x "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "px"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final getDisplayPreferences$lambda$46$lambda$45(Landroid/app/AlertDialog;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/widget/RadioGroup;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Ltech/ulo/library/MainActivity;Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "$scaling"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$width"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$height"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$radio_orientation_preference"

    move-object/from16 v4, p4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$checkbox_lock_orientation"

    move-object/from16 v5, p5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$checkbox_remember_graphical_preferences"

    move-object/from16 v6, p6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "this$0"

    move-object/from16 v7, p7

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1465
    invoke-virtual/range {p0 .. p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1466
    new-instance v3, Ltech/ulo/library/model/entities/DisplayPreferences;

    const/16 v14, 0x1f

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Ltech/ulo/library/model/entities/DisplayPreferences;-><init>(IZFZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1467
    iget v8, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v3, v8}, Ltech/ulo/library/model/entities/DisplayPreferences;->setScaling(F)V

    .line 1468
    iget v1, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v8, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    div-float/2addr v1, v8

    float-to-int v1, v1

    iget v2, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v0, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    div-float/2addr v2, v0

    float-to-int v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ltech/ulo/library/model/entities/DisplayPreferences;->setGeometry(Ljava/lang/String;)V

    .line 1469
    invoke-virtual/range {p4 .. p4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget v1, Ltech/ulo/library/R$id;->landscape_radio_button:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 1470
    invoke-virtual {v3, v0}, Ltech/ulo/library/model/entities/DisplayPreferences;->setOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1472
    invoke-virtual {v3, v0}, Ltech/ulo/library/model/entities/DisplayPreferences;->setOrientation(I)V

    .line 1474
    :goto_0
    invoke-virtual/range {p5 .. p5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {v3, v0}, Ltech/ulo/library/model/entities/DisplayPreferences;->setLocked(Z)V

    .line 1475
    invoke-virtual/range {p6 .. p6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {v3, v0}, Ltech/ulo/library/model/entities/DisplayPreferences;->setRemember(Z)V

    .line 1476
    invoke-virtual/range {p7 .. p7}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object v0

    invoke-virtual {v0, v3}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitAppDisplayPreferences(Ltech/ulo/library/model/entities/DisplayPreferences;)V

    return-void
.end method

.method private static final getDisplayPreferences$lambda$47(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1480
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p0

    invoke-virtual {p0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->handleUserInputCancelled()V

    return-void
.end method

.method private final getFlavor(Ljava/io/File;)V
    .locals 19

    move-object/from16 v1, p0

    .line 1252
    new-instance v0, Landroid/app/AlertDialog$Builder;

    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1253
    invoke-virtual/range {p0 .. p0}, Ltech/ulo/library/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Ltech/ulo/library/R$layout;->dia_app_select_flavor:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1255
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v4, Ltech/ulo/library/R$id;->radio_filesystem_flavor_preference:I

    .line 1704
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v6, "findViewById(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1255
    check-cast v4, Landroid/widget/RadioGroup;

    .line 1259
    sget-object v7, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v8, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v10, p1

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v9, Ljava/io/InputStream;

    invoke-direct {v8, v9, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v8, Ljava/io/Reader;

    instance-of v7, v8, Ljava/io/BufferedReader;

    if-eqz v7, :cond_0

    check-cast v8, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/io/BufferedReader;

    const/16 v9, 0x2000

    invoke-direct {v7, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v8, v7

    :goto_0
    check-cast v8, Ljava/io/Closeable;

    :try_start_0
    move-object v7, v8

    check-cast v7, Ljava/io/BufferedReader;

    check-cast v7, Ljava/io/Reader;

    invoke-static {v7}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1260
    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v7

    .line 1261
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1262
    check-cast v7, Ljava/lang/Iterable;

    const/4 v9, 0x1

    invoke-static {v7, v9}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 1706
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v7, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v10, Ljava/util/Collection;

    .line 1707
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 1708
    check-cast v11, Ljava/lang/String;

    .line 1264
    move-object v13, v11

    check-cast v13, Ljava/lang/CharSequence;

    new-array v14, v9, [Ljava/lang/String;

    const-string v11, ", "

    aput-object v11, v14, v12

    const/16 v17, 0x6

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 1265
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1266
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const/4 v14, 0x2

    .line 1267
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1270
    new-instance v14, Ltech/ulo/library/model/entities/Flavor;

    .line 1273
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 1270
    invoke-direct {v14, v12, v13, v15}, Ltech/ulo/library/model/entities/Flavor;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1276
    new-instance v14, Landroid/widget/RadioButton;

    invoke-direct {v14, v2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 1277
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/RadioButton;->setId(I)V

    .line 1278
    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v14, v13}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 1279
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1280
    invoke-virtual {v14}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " (Pro)"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v14, v11}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 1281
    :cond_1
    const-string v11, "default"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v14, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1282
    check-cast v14, Landroid/view/View;

    invoke-virtual {v4, v14}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 1283
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1708
    invoke-interface {v10, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1709
    :cond_2
    check-cast v10, Ljava/util/List;

    .line 1291
    sget-object v4, Ltech/ulo/library/utils/AvfCompatibility;->INSTANCE:Ltech/ulo/library/utils/AvfCompatibility;

    invoke-virtual {v4, v2}, Ltech/ulo/library/utils/AvfCompatibility;->isDeviceCapable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1296
    sget v4, Ltech/ulo/library/R$id;->text_title_execution_type:I

    .line 1710
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/TextView;

    .line 1296
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1297
    sget v4, Ltech/ulo/library/R$id;->radio_execution_type_preference:I

    .line 1711
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/RadioGroup;

    .line 1297
    invoke-virtual {v4, v12}, Landroid/widget/RadioGroup;->setVisibility(I)V

    :cond_3
    const/16 v4, 0x8

    if-nez v2, :cond_4

    .line 1300
    sget v2, Ltech/ulo/library/R$id;->radio_avf_preference:I

    .line 1712
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/RadioButton;

    .line 1300
    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1303
    :cond_4
    sget v2, Ltech/ulo/library/R$id;->radio_qemu_preference:I

    .line 1713
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/RadioButton;

    .line 1303
    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1306
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1307
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1308
    sget v2, Ltech/ulo/library/R$string;->button_continue:I

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1309
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1311
    new-instance v2, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda35;

    invoke-direct {v2, v0, v8, v1}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda35;-><init>(Landroid/app/AlertDialog;Ljava/util/ArrayList;Ltech/ulo/library/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1330
    new-instance v2, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda36;

    invoke-direct {v2, v1}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda36;-><init>(Ltech/ulo/library/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1334
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 1259
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v8, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static final getFlavor$lambda$39(Landroid/app/AlertDialog;Ljava/util/ArrayList;Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V
    .locals 1

    const-string p3, "$flavors"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, -0x1

    .line 1312
    invoke-virtual {p0, p3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p3

    new-instance v0, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1, p2}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda21;-><init>(Landroid/app/AlertDialog;Ljava/util/ArrayList;Ltech/ulo/library/MainActivity;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final getFlavor$lambda$39$lambda$38(Landroid/app/AlertDialog;Ljava/util/ArrayList;Ltech/ulo/library/MainActivity;Landroid/view/View;)V
    .locals 6

    const-string p3, "$flavors"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1313
    sget p3, Ltech/ulo/library/R$id;->radio_filesystem_flavor_preference:I

    invoke-virtual {p0, p3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioGroup;

    invoke-virtual {p3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p3

    .line 1314
    invoke-virtual {p0, p3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioButton;

    .line 1315
    invoke-virtual {p3}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1317
    sget p3, Ltech/ulo/library/R$id;->radio_execution_type_preference:I

    invoke-virtual {p0, p3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioGroup;

    invoke-virtual {p3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p3

    .line 1318
    sget v1, Ltech/ulo/library/R$id;->radio_avf_preference:I

    if-ne p3, v1, :cond_0

    sget-object p3, Ltech/ulo/library/model/entities/ExecutionType;->AVF:Ltech/ulo/library/model/entities/ExecutionType;

    goto :goto_0

    .line 1319
    :cond_0
    sget v1, Ltech/ulo/library/R$id;->radio_qemu_preference:I

    if-ne p3, v1, :cond_1

    sget-object p3, Ltech/ulo/library/model/entities/ExecutionType;->QEMU:Ltech/ulo/library/model/entities/ExecutionType;

    goto :goto_0

    .line 1320
    :cond_1
    sget-object p3, Ltech/ulo/library/model/entities/ExecutionType;->PROOT:Ltech/ulo/library/model/entities/ExecutionType;

    .line 1323
    :goto_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 1325
    const-string v1, " (Pro)"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1326
    check-cast p1, Ljava/lang/Iterable;

    .line 1714
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 1715
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ltech/ulo/library/model/entities/Flavor;

    .line 1326
    invoke-virtual {v2}, Ltech/ulo/library/model/entities/Flavor;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1715
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1716
    :cond_3
    check-cast v0, Ljava/util/List;

    .line 1326
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/ulo/library/model/entities/Flavor;

    .line 1327
    invoke-virtual {p2}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p1

    invoke-virtual {p0}, Ltech/ulo/library/model/entities/Flavor;->getReleaseName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Ltech/ulo/library/model/entities/Flavor;->isPaid()Z

    move-result p0

    invoke-virtual {p1, p2, p0, p3}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitFilesystemFlavor(Ljava/lang/String;ZLtech/ulo/library/model/entities/ExecutionType;)V

    return-void
.end method

.method private static final getFlavor$lambda$40(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1331
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p0

    invoke-virtual {p0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->handleUserInputCancelled()V

    return-void
.end method

.method private final getMacAddr()Ljava/lang/String;
    .locals 8

    .line 310
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "list(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    .line 311
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 312
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wlan0"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 314
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-byte v5, v0, v3

    .line 316
    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v6, "%02X:"

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "format(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 318
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 319
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 321
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "toString(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, ":"

    const-string v4, ""

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 325
    :catch_0
    :cond_4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getNavController()Landroidx/navigation/NavController;
    .locals 1

    .line 98
    iget-object v0, p0, Ltech/ulo/library/MainActivity;->navController$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavController;

    return-object v0
.end method

.method private final getNetInfo()V
    .locals 13

    .line 384
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    .line 383
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 387
    const-string v2, "getSharedPreferences(...)"

    const-string v3, "_preferences"

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 388
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 390
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 392
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v5

    const-string v6, "getDnsServers(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v7

    .line 1699
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 395
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 396
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "current_dns0"

    invoke-interface {v1, v8, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 397
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x1

    if-le v6, v8, :cond_1

    .line 398
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "current_dns1"

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    if-eqz v7, :cond_3

    .line 399
    move-object v5, v7

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v11, 0x4

    const/4 v12, 0x0

    .line 400
    const-string v8, ","

    const-string v9, " "

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "search_domains"

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 401
    :cond_3
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1700
    :cond_4
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    const-string v5, "unique_id"

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1701
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 408
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "android-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 409
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    return-void
.end method

.method private final getNotificationManager()Ltech/ulo/library/utils/NotificationConstructor;
    .locals 1

    .line 102
    iget-object v0, p0, Ltech/ulo/library/MainActivity;->notificationManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/ulo/library/utils/NotificationConstructor;

    return-object v0
.end method

.method private final getOptInPrompter()Ltech/ulo/library/utils/CollectionOptInPrompter;
    .locals 1

    .line 110
    iget-object v0, p0, Ltech/ulo/library/MainActivity;->optInPrompter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/ulo/library/utils/CollectionOptInPrompter;

    return-object v0
.end method

.method private final getServiceTypePreference(Ltech/ulo/library/model/entities/Session;)V
    .locals 4

    .line 1500
    new-instance v0, Landroid/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1501
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Ltech/ulo/library/R$layout;->dia_app_select_client:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1502
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 1503
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1504
    sget v1, Ltech/ulo/library/R$string;->button_continue:I

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1505
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1507
    new-instance v1, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p0, p1}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda4;-><init>(Landroid/app/AlertDialog;Ltech/ulo/library/MainActivity;Ltech/ulo/library/model/entities/Session;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1654
    new-instance p1, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda5;-><init>(Ltech/ulo/library/MainActivity;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1658
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static final getServiceTypePreference$lambda$51(Landroid/app/AlertDialog;Ltech/ulo/library/MainActivity;Ltech/ulo/library/model/entities/Session;Landroid/content/DialogInterface;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v12, p1

    const-string v0, "this$0"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$session"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1508
    invoke-static/range {p0 .. p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, v1

    check-cast v0, Landroid/app/Dialog;

    sget v3, Ltech/ulo/library/R$id;->ssh_radio_button:I

    .line 1725
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1508
    move-object v10, v3

    check-cast v10, Landroid/widget/RadioButton;

    .line 1509
    sget v3, Ltech/ulo/library/R$id;->vnc_radio_button:I

    .line 1726
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1509
    move-object v11, v3

    check-cast v11, Landroid/widget/RadioButton;

    .line 1510
    sget v3, Ltech/ulo/library/R$id;->checkbox_sound_support:I

    .line 1727
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1510
    check-cast v3, Landroid/widget/CheckBox;

    .line 1511
    sget v5, Ltech/ulo/library/R$id;->checkbox_mic_support:I

    .line 1728
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1511
    check-cast v5, Landroid/widget/CheckBox;

    .line 1512
    sget v6, Ltech/ulo/library/R$id;->checkbox_share_storage:I

    .line 1729
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1512
    check-cast v6, Landroid/widget/CheckBox;

    .line 1513
    sget v7, Ltech/ulo/library/R$id;->checkbox_use_all_cores:I

    .line 1730
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1513
    check-cast v7, Landroid/widget/CheckBox;

    .line 1514
    sget v8, Ltech/ulo/library/R$id;->text_vm_memory_label:I

    .line 1731
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1514
    check-cast v8, Landroid/widget/TextView;

    .line 1515
    sget v9, Ltech/ulo/library/R$id;->seekbar_vm_memory:I

    .line 1732
    invoke-virtual {v0, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1515
    check-cast v9, Landroid/widget/SeekBar;

    .line 1516
    sget v13, Ltech/ulo/library/R$id;->checkbox_remember_service_type_preferences:I

    .line 1733
    invoke-virtual {v0, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1516
    move-object v13, v0

    check-cast v13, Landroid/widget/CheckBox;

    .line 1518
    new-instance v0, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda14;

    invoke-direct {v0, v12, v3}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda14;-><init>(Ltech/ulo/library/MainActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1531
    new-instance v0, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, v12, v5}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda15;-><init>(Ltech/ulo/library/MainActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1550
    invoke-virtual/range {p1 .. p1}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->getLastSelectedApp()Ltech/ulo/library/model/entities/App;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/model/entities/App;->getSupportsCli()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 1551
    invoke-virtual {v10, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1552
    invoke-virtual {v10, v0}, Landroid/widget/RadioButton;->setAlpha(F)V

    .line 1555
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ltech/ulo/library/model/entities/Session;->getServiceType()Ltech/ulo/library/model/entities/ServiceType;

    move-result-object v0

    sget-object v14, Ltech/ulo/library/model/entities/ServiceType$Ssh;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Ssh;

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v14, 0x1

    if-eqz v0, :cond_1

    .line 1556
    invoke-virtual {v10, v14}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1559
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ltech/ulo/library/model/entities/Session;->getServiceType()Ltech/ulo/library/model/entities/ServiceType;

    move-result-object v0

    sget-object v15, Ltech/ulo/library/model/entities/ServiceType$Vnc;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Vnc;

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1560
    invoke-virtual {v11, v14}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1563
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ltech/ulo/library/model/entities/Session;->getSoundSupport()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1564
    invoke-virtual {v3, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1567
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ltech/ulo/library/model/entities/Session;->getMicSupport()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1568
    invoke-virtual {v5, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1588
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->getLastSelectedFilesystem()Ltech/ulo/library/model/entities/Filesystem;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/model/entities/Filesystem;->getExecutionType()Ltech/ulo/library/model/entities/ExecutionType;

    move-result-object v0

    .line 1589
    sget-object v15, Ltech/ulo/library/model/entities/ExecutionType;->PROOT:Ltech/ulo/library/model/entities/ExecutionType;

    const/16 v16, 0x8

    if-ne v0, v15, :cond_5

    move/from16 v15, v16

    goto :goto_0

    :cond_5
    move v15, v4

    :goto_0
    invoke-virtual {v6, v15}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1590
    invoke-virtual/range {p2 .. p2}, Ltech/ulo/library/model/entities/Session;->getShareStorage()Z

    move-result v15

    invoke-virtual {v6, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1598
    sget-object v15, Ltech/ulo/library/model/entities/ExecutionType;->AVF:Ltech/ulo/library/model/entities/ExecutionType;

    if-ne v0, v15, :cond_6

    goto :goto_1

    :cond_6
    move v14, v4

    :goto_1
    if-eqz v14, :cond_7

    move v0, v4

    goto :goto_2

    :cond_7
    move/from16 v0, v16

    .line 1599
    :goto_2
    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    if-eqz v14, :cond_8

    move v0, v4

    goto :goto_3

    :cond_8
    move/from16 v0, v16

    .line 1600
    :goto_3
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v14, :cond_9

    move v0, v4

    goto :goto_4

    :cond_9
    move/from16 v0, v16

    .line 1601
    :goto_4
    invoke-virtual {v9, v0}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1603
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 1604
    sget v14, Ltech/ulo/library/R$string;->prompt_use_all_cores:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v14, v0}, Ltech/ulo/library/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1605
    invoke-virtual/range {p2 .. p2}, Ltech/ulo/library/model/entities/Session;->getCpuAllCores()Z

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1607
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1608
    const-string v14, "activity"

    invoke-virtual {v12, v14}, Ltech/ulo/library/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    const-string v15, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Landroid/app/ActivityManager;

    invoke-virtual {v14, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1609
    iget-wide v14, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const/high16 v0, 0x100000

    move-object/from16 p3, v5

    int-to-long v4, v0

    div-long v4, v14, v4

    .line 1613
    iget-wide v14, v12, Ltech/ulo/library/MainActivity;->VM_MEMORY_FLOOR_MB:J

    invoke-static {v14, v15, v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v14

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    sub-long v10, v4, v14

    long-to-int v0, v10

    const/4 v10, 0x0

    .line 1614
    invoke-static {v0, v10}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1619
    invoke-virtual/range {p2 .. p2}, Ltech/ulo/library/model/entities/Session;->getMemoryMb()J

    move-result-wide v10

    const-wide/16 v17, 0x0

    cmp-long v0, v10, v17

    if-lez v0, :cond_a

    invoke-virtual/range {p2 .. p2}, Ltech/ulo/library/model/entities/Session;->getMemoryMb()J

    move-result-wide v4

    goto :goto_5

    :cond_a
    const/4 v0, 0x2

    int-to-long v10, v0

    .line 1620
    div-long v17, v4, v10

    move-wide/from16 v19, v14

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v22}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v4

    :goto_5
    sub-long v10, v4, v14

    long-to-int v0, v10

    .line 1621
    invoke-virtual {v9}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    const/4 v10, 0x0

    invoke-static {v0, v10, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1626
    invoke-static {v8, v12, v4, v5}, Ltech/ulo/library/MainActivity;->getServiceTypePreference$lambda$51$updateMemoryLabel(Landroid/widget/TextView;Ltech/ulo/library/MainActivity;J)V

    .line 1627
    new-instance v0, Ltech/ulo/library/MainActivity$getServiceTypePreference$1$3;

    invoke-direct {v0, v14, v15, v8, v12}, Ltech/ulo/library/MainActivity$getServiceTypePreference$1$3;-><init>(JLandroid/widget/TextView;Ltech/ulo/library/MainActivity;)V

    check-cast v0, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v9, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1635
    invoke-virtual {v13, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v0, -0x1

    .line 1637
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v11

    new-instance v10, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda16;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object v4, v6

    move-object v5, v7

    move-object v6, v9

    move-wide v7, v14

    move-object v9, v13

    move-object v13, v10

    move-object/from16 v10, v23

    move-object v14, v11

    move-object/from16 v11, v24

    move-object/from16 v12, p1

    invoke-direct/range {v0 .. v12}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda16;-><init>(Landroid/app/AlertDialog;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/SeekBar;JLandroid/widget/CheckBox;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Ltech/ulo/library/MainActivity;)V

    invoke-virtual {v14, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final getServiceTypePreference$lambda$51$lambda$48(Ltech/ulo/library/MainActivity;Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$soundSupport"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 1521
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getContributionPrompter()Ltech/ulo/library/utils/ContributionPrompter;

    move-result-object p2

    invoke-virtual {p2}, Ltech/ulo/library/utils/ContributionPrompter;->hasMadeInAppPurchase()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getContributionPrompter()Ltech/ulo/library/utils/ContributionPrompter;

    move-result-object p2

    invoke-virtual {p2}, Ltech/ulo/library/utils/ContributionPrompter;->hasMadeSubPurchase()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1522
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getContributionPrompter()Ltech/ulo/library/utils/ContributionPrompter;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Ltech/ulo/library/utils/ContributionPrompter;->setPurchaseRequired(Z)V

    .line 1523
    sget-object p2, Ltech/ulo/library/MainActivity$getServiceTypePreference$1$1$1;->INSTANCE:Ltech/ulo/library/MainActivity$getServiceTypePreference$1$1$1;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Ltech/ulo/library/MainActivity;->proFeaturePaid:Lkotlin/jvm/functions/Function0;

    .line 1524
    new-instance p2, Ltech/ulo/library/MainActivity$getServiceTypePreference$1$1$2;

    invoke-direct {p2, p1}, Ltech/ulo/library/MainActivity$getServiceTypePreference$1$1$2;-><init>(Landroid/widget/CheckBox;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Ltech/ulo/library/MainActivity;->proFeatureDeclined:Lkotlin/jvm/functions/Function0;

    .line 1525
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getBillingManager()Ltech/ulo/library/utils/BillingManager;

    move-result-object p0

    const-string p1, "pro_features"

    invoke-virtual {p0, p1}, Ltech/ulo/library/utils/BillingManager;->startPurchaseFlow(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final getServiceTypePreference$lambda$51$lambda$49(Ltech/ulo/library/MainActivity;Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$micSupport"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 1534
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getContributionPrompter()Ltech/ulo/library/utils/ContributionPrompter;

    move-result-object p2

    invoke-virtual {p2}, Ltech/ulo/library/utils/ContributionPrompter;->hasMadeInAppPurchase()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getContributionPrompter()Ltech/ulo/library/utils/ContributionPrompter;

    move-result-object p2

    invoke-virtual {p2}, Ltech/ulo/library/utils/ContributionPrompter;->hasMadeSubPurchase()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1535
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getContributionPrompter()Ltech/ulo/library/utils/ContributionPrompter;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Ltech/ulo/library/utils/ContributionPrompter;->setPurchaseRequired(Z)V

    .line 1536
    new-instance p2, Ltech/ulo/library/MainActivity$getServiceTypePreference$1$2$1;

    invoke-direct {p2, p0}, Ltech/ulo/library/MainActivity$getServiceTypePreference$1$2$1;-><init>(Ltech/ulo/library/MainActivity;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Ltech/ulo/library/MainActivity;->proFeaturePaid:Lkotlin/jvm/functions/Function0;

    .line 1539
    new-instance p2, Ltech/ulo/library/MainActivity$getServiceTypePreference$1$2$2;

    invoke-direct {p2, p1}, Ltech/ulo/library/MainActivity$getServiceTypePreference$1$2$2;-><init>(Landroid/widget/CheckBox;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Ltech/ulo/library/MainActivity;->proFeatureDeclined:Lkotlin/jvm/functions/Function0;

    .line 1540
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getBillingManager()Ltech/ulo/library/utils/BillingManager;

    move-result-object p0

    const-string p1, "pro_features"

    invoke-virtual {p0, p1}, Ltech/ulo/library/utils/BillingManager;->startPurchaseFlow(Ljava/lang/String;)V

    goto :goto_0

    .line 1542
    :cond_0
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->requestMicPermissions()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final getServiceTypePreference$lambda$51$lambda$50(Landroid/app/AlertDialog;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/SeekBar;JLandroid/widget/CheckBox;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Ltech/ulo/library/MainActivity;Landroid/view/View;)V
    .locals 21

    const-string v0, "$micSupport"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$soundSupport"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$shareStorage"

    move-object/from16 v3, p3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$useAllCores"

    move-object/from16 v4, p4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$vmMemorySeekBar"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$checkbox_remember_service_type_preferences"

    move-object/from16 v6, p8

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$sshTypePreference"

    move-object/from16 v7, p9

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$vncTypePreference"

    move-object/from16 v8, p10

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    move-object/from16 v9, p11

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1638
    invoke-virtual/range {p0 .. p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1639
    new-instance v0, Ltech/ulo/library/model/entities/ServiceTypePreferences;

    const/16 v19, 0x7f

    const/16 v20, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v20}, Ltech/ulo/library/model/entities/ServiceTypePreferences;-><init>(Ltech/ulo/library/model/entities/ServiceType;ZZZJZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1640
    invoke-virtual/range {p1 .. p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ltech/ulo/library/model/entities/ServiceTypePreferences;->setMicSupport(Z)V

    .line 1641
    invoke-virtual/range {p2 .. p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ltech/ulo/library/model/entities/ServiceTypePreferences;->setSoundSupport(Z)V

    .line 1642
    invoke-virtual/range {p3 .. p3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ltech/ulo/library/model/entities/ServiceTypePreferences;->setShareStorage(Z)V

    .line 1643
    invoke-virtual/range {p4 .. p4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ltech/ulo/library/model/entities/ServiceTypePreferences;->setCpuAllCores(Z)V

    .line 1644
    invoke-virtual/range {p5 .. p5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-long v1, v1

    add-long v1, v1, p6

    invoke-virtual {v0, v1, v2}, Ltech/ulo/library/model/entities/ServiceTypePreferences;->setMemoryMb(J)V

    .line 1645
    invoke-virtual/range {p8 .. p8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ltech/ulo/library/model/entities/ServiceTypePreferences;->setRemember(Z)V

    .line 1647
    invoke-virtual/range {p9 .. p9}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ltech/ulo/library/model/entities/ServiceType$Ssh;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Ssh;

    check-cast v1, Ltech/ulo/library/model/entities/ServiceType;

    goto :goto_0

    .line 1648
    :cond_0
    invoke-virtual/range {p10 .. p10}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ltech/ulo/library/model/entities/ServiceType$Vnc;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Vnc;

    check-cast v1, Ltech/ulo/library/model/entities/ServiceType;

    goto :goto_0

    .line 1649
    :cond_1
    sget-object v1, Ltech/ulo/library/model/entities/ServiceType$Unselected;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Unselected;

    check-cast v1, Ltech/ulo/library/model/entities/ServiceType;

    .line 1646
    :goto_0
    invoke-virtual {v0, v1}, Ltech/ulo/library/model/entities/ServiceTypePreferences;->setServiceType(Ltech/ulo/library/model/entities/ServiceType;)V

    .line 1651
    invoke-virtual/range {p11 .. p11}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitAppServiceTypePreferences(Ltech/ulo/library/model/entities/ServiceTypePreferences;)V

    return-void
.end method

.method private static final getServiceTypePreference$lambda$51$updateMemoryLabel(Landroid/widget/TextView;Ltech/ulo/library/MainActivity;J)V
    .locals 4

    .line 1624
    sget v0, Ltech/ulo/library/R$string;->prompt_vm_memory:I

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    long-to-double p2, p2

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ltech/ulo/library/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final getServiceTypePreference$lambda$52(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1655
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p0

    invoke-virtual {p0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->handleUserInputCancelled()V

    return-void
.end method

.method private final getUlaFiles()Ltech/ulo/library/utils/UlaFiles;
    .locals 1

    .line 92
    iget-object v0, p0, Ltech/ulo/library/MainActivity;->ulaFiles$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/ulo/library/utils/UlaFiles;

    return-object v0
.end method

.method private final getUserContribution()V
    .locals 1

    .line 1235
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Ltech/ulo/library/MainActivity;->showProFeaturesRequiredDialog(Landroid/app/Activity;)V

    return-void
.end method

.method private final getUserFeedback()V
    .locals 4

    .line 1190
    new-instance v0, Landroid/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1191
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Ltech/ulo/library/R$layout;->dia_place_holder:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1192
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 1193
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1194
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/MainActivity;->customDialog:Landroid/app/AlertDialog;

    .line 1196
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda23;-><init>(Ltech/ulo/library/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1199
    iget-object v0, p0, Ltech/ulo/library/MainActivity;->customDialog:Landroid/app/AlertDialog;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1201
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getUserFeedbackPrompter()Ltech/ulo/library/utils/UserFeedbackPrompter;

    move-result-object v0

    iget-object v1, p0, Ltech/ulo/library/MainActivity;->customDialog:Landroid/app/AlertDialog;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v2, Ltech/ulo/library/R$id;->layout_user_prompt_insert:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ltech/ulo/library/utils/UserFeedbackPrompter;->showView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private static final getUserFeedback$lambda$30(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1197
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p0

    invoke-virtual {p0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->userFeedbackChecked()V

    return-void
.end method

.method private final getUserFeedbackPrompter()Ltech/ulo/library/utils/UserFeedbackPrompter;
    .locals 1

    .line 106
    iget-object v0, p0, Ltech/ulo/library/MainActivity;->userFeedbackPrompter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/ulo/library/utils/UserFeedbackPrompter;

    return-object v0
.end method

.method private final handleClearSupportFiles()V
    .locals 9

    .line 1034
    new-instance v0, Ltech/ulo/library/utils/preferences/AppsPreferences;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Ltech/ulo/library/utils/preferences/AppsPreferences;-><init>(Landroid/content/Context;)V

    .line 1035
    invoke-virtual {v0}, Ltech/ulo/library/utils/preferences/AppsPreferences;->getDistributionsList()Ljava/util/Set;

    move-result-object v0

    const-string v1, "support"

    invoke-static {v0, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    .line 1036
    new-instance v0, Ltech/ulo/library/utils/AssetFileClearer;

    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getUlaFiles()Ltech/ulo/library/utils/UlaFiles;

    move-result-object v3

    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getBusyboxExecutor()Ltech/ulo/library/utils/BusyboxExecutor;

    move-result-object v5

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ltech/ulo/library/utils/AssetFileClearer;-><init>(Ltech/ulo/library/utils/UlaFiles;Ljava/util/Set;Ltech/ulo/library/utils/BusyboxExecutor;Ltech/ulo/library/utils/Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1037
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v1, Ltech/ulo/library/MainActivity$handleClearSupportFiles$1;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v3}, Ltech/ulo/library/MainActivity$handleClearSupportFiles$1;-><init>(Ltech/ulo/library/MainActivity;Ltech/ulo/library/utils/AssetFileClearer;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final handleIllegalState(Ltech/ulo/library/viewmodel/IllegalState;)V
    .locals 2

    .line 831
    sget-object v0, Ltech/ulo/library/utils/IllegalStateHandler;->INSTANCE:Ltech/ulo/library/utils/IllegalStateHandler;

    invoke-virtual {v0, p1}, Ltech/ulo/library/utils/IllegalStateHandler;->getLocalizationData(Ltech/ulo/library/viewmodel/IllegalState;)Ltech/ulo/library/utils/Localization;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-interface {p1, v0}, Ltech/ulo/library/utils/Localization;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 832
    sget v1, Ltech/ulo/library/R$string;->illegal_state_github_message:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ltech/ulo/library/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 834
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 835
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 836
    sget v0, Ltech/ulo/library/R$string;->illegal_state_title:I

    sget v1, Ltech/ulo/customlibrary/R$string;->app_name:I

    invoke-virtual {p0, v1}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ltech/ulo/library/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 837
    sget v0, Ltech/ulo/library/R$string;->button_ok:I

    new-instance v1, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda20;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 840
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static final handleIllegalState$lambda$16(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 838
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private final handleProgressBarUpdateState(Ltech/ulo/library/viewmodel/ProgressBarUpdateState;)V
    .locals 4

    .line 1058
    instance-of v0, p1, Ltech/ulo/library/viewmodel/StartingSetup;

    const-string v1, ""

    const-string v2, "getString(...)"

    if-eqz v0, :cond_0

    .line 1059
    sget p1, Ltech/ulo/library/R$string;->progress_start_step:I

    invoke-virtual {p0, p1}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1060
    invoke-direct {p0, p1, v1}, Ltech/ulo/library/MainActivity;->updateProgressBar(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1062
    :cond_0
    instance-of v0, p1, Ltech/ulo/library/viewmodel/FetchingAssetLists;

    if-eqz v0, :cond_1

    .line 1063
    sget p1, Ltech/ulo/library/R$string;->progress_fetching_asset_lists:I

    invoke-virtual {p0, p1}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1064
    invoke-direct {p0, p1, v1}, Ltech/ulo/library/MainActivity;->updateProgressBar(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1066
    :cond_1
    instance-of v0, p1, Ltech/ulo/library/viewmodel/CheckingForAssetsUpdates;

    if-eqz v0, :cond_2

    .line 1067
    sget p1, Ltech/ulo/library/R$string;->progress_checking_for_required_updates:I

    invoke-virtual {p0, p1}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1068
    invoke-direct {p0, p1, v1}, Ltech/ulo/library/MainActivity;->updateProgressBar(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1070
    :cond_2
    instance-of v0, p1, Ltech/ulo/library/viewmodel/DownloadProgress;

    if-eqz v0, :cond_3

    .line 1071
    sget v0, Ltech/ulo/library/R$string;->progress_downloading:I

    invoke-virtual {p0, v0}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1073
    sget v1, Ltech/ulo/library/R$string;->progress_downloading_out_of:I

    .line 1074
    check-cast p1, Ltech/ulo/library/viewmodel/DownloadProgress;

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/DownloadProgress;->getNumComplete()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1075
    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/DownloadProgress;->getNumTotal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1072
    invoke-virtual {p0, v1, p1}, Ltech/ulo/library/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1075
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1077
    invoke-direct {p0, v0, p1}, Ltech/ulo/library/MainActivity;->updateProgressBar(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1079
    :cond_3
    instance-of v0, p1, Ltech/ulo/library/viewmodel/CopyingDownloads;

    if-eqz v0, :cond_4

    .line 1080
    sget p1, Ltech/ulo/library/R$string;->progress_copying_downloads:I

    invoke-virtual {p0, p1}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1081
    invoke-direct {p0, p1, v1}, Ltech/ulo/library/MainActivity;->updateProgressBar(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1083
    :cond_4
    instance-of v0, p1, Ltech/ulo/library/viewmodel/VerifyingFilesystem;

    if-eqz v0, :cond_5

    .line 1084
    sget p1, Ltech/ulo/library/R$string;->progress_verifying_assets:I

    invoke-virtual {p0, p1}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1085
    invoke-direct {p0, p1, v1}, Ltech/ulo/library/MainActivity;->updateProgressBar(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1087
    :cond_5
    instance-of v0, p1, Ltech/ulo/library/viewmodel/VerifyingAvailableStorage;

    if-eqz v0, :cond_6

    .line 1088
    sget p1, Ltech/ulo/library/R$string;->progress_verifying_sufficient_storage:I

    invoke-virtual {p0, p1}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1089
    invoke-direct {p0, p1, v1}, Ltech/ulo/library/MainActivity;->updateProgressBar(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1091
    :cond_6
    instance-of v0, p1, Ltech/ulo/library/viewmodel/ClearingSupportFiles;

    if-eqz v0, :cond_7

    .line 1092
    sget p1, Ltech/ulo/library/R$string;->progress_clearing_support_files:I

    invoke-virtual {p0, p1}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1093
    invoke-direct {p0, p1, v1}, Ltech/ulo/library/MainActivity;->updateProgressBar(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1095
    :cond_7
    instance-of p1, p1, Ltech/ulo/library/viewmodel/ProgressBarOperationComplete;

    if-eqz p1, :cond_8

    .line 1096
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->killProgressBar()V

    :goto_0
    return-void

    :cond_8
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final handleSessionHasBeenActivated()V
    .locals 4

    .line 716
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->handleSessionHasBeenActivated()V

    .line 717
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->killProgressBar()V

    .line 718
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda2;-><init>(Ltech/ulo/library/MainActivity;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final handleSessionHasBeenActivated$lambda$15(Ltech/ulo/library/MainActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 719
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->finish()V

    return-void
.end method

.method private final handleSessionIsReady()V
    .locals 2

    const/4 v0, 0x0

    .line 711
    iput-boolean v0, p0, Ltech/ulo/library/MainActivity;->waitingForExtractionStatus:Z

    .line 712
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitExtractionResult(Z)V

    return-void
.end method

.method private final handleStateUpdate(Ltech/ulo/library/viewmodel/State;)V
    .locals 1

    .line 588
    instance-of v0, p1, Ltech/ulo/library/viewmodel/WaitingForInput;

    if-eqz v0, :cond_0

    .line 589
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->killProgressBar()V

    goto/16 :goto_0

    .line 591
    :cond_0
    instance-of v0, p1, Ltech/ulo/library/viewmodel/CanOnlyStartSingleSession;

    if-eqz v0, :cond_1

    .line 592
    sget p1, Ltech/ulo/library/R$string;->single_session_supported:I

    sget v0, Ltech/ulo/customlibrary/R$string;->app_name:I

    invoke-virtual {p0, v0}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ltech/ulo/library/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ltech/ulo/library/MainActivity;->showToast(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->handleUserInputCancelled()V

    goto :goto_0

    .line 595
    :cond_1
    instance-of v0, p1, Ltech/ulo/library/viewmodel/SessionCanBePrepared;

    if-eqz v0, :cond_2

    .line 596
    check-cast p1, Ltech/ulo/library/viewmodel/SessionCanBePrepared;

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/SessionCanBePrepared;->getFilesystem()Ltech/ulo/library/model/entities/Filesystem;

    move-result-object p1

    invoke-direct {p0, p1}, Ltech/ulo/library/MainActivity;->prepareSession(Ltech/ulo/library/model/entities/Filesystem;)V

    goto :goto_0

    .line 598
    :cond_2
    instance-of v0, p1, Ltech/ulo/library/viewmodel/SessionCanBeStarted;

    if-eqz v0, :cond_3

    .line 599
    check-cast p1, Ltech/ulo/library/viewmodel/SessionCanBeStarted;

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/SessionCanBeStarted;->getSession()Ltech/ulo/library/model/entities/Session;

    move-result-object p1

    invoke-direct {p0, p1}, Ltech/ulo/library/MainActivity;->prepareSessionForStart(Ltech/ulo/library/model/entities/Session;)V

    goto :goto_0

    .line 601
    :cond_3
    instance-of v0, p1, Ltech/ulo/library/viewmodel/SessionCanBeRestarted;

    if-eqz v0, :cond_4

    .line 602
    check-cast p1, Ltech/ulo/library/viewmodel/SessionCanBeRestarted;

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/SessionCanBeRestarted;->getSession()Ltech/ulo/library/model/entities/Session;

    move-result-object p1

    invoke-direct {p0, p1}, Ltech/ulo/library/MainActivity;->restartRunningSession(Ltech/ulo/library/model/entities/Session;)V

    goto :goto_0

    .line 604
    :cond_4
    instance-of v0, p1, Ltech/ulo/library/viewmodel/IllegalState;

    if-eqz v0, :cond_5

    .line 605
    check-cast p1, Ltech/ulo/library/viewmodel/IllegalState;

    invoke-direct {p0, p1}, Ltech/ulo/library/MainActivity;->handleIllegalState(Ltech/ulo/library/viewmodel/IllegalState;)V

    goto :goto_0

    .line 607
    :cond_5
    instance-of v0, p1, Ltech/ulo/library/viewmodel/UserInputRequiredState;

    if-eqz v0, :cond_6

    .line 608
    check-cast p1, Ltech/ulo/library/viewmodel/UserInputRequiredState;

    invoke-direct {p0, p1}, Ltech/ulo/library/MainActivity;->handleUserInputState(Ltech/ulo/library/viewmodel/UserInputRequiredState;)V

    goto :goto_0

    .line 610
    :cond_6
    instance-of v0, p1, Ltech/ulo/library/viewmodel/ProgressBarUpdateState;

    if-eqz v0, :cond_7

    .line 611
    check-cast p1, Ltech/ulo/library/viewmodel/ProgressBarUpdateState;

    invoke-direct {p0, p1}, Ltech/ulo/library/MainActivity;->handleProgressBarUpdateState(Ltech/ulo/library/viewmodel/ProgressBarUpdateState;)V

    :goto_0
    return-void

    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final handleUserInputState(Ltech/ulo/library/viewmodel/UserInputRequiredState;)V
    .locals 7

    .line 750
    instance-of v0, p1, Ltech/ulo/library/viewmodel/LowStorageAcknowledgementRequired;

    if-eqz v0, :cond_0

    .line 751
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->displayLowStorageDialog()V

    goto/16 :goto_2

    .line 753
    :cond_0
    instance-of v0, p1, Ltech/ulo/library/viewmodel/UserFeedbackCheckRequired;

    if-eqz v0, :cond_2

    .line 754
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getUserFeedbackPrompter()Ltech/ulo/library/utils/UserFeedbackPrompter;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/utils/UserFeedbackPrompter;->viewShouldBeShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 755
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getUserFeedback()V

    goto/16 :goto_2

    .line 757
    :cond_1
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->userFeedbackChecked()V

    goto/16 :goto_2

    .line 760
    :cond_2
    instance-of v0, p1, Ltech/ulo/library/viewmodel/UserContributionCheckRequired;

    if-eqz v0, :cond_6

    .line 761
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getContributionPrompter()Ltech/ulo/library/utils/ContributionPrompter;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/utils/ContributionPrompter;->canAskForPurchase()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 762
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getContributionPrompter()Ltech/ulo/library/utils/ContributionPrompter;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/utils/ContributionPrompter;->hasMadeInAppPurchase()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getContributionPrompter()Ltech/ulo/library/utils/ContributionPrompter;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/utils/ContributionPrompter;->hasMadeSubPurchase()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 765
    :cond_3
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getUserContribution()V

    goto/16 :goto_2

    .line 763
    :cond_4
    :goto_0
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->userContributionChecked()V

    goto/16 :goto_2

    .line 768
    :cond_5
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->userContributionChecked()V

    goto/16 :goto_2

    .line 771
    :cond_6
    instance-of v0, p1, Ltech/ulo/library/viewmodel/FilesystemFlavorRequired;

    if-eqz v0, :cond_8

    .line 772
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->getLastSelectedApp()Ltech/ulo/library/model/entities/App;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/App;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/flavors.txt"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 773
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/apps/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 774
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_7

    .line 775
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object v1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "default"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitFilesystemFlavor$default(Ltech/ulo/library/viewmodel/MainActivityViewModel;Ljava/lang/String;ZLtech/ulo/library/model/entities/ExecutionType;ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 777
    :cond_7
    invoke-direct {p0, v0}, Ltech/ulo/library/MainActivity;->getFlavor(Ljava/io/File;)V

    goto/16 :goto_2

    .line 780
    :cond_8
    instance-of v0, p1, Ltech/ulo/library/viewmodel/UserPaymentRequired;

    if-eqz v0, :cond_b

    .line 781
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getContributionPrompter()Ltech/ulo/library/utils/ContributionPrompter;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/utils/ContributionPrompter;->hasMadeInAppPurchase()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getContributionPrompter()Ltech/ulo/library/utils/ContributionPrompter;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/utils/ContributionPrompter;->hasMadeSubPurchase()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1

    .line 784
    :cond_9
    new-instance p1, Ltech/ulo/library/MainActivity$handleUserInputState$1;

    invoke-direct {p1, p0}, Ltech/ulo/library/MainActivity$handleUserInputState$1;-><init>(Ltech/ulo/library/MainActivity;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Ltech/ulo/library/MainActivity;->proFeaturePaid:Lkotlin/jvm/functions/Function0;

    .line 785
    new-instance p1, Ltech/ulo/library/MainActivity$handleUserInputState$2;

    invoke-direct {p1, p0}, Ltech/ulo/library/MainActivity$handleUserInputState$2;-><init>(Ltech/ulo/library/MainActivity;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Ltech/ulo/library/MainActivity;->proFeatureDeclined:Lkotlin/jvm/functions/Function0;

    .line 786
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getContributionPrompter()Ltech/ulo/library/utils/ContributionPrompter;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ltech/ulo/library/utils/ContributionPrompter;->setPurchaseRequired(Z)V

    .line 787
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getBillingManager()Ltech/ulo/library/utils/BillingManager;

    move-result-object p1

    const-string v0, "pro_features"

    invoke-virtual {p1, v0}, Ltech/ulo/library/utils/BillingManager;->startPurchaseFlow(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 782
    :cond_a
    :goto_1
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitUserPayment()V

    goto/16 :goto_2

    .line 790
    :cond_b
    instance-of v0, p1, Ltech/ulo/library/viewmodel/FilesystemCredentialsRequired;

    if-eqz v0, :cond_c

    .line 792
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p1

    const/16 v0, 0x8

    .line 794
    invoke-virtual {p0, v0}, Ltech/ulo/library/MainActivity;->getRandPassword(I)Ljava/lang/String;

    move-result-object v1

    .line 795
    invoke-virtual {p0, v0}, Ltech/ulo/library/MainActivity;->getRandPassword(I)Ljava/lang/String;

    move-result-object v0

    .line 792
    const-string v2, "userland"

    invoke-virtual {p1, v2, v1, v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitFilesystemCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 800
    :cond_c
    instance-of v0, p1, Ltech/ulo/library/viewmodel/AppServiceTypePreferenceRequired;

    if-eqz v0, :cond_d

    .line 809
    check-cast p1, Ltech/ulo/library/viewmodel/AppServiceTypePreferenceRequired;

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/AppServiceTypePreferenceRequired;->getSession()Ltech/ulo/library/model/entities/Session;

    move-result-object p1

    invoke-direct {p0, p1}, Ltech/ulo/library/MainActivity;->getServiceTypePreference(Ltech/ulo/library/model/entities/Session;)V

    goto :goto_2

    .line 811
    :cond_d
    instance-of v0, p1, Ltech/ulo/library/viewmodel/AppDisplayPreferencesRequired;

    if-eqz v0, :cond_e

    .line 812
    check-cast p1, Ltech/ulo/library/viewmodel/AppDisplayPreferencesRequired;

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/AppDisplayPreferencesRequired;->getSession()Ltech/ulo/library/model/entities/Session;

    move-result-object p1

    invoke-direct {p0, p1}, Ltech/ulo/library/MainActivity;->getDisplayPreferences(Ltech/ulo/library/model/entities/Session;)V

    goto :goto_2

    .line 814
    :cond_e
    instance-of v0, p1, Ltech/ulo/library/viewmodel/LargeDownloadRequired;

    if-eqz v0, :cond_10

    .line 815
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->wifiIsEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 816
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object v0

    check-cast p1, Ltech/ulo/library/viewmodel/LargeDownloadRequired;

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/LargeDownloadRequired;->getDownloadRequirements()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->startAssetDownloads(Ljava/util/List;)V

    return-void

    .line 819
    :cond_f
    check-cast p1, Ltech/ulo/library/viewmodel/LargeDownloadRequired;

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/LargeDownloadRequired;->getDownloadRequirements()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ltech/ulo/library/MainActivity;->displayNetworkChoicesDialog(Ljava/util/List;)V

    goto :goto_2

    .line 821
    :cond_10
    instance-of p1, p1, Ltech/ulo/library/viewmodel/ActiveSessionsMustBeDeactivated;

    if-eqz p1, :cond_11

    .line 822
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 823
    sget v1, Ltech/ulo/library/R$string;->general_error_title:I

    .line 824
    sget p1, Ltech/ulo/library/R$string;->deactivate_sessions:I

    invoke-virtual {p0, p1}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string p1, "getString(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 822
    invoke-static/range {v0 .. v5}, Ltech/ulo/library/utils/ExtensionsKt;->displayGenericErrorDialog$default(Landroid/content/Context;ILjava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_2
    return-void

    :cond_11
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final killProgressBar()V
    .locals 4

    .line 1138
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xc8

    .line 1139
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1140
    iget-object v1, p0, Ltech/ulo/library/MainActivity;->binding:Ltech/ulo/library/databinding/ActivityMainBinding;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget-object v1, v1, Ltech/ulo/library/databinding/ActivityMainBinding;->layoutProgress:Landroidx/constraintlayout/widget/ConstraintLayout;

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1141
    iget-object v0, p0, Ltech/ulo/library/MainActivity;->binding:Ltech/ulo/library/databinding/ActivityMainBinding;

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Ltech/ulo/library/databinding/ActivityMainBinding;->layoutProgress:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 1142
    iget-object v0, p0, Ltech/ulo/library/MainActivity;->binding:Ltech/ulo/library/databinding/ActivityMainBinding;

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v0, v0, Ltech/ulo/library/databinding/ActivityMainBinding;->layoutProgress:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setFocusable(Z)V

    .line 1143
    iget-object v0, p0, Ltech/ulo/library/MainActivity;->binding:Ltech/ulo/library/databinding/ActivityMainBinding;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, v0

    :goto_0
    iget-object v0, v2, Ltech/ulo/library/databinding/ActivityMainBinding;->layoutProgress:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setClickable(Z)V

    .line 1144
    iput-boolean v1, p0, Ltech/ulo/library/MainActivity;->progressBarIsVisible:Z

    .line 1150
    iput-boolean v1, p0, Ltech/ulo/library/MainActivity;->waitingForExtractionStatus:Z

    return-void
.end method

.method private final prepareSession(Ltech/ulo/library/model/entities/Filesystem;)V
    .locals 3

    const/4 v0, 0x1

    .line 640
    iput-boolean v0, p0, Ltech/ulo/library/MainActivity;->waitingForExtractionStatus:Z

    .line 641
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Ltech/ulo/library/ServerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 642
    const-string v1, "type"

    const-string v2, "prepare"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 643
    const-string v1, "filesystem"

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "putExtra(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0, p1}, Ltech/ulo/library/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private final prepareSessionForStart(Ltech/ulo/library/model/entities/Session;)V
    .locals 2

    .line 617
    sget v0, Ltech/ulo/library/R$string;->progress_starting:I

    invoke-virtual {p0, v0}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 618
    const-string v1, ""

    .line 619
    invoke-direct {p0, v0, v1}, Ltech/ulo/library/MainActivity;->updateProgressBar(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getServiceType()Ltech/ulo/library/model/entities/ServiceType;

    move-result-object v0

    instance-of v0, v0, Ltech/ulo/library/model/entities/ServiceType$Xsdl;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-le v0, v1, :cond_0

    .line 624
    sget-object v0, Ltech/ulo/library/model/entities/ServiceType$Vnc;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Vnc;

    check-cast v0, Ltech/ulo/library/model/entities/ServiceType;

    invoke-virtual {p1, v0}, Ltech/ulo/library/model/entities/Session;->setServiceType(Ltech/ulo/library/model/entities/ServiceType;)V

    .line 627
    :cond_0
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getServiceType()Ltech/ulo/library/model/entities/ServiceType;

    move-result-object v0

    .line 628
    sget-object v1, Ltech/ulo/library/model/entities/ServiceType$Xsdl;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Xsdl;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 629
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->setLastSelectedSession(Ltech/ulo/library/model/entities/Session;)V

    .line 630
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->sendXsdlIntentToSetDisplayNumberAndExpectResult()V

    goto :goto_0

    .line 632
    :cond_1
    sget-object v1, Ltech/ulo/library/model/entities/ServiceType$Vnc;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Vnc;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 633
    invoke-direct {p0, p1}, Ltech/ulo/library/MainActivity;->startSession(Ltech/ulo/library/model/entities/Session;)V

    goto :goto_0

    .line 635
    :cond_2
    invoke-direct {p0, p1}, Ltech/ulo/library/MainActivity;->startSession(Ltech/ulo/library/model/entities/Session;)V

    :goto_0
    return-void
.end method

.method private final requestMicPermissions()V
    .locals 3

    .line 1487
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1489
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1492
    iget v1, p0, Ltech/ulo/library/MainActivity;->micPermissionRequestCode:I

    invoke-virtual {p0, v0, v1}, Ltech/ulo/library/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private final restartRunningSession(Ltech/ulo/library/model/entities/Session;)V
    .locals 3

    .line 704
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Ltech/ulo/library/ServerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 705
    const-string v1, "type"

    const-string v2, "restartRunningSession"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 706
    const-string v1, "session"

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "putExtra(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 707
    invoke-virtual {p0, p1}, Ltech/ulo/library/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private final sendWikiIntent()V
    .locals 3

    .line 504
    new-instance v0, Landroid/content/Intent;

    .line 506
    const-string v1, ""

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 504
    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 508
    invoke-virtual {p0, v0}, Ltech/ulo/library/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final sendXsdlIntentToSetDisplayNumberAndExpectResult()V
    .locals 4

    .line 668
    const-string v0, "android.intent.action.VIEW"

    .line 669
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const-string v3, "x11://give.me.display:4721"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v2, 0x1

    .line 671
    invoke-virtual {p0, v1, v2}, Ltech/ulo/library/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 676
    :catch_0
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    .line 678
    const-string v2, "market://details?id=x.org.server"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 676
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 675
    invoke-virtual {p0, v1}, Ltech/ulo/library/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 683
    :catch_1
    new-instance v1, Landroid/content/Intent;

    .line 685
    const-string v2, "https://play.google.com/store/apps/details?id=x.org.server"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 683
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 682
    invoke-virtual {p0, v1}, Ltech/ulo/library/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private final setNavStartDestination()V
    .locals 4

    .line 272
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getNavController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->getNavInflater()Landroidx/navigation/NavInflater;

    move-result-object v0

    sget v1, Ltech/ulo/library/R$navigation;->nav_graph:I

    invoke-virtual {v0, v1}, Landroidx/navigation/NavInflater;->inflate(I)Landroidx/navigation/NavGraph;

    move-result-object v0

    .line 273
    sget v1, Ltech/ulo/library/R$id;->app_list_fragment:I

    invoke-virtual {v0, v1}, Landroidx/navigation/NavGraph;->setStartDestination(I)V

    .line 274
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getNavController()Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/navigation/NavController;->setGraph(Landroidx/navigation/NavGraph;)V

    .line 276
    sget v0, Ltech/ulo/library/R$id;->bottom_nav_view:I

    .line 275
    invoke-virtual {p0, v0}, Ltech/ulo/library/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 278
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    .line 1692
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

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

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "getSharedPreferences(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    const-string v2, "pref_hide_sessions_filesystems"

    .line 278
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    .line 282
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setVisibility(I)V

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {v0, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final setProgressDialogNavListeners()V
    .locals 2

    .line 289
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getNavController()Landroidx/navigation/NavController;

    move-result-object v0

    new-instance v1, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda3;-><init>(Ltech/ulo/library/MainActivity;)V

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->addOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V

    return-void
.end method

.method private static final setProgressDialogNavListeners$lambda$4(Ltech/ulo/library/MainActivity;Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "destination"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroidx/navigation/NavDestination;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    sget p3, Ltech/ulo/library/R$string;->sessions:I

    invoke-virtual {p0, p3}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 292
    invoke-virtual {p2}, Landroidx/navigation/NavDestination;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    sget p3, Ltech/ulo/library/R$string;->apps:I

    invoke-virtual {p0, p3}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 293
    invoke-virtual {p2}, Landroidx/navigation/NavDestination;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    sget p2, Ltech/ulo/library/R$string;->filesystems:I

    invoke-virtual {p0, p2}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 290
    :goto_1
    iput-boolean p1, p0, Ltech/ulo/library/MainActivity;->currentFragmentDisplaysProgressDialog:Z

    if-nez p1, :cond_2

    .line 294
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->killProgressBar()V

    goto :goto_2

    .line 295
    :cond_2
    iget-boolean p1, p0, Ltech/ulo/library/MainActivity;->progressBarIsVisible:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->displayProgressBar()V

    :cond_3
    :goto_2
    return-void
.end method

.method private final showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 845
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "getString(...)"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p2, "qemuSessionStartFailed"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 923
    :cond_0
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->killProgressBar()V

    .line 925
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->handleUserInputCancelled()V

    .line 926
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    .line 927
    sget v3, Ltech/ulo/library/R$string;->general_error_title:I

    .line 928
    sget p1, Ltech/ulo/library/R$string;->qemu_session_start_failed:I

    invoke-virtual {p0, p1}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 926
    invoke-static/range {v2 .. v7}, Ltech/ulo/library/utils/ExtensionsKt;->displayGenericErrorDialog$default(Landroid/content/Context;ILjava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 845
    :sswitch_1
    const-string p2, "avfUpdateAvailable"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 939
    :cond_1
    sget p1, Ltech/ulo/library/R$id;->avf_install_wizard_fragment:I

    invoke-direct {p0, p1}, Ltech/ulo/library/MainActivity;->displayCompanionAppUpdateDialog(I)V

    goto/16 :goto_0

    .line 845
    :sswitch_2
    const-string p2, "serverStarting"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    .line 877
    :cond_2
    sget p1, Ltech/ulo/library/R$string;->progress_starting:I

    invoke-virtual {p0, p1}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 878
    sget p2, Ltech/ulo/library/R$string;->progress_starting_server:I

    invoke-virtual {p0, p2}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 879
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/MainActivity;->updateProgressBar(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 845
    :sswitch_3
    const-string p2, "clientStarting"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    .line 882
    :cond_3
    sget p1, Ltech/ulo/library/R$string;->progress_starting:I

    invoke-virtual {p0, p1}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 883
    sget p2, Ltech/ulo/library/R$string;->progress_starting_client:I

    invoke-virtual {p0, p2}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 884
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/MainActivity;->updateProgressBar(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 845
    :sswitch_4
    const-string p2, "avfRunnerNotInstalled"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    .line 906
    :cond_4
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object v0

    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->getLastSelectedSession()Ltech/ulo/library/model/entities/Session;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->waitForPermissions$default(Ltech/ulo/library/viewmodel/MainActivityViewModel;Ltech/ulo/library/model/entities/App;Ltech/ulo/library/model/entities/Session;ZZILjava/lang/Object;)V

    .line 908
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getNavController()Landroidx/navigation/NavController;

    move-result-object p1

    sget p2, Ltech/ulo/library/R$id;->avf_install_wizard_fragment:I

    invoke-virtual {p1, p2}, Landroidx/navigation/NavController;->navigate(I)V

    goto/16 :goto_0

    .line 845
    :sswitch_5
    const-string p2, "unhandledSessionServiceType"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    .line 847
    :cond_5
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    .line 848
    sget v3, Ltech/ulo/library/R$string;->general_error_title:I

    .line 849
    sget p1, Ltech/ulo/library/R$string;->illegal_state_unhandled_session_service_type:I

    invoke-virtual {p0, p1}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 847
    invoke-static/range {v2 .. v7}, Ltech/ulo/library/utils/ExtensionsKt;->displayGenericErrorDialog$default(Landroid/content/Context;ILjava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 845
    :sswitch_6
    const-string v0, "extractionStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    .line 863
    :cond_6
    sget p1, Ltech/ulo/library/R$string;->progress_starting:I

    invoke-virtual {p0, p1}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 864
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/MainActivity;->updateProgressBar(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 845
    :sswitch_7
    const-string p2, "avfSessionStartFailed"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    .line 887
    :cond_7
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->killProgressBar()V

    .line 893
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->handleUserInputCancelled()V

    .line 894
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    .line 895
    sget v3, Ltech/ulo/library/R$string;->general_error_title:I

    .line 896
    sget p1, Ltech/ulo/library/R$string;->avf_session_start_failed:I

    invoke-virtual {p0, p1}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 894
    invoke-static/range {v2 .. v7}, Ltech/ulo/library/utils/ExtensionsKt;->displayGenericErrorDialog$default(Landroid/content/Context;ILjava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 845
    :sswitch_8
    const-string p2, "qemuDiskCorrupted"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    .line 936
    :cond_8
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->killProgressBar()V

    .line 937
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->getLastSelectedSession()Ltech/ulo/library/model/entities/Session;

    move-result-object p1

    invoke-direct {p0, p1}, Ltech/ulo/library/MainActivity;->displayQemuDiskCorruptedDialog(Ltech/ulo/library/model/entities/Session;)V

    goto/16 :goto_0

    .line 845
    :sswitch_9
    const-string p2, "playStoreMissingForClient"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    .line 853
    :cond_9
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    .line 854
    sget v3, Ltech/ulo/library/R$string;->alert_need_client_app_title:I

    .line 855
    sget p1, Ltech/ulo/library/R$string;->alert_need_client_app_message:I

    invoke-virtual {p0, p1}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 853
    invoke-static/range {v2 .. v7}, Ltech/ulo/library/utils/ExtensionsKt;->displayGenericErrorDialog$default(Landroid/content/Context;ILjava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 845
    :sswitch_a
    const-string p2, "extractionStarted"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    .line 858
    :cond_a
    sget p1, Ltech/ulo/library/R$string;->progress_starting:I

    invoke-virtual {p0, p1}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 859
    sget p2, Ltech/ulo/library/R$string;->progress_setting_up_filesystem:I

    invoke-virtual {p0, p2}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 860
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/MainActivity;->updateProgressBar(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 845
    :sswitch_b
    const-string p2, "extractionCompleteFailure"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    .line 867
    :cond_b
    sget p1, Ltech/ulo/library/R$string;->progress_starting:I

    invoke-virtual {p0, p1}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 868
    sget p2, Ltech/ulo/library/R$string;->error_filesystem_extraction:I

    invoke-virtual {p0, p2}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 869
    iput-boolean v0, p0, Ltech/ulo/library/MainActivity;->waitingForExtractionStatus:Z

    .line 870
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/MainActivity;->updateProgressBar(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda1;-><init>(Ltech/ulo/library/MainActivity;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 845
    :sswitch_c
    const-string p2, "qemuRunnerNotInstalled"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    .line 912
    :cond_c
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object v0

    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->getLastSelectedSession()Ltech/ulo/library/model/entities/Session;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->waitForPermissions$default(Ltech/ulo/library/viewmodel/MainActivityViewModel;Ltech/ulo/library/model/entities/App;Ltech/ulo/library/model/entities/Session;ZZILjava/lang/Object;)V

    .line 914
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getNavController()Landroidx/navigation/NavController;

    move-result-object p1

    sget p2, Ltech/ulo/library/R$id;->qemu_install_wizard_fragment:I

    invoke-virtual {p1, p2}, Landroidx/navigation/NavController;->navigate(I)V

    goto :goto_0

    .line 845
    :sswitch_d
    const-string p2, "qemuUpdateAvailable"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    .line 940
    :cond_d
    sget p1, Ltech/ulo/library/R$id;->qemu_install_wizard_fragment:I

    invoke-direct {p0, p1}, Ltech/ulo/library/MainActivity;->displayCompanionAppUpdateDialog(I)V

    goto :goto_0

    .line 845
    :sswitch_e
    const-string p2, "avfDiskCorrupted"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    .line 932
    :cond_e
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->killProgressBar()V

    .line 933
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->getLastSelectedSession()Ltech/ulo/library/model/entities/Session;

    move-result-object p1

    invoke-direct {p0, p1}, Ltech/ulo/library/MainActivity;->displayAvfDiskCorruptedDialog(Ltech/ulo/library/model/entities/Session;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6de0b902 -> :sswitch_e
        -0x598fba5c -> :sswitch_d
        -0x45eefeed -> :sswitch_c
        -0x436a5cd6 -> :sswitch_b
        -0x42c16966 -> :sswitch_a
        -0x3d0c54a5 -> :sswitch_9
        -0x39562f0d -> :sswitch_8
        -0x91abc86 -> :sswitch_7
        0x61ad2b9 -> :sswitch_6
        0x331ecefc -> :sswitch_5
        0x3e5a99e8 -> :sswitch_4
        0x570b3d2b -> :sswitch_3
        0x58a380a3 -> :sswitch_2
        0x6a6064ef -> :sswitch_1
        0x729baaa5 -> :sswitch_0
    .end sparse-switch
.end method

.method private static final showDialog$lambda$17(Ltech/ulo/library/MainActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 873
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->killProgressBar()V

    return-void
.end method

.method private static final showProFeaturesRequiredDialog$lambda$31(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1215
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getBillingManager()Ltech/ulo/library/utils/BillingManager;

    move-result-object p0

    const-string p2, "pro_features"

    invoke-virtual {p0, p2}, Ltech/ulo/library/utils/BillingManager;->startPurchaseFlow(Ljava/lang/String;)V

    .line 1216
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static final showProFeaturesRequiredDialog$lambda$32(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1219
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p0

    invoke-virtual {p0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->userContributionChecked()V

    .line 1220
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static final showProFeaturesRequiredDialog$lambda$33(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1223
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p2

    invoke-virtual {p2}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->userContributionChecked()V

    .line 1224
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getContributionPrompter()Ltech/ulo/library/utils/ContributionPrompter;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Ltech/ulo/library/utils/ContributionPrompter;->setCanAskForPurchase(Z)V

    .line 1225
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static final showProFeaturesRequiredDialog$lambda$34(Ltech/ulo/library/MainActivity;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1228
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p0

    invoke-virtual {p0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->userContributionChecked()V

    return-void
.end method

.method private final showToast(I)V
    .locals 2

    .line 724
    invoke-virtual {p0, p1}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 725
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private final showToast(Ljava/lang/String;)V
    .locals 2

    .line 729
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private final startSession(Ltech/ulo/library/model/entities/Session;)V
    .locals 3

    const/4 v0, 0x1

    .line 654
    iput-boolean v0, p0, Ltech/ulo/library/MainActivity;->waitingForExtractionStatus:Z

    .line 655
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Ltech/ulo/library/ServerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 656
    const-string v1, "type"

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 657
    const-string v1, "session"

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "putExtra(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 658
    invoke-virtual {p0, p1}, Ltech/ulo/library/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private static final stateObserver$lambda$1(Ltech/ulo/library/MainActivity;Ltech/ulo/library/viewmodel/State;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    new-instance v0, Ltech/ulo/library/utils/UlaBreadcrumb;

    iget-object v1, p0, Ltech/ulo/library/MainActivity;->className:Ljava/lang/String;

    sget-object v2, Ltech/ulo/library/utils/BreadcrumbType$ObservedState;->INSTANCE:Ltech/ulo/library/utils/BreadcrumbType$ObservedState;

    check-cast v2, Ltech/ulo/library/utils/BreadcrumbType;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ltech/ulo/library/utils/UlaBreadcrumb;-><init>(Ljava/lang/String;Ltech/ulo/library/utils/BreadcrumbType;Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Ltech/ulo/library/MainActivity;->logger:Ltech/ulo/library/utils/SentryLogger;

    invoke-virtual {v1, v0}, Ltech/ulo/library/utils/SentryLogger;->addBreadcrumb(Ltech/ulo/library/utils/UlaBreadcrumb;)V

    if-eqz p1, :cond_0

    .line 163
    invoke-direct {p0, p1}, Ltech/ulo/library/MainActivity;->handleStateUpdate(Ltech/ulo/library/viewmodel/State;)V

    :cond_0
    return-void
.end method

.method private final updateProgressBar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1131
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->displayProgressBar()V

    .line 1133
    iget-object v0, p0, Ltech/ulo/library/MainActivity;->binding:Ltech/ulo/library/databinding/ActivityMainBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Ltech/ulo/library/databinding/ActivityMainBinding;->textSessionListProgressStep:Landroid/widget/TextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1134
    iget-object p1, p0, Ltech/ulo/library/MainActivity;->binding:Ltech/ulo/library/databinding/ActivityMainBinding;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    iget-object p1, v1, Ltech/ulo/library/databinding/ActivityMainBinding;->textSessionListProgressDetails:Landroid/widget/TextView;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final validateCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1662
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ltech/ulo/library/R$array;->blacklisted_usernames:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "getStringArray(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1663
    new-instance v1, Ltech/ulo/library/utils/CredentialValidator;

    invoke-direct {v1}, Ltech/ulo/library/utils/CredentialValidator;-><init>()V

    .line 1665
    invoke-virtual {v1, p1, v0}, Ltech/ulo/library/utils/CredentialValidator;->validateUsername(Ljava/lang/String;[Ljava/lang/String;)Ltech/ulo/library/utils/CredentialValidationStatus;

    move-result-object p1

    .line 1666
    invoke-virtual {v1, p2}, Ltech/ulo/library/utils/CredentialValidator;->validatePassword(Ljava/lang/String;)Ltech/ulo/library/utils/CredentialValidationStatus;

    move-result-object p2

    .line 1667
    invoke-virtual {v1, p3}, Ltech/ulo/library/utils/CredentialValidator;->validateVncPassword(Ljava/lang/String;)Ltech/ulo/library/utils/CredentialValidationStatus;

    move-result-object p3

    .line 1670
    invoke-virtual {p1}, Ltech/ulo/library/utils/CredentialValidationStatus;->getCredentialIsValid()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1671
    move-object p2, p0

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p1}, Ltech/ulo/library/utils/CredentialValidationStatus;->getErrorMessageId()I

    move-result p1

    invoke-static {p2, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1674
    :cond_0
    invoke-virtual {p2}, Ltech/ulo/library/utils/CredentialValidationStatus;->getCredentialIsValid()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1675
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p2}, Ltech/ulo/library/utils/CredentialValidationStatus;->getErrorMessageId()I

    move-result p2

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1678
    :cond_1
    invoke-virtual {p3}, Ltech/ulo/library/utils/CredentialValidationStatus;->getCredentialIsValid()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1679
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p3}, Ltech/ulo/library/utils/CredentialValidationStatus;->getErrorMessageId()I

    move-result p2

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method private final wifiIsEnabled()Z
    .locals 7

    .line 1154
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Ltech/ulo/library/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1155
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    const-string v2, "getAllNetworks(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 1156
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v6, 0x1

    .line 1157
    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-ne v5, v6, :cond_0

    return v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method


# virtual methods
.method public appHasBeenSelected(Ltech/ulo/library/model/entities/App;Z)V
    .locals 10

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "market://details?id="

    const-string v2, "app"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/App;->getSupportsStandalone()Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 523
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    .line 525
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/App;->getSupportsStandalone()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 523
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 522
    invoke-virtual {p0, p2}, Ltech/ulo/library/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 531
    :catch_0
    new-instance p2, Landroid/content/Intent;

    .line 533
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/App;->getSupportsStandalone()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://play.google.com/store/apps/details?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 531
    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 530
    invoke-virtual {p0, p2}, Ltech/ulo/library/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 539
    :cond_0
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getNetInfo()V

    .line 540
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getCameraInfo()V

    .line 542
    const-string v0, "apps"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ltech/ulo/library/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 543
    const-string v2, "askConnectType"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 545
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 546
    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 547
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 550
    :cond_1
    const-string v2, "askDisplayPreferences"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 552
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 553
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 554
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 558
    :cond_2
    sget-object v0, Ltech/ulo/library/utils/PermissionHandler;->Companion:Ltech/ulo/library/utils/PermissionHandler$Companion;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v0, v2}, Ltech/ulo/library/utils/PermissionHandler$Companion;->permissionsAreGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 559
    sget-object p2, Ltech/ulo/library/utils/PermissionHandler;->Companion:Ltech/ulo/library/utils/PermissionHandler$Companion;

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p2, v0, v1}, Ltech/ulo/library/utils/PermissionHandler$Companion;->showPermissionsNecessaryDialog(Landroid/app/Activity;Z)V

    .line 560
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object v3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->waitForPermissions$default(Ltech/ulo/library/viewmodel/MainActivityViewModel;Ltech/ulo/library/model/entities/App;Ltech/ulo/library/model/entities/Session;ZZILjava/lang/Object;)V

    return-void

    .line 563
    :cond_3
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v6, v7}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitAppSelection(Ltech/ulo/library/model/entities/App;ZZZ)V

    return-void
.end method

.method public companionAppSetupComplete()V
    .locals 1

    .line 583
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->companionAppSetupComplete()V

    return-void
.end method

.method public final getBillingManager()Ltech/ulo/library/utils/BillingManager;
    .locals 1

    .line 114
    iget-object v0, p0, Ltech/ulo/library/MainActivity;->billingManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/ulo/library/utils/BillingManager;

    return-object v0
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Ltech/ulo/library/MainActivity;->className:Ljava/lang/String;

    return-object v0
.end method

.method public final getRandPassword(I)Ljava/lang/String;
    .locals 5

    .line 736
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 741
    const-string v3, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 742
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 745
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;
    .locals 1

    .line 167
    iget-object v0, p0, Ltech/ulo/library/MainActivity;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/ulo/library/viewmodel/MainActivityViewModel;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 693
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_1

    .line 695
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->getLastSelectedSession()Ltech/ulo/library/model/entities/Session;

    move-result-object p1

    .line 696
    const-string p2, "run"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 697
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getServiceType()Ltech/ulo/library/model/entities/ServiceType;

    move-result-object p3

    sget-object v0, Ltech/ulo/library/model/entities/ServiceType$Xsdl;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Xsdl;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 698
    invoke-direct {p0, p1}, Ltech/ulo/library/MainActivity;->startSession(Ltech/ulo/library/model/entities/Session;)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 214
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 216
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Ltech/ulo/library/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;)Ltech/ulo/library/databinding/ActivityMainBinding;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/ulo/library/MainActivity;->binding:Ltech/ulo/library/databinding/ActivityMainBinding;

    .line 217
    const-string v0, "binding"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    invoke-virtual {p1}, Ltech/ulo/library/databinding/ActivityMainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string v2, "getRoot(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Ltech/ulo/library/MainActivity;->setContentView(Landroid/view/View;)V

    .line 219
    iget-object p1, p0, Ltech/ulo/library/MainActivity;->binding:Ltech/ulo/library/databinding/ActivityMainBinding;

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    iget-object p1, p1, Ltech/ulo/library/databinding/ActivityMainBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Ltech/ulo/library/MainActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 220
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getNotificationManager()Ltech/ulo/library/utils/NotificationConstructor;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/utils/NotificationConstructor;->createServiceNotificationChannel()V

    .line 222
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->setNavStartDestination()V

    .line 223
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->setProgressDialogNavListeners()V

    .line 225
    iget-object p1, p0, Ltech/ulo/library/MainActivity;->binding:Ltech/ulo/library/databinding/ActivityMainBinding;

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    iget-object p1, p1, Ltech/ulo/library/databinding/ActivityMainBinding;->bottomNavView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const-string v0, "bottomNavView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/material/navigation/NavigationBarView;

    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getNavController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/navigation/ui/NavigationUI;->setupWithNavController(Lcom/google/android/material/navigation/NavigationBarView;Landroidx/navigation/NavController;)V

    .line 227
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->getState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    iget-object v2, p0, Ltech/ulo/library/MainActivity;->stateObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 229
    new-instance p1, Ltech/ulo/library/utils/PreferenceGetter;

    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getUlaFiles()Ltech/ulo/library/utils/UlaFiles;

    move-result-object v0

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    .line 1689
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_preferences"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "getSharedPreferences(...)"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-direct {p1, v0, v3}, Ltech/ulo/library/utils/PreferenceGetter;-><init>(Ltech/ulo/library/utils/UlaFiles;Landroid/content/SharedPreferences;)V

    invoke-virtual {p1}, Ltech/ulo/library/utils/PreferenceGetter;->fetchXML()V

    .line 231
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_0
    const-string v0, "settings"

    const/4 v3, 0x2

    invoke-static {p1, v0, v5, v3, v1}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1690
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    const-string v0, "pref_hide_settings"

    .line 232
    invoke-interface {p1, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_5

    .line 237
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getNavController()Landroidx/navigation/NavController;

    move-result-object p1

    sget v0, Ltech/ulo/library/R$id;->settings_fragment:I

    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V

    goto :goto_1

    .line 239
    :cond_4
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "getIntent(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ltech/ulo/library/MainActivity;->checkForAppIntent(Landroid/content/Intent;)V

    .line 240
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->autoStart()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Ltech/ulo/library/R$menu;->menu_options:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 303
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 1693
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

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

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getSharedPreferences(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    const-string v1, "pref_hide_settings"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    sget v0, Ltech/ulo/library/R$id;->settings_fragment:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 477
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getBillingManager()Ltech/ulo/library/utils/BillingManager;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/utils/BillingManager;->destroy()V

    .line 479
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    .line 200
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v2, "settings"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v0}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    .line 1688
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "getSharedPreferences(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    const-string v0, "pref_hide_settings"

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 203
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getNavController()Landroidx/navigation/NavController;

    move-result-object p1

    sget v0, Ltech/ulo/library/R$id;->settings_fragment:I

    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 206
    invoke-direct {p0, p1}, Ltech/ulo/library/MainActivity;->checkForAppIntent(Landroid/content/Intent;)V

    .line 208
    :cond_2
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->autoStart()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Ltech/ulo/library/R$id;->terms_and_conditions:I

    if-ne v0, v1, :cond_0

    .line 484
    new-instance v0, Landroid/content/Intent;

    .line 486
    const-string v1, ""

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 484
    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 488
    invoke-virtual {p0, v0}, Ltech/ulo/library/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 490
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Ltech/ulo/library/R$id;->option_wiki:I

    if-ne v0, v1, :cond_1

    .line 491
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->sendWikiIntent()V

    .line 493
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Ltech/ulo/library/R$id;->clear_support_files:I

    if-ne v0, v1, :cond_2

    .line 494
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->displayClearSupportFilesDialog()V

    .line 498
    :cond_2
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    sget v1, Ltech/ulo/library/R$id;->nav_host_fragment:I

    invoke-static {v0, v1}, Landroidx/navigation/Navigation;->findNavController(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object v0

    .line 496
    invoke-static {p1, v0}, Landroidx/navigation/ui/NavigationUI;->onNavDestinationSelected(Landroid/view/MenuItem;Landroidx/navigation/NavController;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 500
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1045
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1046
    iget p2, p0, Ltech/ulo/library/MainActivity;->micPermissionRequestCode:I

    if-ne p1, p2, :cond_0

    return-void

    .line 1049
    :cond_0
    sget-object p2, Ltech/ulo/library/utils/PermissionHandler;->Companion:Ltech/ulo/library/utils/PermissionHandler$Companion;

    invoke-virtual {p2, p1, p3}, Ltech/ulo/library/utils/PermissionHandler$Companion;->permissionsWereGranted(I[I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1050
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->permissionsHaveBeenGranted()V

    goto :goto_0

    .line 1052
    :cond_1
    sget-object p1, Ltech/ulo/library/utils/PermissionHandler;->Companion:Ltech/ulo/library/utils/PermissionHandler$Companion;

    move-object p2, p0

    check-cast p2, Landroid/app/Activity;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Ltech/ulo/library/utils/PermissionHandler$Companion;->showPermissionsNecessaryDialog(Landroid/app/Activity;Z)V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 467
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 469
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getBillingManager()Ltech/ulo/library/utils/BillingManager;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/utils/BillingManager;->querySubPurchases()V

    .line 470
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getBillingManager()Ltech/ulo/library/utils/BillingManager;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/utils/BillingManager;->queryInAppPurchases()V

    .line 472
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->handleOnResume()V

    return-void
.end method

.method protected onStart()V
    .locals 5

    .line 441
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 442
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    .line 444
    iget-object v2, p0, Ltech/ulo/library/MainActivity;->serverServiceBroadcastReceiver:Ltech/ulo/library/MainActivity$serverServiceBroadcastReceiver$1;

    check-cast v2, Landroid/content/BroadcastReceiver;

    .line 445
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "tech.ulo.library.ServerService.RESULT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v1, v2, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 447
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    if-lt v1, v2, :cond_0

    .line 449
    iget-object v1, p0, Ltech/ulo/library/MainActivity;->downloadBroadcastReceiver:Ltech/ulo/library/MainActivity$downloadBroadcastReceiver$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 450
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 448
    invoke-virtual {p0, v1, v2, v3}, Ltech/ulo/library/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 455
    :cond_0
    iget-object v1, p0, Ltech/ulo/library/MainActivity;->downloadBroadcastReceiver:Ltech/ulo/library/MainActivity$downloadBroadcastReceiver$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 456
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0, v1, v2}, Ltech/ulo/library/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 459
    :goto_0
    iget-boolean v1, p0, Ltech/ulo/library/MainActivity;->waitingForExtractionStatus:Z

    if-eqz v1, :cond_1

    .line 460
    new-instance v1, Landroid/content/Intent;

    const-class v2, Ltech/ulo/library/ServerService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 461
    const-string v0, "type"

    const-string v2, "status"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "putExtra(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0, v0}, Ltech/ulo/library/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 512
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 514
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 515
    iget-object v1, p0, Ltech/ulo/library/MainActivity;->serverServiceBroadcastReceiver:Ltech/ulo/library/MainActivity$serverServiceBroadcastReceiver$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 516
    iget-object v0, p0, Ltech/ulo/library/MainActivity;->downloadBroadcastReceiver:Ltech/ulo/library/MainActivity$downloadBroadcastReceiver$1;

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Ltech/ulo/library/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 299
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getNavController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->navigateUp()Z

    move-result v0

    return v0
.end method

.method public sessionHasBeenSelected(Ltech/ulo/library/model/entities/Session;)V
    .locals 10

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getNetInfo()V

    .line 568
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->getCameraInfo()V

    .line 569
    sget-object v0, Ltech/ulo/library/utils/PermissionHandler;->Companion:Ltech/ulo/library/utils/PermissionHandler$Companion;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Ltech/ulo/library/utils/PermissionHandler$Companion;->permissionsAreGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    sget-object v0, Ltech/ulo/library/utils/PermissionHandler;->Companion:Ltech/ulo/library/utils/PermissionHandler$Companion;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ltech/ulo/library/utils/PermissionHandler$Companion;->showPermissionsNecessaryDialog(Landroid/app/Activity;Z)V

    .line 571
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object v3

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    invoke-static/range {v3 .. v9}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->waitForPermissions$default(Ltech/ulo/library/viewmodel/MainActivityViewModel;Ltech/ulo/library/model/entities/App;Ltech/ulo/library/model/entities/Session;ZZILjava/lang/Object;)V

    return-void

    .line 574
    :cond_0
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->submitSessionSelection(Ltech/ulo/library/model/entities/Session;)V

    return-void
.end method

.method public final showProFeaturesRequiredDialog(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1210
    new-instance v0, Landroid/app/AlertDialog$Builder;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1211
    sget v1, Ltech/ulo/library/R$string;->alert_pro_features_request_message:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1212
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1213
    sget v2, Ltech/ulo/library/R$string;->alert_pro_features_request_title:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1214
    sget v1, Ltech/ulo/library/R$string;->button_yes:I

    new-instance v2, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda6;-><init>(Ltech/ulo/library/MainActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1218
    sget v1, Ltech/ulo/library/R$string;->button_no:I

    new-instance v2, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda7;-><init>(Ltech/ulo/library/MainActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1222
    sget v1, Ltech/ulo/library/R$string;->button_never:I

    new-instance v2, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda8;-><init>(Ltech/ulo/library/MainActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1227
    new-instance p1, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda9;-><init>(Ltech/ulo/library/MainActivity;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1230
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Ltech/ulo/library/MainActivity;->customDialog:Landroid/app/AlertDialog;

    .line 1231
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public stopProgressFromFilesystemList()V
    .locals 0

    .line 1112
    invoke-direct {p0}, Ltech/ulo/library/MainActivity;->killProgressBar()V

    return-void
.end method

.method public updateFilesystemDeleteProgress()V
    .locals 2

    .line 1107
    sget v0, Ltech/ulo/library/R$string;->progress_deleting_filesystem:I

    invoke-virtual {p0, v0}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1108
    const-string v1, ""

    invoke-direct {p0, v0, v1}, Ltech/ulo/library/MainActivity;->updateProgressBar(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateFilesystemExportProgress(Ljava/lang/String;)V
    .locals 2

    const-string v0, "details"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1102
    sget v0, Ltech/ulo/library/R$string;->progress_exporting_filesystem:I

    invoke-virtual {p0, v0}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1103
    invoke-direct {p0, v0, p1}, Ltech/ulo/library/MainActivity;->updateProgressBar(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final userHasCompletedContribution()V
    .locals 1

    .line 1239
    iget-object v0, p0, Ltech/ulo/library/MainActivity;->customDialog:Landroid/app/AlertDialog;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1240
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->userContributionChecked()V

    return-void
.end method

.method public final userHasCompletedFeedback()V
    .locals 1

    .line 1205
    iget-object v0, p0, Ltech/ulo/library/MainActivity;->customDialog:Landroid/app/AlertDialog;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1206
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->getViewModel()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->userFeedbackChecked()V

    return-void
.end method

.method public final userHasCompletedPayment(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1245
    iget-object p1, p0, Ltech/ulo/library/MainActivity;->proFeaturePaid:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 1247
    :cond_0
    iget-object p1, p0, Ltech/ulo/library/MainActivity;->proFeatureDeclined:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method
