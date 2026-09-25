.class Ltech/ulo/library/model/daos/AppsDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "AppsDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/model/daos/AppsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Ltech/ulo/library/model/entities/App;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltech/ulo/library/model/daos/AppsDao_Impl;


# direct methods
.method constructor <init>(Ltech/ulo/library/model/daos/AppsDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Ltech/ulo/library/model/daos/AppsDao_Impl$1;->this$0:Ltech/ulo/library/model/daos/AppsDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 35
    check-cast p2, Ltech/ulo/library/model/entities/App;

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/model/daos/AppsDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ltech/ulo/library/model/entities/App;)V

    return-void
.end method

.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ltech/ulo/library/model/entities/App;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 43
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/App;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 44
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/App;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 48
    :goto_0
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/App;->getCategory()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 49
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/App;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 53
    :goto_1
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/App;->getFilesystemRequired()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 54
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 56
    :cond_2
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/App;->getFilesystemRequired()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 59
    :goto_2
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/App;->getSupportsCli()Z

    move-result v0

    const/4 v1, 0x4

    int-to-long v2, v0

    .line 60
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 62
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/App;->getSupportsGui()Z

    move-result v0

    const/4 v1, 0x5

    int-to-long v2, v0

    .line 63
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 64
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/App;->getSupportsStandalone()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_3

    .line 65
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 67
    :cond_3
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/App;->getSupportsStandalone()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 70
    :goto_3
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/App;->isPaidApp()Z

    move-result v0

    const/4 v1, 0x7

    int-to-long v2, v0

    .line 71
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x8

    .line 72
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/App;->getVersion()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "INSERT OR REPLACE INTO `apps` (`name`,`category`,`filesystemRequired`,`supportsCli`,`supportsGui`,`supportsStandalone`,`isPaidApp`,`version`) VALUES (?,?,?,?,?,?,?,?)"

    return-object v0
.end method
