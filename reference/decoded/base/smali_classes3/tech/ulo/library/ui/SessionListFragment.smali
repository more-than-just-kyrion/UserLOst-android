.class public final Ltech/ulo/library/ui/SessionListFragment;
.super Landroidx/fragment/app/Fragment;
.source "SessionListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/ulo/library/ui/SessionListFragment$SessionSelection;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001@B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0016H\u0002J\u0018\u0010\"\u001a\u00020#2\u0006\u0010!\u001a\u00020\u00162\u0006\u0010$\u001a\u00020%H\u0002J\u0018\u0010&\u001a\u00020 2\u0006\u0010!\u001a\u00020\u00162\u0006\u0010\'\u001a\u00020(H\u0002J\u0010\u0010)\u001a\u00020#2\u0006\u0010!\u001a\u00020\u0016H\u0002J\u0010\u0010*\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0016H\u0002J\u0012\u0010+\u001a\u00020#2\u0008\u0010,\u001a\u0004\u0018\u00010-H\u0016J\u0010\u0010.\u001a\u00020 2\u0006\u0010\'\u001a\u00020(H\u0016J\u0012\u0010/\u001a\u00020#2\u0008\u0010,\u001a\u0004\u0018\u00010-H\u0016J\"\u00100\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u00101\u001a\u0002022\u0008\u00103\u001a\u0004\u0018\u000104H\u0016J\u0018\u00105\u001a\u00020#2\u0006\u0010$\u001a\u0002062\u0006\u00107\u001a\u000208H\u0016J&\u00109\u001a\u0004\u0018\u0001022\u0006\u00107\u001a\u00020:2\u0008\u0010;\u001a\u0004\u0018\u00010<2\u0008\u0010,\u001a\u0004\u0018\u00010-H\u0016J\u0008\u0010=\u001a\u00020#H\u0016J\u0010\u0010>\u001a\u00020 2\u0006\u0010\'\u001a\u00020(H\u0016J\u0010\u0010?\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0016H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0017\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u000f\u001a\u0004\u0008\u0019\u0010\u001aR,\u0010\u001c\u001a \u0012\u001c\u0012\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u0011\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00110\u001e0\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006A"
    }
    d2 = {
        "Ltech/ulo/library/ui/SessionListFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "_binding",
        "Ltech/ulo/library/databinding/FragSessionListBinding;",
        "activityContext",
        "Ltech/ulo/library/MainActivity;",
        "binding",
        "getBinding",
        "()Ltech/ulo/library/databinding/FragSessionListBinding;",
        "doOnSessionSelection",
        "Ltech/ulo/library/ui/SessionListFragment$SessionSelection;",
        "getDoOnSessionSelection",
        "()Ltech/ulo/library/ui/SessionListFragment$SessionSelection;",
        "doOnSessionSelection$delegate",
        "Lkotlin/Lazy;",
        "filesystemList",
        "",
        "Ltech/ulo/library/model/entities/Filesystem;",
        "sessionAdapter",
        "Ltech/ulo/library/ui/SessionListAdapter;",
        "sessionList",
        "Ltech/ulo/library/model/entities/Session;",
        "sessionListViewModel",
        "Ltech/ulo/library/viewmodel/SessionListViewModel;",
        "getSessionListViewModel",
        "()Ltech/ulo/library/viewmodel/SessionListViewModel;",
        "sessionListViewModel$delegate",
        "sessionsAndFilesystemsChangeObserver",
        "Landroidx/lifecycle/Observer;",
        "Lkotlin/Pair;",
        "deleteSession",
        "",
        "session",
        "doCreateSessionContextMenu",
        "",
        "menu",
        "Landroid/view/ContextMenu;",
        "doSessionContextItemSelected",
        "item",
        "Landroid/view/MenuItem;",
        "doSessionItemClicked",
        "editSession",
        "onActivityCreated",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onContextItemSelected",
        "onCreate",
        "onCreateContextMenu",
        "v",
        "Landroid/view/View;",
        "menuInfo",
        "Landroid/view/ContextMenu$ContextMenuInfo;",
        "onCreateOptionsMenu",
        "Landroid/view/Menu;",
        "inflater",
        "Landroid/view/MenuInflater;",
        "onCreateView",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onDestroyView",
        "onOptionsItemSelected",
        "stopService",
        "SessionSelection",
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
.field private _binding:Ltech/ulo/library/databinding/FragSessionListBinding;

.field private activityContext:Ltech/ulo/library/MainActivity;

.field private final doOnSessionSelection$delegate:Lkotlin/Lazy;

.field private filesystemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Filesystem;",
            ">;"
        }
    .end annotation
