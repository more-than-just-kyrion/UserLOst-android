.class final Ltech/ulo/library/ui/AppDetailsFragment$viewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AppDetailsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/ui/AppDetailsFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ltech/ulo/library/viewmodel/AppDetailsViewModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ltech/ulo/library/viewmodel/AppDetailsViewModel;",
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
.field final synthetic this$0:Ltech/ulo/library/ui/AppDetailsFragment;


# direct methods
.method constructor <init>(Ltech/ulo/library/ui/AppDetailsFragment;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/ui/AppDetailsFragment$viewModel$2;->this$0:Ltech/ulo/library/ui/AppDetailsFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Ltech/ulo/library/ui/AppDetailsFragment$viewModel$2;->invoke()Ltech/ulo/library/viewmodel/AppDetailsViewModel;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ltech/ulo/library/viewmodel/AppDetailsViewModel;
    .locals 7

    .line 33
    sget-object v0, Ltech/ulo/library/model/repositories/UlaDatabase;->Companion:Ltech/ulo/library/model/repositories/UlaDatabase$Companion;

    iget-object v1, p0, Ltech/ulo/library/ui/AppDetailsFragment$viewModel$2;->this$0:Ltech/ulo/library/ui/AppDetailsFragment;

    invoke-static {v1}, Ltech/ulo/library/ui/AppDetailsFragment;->access$getActivityContext$p(Ltech/ulo/library/ui/AppDetailsFragment;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "activityContext"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Ltech/ulo/library/model/repositories/UlaDatabase$Companion;->getInstance(Landroid/content/Context;)Ltech/ulo/library/model/repositories/UlaDatabase;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/model/repositories/UlaDatabase;->sessionDao()Ltech/ulo/library/model/daos/SessionDao;

    move-result-object v0

    .line 34
    new-instance v1, Ltech/ulo/library/utils/AppDetails;

    iget-object v4, p0, Ltech/ulo/library/ui/AppDetailsFragment$viewModel$2;->this$0:Ltech/ulo/library/ui/AppDetailsFragment;

    invoke-static {v4}, Ltech/ulo/library/ui/AppDetailsFragment;->access$getActivityContext$p(Ltech/ulo/library/ui/AppDetailsFragment;)Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_1
    invoke-virtual {v4}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getPath(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Ltech/ulo/library/ui/AppDetailsFragment$viewModel$2;->this$0:Ltech/ulo/library/ui/AppDetailsFragment;

    invoke-static {v5}, Ltech/ulo/library/ui/AppDetailsFragment;->access$getActivityContext$p(Ltech/ulo/library/ui/AppDetailsFragment;)Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_2
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "getResources(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v4, v5}, Ltech/ulo/library/utils/AppDetails;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 35
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 36
    new-instance v5, Ltech/ulo/library/viewmodel/AppDetailsViewmodelFactory;

    iget-object v6, p0, Ltech/ulo/library/ui/AppDetailsFragment$viewModel$2;->this$0:Ltech/ulo/library/ui/AppDetailsFragment;

    invoke-static {v6}, Ltech/ulo/library/ui/AppDetailsFragment;->access$getActivityContext$p(Ltech/ulo/library/ui/AppDetailsFragment;)Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, v6

    :goto_0
    const-string v3, "apps"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "getSharedPreferences(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v0, v1, v4, v2}, Ltech/ulo/library/viewmodel/AppDetailsViewmodelFactory;-><init>(Ltech/ulo/library/model/daos/SessionDao;Ltech/ulo/library/utils/AppDetails;ILandroid/content/SharedPreferences;)V

    .line 37
    iget-object v0, p0, Ltech/ulo/library/ui/AppDetailsFragment$viewModel$2;->this$0:Ltech/ulo/library/ui/AppDetailsFragment;

    check-cast v0, Landroidx/fragment/app/Fragment;

    check-cast v5, Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-static {v0, v5}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Ltech/ulo/library/viewmodel/AppDetailsViewModel;

    .line 38
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Ltech/ulo/library/viewmodel/AppDetailsViewModel;

    return-object v0
.end method
