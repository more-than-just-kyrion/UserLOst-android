.class public final Ltech/ulo/library/ui/AppsListFragment;
.super Landroidx/fragment/app/Fragment;
.source "AppsListFragment.kt"

# interfaces
.implements Ltech/ulo/library/ui/AppsListAdapter$AppsClickHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/ulo/library/ui/AppsListFragment$AppSelection;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppsListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppsListFragment.kt\ntech/ulo/library/ui/AppsListFragment\n+ 2 Extensions.kt\ntech/ulo/library/utils/ExtensionsKt\n*L\n1#1,213:1\n49#2:214\n49#2:215\n*S KotlinDebug\n*F\n+ 1 AppsListFragment.kt\ntech/ulo/library/ui/AppsListFragment\n*L\n196#1:214\n202#1:215\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u00012\u00020\u0002:\u0001JB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0016J\u0008\u0010-\u001a\u00020*H\u0002J\u0008\u0010.\u001a\u00020/H\u0002J\u0012\u00100\u001a\u00020*2\u0008\u00101\u001a\u0004\u0018\u000102H\u0016J\u0010\u00103\u001a\u00020*2\u0006\u00104\u001a\u00020\tH\u0016J\u0010\u00105\u001a\u0002062\u0006\u00107\u001a\u000208H\u0016J\u0012\u00109\u001a\u00020*2\u0008\u00101\u001a\u0004\u0018\u000102H\u0016J\u0018\u0010:\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010;\u001a\u00020<H\u0016J&\u0010=\u001a\u0004\u0018\u00010>2\u0006\u0010;\u001a\u00020?2\u0008\u0010@\u001a\u0004\u0018\u00010A2\u0008\u00101\u001a\u0004\u0018\u000102H\u0016J\u0008\u0010B\u001a\u00020*H\u0016J\u0010\u0010C\u001a\u0002062\u0006\u00107\u001a\u000208H\u0016J\u0008\u0010D\u001a\u00020*H\u0002J\u0010\u0010E\u001a\u0002062\u0006\u00104\u001a\u00020\tH\u0002J\u0010\u0010F\u001a\u00020*2\u0006\u0010G\u001a\u00020/H\u0002J\u0010\u0010H\u001a\u0002062\u0006\u00104\u001a\u00020\tH\u0002J\u0008\u0010I\u001a\u000206H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0011\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0018\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u001b\u0010\u001b\u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u0011\u001a\u0004\u0008\u001d\u0010\u001eR\u000e\u0010 \u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020#0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010$\u001a\u00020%8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010\u0011\u001a\u0004\u0008&\u0010\'\u00a8\u0006K"
    }
    d2 = {
        "Ltech/ulo/library/ui/AppsListFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Ltech/ulo/library/ui/AppsListAdapter$AppsClickHandler;",
        "()V",
        "_binding",
        "Ltech/ulo/library/databinding/FragAppListBinding;",
        "activeAppsObserver",
        "Landroidx/lifecycle/Observer;",
        "",
        "Ltech/ulo/library/model/entities/App;",
        "activityContext",
        "Ltech/ulo/library/MainActivity;",
        "appsAdapter",
        "Ltech/ulo/library/ui/AppsListAdapter;",
        "getAppsAdapter",
        "()Ltech/ulo/library/ui/AppsListAdapter;",
        "appsAdapter$delegate",
        "Lkotlin/Lazy;",
        "appsObserver",
        "appsPreferences",
        "Ltech/ulo/library/utils/preferences/AppsPreferences;",
        "getAppsPreferences",
        "()Ltech/ulo/library/utils/preferences/AppsPreferences;",
        "appsPreferences$delegate",
        "binding",
        "getBinding",
        "()Ltech/ulo/library/databinding/FragAppListBinding;",
        "doOnAppSelection",
        "Ltech/ulo/library/ui/AppsListFragment$AppSelection;",
        "getDoOnAppSelection",
        "()Ltech/ulo/library/ui/AppsListFragment$AppSelection;",
        "doOnAppSelection$delegate",
        "refreshStatus",
        "Ltech/ulo/library/model/repositories/RefreshStatus;",
        "refreshStatusObserver",
        "Ltech/ulo/library/model/repositories/AppRefreshStatus;",
        "viewModel",
        "Ltech/ulo/library/viewmodel/AppsListViewModel;",
        "getViewModel",
        "()Ltech/ulo/library/viewmodel/AppsListViewModel;",
        "viewModel$delegate",
        "createContextMenu",
        "",
        "menu",
        "Landroid/view/Menu;",
        "doRefresh",
        "getUserlandVersion",
        "",
        "onActivityCreated",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onClick",
        "app",
        "onContextItemSelected",
        "",
        "item",
        "Landroid/view/MenuItem;",
        "onCreate",
        "onCreateOptionsMenu",
        "inflater",
        "Landroid/view/MenuInflater;",
        "onCreateView",
        "Landroid/view/View;",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onDestroyView",
        "onOptionsItemSelected",
        "setLatestUpdateUserlandVersion",
        "showAppDetails",
        "showRefreshUnavailableDialog",
        "message",
        "stopAppSession",
        "userlandIsNewVersion",
        "AppSelection",
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
.field private _binding:Ltech/ulo/library/databinding/FragAppListBinding;

.field private final activeAppsObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/App;",
            ">;>;"
        }
    .end annotation
