.class Ltech/ulo/library/model/daos/SessionDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "SessionDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/model/daos/SessionDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Ltech/ulo/library/model/entities/Session;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltech/ulo/library/model/daos/SessionDao_Impl;


# direct methods
.method constructor <init>(Ltech/ulo/library/model/daos/SessionDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 141
    iput-object p1, p0, Ltech/ulo/library/model/daos/SessionDao_Impl$2;->this$0:Ltech/ulo/library/model/daos/SessionDao_Impl;

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

    .line 141
    check-cast p2, Ltech/ulo/library/model/entities/Session;

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/model/daos/SessionDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ltech/ulo/library/model/entities/Session;)V

    return-void
.end method

.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ltech/ulo/library/model/entities/Session;)V
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

    .line 149
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 150
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 151
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x3

    .line 155
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getFilesystemId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 156
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getFilesystemName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 157
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 159
    :cond_1
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getFilesystemName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 162
    :goto_1
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getActive()Z

    move-result v0

    const/4 v1, 0x5

    int-to-long v2, v0

    .line 163
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 164
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getUsername()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_2

    .line 165
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 167
    :cond_2
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 169
    :goto_2
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getPassword()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_3

    .line 170
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 172
    :cond_3
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 174
    :goto_3
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getVncPassword()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_4

    .line 175
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 177
    :cond_4
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getVncPassword()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 180
    :goto_4
    iget-object v0, p0, Ltech/ulo/library/model/daos/SessionDao_Impl$2;->this$0:Ltech/ulo/library/model/daos/SessionDao_Impl;

    invoke-static {v0}, Ltech/ulo/library/model/daos/SessionDao_Impl;->-$$Nest$fget__serviceTypeConverter(Ltech/ulo/library/model/daos/SessionDao_Impl;)Ltech/ulo/library/model/entities/ServiceTypeConverter;

    move-result-object v0

    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getServiceType()Ltech/ulo/library/model/entities/ServiceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltech/ulo/library/model/entities/ServiceTypeConverter;->fromServiceType(Ltech/ulo/library/model/entities/ServiceType;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_5

    .line 182
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 184
    :cond_5
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_5
    const/16 v0, 0xa

    .line 186
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getPort()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xb

    .line 187
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getPid()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 188
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getGeometry()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    if-nez v0, :cond_6

    .line 189
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 191
    :cond_6
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getGeometry()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 194
    :goto_6
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->isAppsSession()Z

    move-result v0

    const/16 v1, 0xd

    int-to-long v2, v0

    .line 195
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 197
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->isProtected()Z

    move-result v0

    const/16 v1, 0xe

    int-to-long v2, v0

    .line 198
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 199
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getDisplayOrientation()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xf

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 201
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getDisplayLocked()Z

    move-result v0

    const/16 v1, 0x10

    int-to-long v2, v0

    .line 202
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 203
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getDisplayScaling()F

    move-result v0

    float-to-double v0, v0

    const/16 v2, 0x11

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 205
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getDisplayRemember()Z

    move-result v0

    const/16 v1, 0x12

    int-to-long v2, v0

    .line 206
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 208
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getSoundSupport()Z

    move-result v0

    const/16 v1, 0x13

    int-to-long v2, v0

    .line 209
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 211
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getMicSupport()Z

    move-result v0

    const/16 v1, 0x14

    int-to-long v2, v0

    .line 212
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 214
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getServiceTypeRemember()Z

    move-result v0

    const/16 v1, 0x15

    int-to-long v2, v0

    .line 215
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 217
    iget-object v0, p0, Ltech/ulo/library/model/daos/SessionDao_Impl$2;->this$0:Ltech/ulo/library/model/daos/SessionDao_Impl;

    invoke-static {v0}, Ltech/ulo/library/model/daos/SessionDao_Impl;->-$$Nest$fget__executionTypeConverter(Ltech/ulo/library/model/daos/SessionDao_Impl;)Ltech/ulo/library/model/entities/ExecutionTypeConverter;

    move-result-object v0

    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getExecutionType()Ltech/ulo/library/model/entities/ExecutionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltech/ulo/library/model/entities/ExecutionTypeConverter;->fromExecutionType(Ltech/ulo/library/model/entities/ExecutionType;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x16

    if-nez v0, :cond_7

    .line 219
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 221
    :cond_7
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 224
    :goto_7
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getShareStorage()Z

    move-result v0

    const/16 v1, 0x17

    int-to-long v2, v0

    .line 225
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x18

    .line 226
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getMemoryMb()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 228
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getCpuAllCores()Z

    move-result v0

    const/16 v1, 0x19

    int-to-long v2, v0

    .line 229
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x1a

    .line 230
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 144
    const-string v0, "UPDATE OR REPLACE `session` SET `id` = ?,`name` = ?,`filesystemId` = ?,`filesystemName` = ?,`active` = ?,`username` = ?,`password` = ?,`vncPassword` = ?,`serviceType` = ?,`port` = ?,`pid` = ?,`geometry` = ?,`isAppsSession` = ?,`isProtected` = ?,`displayOrientation` = ?,`displayLocked` = ?,`displayScaling` = ?,`displayRemember` = ?,`soundSupport` = ?,`micSupport` = ?,`serviceTypeRemember` = ?,`executionType` = ?,`shareStorage` = ?,`memoryMb` = ?,`cpuAllCores` = ? WHERE `id` = ?"

    return-object v0
.end method
