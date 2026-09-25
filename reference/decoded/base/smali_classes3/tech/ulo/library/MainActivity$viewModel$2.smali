.class final Ltech/ulo/library/MainActivity$viewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/MainActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ltech/ulo/library/viewmodel/MainActivityViewModel;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ntech/ulo/library/MainActivity$viewModel$2\n+ 2 Extensions.kt\ntech/ulo/library/utils/ExtensionsKt\n*L\n1#1,1687:1\n49#2:1688\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ntech/ulo/library/MainActivity$viewModel$2\n*L\n176#1:1688\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ltech/ulo/library/viewmodel/MainActivityViewModel;",
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
.field final synthetic this$0:Ltech/ulo/library/MainActivity;


# direct methods
.method constructor <init>(Ltech/ulo/library/MainActivity;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/MainActivity$viewModel$2;->this$0:Ltech/ulo/library/MainActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 167
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity$viewModel$2;->invoke()Ltech/ulo/library/viewmodel/MainActivityViewModel;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ltech/ulo/library/viewmodel/MainActivityViewModel;
    .locals 21

    move-object/from16 v0, p0

    .line 168
    sget-object v1, Ltech/ulo/library/model/repositories/UlaDatabase;->Companion:Ltech/ulo/library/model/repositories/UlaDatabase$Companion;

    iget-object v2, v0, Ltech/ulo/library/MainActivity$viewModel$2;->this$0:Ltech/ulo/library/MainActivity;

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v1, v2}, Ltech/ulo/library/model/repositories/UlaDatabase$Companion;->getInstance(Landroid/content/Context;)Ltech/ulo/library/model/repositories/UlaDatabase;

    move-result-object v1

    .line 170
    new-instance v12, Ltech/ulo/library/utils/preferences/AssetPreferences;

    iget-object v2, v0, Ltech/ulo/library/MainActivity$viewModel$2;->this$0:Ltech/ulo/library/MainActivity;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v12, v2}, Ltech/ulo/library/utils/preferences/AssetPreferences;-><init>(Landroid/content/Context;)V

    .line 171
    new-instance v9, Ltech/ulo/library/model/remote/GithubApiClient;

    iget-object v2, v0, Ltech/ulo/library/MainActivity$viewModel$2;->this$0:Ltech/ulo/library/MainActivity;

    invoke-static {v2}, Ltech/ulo/library/MainActivity;->access$getUlaFiles(Ltech/ulo/library/MainActivity;)Ltech/ulo/library/utils/UlaFiles;

    move-result-object v4

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Ltech/ulo/library/model/remote/GithubApiClient;-><init>(Ltech/ulo/library/utils/UlaFiles;Ltech/ulo/library/model/remote/UrlProvider;Ltech/ulo/library/utils/Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 172
    new-instance v13, Ltech/ulo/library/model/repositories/AssetRepository;

    .line 173
    iget-object v2, v0, Ltech/ulo/library/MainActivity$viewModel$2;->this$0:Ltech/ulo/library/MainActivity;

    invoke-virtual {v2}, Ltech/ulo/library/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v2, "getPath(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iget-object v2, v0, Ltech/ulo/library/MainActivity$viewModel$2;->this$0:Ltech/ulo/library/MainActivity;

    invoke-static {v2}, Ltech/ulo/library/MainActivity;->access$getUlaFiles(Ltech/ulo/library/MainActivity;)Ltech/ulo/library/utils/UlaFiles;

    move-result-object v4

    .line 176
    iget-object v2, v0, Ltech/ulo/library/MainActivity$viewModel$2;->this$0:Ltech/ulo/library/MainActivity;

    check-cast v2, Landroid/content/Context;

    .line 1688
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

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

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v2, "getSharedPreferences(...)"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x60

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object v2, v13

    move-object v5, v12

    move-object v7, v9

    move-object v9, v14

    .line 172
    invoke-direct/range {v2 .. v11}, Ltech/ulo/library/model/repositories/AssetRepository;-><init>(Ljava/lang/String;Ltech/ulo/library/utils/UlaFiles;Ltech/ulo/library/utils/preferences/AssetPreferences;Landroid/content/SharedPreferences;Ltech/ulo/library/model/remote/GithubApiClient;Ltech/ulo/library/utils/HttpStream;Ltech/ulo/library/utils/Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 180
    new-instance v2, Ltech/ulo/library/utils/FilesystemManager;

    iget-object v3, v0, Ltech/ulo/library/MainActivity$viewModel$2;->this$0:Ltech/ulo/library/MainActivity;

    invoke-static {v3}, Ltech/ulo/library/MainActivity;->access$getUlaFiles(Ltech/ulo/library/MainActivity;)Ltech/ulo/library/utils/UlaFiles;

    move-result-object v16

    iget-object v3, v0, Ltech/ulo/library/MainActivity$viewModel$2;->this$0:Ltech/ulo/library/MainActivity;

    invoke-static {v3}, Ltech/ulo/library/MainActivity;->access$getBusyboxExecutor(Ltech/ulo/library/MainActivity;)Ltech/ulo/library/utils/BusyboxExecutor;

    move-result-object v17

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v18, 0x0

    move-object v15, v2

    invoke-direct/range {v15 .. v20}, Ltech/ulo/library/utils/FilesystemManager;-><init>(Ltech/ulo/library/utils/UlaFiles;Ltech/ulo/library/utils/BusyboxExecutor;Ltech/ulo/library/utils/Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 181
    new-instance v10, Ltech/ulo/library/utils/StorageCalculator;

    new-instance v3, Landroid/os/StatFs;

    iget-object v4, v0, Ltech/ulo/library/MainActivity$viewModel$2;->this$0:Ltech/ulo/library/MainActivity;

    invoke-virtual {v4}, Ltech/ulo/library/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v3}, Ltech/ulo/library/utils/StorageCalculator;-><init>(Landroid/os/StatFs;)V

    .line 183
    iget-object v3, v0, Ltech/ulo/library/MainActivity$viewModel$2;->this$0:Ltech/ulo/library/MainActivity;

    const-string v4, "download"

    invoke-virtual {v3, v4}, Ltech/ulo/library/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.app.DownloadManager"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/app/DownloadManager;

    .line 184
    new-instance v4, Ltech/ulo/library/utils/DownloadManagerWrapper;

    iget-object v5, v0, Ltech/ulo/library/MainActivity$viewModel$2;->this$0:Ltech/ulo/library/MainActivity;

    invoke-direct {v4, v3, v5}, Ltech/ulo/library/utils/DownloadManagerWrapper;-><init>(Landroid/app/DownloadManager;Ltech/ulo/library/MainActivity;)V

    .line 185
    new-instance v11, Ltech/ulo/library/utils/AssetDownloader;

    iget-object v3, v0, Ltech/ulo/library/MainActivity$viewModel$2;->this$0:Ltech/ulo/library/MainActivity;

    invoke-static {v3}, Ltech/ulo/library/MainActivity;->access$getUlaFiles(Ltech/ulo/library/MainActivity;)Ltech/ulo/library/utils/UlaFiles;

    move-result-object v3

    invoke-direct {v11, v12, v4, v3}, Ltech/ulo/library/utils/AssetDownloader;-><init>(Ltech/ulo/library/utils/preferences/AssetPreferences;Ltech/ulo/library/utils/DownloadManagerWrapper;Ltech/ulo/library/utils/UlaFiles;)V

    .line 187
    new-instance v12, Ltech/ulo/library/model/state/AppsStartupFsm;

    iget-object v3, v0, Ltech/ulo/library/MainActivity$viewModel$2;->this$0:Ltech/ulo/library/MainActivity;

    invoke-static {v3}, Ltech/ulo/library/MainActivity;->access$getUlaFiles(Ltech/ulo/library/MainActivity;)Ltech/ulo/library/utils/UlaFiles;

    move-result-object v6

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v3, v12

    move-object v4, v1

    move-object v5, v2

    invoke-direct/range {v3 .. v9}, Ltech/ulo/library/model/state/AppsStartupFsm;-><init>(Ltech/ulo/library/model/repositories/UlaDatabase;Ltech/ulo/library/utils/FilesystemManager;Ltech/ulo/library/utils/UlaFiles;Ltech/ulo/library/utils/Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 188
    new-instance v14, Ltech/ulo/library/model/state/SessionStartupFsm;

    const/16 v15, 0x20

    const/16 v16, 0x0

    move-object v3, v14

    move-object v5, v13

    move-object v6, v2

    move-object v7, v11

    move-object v8, v10

    move v10, v15

    move-object/from16 v11, v16

    invoke-direct/range {v3 .. v11}, Ltech/ulo/library/model/state/SessionStartupFsm;-><init>(Ltech/ulo/library/model/repositories/UlaDatabase;Ltech/ulo/library/model/repositories/AssetRepository;Ltech/ulo/library/utils/FilesystemManager;Ltech/ulo/library/utils/AssetDownloader;Ltech/ulo/library/utils/StorageCalculator;Ltech/ulo/library/utils/Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 195
    iget-object v1, v0, Ltech/ulo/library/MainActivity$viewModel$2;->this$0:Ltech/ulo/library/MainActivity;

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    new-instance v2, Ltech/ulo/library/viewmodel/MainActivityViewModelFactory;

    invoke-direct {v2, v12, v14}, Ltech/ulo/library/viewmodel/MainActivityViewModelFactory;-><init>(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/state/SessionStartupFsm;)V

    check-cast v2, Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-static {v1, v2}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object v1

    const-class v2, Ltech/ulo/library/viewmodel/MainActivityViewModel;

    .line 196
    invoke-virtual {v1, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Ltech/ulo/library/viewmodel/MainActivityViewModel;

    return-object v1
.end method