.end field

.field private activityContext:Ltech/ulo/library/MainActivity;

.field private final appsAdapter$delegate:Lkotlin/Lazy;

.field private final appsObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/App;",
            ">;>;"
        }
    .end annotation
.end field

.field private final appsPreferences$delegate:Lkotlin/Lazy;

.field private final doOnAppSelection$delegate:Lkotlin/Lazy;

.field private refreshStatus:Ltech/ulo/library/model/repositories/RefreshStatus;

.field private final refreshStatusObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ltech/ulo/library/model/repositories/AppRefreshStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$BSSZFGTPMo_r9t6ZAT6C8pwOzJA(Ltech/ulo/library/ui/AppsListFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/ui/AppsListFragment;->activeAppsObserver$lambda$3(Ltech/ulo/library/ui/AppsListFragment;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FCY6-zLGne57vuL2j2VvesZM_Dc(Ltech/ulo/library/ui/AppsListFragment;)V
    .locals 0

    invoke-static {p0}, Ltech/ulo/library/ui/AppsListFragment;->onActivityCreated$lambda$6(Ltech/ulo/library/ui/AppsListFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SpUNKe_A5Q-yuNSOxibdLrPDYuU(Ltech/ulo/library/ui/AppsListFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/ui/AppsListFragment;->appsObserver$lambda$1(Ltech/ulo/library/ui/AppsListFragment;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kko8Ph-mBtJSeaorDaGbI-J6jKA(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/ui/AppsListFragment;->showRefreshUnavailableDialog$lambda$7(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pUCRF1HwpTcQYCnpwZxW72sM8_U(Ltech/ulo/library/ui/AppsListFragment;Ltech/ulo/library/model/repositories/AppRefreshStatus;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/ui/AppsListFragment;->refreshStatusObserver$lambda$5(Ltech/ulo/library/ui/AppsListFragment;Ltech/ulo/library/model/repositories/AppRefreshStatus;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 40
    new-instance v0, Ltech/ulo/library/ui/AppsListFragment$doOnAppSelection$2;

    invoke-direct {v0, p0}, Ltech/ulo/library/ui/AppsListFragment$doOnAppSelection$2;-><init>(Ltech/ulo/library/ui/AppsListFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/ui/AppsListFragment;->doOnAppSelection$delegate:Lkotlin/Lazy;

    .line 46
    new-instance v0, Ltech/ulo/library/ui/AppsListFragment$appsAdapter$2;

    invoke-direct {v0, p0}, Ltech/ulo/library/ui/AppsListFragment$appsAdapter$2;-><init>(Ltech/ulo/library/ui/AppsListFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/ui/AppsListFragment;->appsAdapter$delegate:Lkotlin/Lazy;

    .line 50
    sget-object v0, Ltech/ulo/library/model/repositories/RefreshStatus;->INACTIVE:Ltech/ulo/library/model/repositories/RefreshStatus;

    iput-object v0, p0, Ltech/ulo/library/ui/AppsListFragment;->refreshStatus:Ltech/ulo/library/model/repositories/RefreshStatus;

    .line 52
    new-instance v0, Ltech/ulo/library/ui/AppsListFragment$appsPreferences$2;

    invoke-direct {v0, p0}, Ltech/ulo/library/ui/AppsListFragment$appsPreferences$2;-><init>(Ltech/ulo/library/ui/AppsListFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/ui/AppsListFragment;->appsPreferences$delegate:Lkotlin/Lazy;

    .line 56
    new-instance v0, Ltech/ulo/library/ui/AppsListFragment$viewModel$2;

    invoke-direct {v0, p0}, Ltech/ulo/library/ui/AppsListFragment$viewModel$2;-><init>(Ltech/ulo/library/ui/AppsListFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/ui/AppsListFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 67
    new-instance v0, Ltech/ulo/library/ui/AppsListFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Ltech/ulo/library/ui/AppsListFragment$$ExternalSyntheticLambda2;-><init>(Ltech/ulo/library/ui/AppsListFragment;)V

    iput-object v0, p0, Ltech/ulo/library/ui/AppsListFragment;->appsObserver:Landroidx/lifecycle/Observer;

    .line 77
    new-instance v0, Ltech/ulo/library/ui/AppsListFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Ltech/ulo/library/ui/AppsListFragment$$ExternalSyntheticLambda3;-><init>(Ltech/ulo/library/ui/AppsListFragment;)V

    iput-object v0, p0, Ltech/ulo/library/ui/AppsListFragment;->activeAppsObserver:Landroidx/lifecycle/Observer;

    .line 83
    new-instance v0, Ltech/ulo/library/ui/AppsListFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Ltech/ulo/library/ui/AppsListFragment$$ExternalSyntheticLambda4;-><init>(Ltech/ulo/library/ui/AppsListFragment;)V

    iput-object v0, p0, Ltech/ulo/library/ui/AppsListFragment;->refreshStatusObserver:Landroidx/lifecycle/Observer;

    return-void
.end method

.method public static final synthetic access$getActivityContext$p(Ltech/ulo/library/ui/AppsListFragment;)Ltech/ulo/library/MainActivity;
    .locals 0

    .line 34
    iget-object p0, p0, Ltech/ulo/library/ui/AppsListFragment;->activityContext:Ltech/ulo/library/MainActivity;

    return-object p0
.end method

.method public static final synthetic access$getAppsPreferences(Ltech/ulo/library/ui/AppsListFragment;)Ltech/ulo/library/utils/preferences/AppsPreferences;
    .locals 0

    .line 34
    invoke-direct {p0}, Ltech/ulo/library/ui/AppsListFragment;->getAppsPreferences()Ltech/ulo/library/utils/preferences/AppsPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static final activeAppsObserver$lambda$3(Ltech/ulo/library/ui/AppsListFragment;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 79
    invoke-direct {p0}, Ltech/ulo/library/ui/AppsListFragment;->getAppsAdapter()Ltech/ulo/library/ui/AppsListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/AppsListAdapter;->updateActiveApps(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private static final appsObserver$lambda$1(Ltech/ulo/library/ui/AppsListFragment;Ljava/util/List;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 69
    invoke-direct {p0}, Ltech/ulo/library/ui/AppsListFragment;->getAppsAdapter()Ltech/ulo/library/ui/AppsListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltech/ulo/library/ui/AppsListAdapter;->updateApps(Ljava/util/List;)V

    .line 70
    invoke-direct {p0}, Ltech/ulo/library/ui/AppsListFragment;->getBinding()Ltech/ulo/library/databinding/FragAppListBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/ulo/library/databinding/FragAppListBinding;->listApps:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 71
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Ltech/ulo/library/ui/AppsListFragment;->userlandIsNewVersion()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 72
    :cond_0
    invoke-direct {p0}, Ltech/ulo/library/ui/AppsListFragment;->doRefresh()V

    :cond_1
    return-void
.end method

.method private final doRefresh()V
    .locals 1

    .line 165
    invoke-direct {p0}, Ltech/ulo/library/ui/AppsListFragment;->getViewModel()Ltech/ulo/library/viewmodel/AppsListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/viewmodel/AppsListViewModel;->refreshAppsList()V

    .line 166
    invoke-direct {p0}, Ltech/ulo/library/ui/AppsListFragment;->setLatestUpdateUserlandVersion()V

    return-void
.end method

.method private final getAppsAdapter()Ltech/ulo/library/ui/AppsListAdapter;
    .locals 1

    .line 46
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListFragment;->appsAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/ulo/library/ui/AppsListAdapter;

    return-object v0
.end method

.method private final getAppsPreferences()Ltech/ulo/library/utils/preferences/AppsPreferences;
    .locals 1

    .line 52
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListFragment;->appsPreferences$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/ulo/library/utils/preferences/AppsPreferences;

    return-object v0
.end method

.method private final getBinding()Ltech/ulo/library/databinding/FragAppListBinding;
    .locals 1

    .line 132
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListFragment;->_binding:Ltech/ulo/library/databinding/FragAppListBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getDoOnAppSelection()Ltech/ulo/library/ui/AppsListFragment$AppSelection;
    .locals 1

    .line 40
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListFragment;->doOnAppSelection$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/ulo/library/ui/AppsListFragment$AppSelection;

    return-object v0
.end method

.method private final getUserlandVersion()Ljava/lang/String;
    .locals 4

    .line 209
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListFragment;->activityContext:Ltech/ulo/library/MainActivity;

    const/4 v1, 0x0

    const-string v2, "activityContext"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Ltech/ulo/library/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Ltech/ulo/library/ui/AppsListFragment;->activityContext:Ltech/ulo/library/MainActivity;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    invoke-virtual {v1}, Ltech/ulo/library/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 210
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getViewModel()Ltech/ulo/library/viewmodel/AppsListViewModel;
    .locals 1

    .line 56
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/ulo/library/viewmodel/AppsListViewModel;

    return-object v0
.end method

.method private static final onActivityCreated$lambda$6(Ltech/ulo/library/ui/AppsListFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Ltech/ulo/library/ui/AppsListFragment;->doRefresh()V

    return-void
.end method

.method private static final refreshStatusObserver$lambda$5(Ltech/ulo/library/ui/AppsListFragment;Ltech/ulo/library/model/repositories/AppRefreshStatus;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 85
    invoke-virtual {p1}, Ltech/ulo/library/model/repositories/AppRefreshStatus;->getRefreshStatus()Ltech/ulo/library/model/repositories/RefreshStatus;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/ui/AppsListFragment;->refreshStatus:Ltech/ulo/library/model/repositories/RefreshStatus;

    .line 86
    invoke-direct {p0}, Ltech/ulo/library/ui/AppsListFragment;->getBinding()Ltech/ulo/library/databinding/FragAppListBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/ulo/library/databinding/FragAppListBinding;->swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object v1, p0, Ltech/ulo/library/ui/AppsListFragment;->refreshStatus:Ltech/ulo/library/model/repositories/RefreshStatus;

    sget-object v2, Ltech/ulo/library/model/repositories/RefreshStatus;->ACTIVE:Ltech/ulo/library/model/repositories/RefreshStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 88
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListFragment;->refreshStatus:Ltech/ulo/library/model/repositories/RefreshStatus;

    sget-object v1, Ltech/ulo/library/model/repositories/RefreshStatus;->FAILED:Ltech/ulo/library/model/repositories/RefreshStatus;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ltech/ulo/library/model/repositories/AppRefreshStatus;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ltech/ulo/library/ui/AppsListFragment;->showRefreshUnavailableDialog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final setLatestUpdateUserlandVersion()V
    .locals 4

    .line 201
    invoke-direct {p0}, Ltech/ulo/library/ui/AppsListFragment;->getUserlandVersion()Ljava/lang/String;

    move-result-object v0

    .line 202
    iget-object v1, p0, Ltech/ulo/library/ui/AppsListFragment;->activityContext:Ltech/ulo/library/MainActivity;

    if-nez v1, :cond_0

    const-string v1, "activityContext"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Landroid/content/Context;

    .line 215
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

    .line 202
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 203
    const-string v2, "lastAppsUpdate"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final showAppDetails(Ltech/ulo/library/model/entities/App;)Z
    .locals 3

    const/4 v0, 0x1

    .line 170
    new-array v1, v0, [Lkotlin/Pair;

    const-string v2, "app"

    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p1

    .line 171
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    sget v2, Ltech/ulo/library/R$id;->action_app_list_to_app_details:I

    invoke-virtual {v1, v2, p1}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    return v0
.end method

.method private final showRefreshUnavailableDialog(Ljava/lang/String;)V
    .locals 4

    .line 184
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltech/ulo/library/ui/AppsListFragment;->activityContext:Ltech/ulo/library/MainActivity;

    if-nez v1, :cond_0

    const-string v1, "activityContext"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 185
    sget v1, Ltech/ulo/library/R$string;->alert_network_required_for_refresh:I

    invoke-virtual {p0, v1}, Ltech/ulo/library/ui/AppsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Ltech/ulo/library/R$string;->alert_unreachable_app:I

    invoke-virtual {p0, v2}, Ltech/ulo/library/ui/AppsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 186
    sget v0, Ltech/ulo/library/R$string;->general_error_title:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 187
    sget v0, Ltech/ulo/library/R$string;->button_ok:I

    new-instance v1, Ltech/ulo/library/ui/AppsListFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ltech/ulo/library/ui/AppsListFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static final showRefreshUnavailableDialog$lambda$7(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 189
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private final stopAppSession(Ltech/ulo/library/model/entities/App;)Z
    .locals 5

    .line 176
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ltech/ulo/library/ui/AppsListFragment;->activityContext:Ltech/ulo/library/MainActivity;

    const/4 v2, 0x0

    const-string v3, "activityContext"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    check-cast v1, Landroid/content/Context;

    const-class v4, Ltech/ulo/library/ServerService;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    const-string v1, "type"

    const-string v4, "stopApp"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 178
    const-string v1, "app"

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "putExtra(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListFragment;->activityContext:Ltech/ulo/library/MainActivity;

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    invoke-virtual {v2, p1}, Ltech/ulo/library/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 p1, 0x1

    return p1
.end method

.method private final userlandIsNewVersion()Z
    .locals 4

    .line 195
    invoke-direct {p0}, Ltech/ulo/library/ui/AppsListFragment;->getUserlandVersion()Ljava/lang/String;

    move-result-object v0

    .line 196
    iget-object v1, p0, Ltech/ulo/library/ui/AppsListFragment;->activityContext:Ltech/ulo/library/MainActivity;

    if-nez v1, :cond_0

    const-string v1, "activityContext"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Landroid/content/Context;

    .line 214
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

    .line 196
    const-string v2, "lastAppsUpdate"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public createContextMenu(Landroid/view/Menu;)V
    .locals 2

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListFragment;->activityContext:Ltech/ulo/library/MainActivity;

    if-nez v0, :cond_0

    const-string v0, "activityContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Ltech/ulo/library/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Ltech/ulo/library/R$menu;->context_menu_apps:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 146
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Ltech/ulo/library/ui/AppsListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ltech/ulo/library/MainActivity;

    iput-object p1, p0, Ltech/ulo/library/ui/AppsListFragment;->activityContext:Ltech/ulo/library/MainActivity;

    .line 148
    invoke-direct {p0}, Ltech/ulo/library/ui/AppsListFragment;->getViewModel()Ltech/ulo/library/viewmodel/AppsListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/AppsListViewModel;->getAppsList()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Ltech/ulo/library/ui/AppsListFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    iget-object v1, p0, Ltech/ulo/library/ui/AppsListFragment;->appsObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 149
    invoke-direct {p0}, Ltech/ulo/library/ui/AppsListFragment;->getViewModel()Ltech/ulo/library/viewmodel/AppsListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/AppsListViewModel;->getActiveApps()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Ltech/ulo/library/ui/AppsListFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    iget-object v1, p0, Ltech/ulo/library/ui/AppsListFragment;->activeAppsObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 150
    invoke-direct {p0}, Ltech/ulo/library/ui/AppsListFragment;->getViewModel()Ltech/ulo/library/viewmodel/AppsListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/AppsListViewModel;->getRefreshStatus()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Ltech/ulo/library/ui/AppsListFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    iget-object v1, p0, Ltech/ulo/library/ui/AppsListFragment;->refreshStatusObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 152
    invoke-direct {p0}, Ltech/ulo/library/ui/AppsListFragment;->getBinding()Ltech/ulo/library/databinding/FragAppListBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/ulo/library/databinding/FragAppListBinding;->listApps:Landroidx/recyclerview/widget/RecyclerView;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/AppsListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 153
    invoke-direct {p0}, Ltech/ulo/library/ui/AppsListFragment;->getBinding()Ltech/ulo/library/databinding/FragAppListBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/ulo/library/databinding/FragAppListBinding;->listApps:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0}, Ltech/ulo/library/ui/AppsListFragment;->getBinding()Ltech/ulo/library/databinding/FragAppListBinding;

    move-result-object v1

    iget-object v1, v1, Ltech/ulo/library/databinding/FragAppListBinding;->listApps:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 154
    invoke-direct {p0}, Ltech/ulo/library/ui/AppsListFragment;->getBinding()Ltech/ulo/library/databinding/FragAppListBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/ulo/library/databinding/FragAppListBinding;->listApps:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ltech/ulo/library/ui/AppsListFragment;->getAppsAdapter()Ltech/ulo/library/ui/AppsListAdapter;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 156
    invoke-direct {p0}, Ltech/ulo/library/ui/AppsListFragment;->getBinding()Ltech/ulo/library/databinding/FragAppListBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/ulo/library/databinding/FragAppListBinding;->swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v0, Ltech/ulo/library/ui/AppsListFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ltech/ulo/library/ui/AppsListFragment$$ExternalSyntheticLambda0;-><init>(Ltech/ulo/library/ui/AppsListFragment;)V

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 157
    invoke-direct {p0}, Ltech/ulo/library/ui/AppsListFragment;->getBinding()Ltech/ulo/library/databinding/FragAppListBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/ulo/library/databinding/FragAppListBinding;->swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 158
    sget v0, Ltech/ulo/library/R$color;->holo_blue_light:I

    .line 159
    sget v1, Ltech/ulo/library/R$color;->holo_green_light:I

    .line 160
    sget v2, Ltech/ulo/library/R$color;->holo_orange_light:I

    .line 161
    sget v3, Ltech/ulo/library/R$color;->holo_red_light:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    .line 157
    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    return-void
.end method

.method public onClick(Ltech/ulo/library/model/entities/App;)V
    .locals 2

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Ltech/ulo/library/ui/AppsListFragment;->getDoOnAppSelection()Ltech/ulo/library/ui/AppsListFragment$AppSelection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ltech/ulo/library/ui/AppsListFragment$AppSelection;->appHasBeenSelected(Ltech/ulo/library/model/entities/App;Z)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 123
    sget v1, Ltech/ulo/library/R$id;->menu_item_app_details:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Ltech/ulo/library/ui/AppsListFragment;->getAppsAdapter()Ltech/ulo/library/ui/AppsListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/ui/AppsListAdapter;->getContextMenuItem()Ltech/ulo/library/model/entities/App;

    move-result-object p1

    invoke-direct {p0, p1}, Ltech/ulo/library/ui/AppsListFragment;->showAppDetails(Ltech/ulo/library/model/entities/App;)Z

    move-result p1

    goto :goto_0

    .line 124
    :cond_0
    sget v1, Ltech/ulo/library/R$id;->menu_item_stop_app:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Ltech/ulo/library/ui/AppsListFragment;->getAppsAdapter()Ltech/ulo/library/ui/AppsListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/ui/AppsListAdapter;->getContextMenuItem()Ltech/ulo/library/model/entities/App;

    move-result-object p1

    invoke-direct {p0, p1}, Ltech/ulo/library/ui/AppsListFragment;->stopAppSession(Ltech/ulo/library/model/entities/App;)Z

    move-result p1

    goto :goto_0

    .line 125
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 93
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 94
    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/AppsListFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 99
    sget v0, Ltech/ulo/library/R$menu;->menu_refresh:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 135
    invoke-static {p1, p2, p3}, Ltech/ulo/library/databinding/FragAppListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/ulo/library/databinding/FragAppListBinding;

    move-result-object p1

    iput-object p1, p0, Ltech/ulo/library/ui/AppsListFragment;->_binding:Ltech/ulo/library/databinding/FragAppListBinding;

    .line 136
    invoke-direct {p0}, Ltech/ulo/library/ui/AppsListFragment;->getBinding()Ltech/ulo/library/databinding/FragAppListBinding;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/databinding/FragAppListBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 141
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Ltech/ulo/library/ui/AppsListFragment;->_binding:Ltech/ulo/library/databinding/FragAppListBinding;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Ltech/ulo/library/R$id;->menu_item_refresh:I

    if-ne v0, v1, :cond_0

    .line 105
    invoke-direct {p0}, Ltech/ulo/library/ui/AppsListFragment;->getBinding()Ltech/ulo/library/databinding/FragAppListBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/ulo/library/databinding/FragAppListBinding;->swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 106
    invoke-direct {p0}, Ltech/ulo/library/ui/AppsListFragment;->doRefresh()V

    goto :goto_0

    .line 109
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0
.end method