.end field

.field private sessionAdapter:Ltech/ulo/library/ui/SessionListAdapter;

.field private sessionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Session;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionListViewModel$delegate:Lkotlin/Lazy;

.field private final sessionsAndFilesystemsChangeObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Session;",
            ">;",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Filesystem;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Lpx2MQPoClKuPwfqhA_OqcPl8ok(Ltech/ulo/library/ui/SessionListFragment;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Ltech/ulo/library/ui/SessionListFragment;->onActivityCreated$lambda$2(Ltech/ulo/library/ui/SessionListFragment;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$MSONx4cRkUKvSV6iHojhVpciAbY(Ltech/ulo/library/ui/SessionListFragment;Lkotlin/Pair;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/ui/SessionListFragment;->sessionsAndFilesystemsChangeObserver$lambda$1(Ltech/ulo/library/ui/SessionListFragment;Lkotlin/Pair;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 29
    new-instance v0, Ltech/ulo/library/ui/SessionListFragment$doOnSessionSelection$2;

    invoke-direct {v0, p0}, Ltech/ulo/library/ui/SessionListFragment$doOnSessionSelection$2;-><init>(Ltech/ulo/library/ui/SessionListFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/ui/SessionListFragment;->doOnSessionSelection$delegate:Lkotlin/Lazy;

    .line 39
    new-instance v0, Ltech/ulo/library/ui/SessionListFragment$sessionListViewModel$2;

    invoke-direct {v0, p0}, Ltech/ulo/library/ui/SessionListFragment$sessionListViewModel$2;-><init>(Ltech/ulo/library/ui/SessionListFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/ui/SessionListFragment;->sessionListViewModel$delegate:Lkotlin/Lazy;

    .line 45
    new-instance v0, Ltech/ulo/library/ui/SessionListFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Ltech/ulo/library/ui/SessionListFragment$$ExternalSyntheticLambda1;-><init>(Ltech/ulo/library/ui/SessionListFragment;)V

    iput-object v0, p0, Ltech/ulo/library/ui/SessionListFragment;->sessionsAndFilesystemsChangeObserver:Landroidx/lifecycle/Observer;

    return-void
.end method

.method public static final synthetic access$getActivityContext$p(Ltech/ulo/library/ui/SessionListFragment;)Ltech/ulo/library/MainActivity;
    .locals 0

    .line 23
    iget-object p0, p0, Ltech/ulo/library/ui/SessionListFragment;->activityContext:Ltech/ulo/library/MainActivity;

    return-object p0
.end method

.method private final deleteSession(Ltech/ulo/library/model/entities/Session;)Z
    .locals 3

    .line 172
    invoke-direct {p0, p1}, Ltech/ulo/library/ui/SessionListFragment;->stopService(Ltech/ulo/library/model/entities/Session;)Z

    .line 173
    invoke-direct {p0}, Ltech/ulo/library/ui/SessionListFragment;->getSessionListViewModel()Ltech/ulo/library/viewmodel/SessionListViewModel;

    move-result-object v0

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ltech/ulo/library/viewmodel/SessionListViewModel;->deleteSessionById(J)V

    const/4 p1, 0x1

    return p1
.end method

.method private final doCreateSessionContextMenu(Ltech/ulo/library/model/entities/Session;Landroid/view/ContextMenu;)V
    .locals 2

    .line 126
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getActive()Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "activityContext"

    if-eqz p1, :cond_1

    .line 127
    iget-object p1, p0, Ltech/ulo/library/ui/SessionListFragment;->activityContext:Ltech/ulo/library/MainActivity;

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Ltech/ulo/library/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    sget v0, Ltech/ulo/library/R$menu;->context_menu_active_sessions:I

    check-cast p2, Landroid/view/Menu;

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_2

    .line 129
    :cond_1
    iget-object p1, p0, Ltech/ulo/library/ui/SessionListFragment;->activityContext:Ltech/ulo/library/MainActivity;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, p1

    :goto_1
    invoke-virtual {v0}, Ltech/ulo/library/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    sget v0, Ltech/ulo/library/R$menu;->context_menu_inactive_sessions:I

    check-cast p2, Landroid/view/Menu;

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :goto_2
    return-void
.end method

.method private final doSessionContextItemSelected(Ltech/ulo/library/model/entities/Session;Landroid/view/MenuItem;)Z
    .locals 2

    .line 146
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 147
    sget v1, Ltech/ulo/library/R$id;->menu_item_session_stop_session:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Ltech/ulo/library/ui/SessionListFragment;->stopService(Ltech/ulo/library/model/entities/Session;)Z

    move-result p1

    goto :goto_0

    .line 148
    :cond_0
    sget v1, Ltech/ulo/library/R$id;->menu_item_session_edit:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Ltech/ulo/library/ui/SessionListFragment;->editSession(Ltech/ulo/library/model/entities/Session;)Z

    move-result p1

    goto :goto_0

    .line 149
    :cond_1
    sget v1, Ltech/ulo/library/R$id;->menu_item_session_delete:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Ltech/ulo/library/ui/SessionListFragment;->deleteSession(Ltech/ulo/library/model/entities/Session;)Z

    move-result p1

    goto :goto_0

    .line 150
    :cond_2
    invoke-super {p0, p2}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method private final doSessionItemClicked(Ltech/ulo/library/model/entities/Session;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Ltech/ulo/library/ui/SessionListFragment;->getDoOnSessionSelection()Ltech/ulo/library/ui/SessionListFragment$SessionSelection;

    move-result-object v0

    invoke-interface {v0, p1}, Ltech/ulo/library/ui/SessionListFragment$SessionSelection;->sessionHasBeenSelected(Ltech/ulo/library/model/entities/Session;)V

    return-void
.end method

.method private final editSession(Ltech/ulo/library/model/entities/Session;)Z
    .locals 4

    .line 165
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x2

    .line 166
    new-array v2, v2, [Lkotlin/Pair;

    const-string v3, "session"

    invoke-static {v3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "editExisting"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v2}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p1

    .line 167
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    sget v2, Ltech/ulo/library/R$id;->session_edit_fragment:I

    invoke-virtual {v0, v2, p1}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    return v1
.end method

.method private final getBinding()Ltech/ulo/library/databinding/FragSessionListBinding;
    .locals 1

    .line 73
    iget-object v0, p0, Ltech/ulo/library/ui/SessionListFragment;->_binding:Ltech/ulo/library/databinding/FragSessionListBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getDoOnSessionSelection()Ltech/ulo/library/ui/SessionListFragment$SessionSelection;
    .locals 1

    .line 29
    iget-object v0, p0, Ltech/ulo/library/ui/SessionListFragment;->doOnSessionSelection$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/ulo/library/ui/SessionListFragment$SessionSelection;

    return-object v0
.end method

.method private final getSessionListViewModel()Ltech/ulo/library/viewmodel/SessionListViewModel;
    .locals 1

    .line 39
    iget-object v0, p0, Ltech/ulo/library/ui/SessionListFragment;->sessionListViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/ulo/library/viewmodel/SessionListViewModel;

    return-object v0
.end method

.method private static final onActivityCreated$lambda$2(Ltech/ulo/library/ui/SessionListFragment;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type tech.ulo.library.ui.SessionListItem"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ltech/ulo/library/ui/SessionListItem;

    .line 96
    instance-of p2, p1, Ltech/ulo/library/ui/SessionSeparatorItem;

    if-eqz p2, :cond_0

    return-void

    .line 97
    :cond_0
    instance-of p2, p1, Ltech/ulo/library/ui/SessionItem;

    if-eqz p2, :cond_1

    .line 98
    check-cast p1, Ltech/ulo/library/ui/SessionItem;

    invoke-virtual {p1}, Ltech/ulo/library/ui/SessionItem;->getSession()Ltech/ulo/library/model/entities/Session;

    move-result-object p1

    .line 99
    invoke-direct {p0, p1}, Ltech/ulo/library/ui/SessionListFragment;->doSessionItemClicked(Ltech/ulo/library/model/entities/Session;)V

    :cond_1
    return-void
.end method

.method private static final sessionsAndFilesystemsChangeObserver$lambda$1(Ltech/ulo/library/ui/SessionListFragment;Lkotlin/Pair;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 47
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Ltech/ulo/library/ui/SessionListFragment;->sessionList:Ljava/util/List;

    .line 48
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Ltech/ulo/library/ui/SessionListFragment;->filesystemList:Ljava/util/List;

    .line 50
    new-instance p1, Ltech/ulo/library/ui/SessionListAdapter;

    iget-object v0, p0, Ltech/ulo/library/ui/SessionListFragment;->activityContext:Ltech/ulo/library/MainActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "activityContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Ltech/ulo/library/ui/SessionListFragment;->sessionList:Ljava/util/List;

    if-nez v2, :cond_1

    const-string v2, "sessionList"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1
    iget-object v3, p0, Ltech/ulo/library/ui/SessionListFragment;->filesystemList:Ljava/util/List;

    if-nez v3, :cond_2

    const-string v3, "filesystemList"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_2
    invoke-direct {p1, v0, v2, v3}, Ltech/ulo/library/ui/SessionListAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;)V

    iput-object p1, p0, Ltech/ulo/library/ui/SessionListFragment;->sessionAdapter:Ltech/ulo/library/ui/SessionListAdapter;

    .line 51
    invoke-direct {p0}, Ltech/ulo/library/ui/SessionListFragment;->getBinding()Ltech/ulo/library/databinding/FragSessionListBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/ulo/library/databinding/FragSessionListBinding;->listSessions:Landroid/widget/ListView;

    iget-object p0, p0, Ltech/ulo/library/ui/SessionListFragment;->sessionAdapter:Ltech/ulo/library/ui/SessionListAdapter;

    if-nez p0, :cond_3

    const-string p0, "sessionAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, p0

    :goto_0
    check-cast v1, Landroid/widget/ListAdapter;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_4
    return-void
.end method

.method private final stopService(Ltech/ulo/library/model/entities/Session;)Z
    .locals 5

    .line 155
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ltech/ulo/library/ui/SessionListFragment;->activityContext:Ltech/ulo/library/MainActivity;

    const/4 v2, 0x0

    const-string v3, "activityContext"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    check-cast v1, Landroid/content/Context;

    const-class v4, Ltech/ulo/library/ServerService;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    const-string v1, "type"

    const-string v4, "kill"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v1, "session"

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 159
    iget-object p1, p0, Ltech/ulo/library/ui/SessionListFragment;->activityContext:Ltech/ulo/library/MainActivity;

    if-nez p1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    invoke-virtual {v2, v0}, Ltech/ulo/library/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 87
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Ltech/ulo/library/ui/SessionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ltech/ulo/library/MainActivity;

    iput-object p1, p0, Ltech/ulo/library/ui/SessionListFragment;->activityContext:Ltech/ulo/library/MainActivity;

    .line 90
    invoke-direct {p0}, Ltech/ulo/library/ui/SessionListFragment;->getSessionListViewModel()Ltech/ulo/library/viewmodel/SessionListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/SessionListViewModel;->getSessionsAndFilesystems()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Ltech/ulo/library/ui/SessionListFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    iget-object v1, p0, Ltech/ulo/library/ui/SessionListFragment;->sessionsAndFilesystemsChangeObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 92
    invoke-direct {p0}, Ltech/ulo/library/ui/SessionListFragment;->getBinding()Ltech/ulo/library/databinding/FragSessionListBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/ulo/library/databinding/FragSessionListBinding;->listSessions:Landroid/widget/ListView;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/SessionListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 93
    invoke-direct {p0}, Ltech/ulo/library/ui/SessionListFragment;->getBinding()Ltech/ulo/library/databinding/FragSessionListBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/ulo/library/databinding/FragSessionListBinding;->listSessions:Landroid/widget/ListView;

    new-instance v0, Ltech/ulo/library/ui/SessionListFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ltech/ulo/library/ui/SessionListFragment$$ExternalSyntheticLambda0;-><init>(Ltech/ulo/library/ui/SessionListFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.AdapterView.AdapterContextMenuInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 135
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 136
    invoke-direct {p0}, Ltech/ulo/library/ui/SessionListFragment;->getBinding()Ltech/ulo/library/databinding/FragSessionListBinding;

    move-result-object v1

    iget-object v1, v1, Ltech/ulo/library/databinding/FragSessionListBinding;->listSessions:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type tech.ulo.library.ui.SessionListItem"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ltech/ulo/library/ui/SessionListItem;

    .line 137
    instance-of v1, v0, Ltech/ulo/library/ui/SessionSeparatorItem;

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 138
    :cond_0
    instance-of v1, v0, Ltech/ulo/library/ui/SessionItem;

    if-eqz v1, :cond_1

    .line 139
    check-cast v0, Ltech/ulo/library/ui/SessionItem;

    invoke-virtual {v0}, Ltech/ulo/library/ui/SessionItem;->getSession()Ltech/ulo/library/model/entities/Session;

    move-result-object v0

    .line 140
    invoke-direct {p0, v0, p1}, Ltech/ulo/library/ui/SessionListFragment;->doSessionContextItemSelected(Ltech/ulo/library/model/entities/Session;Landroid/view/MenuItem;)Z

    move-result p1

    :goto_0
    return p1

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 57
    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/SessionListFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 111
    const-string p2, "null cannot be cast to non-null type android.widget.AdapterView.AdapterContextMenuInfo"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 112
    iget p2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 113
    invoke-direct {p0}, Ltech/ulo/library/ui/SessionListFragment;->getBinding()Ltech/ulo/library/databinding/FragSessionListBinding;

    move-result-object p3

    iget-object p3, p3, Ltech/ulo/library/databinding/FragSessionListBinding;->listSessions:Landroid/widget/ListView;

    invoke-virtual {p3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p3

    invoke-interface {p3, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type tech.ulo.library.ui.SessionListItem"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ltech/ulo/library/ui/SessionListItem;

    .line 114
    instance-of p3, p2, Ltech/ulo/library/ui/SessionSeparatorItem;

    if-eqz p3, :cond_0

    return-void

    .line 115
    :cond_0
    instance-of p3, p2, Ltech/ulo/library/ui/SessionItem;

    if-eqz p3, :cond_1

    .line 116
    check-cast p2, Ltech/ulo/library/ui/SessionItem;

    invoke-virtual {p2}, Ltech/ulo/library/ui/SessionItem;->getSession()Ltech/ulo/library/model/entities/Session;

    move-result-object p2

    .line 117
    invoke-direct {p0, p2, p1}, Ltech/ulo/library/ui/SessionListFragment;->doCreateSessionContextMenu(Ltech/ulo/library/model/entities/Session;Landroid/view/ContextMenu;)V

    .line 118
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->isProtected()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 119
    sget p2, Ltech/ulo/library/R$id;->menu_item_session_delete:I

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->removeItem(I)V

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 62
    sget v0, Ltech/ulo/library/R$menu;->menu_create:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 76
    invoke-static {p1, p2, p3}, Ltech/ulo/library/databinding/FragSessionListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/ulo/library/databinding/FragSessionListBinding;

    move-result-object p1

    iput-object p1, p0, Ltech/ulo/library/ui/SessionListFragment;->_binding:Ltech/ulo/library/databinding/FragSessionListBinding;

    .line 77
    invoke-direct {p0}, Ltech/ulo/library/ui/SessionListFragment;->getBinding()Ltech/ulo/library/databinding/FragSessionListBinding;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/databinding/FragSessionListBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 82
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Ltech/ulo/library/ui/SessionListFragment;->_binding:Ltech/ulo/library/databinding/FragSessionListBinding;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 36

    const-string v0, "item"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Ltech/ulo/library/R$id;->menu_item_add:I

    if-ne v0, v2, :cond_0

    new-instance v0, Ltech/ulo/library/model/entities/Session;

    move-object v3, v0

    const v34, 0x1fffffa

    const/16 v35, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    invoke-direct/range {v3 .. v35}, Ltech/ulo/library/model/entities/Session;-><init>(JLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/ulo/library/model/entities/ServiceType;JJLjava/lang/String;ZZIZFZZZZLtech/ulo/library/model/entities/ExecutionType;ZJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, p0

    invoke-direct {v2, v0}, Ltech/ulo/library/ui/SessionListFragment;->editSession(Ltech/ulo/library/model/entities/Session;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p0

    .line 67
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0
.end method
