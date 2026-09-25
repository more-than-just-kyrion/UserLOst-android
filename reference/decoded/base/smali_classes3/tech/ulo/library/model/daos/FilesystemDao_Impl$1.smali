.class Ltech/ulo/library/model/daos/FilesystemDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "FilesystemDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/model/daos/FilesystemDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Ltech/ulo/library/model/entities/Filesystem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltech/ulo/library/model/daos/FilesystemDao_Impl;


# direct methods
.method constructor <init>(Ltech/ulo/library/model/daos/FilesystemDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 42
    iput-object p1, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl$1;->this$0:Ltech/ulo/library/model/daos/FilesystemDao_Impl;

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

    .line 42
    check-cast p2, Ltech/ulo/library/model/entities/Filesystem;

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/model/daos/FilesystemDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ltech/ulo/library/model/entities/Filesystem;)V

    return-void
.end method

.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ltech/ulo/library/model/entities/Filesystem;)V
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

    const/4 v0, 0x1

    .line 50
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 51
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 52
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 56
    :goto_0
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getDistributionType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 57
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getDistributionType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 61
    :goto_1
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getArchType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 62
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 64
    :cond_2
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getArchType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 66
    :goto_2
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getFlavor()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 67
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 69
    :cond_3
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getFlavor()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 71
    :goto_3
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getDefaultUsername()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 72
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 74
    :cond_4
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getDefaultUsername()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 76
    :goto_4
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getDefaultPassword()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_5

    .line 77
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 79
    :cond_5
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getDefaultPassword()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 81
    :goto_5
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getDefaultVncPassword()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_6

    .line 82
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 84
    :cond_6
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getDefaultVncPassword()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 87
    :goto_6
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->isAppsFilesystem()Z

    move-result v0

    const/16 v1, 0x9

    int-to-long v2, v0

    .line 88
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 89
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getVersionCodeUsed()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_7

    .line 90
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 92
    :cond_7
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getVersionCodeUsed()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 95
    :goto_7
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->isCreatedFromBackup()Z

    move-result v0

    const/16 v1, 0xb

    int-to-long v2, v0

    .line 96
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 98
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->isProtected()Z

    move-result v0

    const/16 v1, 0xc

    int-to-long v2, v0

    .line 99
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 101
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->isPaid()Z

    move-result v0

    const/16 v1, 0xd

    int-to-long v2, v0

    .line 102
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 104
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getHasPaidUp()Z

    move-result v0

    const/16 v1, 0xe

    int-to-long v2, v0

    .line 105
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 107
    iget-object v0, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl$1;->this$0:Ltech/ulo/library/model/daos/FilesystemDao_Impl;

    invoke-static {v0}, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->-$$Nest$fget__executionTypeConverter(Ltech/ulo/library/model/daos/FilesystemDao_Impl;)Ltech/ulo/library/model/entities/ExecutionTypeConverter;

    move-result-object v0

    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getExecutionType()Ltech/ulo/library/model/entities/ExecutionType;

    move-result-object p2

    invoke-virtual {v0, p2}, Ltech/ulo/library/model/entities/ExecutionTypeConverter;->fromExecutionType(Ltech/ulo/library/model/entities/ExecutionType;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xf

    if-nez p2, :cond_8

    .line 109
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_8

    .line 111
    :cond_8
    invoke-interface {p1, v0, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_8
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "INSERT OR ABORT INTO `filesystem` (`id`,`name`,`distributionType`,`archType`,`flavor`,`defaultUsername`,`defaultPassword`,`defaultVncPassword`,`isAppsFilesystem`,`versionCodeUsed`,`isCreatedFromBackup`,`isProtected`,`isPaid`,`hasPaidUp`,`executionType`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
