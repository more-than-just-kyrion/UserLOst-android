.class public final Ltech/ulo/library/viewmodel/FilesystemListViewmodelFactory;
.super Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;
.source "FilesystemListViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J%\u0010\t\u001a\u0002H\n\"\u0008\u0008\u0000\u0010\n*\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\n0\rH\u0016\u00a2\u0006\u0002\u0010\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Ltech/ulo/library/viewmodel/FilesystemListViewmodelFactory;",
        "Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;",
        "filesystemDao",
        "Ltech/ulo/library/model/daos/FilesystemDao;",
        "sessionDao",
        "Ltech/ulo/library/model/daos/SessionDao;",
        "filesystemManager",
        "Ltech/ulo/library/utils/FilesystemManager;",
        "(Ltech/ulo/library/model/daos/FilesystemDao;Ltech/ulo/library/model/daos/SessionDao;Ltech/ulo/library/utils/FilesystemManager;)V",
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
.field private final filesystemDao:Ltech/ulo/library/model/daos/FilesystemDao;

.field private final filesystemManager:Ltech/ulo/library/utils/FilesystemManager;

.field private final sessionDao:Ltech/ulo/library/model/daos/SessionDao;


# direct methods
.method public constructor <init>(Ltech/ulo/library/model/daos/FilesystemDao;Ltech/ulo/library/model/daos/SessionDao;Ltech/ulo/library/utils/FilesystemManager;)V
    .locals 1

    const-string v0, "filesystemDao"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionDao"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filesystemManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-direct {p0}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewmodelFactory;->filesystemDao:Ltech/ulo/library/model/daos/FilesystemDao;

    iput-object p2, p0, Ltech/ulo/library/viewmodel/FilesystemListViewmodelFactory;->sessionDao:Ltech/ulo/library/model/daos/SessionDao;

    iput-object p3, p0, Ltech/ulo/library/viewmodel/FilesystemListViewmodelFactory;->filesystemManager:Ltech/ulo/library/utils/FilesystemManager;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 3
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

    .line 208
    new-instance p1, Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    .line 209
    iget-object v0, p0, Ltech/ulo/library/viewmodel/FilesystemListViewmodelFactory;->filesystemDao:Ltech/ulo/library/model/daos/FilesystemDao;

    .line 210
    iget-object v1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewmodelFactory;->sessionDao:Ltech/ulo/library/model/daos/SessionDao;

    .line 211
    iget-object v2, p0, Ltech/ulo/library/viewmodel/FilesystemListViewmodelFactory;->filesystemManager:Ltech/ulo/library/utils/FilesystemManager;

    .line 208
    invoke-direct {p1, v0, v1, v2}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;-><init>(Ltech/ulo/library/model/daos/FilesystemDao;Ltech/ulo/library/model/daos/SessionDao;Ltech/ulo/library/utils/FilesystemManager;)V

    check-cast p1, Landroidx/lifecycle/ViewModel;

    return-object p1
.end method
