.class final Ltech/ulo/library/viewmodel/MainActivityViewModel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivityViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/viewmodel/MainActivityViewModel;-><init>(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/state/SessionStartupFsm;Ltech/ulo/library/utils/Logger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ltech/ulo/library/model/state/AppsStartupState;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Ltech/ulo/library/model/state/AppsStartupState;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic this$0:Ltech/ulo/library/viewmodel/MainActivityViewModel;


# direct methods
.method constructor <init>(Ltech/ulo/library/viewmodel/MainActivityViewModel;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel$1;->this$0:Ltech/ulo/library/viewmodel/MainActivityViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 91
    check-cast p1, Ltech/ulo/library/model/state/AppsStartupState;

    invoke-virtual {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel$1;->invoke(Ltech/ulo/library/model/state/AppsStartupState;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ltech/ulo/library/model/state/AppsStartupState;)V
    .locals 5

    if-eqz p1, :cond_4

    .line 91
    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel$1;->this$0:Ltech/ulo/library/viewmodel/MainActivityViewModel;

    .line 92
    new-instance v1, Ltech/ulo/library/utils/UlaBreadcrumb;

    invoke-static {v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->access$getClassName$p(Ltech/ulo/library/viewmodel/MainActivityViewModel;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ltech/ulo/library/utils/BreadcrumbType$ObservedState;->INSTANCE:Ltech/ulo/library/utils/BreadcrumbType$ObservedState;

    check-cast v3, Ltech/ulo/library/utils/BreadcrumbType;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ltech/ulo/library/utils/UlaBreadcrumb;-><init>(Ljava/lang/String;Ltech/ulo/library/utils/BreadcrumbType;Ljava/lang/String;)V

    .line 93
    invoke-static {v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->access$getLogger$p(Ltech/ulo/library/viewmodel/MainActivityViewModel;)Ltech/ulo/library/utils/Logger;

    move-result-object v2

    invoke-interface {v2, v1}, Ltech/ulo/library/utils/Logger;->addBreadcrumb(Ltech/ulo/library/utils/UlaBreadcrumb;)V

    .line 95
    instance-of v1, p1, Ltech/ulo/library/model/state/WaitingForAppSelection;

    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 96
    invoke-static {v0, v2}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->access$setAppsAreWaitingForSelection$p(Ltech/ulo/library/viewmodel/MainActivityViewModel;Z)V

    :cond_0
    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 100
    invoke-static {v0, v1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->access$setAppsAreWaitingForSelection$p(Ltech/ulo/library/viewmodel/MainActivityViewModel;Z)V

    goto :goto_0

    .line 102
    :cond_1
    instance-of v1, p1, Ltech/ulo/library/model/state/DatabaseEntriesFetched;

    if-eqz v1, :cond_2

    .line 103
    move-object v1, p1

    check-cast v1, Ltech/ulo/library/model/state/DatabaseEntriesFetched;

    invoke-virtual {v1}, Ltech/ulo/library/model/state/DatabaseEntriesFetched;->getAppSession()Ltech/ulo/library/model/entities/Session;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->setLastSelectedSession(Ltech/ulo/library/model/entities/Session;)V

    .line 104
    invoke-virtual {v1}, Ltech/ulo/library/model/state/DatabaseEntriesFetched;->getAppsFilesystem()Ltech/ulo/library/model/entities/Filesystem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->setLastSelectedFilesystem(Ltech/ulo/library/model/entities/Filesystem;)V

    goto :goto_0

    .line 106
    :cond_2
    instance-of v1, p1, Ltech/ulo/library/model/state/AppDatabaseEntriesSynced;

    if-eqz v1, :cond_3

    .line 107
    move-object v1, p1

    check-cast v1, Ltech/ulo/library/model/state/AppDatabaseEntriesSynced;

    invoke-virtual {v1}, Ltech/ulo/library/model/state/AppDatabaseEntriesSynced;->getApp()Ltech/ulo/library/model/entities/App;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->setLastSelectedApp(Ltech/ulo/library/model/entities/App;)V

    .line 108
    invoke-virtual {v1}, Ltech/ulo/library/model/state/AppDatabaseEntriesSynced;->getSession()Ltech/ulo/library/model/entities/Session;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->setLastSelectedSession(Ltech/ulo/library/model/entities/Session;)V

    .line 109
    invoke-virtual {v1}, Ltech/ulo/library/model/state/AppDatabaseEntriesSynced;->getFilesystem()Ltech/ulo/library/model/entities/Filesystem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->setLastSelectedFilesystem(Ltech/ulo/library/model/entities/Filesystem;)V

    .line 113
    :cond_3
    :goto_0
    invoke-static {v0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->access$handleAppsPreparationState(Ltech/ulo/library/viewmodel/MainActivityViewModel;Ltech/ulo/library/model/state/AppsStartupState;)V

    :cond_4
    return-void
.end method
