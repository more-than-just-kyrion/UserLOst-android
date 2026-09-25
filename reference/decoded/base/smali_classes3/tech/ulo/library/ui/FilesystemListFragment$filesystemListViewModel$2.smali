.class final Ltech/ulo/library/ui/FilesystemListFragment$filesystemListViewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FilesystemListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/ui/FilesystemListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ltech/ulo/library/viewmodel/FilesystemListViewModel;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFilesystemListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilesystemListFragment.kt\ntech/ulo/library/ui/FilesystemListFragment$filesystemListViewModel$2\n+ 2 Extensions.kt\ntech/ulo/library/utils/ExtensionsKt\n*L\n1#1,216:1\n49#2:217\n*S KotlinDebug\n*F\n+ 1 FilesystemListFragment.kt\ntech/ulo/library/ui/FilesystemListFragment$filesystemListViewModel$2\n*L\n49#1:217\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ltech/ulo/library/viewmodel/FilesystemListViewModel;",
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
.field final synthetic this$0:Ltech/ulo/library/ui/FilesystemListFragment;


# direct methods
.method constructor <init>(Ltech/ulo/library/ui/FilesystemListFragment;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/ui/FilesystemListFragment$filesystemListViewModel$2;->this$0:Ltech/ulo/library/ui/FilesystemListFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-virtual {p0}, Ltech/ulo/library/ui/FilesystemListFragment$filesystemListViewModel$2;->invoke()Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ltech/ulo/library/viewmodel/FilesystemListViewModel;
    .locals 11

    .line 45
    sget-object v0, Ltech/ulo/library/model/repositories/UlaDatabase;->Companion:Ltech/ulo/library/model/repositories/UlaDatabase$Companion;

    iget-object v1, p0, Ltech/ulo/library/ui/FilesystemListFragment$filesystemListViewModel$2;->this$0:Ltech/ulo/library/ui/FilesystemListFragment;

    invoke-static {v1}, Ltech/ulo/library/ui/FilesystemListFragment;->access$getActivityContext$p(Ltech/ulo/library/ui/FilesystemListFragment;)Ltech/ulo/library/MainActivity;

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

    invoke-virtual {v0}, Ltech/ulo/library/model/repositories/UlaDatabase;->filesystemDao()Ltech/ulo/library/model/daos/FilesystemDao;

    move-result-object v0

    .line 46
    sget-object v1, Ltech/ulo/library/model/repositories/UlaDatabase;->Companion:Ltech/ulo/library/model/repositories/UlaDatabase$Companion;

    iget-object v4, p0, Ltech/ulo/library/ui/FilesystemListFragment$filesystemListViewModel$2;->this$0:Ltech/ulo/library/ui/FilesystemListFragment;

    invoke-static {v4}, Ltech/ulo/library/ui/FilesystemListFragment;->access$getActivityContext$p(Ltech/ulo/library/ui/FilesystemListFragment;)Ltech/ulo/library/MainActivity;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_1
    check-cast v4, Landroid/content/Context;

    invoke-virtual {v1, v4}, Ltech/ulo/library/model/repositories/UlaDatabase$Companion;->getInstance(Landroid/content/Context;)Ltech/ulo/library/model/repositories/UlaDatabase;

    move-result-object v1

    invoke-virtual {v1}, Ltech/ulo/library/model/repositories/UlaDatabase;->sessionDao()Ltech/ulo/library/model/daos/SessionDao;

    move-result-object v1

    .line 48
    new-instance v10, Ltech/ulo/library/utils/UlaFiles;

    iget-object v4, p0, Ltech/ulo/library/ui/FilesystemListFragment$filesystemListViewModel$2;->this$0:Ltech/ulo/library/ui/FilesystemListFragment;

    invoke-static {v4}, Ltech/ulo/library/ui/FilesystemListFragment;->access$getActivityContext$p(Ltech/ulo/library/ui/FilesystemListFragment;)Ltech/ulo/library/MainActivity;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_2
    move-object v5, v4

    check-cast v5, Landroid/content/Context;

    iget-object v4, p0, Ltech/ulo/library/ui/FilesystemListFragment$filesystemListViewModel$2;->this$0:Ltech/ulo/library/ui/FilesystemListFragment;

    invoke-static {v4}, Ltech/ulo/library/ui/FilesystemListFragment;->access$getActivityContext$p(Ltech/ulo/library/ui/FilesystemListFragment;)Ltech/ulo/library/MainActivity;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_3
    invoke-virtual {v4}, Ltech/ulo/library/MainActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-string v4, "nativeLibraryDir"

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Ltech/ulo/library/utils/UlaFiles;-><init>(Landroid/content/Context;Ljava/lang/String;Ltech/ulo/library/utils/Symlinker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 49
    new-instance v6, Ltech/ulo/library/utils/ProotDebugLogger;

    iget-object v4, p0, Ltech/ulo/library/ui/FilesystemListFragment$filesystemListViewModel$2;->this$0:Ltech/ulo/library/ui/FilesystemListFragment;

    invoke-static {v4}, Ltech/ulo/library/ui/FilesystemListFragment;->access$getActivityContext$p(Ltech/ulo/library/ui/FilesystemListFragment;)Ltech/ulo/library/MainActivity;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v2, v4

    :goto_0
    check-cast v2, Landroid/content/Context;

    .line 217
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

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "getSharedPreferences(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {v6, v2, v10}, Ltech/ulo/library/utils/ProotDebugLogger;-><init>(Landroid/content/SharedPreferences;Ltech/ulo/library/utils/UlaFiles;)V

    .line 50
    new-instance v2, Ltech/ulo/library/utils/BusyboxExecutor;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, v2

    move-object v5, v10

    invoke-direct/range {v4 .. v9}, Ltech/ulo/library/utils/BusyboxExecutor;-><init>(Ltech/ulo/library/utils/UlaFiles;Ltech/ulo/library/utils/ProotDebugLogger;Ltech/ulo/library/utils/BusyboxWrapper;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    new-instance v3, Ltech/ulo/library/utils/FilesystemManager;

    move-object v4, v3

    move-object v6, v2

    invoke-direct/range {v4 .. v9}, Ltech/ulo/library/utils/FilesystemManager;-><init>(Ltech/ulo/library/utils/UlaFiles;Ltech/ulo/library/utils/BusyboxExecutor;Ltech/ulo/library/utils/Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 53
    iget-object v2, p0, Ltech/ulo/library/ui/FilesystemListFragment$filesystemListViewModel$2;->this$0:Ltech/ulo/library/ui/FilesystemListFragment;

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 54
    new-instance v4, Ltech/ulo/library/viewmodel/FilesystemListViewmodelFactory;

    invoke-direct {v4, v0, v1, v3}, Ltech/ulo/library/viewmodel/FilesystemListViewmodelFactory;-><init>(Ltech/ulo/library/model/daos/FilesystemDao;Ltech/ulo/library/model/daos/SessionDao;Ltech/ulo/library/utils/FilesystemManager;)V

    check-cast v4, Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 53
    invoke-static {v2, v4}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    .line 59
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    return-object v0
.end method
