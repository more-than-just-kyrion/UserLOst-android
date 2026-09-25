.class public interface abstract Ltech/ulo/library/model/daos/AppsDao;
.super Ljava/lang/Object;
.source "AppsDao.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008g\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\'J\u0014\u0010\u0004\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u0005H\'J\u0014\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u0005H\'J\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH\'J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0007H\'\u00a8\u0006\u000e"
    }
    d2 = {
        "Ltech/ulo/library/model/daos/AppsDao;",
        "",
        "deleteAllApps",
        "",
        "getActiveApps",
        "Landroidx/lifecycle/LiveData;",
        "",
        "Ltech/ulo/library/model/entities/App;",
        "getAllApps",
        "getAppByName",
        "name",
        "",
        "insertApp",
        "application",
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


# virtual methods
.method public abstract deleteAllApps()V
.end method

.method public abstract getActiveApps()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/App;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAllApps()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/App;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAppByName(Ljava/lang/String;)Ltech/ulo/library/model/entities/App;
.end method

.method public abstract insertApp(Ltech/ulo/library/model/entities/App;)V
.end method
