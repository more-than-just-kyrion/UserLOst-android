.class Ltech/ulo/library/model/daos/SessionDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
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
        "Landroidx/room/EntityInsertionAdapter<",
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

    .line 50
    iput-object p1, p0, Ltech/ulo/library/model/daos/SessionDao_Impl$1;->this$0:Ltech/ulo/library/model/daos/SessionDao_Impl;

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

    .line 50
    check-cast p2, Ltech/ulo/library/model/entities/Session;

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/model/daos/SessionDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ltech/ulo/library/model/entities/Session;)V

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

    .line 58
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 59
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 60
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x3

    .line 64
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getFilesystemId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 65
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getFilesystemName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 66
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getFilesystemName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 71
    :goto_1
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getActive()Z

    move-result v0

    const/4 v1, 0x5

    int-to-long v2, v0

    .line 72
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 73
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getUsername()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_2

    .line 74
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 76
    :cond_2
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 78
    :goto_2
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getPassword()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_3

    .line 79
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 81
    :cond_3
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 83
    :goto_3
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getVncPassword()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_4

    .line 84
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 86
    :cond_4
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getVncPassword()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 89
    :goto_4
    iget-object v0, p0, Ltech/ulo/library/model/daos/SessionDao_Impl$1;->this$0:Ltech/ulo/library/model/daos/SessionDao_Impl;

    invoke-static {v0}, Ltech/ulo/library/model/daos/SessionDao_Impl;->-$$Nest$fget__serviceTypeConverter(Ltech/ulo/library/model/daos/SessionDao_Impl;)Ltech/ulo/library/model/entities/ServiceTypeConverter;

    move-result-object v0

    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getServiceType()Ltech/ulo/library/model/entities/ServiceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltech/ulo/library/model/entities/ServiceTypeConverter;->fromServiceType(Ltech/ulo/library/model/entities/ServiceType;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_5

    .line 91
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 93
    :cond_5
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_5
    const/16 v0, 0xa

    .line 95
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getPort()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xb

    .line 96
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getPid()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 97
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getGeometry()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    if-nez v0, :cond_6

    .line 98
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 100
    :cond_6
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getGeometry()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 103
    :goto_6
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->isAppsSession()Z

    move-result v0

    const/16 v1, 0xd

    int-to-long v2, v0

    .line 104
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 106
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->isProtected()Z

    move-result v0

    const/16 v1, 0xe

    int-to-long v2, v0

    .line 107
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 108
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getDisplayOrientation()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xf

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 110
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getDisplayLocked()Z

    move-result v0

    const/16 v1, 0x10

    int-to-long v2, v0

    .line 111
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 112
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getDisplayScaling()F

    move-result v0

    float-to-double v0, v0

    const/16 v2, 0x11

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 114
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getDisplayRemember()Z

    move-result v0

    const/16 v1, 0x12

    int-to-long v2, v0

    .line 115
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 117
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getSoundSupport()Z

    move-result v0

    const/16 v1, 0x13

    int-to-long v2, v0

    .line 118
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 120
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getMicSupport()Z

    move-result v0

    const/16 v1, 0x14

    int-to-long v2, v0

    .line 121
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 123
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getServiceTypeRemember()Z

    move-result v0

    const/16 v1, 0x15

    int-to-long v2, v0

    .line 124
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 126
    iget-object v0, p0, Ltech/ulo/library/model/daos/SessionDao_Impl$1;->this$0:Ltech/ulo/library/model/daos/SessionDao_Impl;

    invoke-static {v0}, Ltech/ulo/library/model/daos/SessionDao_Impl;->-$$Nest$fget__executionTypeConverter(Ltech/ulo/library/model/daos/SessionDao_Impl;)Ltech/ulo/library/model/entities/ExecutionTypeConverter;

    move-result-object v0

    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getExecutionType()Ltech/ulo/library/model/entities/ExecutionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltech/ulo/library/model/entities/ExecutionTypeConverter;->fromExecutionType(Ltech/ulo/library/model/entities/ExecutionType;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x16

    if-nez v0, :cond_7

    .line 128
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 130
    :cond_7
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 133
    :goto_7
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getShareStorage()Z

    move-result v0

    const/16 v1, 0x17

    int-to-long v2, v0

    .line 134
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x18

    .line 135
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getMemoryMb()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 137
    invoke-virtual {p2}, Ltech/ulo/library/model/entities/Session;->getCpuAllCores()Z

    move-result p2

    const/16 v0, 0x19

    int-to-long v1, p2

    .line 138
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "INSERT OR ABORT INTO `session` (`id`,`name`,`filesystemId`,`filesystemName`,`active`,`username`,`password`,`vncPassword`,`serviceType`,`port`,`pid`,`geometry`,`isAppsSession`,`isProtected`,`displayOrientation`,`displayLocked`,`displayScaling`,`displayRemember`,`soundSupport`,`micSupport`,`serviceTypeRemember`,`executionType`,`shareStorage`,`memoryMb`,`cpuAllCores`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
