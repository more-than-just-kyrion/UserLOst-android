.class public interface abstract Ltech/ulo/library/model/daos/SessionDao;
.super Ljava/lang/Object;
.source "SessionDao.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008g\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0014\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007H\'J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u000b\u001a\u00020\u000cH\'J\u0014\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007H\'J\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\'J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0010\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u000cH\'J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\tH\'J\u0008\u0010\u0014\u001a\u00020\u0003H\'J\u0008\u0010\u0015\u001a\u00020\u0003H\'J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\tH\'\u00a8\u0006\u0017"
    }
    d2 = {
        "Ltech/ulo/library/model/daos/SessionDao;",
        "",
        "deleteSessionById",
        "",
        "id",
        "",
        "findActiveSessions",
        "Landroidx/lifecycle/LiveData;",
        "",
        "Ltech/ulo/library/model/entities/Session;",
        "findAppsSession",
        "appName",
        "",
        "getAllSessions",
        "getAllSessionsOnce",
        "getSessionById",
        "getSessionByName",
        "name",
        "insertSession",
        "session",
        "resetSessionActivity",
        "updateFilesystemNamesForAllSessions",
        "updateSession",
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
.method public abstract deleteSessionById(J)V
.end method

.method public abstract findActiveSessions()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Session;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract findAppsSession(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Session;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllSessions()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Session;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAllSessionsOnce()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Session;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSessionById(J)Ltech/ulo/library/model/entities/Session;
.end method

.method public abstract getSessionByName(Ljava/lang/String;)Ltech/ulo/library/model/entities/Session;
.end method

.method public abstract insertSession(Ltech/ulo/library/model/entities/Session;)V
.end method

.method public abstract resetSessionActivity()V
.end method

.method public abstract updateFilesystemNamesForAllSessions()V
.end method

.method public abstract updateSession(Ltech/ulo/library/model/entities/Session;)V
.end method
