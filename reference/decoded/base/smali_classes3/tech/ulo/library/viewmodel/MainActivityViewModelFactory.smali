.class public final Ltech/ulo/library/viewmodel/MainActivityViewModelFactory;
.super Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;
.source "MainActivityViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J%\u0010\u0007\u001a\u0002H\u0008\"\u0008\u0008\u0000\u0010\u0008*\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u000bH\u0016\u00a2\u0006\u0002\u0010\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Ltech/ulo/library/viewmodel/MainActivityViewModelFactory;",
        "Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;",
        "appsStartupFsm",
        "Ltech/ulo/library/model/state/AppsStartupFsm;",
        "sessionStartupFsm",
        "Ltech/ulo/library/model/state/SessionStartupFsm;",
        "(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/state/SessionStartupFsm;)V",
        "create",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "modelClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;",
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
.field private final appsStartupFsm:Ltech/ulo/library/model/state/AppsStartupFsm;

.field private final sessionStartupFsm:Ltech/ulo/library/model/state/SessionStartupFsm;


# direct methods
.method public constructor <init>(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/state/SessionStartupFsm;)V
    .locals 1

    const-string v0, "appsStartupFsm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionStartupFsm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 598
    invoke-direct {p0}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModelFactory;->appsStartupFsm:Ltech/ulo/library/model/state/AppsStartupFsm;

    iput-object p2, p0, Ltech/ulo/library/viewmodel/MainActivityViewModelFactory;->sessionStartupFsm:Ltech/ulo/library/model/state/SessionStartupFsm;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 601
    new-instance p1, Ltech/ulo/library/viewmodel/MainActivityViewModel;

    iget-object v2, p0, Ltech/ulo/library/viewmodel/MainActivityViewModelFactory;->appsStartupFsm:Ltech/ulo/library/model/state/AppsStartupFsm;

    iget-object v3, p0, Ltech/ulo/library/viewmodel/MainActivityViewModelFactory;->sessionStartupFsm:Ltech/ulo/library/model/state/SessionStartupFsm;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Ltech/ulo/library/viewmodel/MainActivityViewModel;-><init>(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/state/SessionStartupFsm;Ltech/ulo/library/utils/Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Landroidx/lifecycle/ViewModel;

    return-object p1
.end method
