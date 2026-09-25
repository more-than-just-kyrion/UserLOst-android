.class final Ltech/ulo/library/ui/AppsListFragment$viewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AppsListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/ui/AppsListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ltech/ulo/library/viewmodel/AppsListViewModel;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppsListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppsListFragment.kt\ntech/ulo/library/ui/AppsListFragment$viewModel$2\n+ 2 Extensions.kt\ntech/ulo/library/utils/ExtensionsKt\n*L\n1#1,213:1\n49#2:214\n49#2:215\n*S KotlinDebug\n*F\n+ 1 AppsListFragment.kt\ntech/ulo/library/ui/AppsListFragment$viewModel$2\n*L\n60#1:214\n62#1:215\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ltech/ulo/library/viewmodel/AppsListViewModel;",
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
.field final synthetic this$0:Ltech/ulo/library/ui/AppsListFragment;


# direct methods
.method constructor <init>(Ltech/ulo/library/ui/AppsListFragment;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/ui/AppsListFragment$viewModel$2;->this$0:Ltech/ulo/library/ui/AppsListFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 56
    invoke-virtual {p0}, Ltech/ulo/library/ui/AppsListFragment$viewModel$2;->invoke()Ltech/ulo/library/viewmodel/AppsListViewModel;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ltech/ulo/library/viewmodel/AppsListViewModel;
    .locals 17

    move-object/from16 v0, p0

    .line 57
    sget-object v1, Ltech/ulo/library/model/repositories/UlaDatabase;->Companion:Ltech/ulo/library/model/repositories/UlaDatabase$Companion;

    iget-object v2, v0, Ltech/ulo/library/ui/AppsListFragment$viewModel$2;->this$0:Ltech/ulo/library/ui/AppsListFragment;

    invoke-static {v2}, Ltech/ulo/library/ui/AppsListFragment;->access$getActivityContext$p(Ltech/ulo/library/ui/AppsListFragment;)Ltech/ulo/library/MainActivity;

    move-result-object v2

    const-string v4, "activityContext"

    if-nez v2, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    check-cast v2, Landroid/content/Context;

    invoke-virtual {v1, v2}, Ltech/ulo/library/model/repositories/UlaDatabase$Companion;->getInstance(Landroid/content/Context;)Ltech/ulo/library/model/repositories/UlaDatabase;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ltech/ulo/library/model/repositories/UlaDatabase;->appsDao()Ltech/ulo/library/model/daos/AppsDao;

    move-result-object v6

    .line 60
    new-instance v1, Ltech/ulo/library/model/remote/GithubAppsFetcher;

    iget-object v2, v0, Ltech/ulo/library/ui/AppsListFragment$viewModel$2;->this$0:Ltech/ulo/library/ui/AppsListFragment;

    invoke-static {v2}, Ltech/ulo/library/ui/AppsListFragment;->access$getActivityContext$p(Ltech/ulo/library/ui/AppsListFragment;)Ltech/ulo/library/MainActivity;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v2}, Ltech/ulo/library/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v2, v0, Ltech/ulo/library/ui/AppsListFragment$viewModel$2;->this$0:Ltech/ulo/library/ui/AppsListFragment;

    invoke-static {v2}, Ltech/ulo/library/ui/AppsListFragment;->access$getActivityContext$p(Ltech/ulo/library/ui/AppsListFragment;)Ltech/ulo/library/MainActivity;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {v2}, Ltech/ulo/library/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string v2, "getAssets(...)"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Ltech/ulo/library/ui/AppsListFragment$viewModel$2;->this$0:Ltech/ulo/library/ui/AppsListFragment;

    invoke-static {v2}, Ltech/ulo/library/ui/AppsListFragment;->access$getActivityContext$p(Ltech/ulo/library/ui/AppsListFragment;)Ltech/ulo/library/MainActivity;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_3
    check-cast v2, Landroid/content/Context;

    .line 214
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, "_preferences"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x0

    invoke-virtual {v2, v5, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v2, "getSharedPreferences(...)"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v13, 0x18

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v1

    move v3, v14

    move-object v14, v5

    .line 60
    invoke-direct/range {v7 .. v14}, Ltech/ulo/library/model/remote/GithubAppsFetcher;-><init>(Ljava/lang/String;Landroid/content/res/AssetManager;Landroid/content/SharedPreferences;Ltech/ulo/library/utils/HttpStream;Ltech/ulo/library/utils/Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 62
    new-instance v13, Ltech/ulo/library/model/repositories/AppsRepository;

    iget-object v5, v0, Ltech/ulo/library/ui/AppsListFragment$viewModel$2;->this$0:Ltech/ulo/library/ui/AppsListFragment;

    invoke-static {v5}, Ltech/ulo/library/ui/AppsListFragment;->access$getAppsPreferences(Ltech/ulo/library/ui/AppsListFragment;)Ltech/ulo/library/utils/preferences/AppsPreferences;

    move-result-object v8

    iget-object v5, v0, Ltech/ulo/library/ui/AppsListFragment$viewModel$2;->this$0:Ltech/ulo/library/ui/AppsListFragment;

    invoke-static {v5}, Ltech/ulo/library/ui/AppsListFragment;->access$getActivityContext$p(Ltech/ulo/library/ui/AppsListFragment;)Ltech/ulo/library/MainActivity;

    move-result-object v5

    if-nez v5, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/16 v16, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v16, v5

    :goto_0
    move-object/from16 v4, v16

    check-cast v4, Landroid/content/Context;

    .line 215
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v11, 0x10

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v5, v13

    move-object v7, v1

    .line 62
    invoke-direct/range {v5 .. v12}, Ltech/ulo/library/model/repositories/AppsRepository;-><init>(Ltech/ulo/library/model/daos/AppsDao;Ltech/ulo/library/model/remote/GithubAppsFetcher;Ltech/ulo/library/utils/preferences/AppsPreferences;Landroid/content/SharedPreferences;Ltech/ulo/library/utils/Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 63
    iget-object v1, v0, Ltech/ulo/library/ui/AppsListFragment$viewModel$2;->this$0:Ltech/ulo/library/ui/AppsListFragment;

    check-cast v1, Landroidx/fragment/app/Fragment;

    new-instance v2, Ltech/ulo/library/viewmodel/AppsListViewModelFactory;

    invoke-direct {v2, v13}, Ltech/ulo/library/viewmodel/AppsListViewModelFactory;-><init>(Ltech/ulo/library/model/repositories/AppsRepository;)V

    check-cast v2, Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-static {v1, v2}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object v1

    const-class v2, Ltech/ulo/library/viewmodel/AppsListViewModel;

    .line 64
    invoke-virtual {v1, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Ltech/ulo/library/viewmodel/AppsListViewModel;

    return-object v1
.end method
