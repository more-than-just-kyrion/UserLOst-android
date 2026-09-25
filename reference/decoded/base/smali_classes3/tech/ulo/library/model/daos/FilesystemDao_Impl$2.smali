.class Ltech/ulo/library/model/daos/FilesystemDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
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
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
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

    .line 115
    iput-object p1, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl$2;->this$0:Ltech/ulo/library/model/daos/FilesystemDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

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

    .line 115
    check-cast p2, Ltech/ulo/library/model/entities/Filesystem;

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/model/daos/FilesystemDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ltech/ulo/library/model/entities/Filesystem;)V

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

    .line 123
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 124
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 125
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 129
    :goto_0
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getDistributionType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 130
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 132
    :cond_1
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getDistributionType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 134
    :goto_1
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getArchType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 135
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 137
    :cond_2
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getArchType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 139
    :goto_2
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getFlavor()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 140
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 142
    :cond_3
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getFlavor()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 144
    :goto_3
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getDefaultUsername()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 145
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 147
    :cond_4
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getDefaultUsername()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 149
    :goto_4
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getDefaultPassword()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_5

    .line 150
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 152
    :cond_5
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getDefaultPassword()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 154
    :goto_5
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getDefaultVncPassword()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_6

    .line 155
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 157
    :cond_6
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getDefaultVncPassword()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 160
    :goto_6
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->isAppsFilesystem()Z

    move-result v0

    const/16 v1, 0x9

    int-to-long v2, v0

    .line 161
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 162
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getVersionCodeUsed()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_7

    .line 163
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 165
    :cond_7
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getVersionCodeUsed()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 168
    :goto_7
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->isCreatedFromBackup()Z

    move-result v0

    const/16 v1, 0xb

    int-to-long v2, v0

    .line 169
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 171
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->isProtected()Z

    move-result v0

    const/16 v1, 0xc

    int-to-long v2, v0

    .line 172
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 174
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->isPaid()Z

    move-result v0

    const/16 v1, 0xd

    int-to-long v2, v0

    .line 175
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 177
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getHasPaidUp()Z

    move-result v0

    const/16 v1, 0xe

    int-to-long v2, v0

    .line 178
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 180
    iget-object v0, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl$2;->this$0:Ltech/ulo/library/model/daos/FilesystemDao_Impl;

    invoke-static {v0}, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->-$$Nest$fget__executionTypeConverter(Ltech/ulo/library/model/daos/FilesystemDao_Impl;)Ltech/ulo/library/model/entities/ExecutionTypeConverter;

    move-result-object v0

    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getExecutionType()Ltech/ulo/library/model/entities/ExecutionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltech/ulo/library/model/entities/ExecutionTypeConverter;->fromExecutionType(Ltech/ulo/library/model/entities/ExecutionType;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    if-nez v0, :cond_8

    .line 182
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_8

    .line 184
    :cond_8
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_8
    const/16 v0, 0x10

    .line 186
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Filesystem;->getId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 118
    const-string v0, "UPDATE OR REPLACE `filesystem` SET `id` = ?,`name` = ?,`distributionType` = ?,`archType` = ?,`flavor` = ?,`defaultUsername` = ?,`defaultPassword` = ?,`defaultVncPassword` = ?,`isAppsFilesystem` = ?,`versionCodeUsed` = ?,`isCreatedFromBackup` = ?,`isProtected` = ?,`isPaid` = ?,`hasPaidUp` = ?,`executionType` = ? WHERE `id` = ?"

    return-object v0
.end method
