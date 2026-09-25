.class public interface abstract Ltech/ulo/library/model/daos/FilesystemDao;
.super Ljava/lang/Object;
.source "FilesystemDao.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008g\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\nH\'J\u0014\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u000cH\'J\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0010\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\nH\'J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0008H\'J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0008H\'\u00a8\u0006\u0013"
    }
    d2 = {
        "Ltech/ulo/library/model/daos/FilesystemDao;",
        "",
        "deleteFilesystemById",
        "",
        "id",
        "",
        "findAppsFilesystemByType",
        "",
        "Ltech/ulo/library/model/entities/Filesystem;",
        "requiredFilesystemType",
        "",
        "getAllFilesystems",
        "Landroidx/lifecycle/LiveData;",
        "getFilesystemById",
        "getFilesystemByName",
        "name",
        "insertFilesystem",
        "filesystem",
        "updateFilesystem",
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
.method public abstract deleteFilesystemById(J)V
.end method

.method public abstract findAppsFilesystemByType(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Filesystem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllFilesystems()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Filesystem;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getFilesystemById(J)Ltech/ulo/library/model/entities/Filesystem;
.end method

.method public abstract getFilesystemByName(Ljava/lang/String;)Ltech/ulo/library/model/entities/Filesystem;
.end method

.method public abstract insertFilesystem(Ltech/ulo/library/model/entities/Filesystem;)J
.end method

.method public abstract updateFilesystem(Ltech/ulo/library/model/entities/Filesystem;)V
.end method
