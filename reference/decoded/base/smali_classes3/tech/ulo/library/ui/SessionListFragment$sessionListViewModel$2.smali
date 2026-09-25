.class final Ltech/ulo/library/ui/SessionListFragment$sessionListViewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SessionListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/ui/SessionListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ltech/ulo/library/viewmodel/SessionListViewModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ltech/ulo/library/viewmodel/SessionListViewModel;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Ltech/ulo/library/ui/SessionListFragment;


# direct methods
.method constructor <init>(Ltech/ulo/library/ui/SessionListFragment;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/ui/SessionListFragment$sessionListViewModel$2;->this$0:Ltech/ulo/library/ui/SessionListFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Ltech/ulo/library/ui/SessionListFragment$sessionListViewModel$2;->invoke()Ltech/ulo/library/viewmodel/SessionListViewModel;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ltech/ulo/library/viewmodel/SessionListViewModel;
    .locals 3

    .line 40
    sget-object v0, Ltech/ulo/library/model/repositories/UlaDatabase;->Companion:Ltech/ulo/library/model/repositories/UlaDatabase$Companion;

    iget-object v1, p0, Ltech/ulo/library/ui/SessionListFragment$sessionListViewModel$2;->this$0:Ltech/ulo/library/ui/SessionListFragment;

    invoke-static {v1}, Ltech/ulo/library/ui/SessionListFragment;->access$getActivityContext$p(Ltech/ulo/library/ui/SessionListFragment;)Ltech/ulo/library/MainActivity;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "activityContext"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Ltech/ulo/library/model/repositories/UlaDatabase$Companion;->getInstance(Landroid/content/Context;)Ltech/ulo/library/model/repositories/UlaDatabase;

    move-result-object v0

    .line 41
    iget-object v1, p0, Ltech/ulo/library/ui/SessionListFragment$sessionListViewModel$2;->this$0:Ltech/ulo/library/ui/SessionListFragment;

    check-cast v1, Landroidx/fragment/app/Fragment;

    new-instance v2, Ltech/ulo/library/viewmodel/SessionListViewModelFactory;

    invoke-direct {v2, v0}, Ltech/ulo/library/viewmodel/SessionListViewModelFactory;-><init>(Ltech/ulo/library/model/repositories/UlaDatabase;)V

    check-cast v2, Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-static {v1, v2}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Ltech/ulo/library/viewmodel/SessionListViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Ltech/ulo/library/viewmodel/SessionListViewModel;

    return-object v0
.end method
