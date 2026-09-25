.class public final Ltech/ulo/library/model/daos/SessionDao_Impl;
.super Ljava/lang/Object;
.source "SessionDao_Impl.java"

# interfaces
.implements Ltech/ulo/library/model/daos/SessionDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __executionTypeConverter:Ltech/ulo/library/model/entities/ExecutionTypeConverter;

.field private final __insertionAdapterOfSession:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Ltech/ulo/library/model/entities/Session;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteSessionById:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfResetSessionActivity:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateFilesystemNamesForAllSessions:Landroidx/room/SharedSQLiteStatement;

.field private final __serviceTypeConverter:Ltech/ulo/library/model/entities/ServiceTypeConverter;

.field private final __updateAdapterOfSession:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Ltech/ulo/library/model/entities/Session;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fget__db(Ltech/ulo/library/model/daos/SessionDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__executionTypeConverter(Ltech/ulo/library/model/daos/SessionDao_Impl;)Ltech/ulo/library/model/entities/ExecutionTypeConverter;
    .locals 0

    iget-object p0, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__executionTypeConverter:Ltech/ulo/library/model/entities/ExecutionTypeConverter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__serviceTypeConverter(Ltech/ulo/library/model/daos/SessionDao_Impl;)Ltech/ulo/library/model/entities/ServiceTypeConverter;
    .locals 0

    iget-object p0, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__serviceTypeConverter:Ltech/ulo/library/model/entities/ServiceTypeConverter;

    return-object p0
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "__db"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ltech/ulo/library/model/entities/ServiceTypeConverter;

    invoke-direct {v0}, Ltech/ulo/library/model/entities/ServiceTypeConverter;-><init>()V

    iput-object v0, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__serviceTypeConverter:Ltech/ulo/library/model/entities/ServiceTypeConverter;

    .line 38
    new-instance v0, Ltech/ulo/library/model/entities/ExecutionTypeConverter;

    invoke-direct {v0}, Ltech/ulo/library/model/entities/ExecutionTypeConverter;-><init>()V

    iput-object v0, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__executionTypeConverter:Ltech/ulo/library/model/entities/ExecutionTypeConverter;

    .line 49
    iput-object p1, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 50
    new-instance v0, Ltech/ulo/library/model/daos/SessionDao_Impl$1;

    invoke-direct {v0, p0, p1}, Ltech/ulo/library/model/daos/SessionDao_Impl$1;-><init>(Ltech/ulo/library/model/daos/SessionDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__insertionAdapterOfSession:Landroidx/room/EntityInsertionAdapter;

    .line 141
    new-instance v0, Ltech/ulo/library/model/daos/SessionDao_Impl$2;

    invoke-direct {v0, p0, p1}, Ltech/ulo/library/model/daos/SessionDao_Impl$2;-><init>(Ltech/ulo/library/model/daos/SessionDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__updateAdapterOfSession:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 233
    new-instance v0, Ltech/ulo/library/model/daos/SessionDao_Impl$3;

    invoke-direct {v0, p0, p1}, Ltech/ulo/library/model/daos/SessionDao_Impl$3;-><init>(Ltech/ulo/library/model/daos/SessionDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__preparedStmtOfResetSessionActivity:Landroidx/room/SharedSQLiteStatement;

    .line 240
    new-instance v0, Ltech/ulo/library/model/daos/SessionDao_Impl$4;

    invoke-direct {v0, p0, p1}, Ltech/ulo/library/model/daos/SessionDao_Impl$4;-><init>(Ltech/ulo/library/model/daos/SessionDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__preparedStmtOfDeleteSessionById:Landroidx/room/SharedSQLiteStatement;

    .line 247
    new-instance v0, Ltech/ulo/library/model/daos/SessionDao_Impl$5;

    invoke-direct {v0, p0, p1}, Ltech/ulo/library/model/daos/SessionDao_Impl$5;-><init>(Ltech/ulo/library/model/daos/SessionDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__preparedStmtOfUpdateFilesystemNamesForAllSessions:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1261
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteSessionById(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 297
    iget-object v0, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__preparedStmtOfDeleteSessionById:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 299
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 300
    iget-object p1, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 302
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 303
    iget-object p1, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    iget-object p1, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 306
    iget-object p1, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__preparedStmtOfDeleteSessionById:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 305
    iget-object p2, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 306
    iget-object p2, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__preparedStmtOfDeleteSessionById:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 307
    throw p1
.end method

.method public findActiveSessions()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Session;",
            ">;>;"
        }
    .end annotation

    .line 1104
    const-string v0, "select * from session where active = 1"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 1105
    iget-object v2, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "session"

    aput-object v4, v3, v1

    new-instance v4, Ltech/ulo/library/model/daos/SessionDao_Impl$7;

    invoke-direct {v4, p0, v0}, Ltech/ulo/library/model/daos/SessionDao_Impl$7;-><init>(Ltech/ulo/library/model/daos/SessionDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v2, v3, v1, v4}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public findAppsSession(Ljava/lang/String;)Ljava/util/List;
    .locals 62
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "appName"
        }
    .end annotation

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

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 947
    const-string v2, "select * from session where name = ? and isAppsSession = 1"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    if-nez v0, :cond_0

    .line 950
    invoke-virtual {v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 952
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 954
    :goto_0
    iget-object v0, v1, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 955
    iget-object v0, v1, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 957
    :try_start_0
    const-string v0, "id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 958
    const-string v7, "name"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 959
    const-string v8, "filesystemId"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 960
    const-string v9, "filesystemName"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 961
    const-string v10, "active"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 962
    const-string v11, "username"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 963
    const-string v12, "password"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 964
    const-string v13, "vncPassword"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 965
    const-string v14, "serviceType"

    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 966
    const-string v15, "port"

    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 967
    const-string v3, "pid"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 968
    const-string v4, "geometry"

    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 969
    const-string v5, "isAppsSession"

    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    .line 970
    :try_start_1
    const-string v2, "isProtected"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    .line 971
    const-string v2, "displayOrientation"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    .line 972
    const-string v2, "displayLocked"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    .line 973
    const-string v2, "displayScaling"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    .line 974
    const-string v2, "displayRemember"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    .line 975
    const-string v2, "soundSupport"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    .line 976
    const-string v2, "micSupport"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    .line 977
    const-string v2, "serviceTypeRemember"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    .line 978
    const-string v2, "executionType"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    .line 979
    const-string v2, "shareStorage"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    .line 980
    const-string v2, "memoryMb"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    .line 981
    const-string v2, "cpuAllCores"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    .line 982
    new-instance v2, Ljava/util/ArrayList;

    move/from16 v29, v5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 983
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 986
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 988
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v33, 0x0

    goto :goto_2

    .line 991
    :cond_1
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v33, v5

    .line 994
    :goto_2
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 996
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v36, 0x0

    goto :goto_3

    .line 999
    :cond_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v36, v5

    .line 1003
    :goto_3
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v37, 0x1

    goto :goto_4

    :cond_3
    const/16 v37, 0x0

    .line 1006
    :goto_4
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v38, 0x0

    goto :goto_5

    .line 1009
    :cond_4
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v38, v5

    .line 1012
    :goto_5
    invoke-interface {v6, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v39, 0x0

    goto :goto_6

    .line 1015
    :cond_5
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v39, v5

    .line 1018
    :goto_6
    invoke-interface {v6, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v40, 0x0

    goto :goto_7

    .line 1021
    :cond_6
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v40, v5

    .line 1025
    :goto_7
    invoke-interface {v6, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_7

    move/from16 v61, v0

    const/4 v5, 0x0

    goto :goto_8

    .line 1028
    :cond_7
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v61, v0

    .line 1030
    :goto_8
    iget-object v0, v1, Ltech/ulo/library/model/daos/SessionDao_Impl;->__serviceTypeConverter:Ltech/ulo/library/model/entities/ServiceTypeConverter;

    invoke-virtual {v0, v5}, Ltech/ulo/library/model/entities/ServiceTypeConverter;->fromString(Ljava/lang/String;)Ltech/ulo/library/model/entities/ServiceType;

    move-result-object v41

    .line 1032
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 1034
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    .line 1036
    invoke-interface {v6, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move/from16 v0, v29

    const/16 v46, 0x0

    goto :goto_9

    .line 1039
    :cond_8
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v46, v0

    move/from16 v0, v29

    .line 1043
    :goto_9
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_9

    move/from16 v5, v17

    const/16 v47, 0x1

    goto :goto_a

    :cond_9
    move/from16 v5, v17

    const/16 v47, 0x0

    .line 1047
    :goto_a
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v29, v0

    move/from16 v0, v18

    if-eqz v17, :cond_a

    const/16 v48, 0x1

    goto :goto_b

    :cond_a
    const/16 v48, 0x0

    .line 1050
    :goto_b
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    move/from16 v18, v0

    move/from16 v0, v19

    .line 1053
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v19, v0

    move/from16 v0, v20

    if-eqz v17, :cond_b

    const/16 v50, 0x1

    goto :goto_c

    :cond_b
    const/16 v50, 0x0

    .line 1056
    :goto_c
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v51

    move/from16 v20, v0

    move/from16 v0, v21

    .line 1059
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v21, v0

    move/from16 v0, v22

    if-eqz v17, :cond_c

    const/16 v52, 0x1

    goto :goto_d

    :cond_c
    const/16 v52, 0x0

    .line 1063
    :goto_d
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v22, v0

    move/from16 v0, v23

    if-eqz v17, :cond_d

    const/16 v53, 0x1

    goto :goto_e

    :cond_d
    const/16 v53, 0x0

    .line 1067
    :goto_e
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v23, v0

    move/from16 v0, v24

    if-eqz v17, :cond_e

    const/16 v54, 0x1

    goto :goto_f

    :cond_e
    const/16 v54, 0x0

    .line 1071
    :goto_f
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v24, v0

    move/from16 v0, v25

    if-eqz v17, :cond_f

    const/16 v55, 0x1

    goto :goto_10

    :cond_f
    const/16 v55, 0x0

    .line 1075
    :goto_10
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_10

    move/from16 v25, v0

    move/from16 v17, v3

    const/4 v0, 0x0

    goto :goto_11

    .line 1078
    :cond_10
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v25, v0

    move-object/from16 v0, v17

    move/from16 v17, v3

    .line 1080
    :goto_11
    iget-object v3, v1, Ltech/ulo/library/model/daos/SessionDao_Impl;->__executionTypeConverter:Ltech/ulo/library/model/entities/ExecutionTypeConverter;

    invoke-virtual {v3, v0}, Ltech/ulo/library/model/entities/ExecutionTypeConverter;->fromString(Ljava/lang/String;)Ltech/ulo/library/model/entities/ExecutionType;

    move-result-object v56

    move/from16 v0, v26

    .line 1083
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_11

    move/from16 v3, v27

    const/16 v57, 0x1

    goto :goto_12

    :cond_11
    move/from16 v3, v27

    const/16 v57, 0x0

    .line 1086
    :goto_12
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move/from16 v26, v0

    move/from16 v0, v28

    .line 1089
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    move/from16 v28, v0

    if-eqz v27, :cond_12

    const/16 v60, 0x1

    goto :goto_13

    :cond_12
    const/16 v60, 0x0

    .line 1091
    :goto_13
    new-instance v0, Ltech/ulo/library/model/entities/Session;

    move-object/from16 v30, v0

    invoke-direct/range {v30 .. v60}, Ltech/ulo/library/model/entities/Session;-><init>(JLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/ulo/library/model/entities/ServiceType;JJLjava/lang/String;ZZIZFZZZZLtech/ulo/library/model/entities/ExecutionType;ZJZ)V

    .line 1092
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v27, v3

    move/from16 v3, v17

    move/from16 v0, v61

    move/from16 v17, v5

    goto/16 :goto_1

    .line 1096
    :cond_13
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1097
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_14

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 1096
    :goto_14
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1097
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1098
    throw v0
.end method

.method public getAllSessions()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Session;",
            ">;>;"
        }
    .end annotation

    .line 327
    const-string v0, "select * from Session"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 328
    iget-object v2, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "Session"

    aput-object v4, v3, v1

    new-instance v4, Ltech/ulo/library/model/daos/SessionDao_Impl$6;

    invoke-direct {v4, p0, v0}, Ltech/ulo/library/model/daos/SessionDao_Impl$6;-><init>(Ltech/ulo/library/model/daos/SessionDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v2, v3, v1, v4}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getAllSessionsOnce()Ljava/util/List;
    .locals 62
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Session;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 486
    const-string v0, "select * from Session"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 487
    iget-object v0, v1, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 488
    iget-object v0, v1, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    .line 490
    :try_start_0
    const-string v0, "id"

    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 491
    const-string v6, "name"

    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 492
    const-string v7, "filesystemId"

    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 493
    const-string v8, "filesystemName"

    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 494
    const-string v9, "active"

    invoke-static {v5, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 495
    const-string v10, "username"

    invoke-static {v5, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 496
    const-string v11, "password"

    invoke-static {v5, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 497
    const-string v12, "vncPassword"

    invoke-static {v5, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 498
    const-string v13, "serviceType"

    invoke-static {v5, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 499
    const-string v14, "port"

    invoke-static {v5, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 500
    const-string v15, "pid"

    invoke-static {v5, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 501
    const-string v2, "geometry"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 502
    const-string v4, "isAppsSession"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    .line 503
    :try_start_1
    const-string v3, "isProtected"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    .line 504
    const-string v3, "displayOrientation"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    .line 505
    const-string v3, "displayLocked"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    .line 506
    const-string v3, "displayScaling"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    .line 507
    const-string v3, "displayRemember"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    .line 508
    const-string v3, "soundSupport"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    .line 509
    const-string v3, "micSupport"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    .line 510
    const-string v3, "serviceTypeRemember"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    .line 511
    const-string v3, "executionType"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    .line 512
    const-string v3, "shareStorage"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    .line 513
    const-string v3, "memoryMb"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v27, v3

    .line 514
    const-string v3, "cpuAllCores"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v28, v3

    .line 515
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v29, v4

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 516
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 519
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 521
    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v33, 0x0

    goto :goto_1

    .line 524
    :cond_0
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v33, v4

    .line 527
    :goto_1
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 529
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v36, 0x0

    goto :goto_2

    .line 532
    :cond_1
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v36, v4

    .line 536
    :goto_2
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v30, 0x1

    if-eqz v4, :cond_2

    move/from16 v37, v30

    goto :goto_3

    :cond_2
    const/16 v37, 0x0

    .line 539
    :goto_3
    invoke-interface {v5, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v38, 0x0

    goto :goto_4

    .line 542
    :cond_3
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v38, v4

    .line 545
    :goto_4
    invoke-interface {v5, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v39, 0x0

    goto :goto_5

    .line 548
    :cond_4
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v39, v4

    .line 551
    :goto_5
    invoke-interface {v5, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v40, 0x0

    goto :goto_6

    .line 554
    :cond_5
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v40, v4

    .line 558
    :goto_6
    invoke-interface {v5, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_6

    move/from16 v61, v0

    const/4 v4, 0x0

    goto :goto_7

    .line 561
    :cond_6
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v61, v0

    .line 563
    :goto_7
    iget-object v0, v1, Ltech/ulo/library/model/daos/SessionDao_Impl;->__serviceTypeConverter:Ltech/ulo/library/model/entities/ServiceTypeConverter;

    invoke-virtual {v0, v4}, Ltech/ulo/library/model/entities/ServiceTypeConverter;->fromString(Ljava/lang/String;)Ltech/ulo/library/model/entities/ServiceType;

    move-result-object v41

    .line 565
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 567
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    .line 569
    invoke-interface {v5, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move/from16 v0, v29

    const/16 v46, 0x0

    goto :goto_8

    .line 572
    :cond_7
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v46, v0

    move/from16 v0, v29

    .line 576
    :goto_8
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_8

    move/from16 v4, v17

    move/from16 v47, v30

    goto :goto_9

    :cond_8
    move/from16 v4, v17

    const/16 v47, 0x0

    .line 580
    :goto_9
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v29, v0

    move/from16 v0, v18

    if-eqz v17, :cond_9

    move/from16 v48, v30

    goto :goto_a

    :cond_9
    const/16 v48, 0x0

    .line 583
    :goto_a
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    move/from16 v18, v0

    move/from16 v0, v19

    .line 586
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v19, v0

    move/from16 v0, v20

    if-eqz v17, :cond_a

    move/from16 v50, v30

    goto :goto_b

    :cond_a
    const/16 v50, 0x0

    .line 589
    :goto_b
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v51

    move/from16 v20, v0

    move/from16 v0, v21

    .line 592
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v21, v0

    move/from16 v0, v22

    if-eqz v17, :cond_b

    move/from16 v52, v30

    goto :goto_c

    :cond_b
    const/16 v52, 0x0

    .line 596
    :goto_c
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v22, v0

    move/from16 v0, v23

    if-eqz v17, :cond_c

    move/from16 v53, v30

    goto :goto_d

    :cond_c
    const/16 v53, 0x0

    .line 600
    :goto_d
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v23, v0

    move/from16 v0, v24

    if-eqz v17, :cond_d

    move/from16 v54, v30

    goto :goto_e

    :cond_d
    const/16 v54, 0x0

    .line 604
    :goto_e
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v24, v0

    move/from16 v0, v25

    if-eqz v17, :cond_e

    move/from16 v55, v30

    goto :goto_f

    :cond_e
    const/16 v55, 0x0

    .line 608
    :goto_f
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_f

    move/from16 v25, v0

    move/from16 v17, v2

    const/4 v0, 0x0

    goto :goto_10

    .line 611
    :cond_f
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v25, v0

    move-object/from16 v0, v17

    move/from16 v17, v2

    .line 613
    :goto_10
    iget-object v2, v1, Ltech/ulo/library/model/daos/SessionDao_Impl;->__executionTypeConverter:Ltech/ulo/library/model/entities/ExecutionTypeConverter;

    invoke-virtual {v2, v0}, Ltech/ulo/library/model/entities/ExecutionTypeConverter;->fromString(Ljava/lang/String;)Ltech/ulo/library/model/entities/ExecutionType;

    move-result-object v56

    move/from16 v0, v26

    .line 616
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_10

    move/from16 v2, v27

    move/from16 v57, v30

    goto :goto_11

    :cond_10
    move/from16 v2, v27

    const/16 v57, 0x0

    .line 619
    :goto_11
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move/from16 v26, v0

    move/from16 v0, v28

    .line 622
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    move/from16 v28, v0

    if-eqz v27, :cond_11

    move/from16 v60, v30

    goto :goto_12

    :cond_11
    const/16 v60, 0x0

    .line 624
    :goto_12
    new-instance v0, Ltech/ulo/library/model/entities/Session;

    move-object/from16 v30, v0

    invoke-direct/range {v30 .. v60}, Ltech/ulo/library/model/entities/Session;-><init>(JLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/ulo/library/model/entities/ServiceType;JJLjava/lang/String;ZZIZFZZZZLtech/ulo/library/model/entities/ExecutionType;ZJZ)V

    .line 625
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v27, v2

    move/from16 v2, v17

    move/from16 v0, v61

    move/from16 v17, v4

    goto/16 :goto_0

    .line 629
    :cond_12
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 630
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_13

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 629
    :goto_13
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 630
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 631
    throw v0
.end method

.method public getSessionById(J)Ltech/ulo/library/model/entities/Session;
    .locals 60
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 794
    const-string v0, "select * from session where id = ?"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    move-wide/from16 v4, p1

    .line 796
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 797
    iget-object v0, v1, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 798
    iget-object v0, v1, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 800
    :try_start_0
    const-string v0, "id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 801
    const-string v7, "name"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 802
    const-string v8, "filesystemId"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 803
    const-string v9, "filesystemName"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 804
    const-string v10, "active"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 805
    const-string v11, "username"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 806
    const-string v12, "password"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 807
    const-string v13, "vncPassword"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 808
    const-string v14, "serviceType"

    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 809
    const-string v15, "port"

    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 810
    const-string v2, "pid"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 811
    const-string v4, "geometry"

    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 812
    const-string v5, "isAppsSession"

    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    .line 813
    :try_start_1
    const-string v3, "isProtected"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    .line 814
    const-string v3, "displayOrientation"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    .line 815
    const-string v3, "displayLocked"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    .line 816
    const-string v3, "displayScaling"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    .line 817
    const-string v3, "displayRemember"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    .line 818
    const-string v3, "soundSupport"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    .line 819
    const-string v3, "micSupport"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    .line 820
    const-string v3, "serviceTypeRemember"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    .line 821
    const-string v3, "executionType"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    .line 822
    const-string v3, "shareStorage"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    .line 823
    const-string v3, "memoryMb"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v27, v3

    .line 824
    const-string v3, "cpuAllCores"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 826
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v28

    if-eqz v28, :cond_12

    .line 828
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 830
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v32, 0x0

    goto :goto_0

    .line 833
    :cond_0
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v32, v0

    .line 836
    :goto_0
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    .line 838
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v35, 0x0

    goto :goto_1

    .line 841
    :cond_1
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v35, v0

    .line 845
    :goto_1
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v36, 0x1

    goto :goto_2

    :cond_2
    const/16 v36, 0x0

    .line 848
    :goto_2
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v37, 0x0

    goto :goto_3

    .line 851
    :cond_3
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v37, v0

    .line 854
    :goto_3
    invoke-interface {v6, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v38, 0x0

    goto :goto_4

    .line 857
    :cond_4
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v38, v0

    .line 860
    :goto_4
    invoke-interface {v6, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v39, 0x0

    goto :goto_5

    .line 863
    :cond_5
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v39, v0

    .line 867
    :goto_5
    invoke-interface {v6, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_6

    .line 870
    :cond_6
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 872
    :goto_6
    iget-object v7, v1, Ltech/ulo/library/model/daos/SessionDao_Impl;->__serviceTypeConverter:Ltech/ulo/library/model/entities/ServiceTypeConverter;

    invoke-virtual {v7, v0}, Ltech/ulo/library/model/entities/ServiceTypeConverter;->fromString(Ljava/lang/String;)Ltech/ulo/library/model/entities/ServiceType;

    move-result-object v40

    .line 874
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    .line 876
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    .line 878
    invoke-interface {v6, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v45, 0x0

    goto :goto_7

    .line 881
    :cond_7
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v45, v0

    .line 885
    :goto_7
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_8

    move/from16 v0, v17

    const/16 v46, 0x1

    goto :goto_8

    :cond_8
    move/from16 v0, v17

    const/16 v46, 0x0

    .line 889
    :goto_8
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_9

    move/from16 v0, v18

    const/16 v47, 0x1

    goto :goto_9

    :cond_9
    move/from16 v0, v18

    const/16 v47, 0x0

    .line 892
    :goto_9
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    move/from16 v0, v19

    .line 895
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_a

    move/from16 v0, v20

    const/16 v49, 0x1

    goto :goto_a

    :cond_a
    move/from16 v0, v20

    const/16 v49, 0x0

    .line 898
    :goto_a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v50

    move/from16 v0, v21

    .line 901
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_b

    move/from16 v0, v22

    const/16 v51, 0x1

    goto :goto_b

    :cond_b
    move/from16 v0, v22

    const/16 v51, 0x0

    .line 905
    :goto_b
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_c

    move/from16 v0, v23

    const/16 v52, 0x1

    goto :goto_c

    :cond_c
    move/from16 v0, v23

    const/16 v52, 0x0

    .line 909
    :goto_c
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_d

    move/from16 v0, v24

    const/16 v53, 0x1

    goto :goto_d

    :cond_d
    move/from16 v0, v24

    const/16 v53, 0x0

    .line 913
    :goto_d
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_e

    move/from16 v0, v25

    const/16 v54, 0x1

    goto :goto_e

    :cond_e
    move/from16 v0, v25

    const/16 v54, 0x0

    .line 917
    :goto_e
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v5, 0x0

    goto :goto_f

    .line 920
    :cond_f
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 922
    :goto_f
    iget-object v0, v1, Ltech/ulo/library/model/daos/SessionDao_Impl;->__executionTypeConverter:Ltech/ulo/library/model/entities/ExecutionTypeConverter;

    invoke-virtual {v0, v5}, Ltech/ulo/library/model/entities/ExecutionTypeConverter;->fromString(Ljava/lang/String;)Ltech/ulo/library/model/entities/ExecutionType;

    move-result-object v55

    move/from16 v0, v26

    .line 925
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_10

    move/from16 v0, v27

    const/16 v56, 0x1

    goto :goto_10

    :cond_10
    move/from16 v0, v27

    const/16 v56, 0x0

    .line 928
    :goto_10
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v57

    .line 931
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_11

    const/16 v59, 0x1

    goto :goto_11

    :cond_11
    const/16 v59, 0x0

    .line 933
    :goto_11
    new-instance v5, Ltech/ulo/library/model/entities/Session;

    move-object/from16 v29, v5

    invoke-direct/range {v29 .. v59}, Ltech/ulo/library/model/entities/Session;-><init>(JLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/ulo/library/model/entities/ServiceType;JJLjava/lang/String;ZZIZFZZZZLtech/ulo/library/model/entities/ExecutionType;ZJZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_12

    :cond_12
    const/4 v5, 0x0

    .line 939
    :goto_12
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 940
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v5

    :catchall_0
    move-exception v0

    goto :goto_13

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 939
    :goto_13
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 940
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 941
    throw v0
.end method

.method public getSessionByName(Ljava/lang/String;)Ltech/ulo/library/model/entities/Session;
    .locals 60
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 637
    const-string v2, "select * from session where name = ?"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    if-nez v0, :cond_0

    .line 640
    invoke-virtual {v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 642
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 644
    :goto_0
    iget-object v0, v1, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 645
    iget-object v0, v1, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 647
    :try_start_0
    const-string v0, "id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 648
    const-string v7, "name"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 649
    const-string v8, "filesystemId"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 650
    const-string v9, "filesystemName"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 651
    const-string v10, "active"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 652
    const-string v11, "username"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 653
    const-string v12, "password"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 654
    const-string v13, "vncPassword"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 655
    const-string v14, "serviceType"

    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 656
    const-string v15, "port"

    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 657
    const-string v3, "pid"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 658
    const-string v4, "geometry"

    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 659
    const-string v5, "isAppsSession"

    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    .line 660
    :try_start_1
    const-string v2, "isProtected"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    .line 661
    const-string v2, "displayOrientation"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    .line 662
    const-string v2, "displayLocked"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    .line 663
    const-string v2, "displayScaling"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    .line 664
    const-string v2, "displayRemember"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    .line 665
    const-string v2, "soundSupport"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    .line 666
    const-string v2, "micSupport"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    .line 667
    const-string v2, "serviceTypeRemember"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    .line 668
    const-string v2, "executionType"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    .line 669
    const-string v2, "shareStorage"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    .line 670
    const-string v2, "memoryMb"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    .line 671
    const-string v2, "cpuAllCores"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 673
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v28

    if-eqz v28, :cond_13

    .line 675
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 677
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v32, 0x0

    goto :goto_1

    .line 680
    :cond_1
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v32, v0

    .line 683
    :goto_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    .line 685
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v35, 0x0

    goto :goto_2

    .line 688
    :cond_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v35, v0

    .line 692
    :goto_2
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v36, 0x1

    goto :goto_3

    :cond_3
    const/16 v36, 0x0

    .line 695
    :goto_3
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v37, 0x0

    goto :goto_4

    .line 698
    :cond_4
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v37, v0

    .line 701
    :goto_4
    invoke-interface {v6, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v38, 0x0

    goto :goto_5

    .line 704
    :cond_5
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v38, v0

    .line 707
    :goto_5
    invoke-interface {v6, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v39, 0x0

    goto :goto_6

    .line 710
    :cond_6
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v39, v0

    .line 714
    :goto_6
    invoke-interface {v6, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_7

    .line 717
    :cond_7
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 719
    :goto_7
    iget-object v7, v1, Ltech/ulo/library/model/daos/SessionDao_Impl;->__serviceTypeConverter:Ltech/ulo/library/model/entities/ServiceTypeConverter;

    invoke-virtual {v7, v0}, Ltech/ulo/library/model/entities/ServiceTypeConverter;->fromString(Ljava/lang/String;)Ltech/ulo/library/model/entities/ServiceType;

    move-result-object v40

    .line 721
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    .line 723
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    .line 725
    invoke-interface {v6, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v45, 0x0

    goto :goto_8

    .line 728
    :cond_8
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v45, v0

    .line 732
    :goto_8
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_9

    move/from16 v0, v17

    const/16 v46, 0x1

    goto :goto_9

    :cond_9
    move/from16 v0, v17

    const/16 v46, 0x0

    .line 736
    :goto_9
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_a

    move/from16 v0, v18

    const/16 v47, 0x1

    goto :goto_a

    :cond_a
    move/from16 v0, v18

    const/16 v47, 0x0

    .line 739
    :goto_a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    move/from16 v0, v19

    .line 742
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_b

    move/from16 v0, v20

    const/16 v49, 0x1

    goto :goto_b

    :cond_b
    move/from16 v0, v20

    const/16 v49, 0x0

    .line 745
    :goto_b
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v50

    move/from16 v0, v21

    .line 748
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_c

    move/from16 v0, v22

    const/16 v51, 0x1

    goto :goto_c

    :cond_c
    move/from16 v0, v22

    const/16 v51, 0x0

    .line 752
    :goto_c
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_d

    move/from16 v0, v23

    const/16 v52, 0x1

    goto :goto_d

    :cond_d
    move/from16 v0, v23

    const/16 v52, 0x0

    .line 756
    :goto_d
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_e

    move/from16 v0, v24

    const/16 v53, 0x1

    goto :goto_e

    :cond_e
    move/from16 v0, v24

    const/16 v53, 0x0

    .line 760
    :goto_e
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_f

    move/from16 v0, v25

    const/16 v54, 0x1

    goto :goto_f

    :cond_f
    move/from16 v0, v25

    const/16 v54, 0x0

    .line 764
    :goto_f
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v5, 0x0

    goto :goto_10

    .line 767
    :cond_10
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 769
    :goto_10
    iget-object v0, v1, Ltech/ulo/library/model/daos/SessionDao_Impl;->__executionTypeConverter:Ltech/ulo/library/model/entities/ExecutionTypeConverter;

    invoke-virtual {v0, v5}, Ltech/ulo/library/model/entities/ExecutionTypeConverter;->fromString(Ljava/lang/String;)Ltech/ulo/library/model/entities/ExecutionType;

    move-result-object v55

    move/from16 v0, v26

    .line 772
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_11

    move/from16 v0, v27

    const/16 v56, 0x1

    goto :goto_11

    :cond_11
    move/from16 v0, v27

    const/16 v56, 0x0

    .line 775
    :goto_11
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v57

    .line 778
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_12

    const/16 v59, 0x1

    goto :goto_12

    :cond_12
    const/16 v59, 0x0

    .line 780
    :goto_12
    new-instance v5, Ltech/ulo/library/model/entities/Session;

    move-object/from16 v29, v5

    invoke-direct/range {v29 .. v59}, Ltech/ulo/library/model/entities/Session;-><init>(JLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/ulo/library/model/entities/ServiceType;JJLjava/lang/String;ZZIZFZZZZLtech/ulo/library/model/entities/ExecutionType;ZJZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_13

    :cond_13
    const/4 v5, 0x0

    .line 786
    :goto_13
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 787
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v5

    :catchall_0
    move-exception v0

    goto :goto_14

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 786
    :goto_14
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 787
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 788
    throw v0
.end method

.method public insertSession(Ltech/ulo/library/model/entities/Session;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "session"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 259
    iget-object v0, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 261
    :try_start_0
    iget-object v0, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__insertionAdapterOfSession:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 262
    iget-object p1, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    iget-object p1, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 265
    throw p1
.end method

.method public resetSessionActivity()V
    .locals 3

    .line 282
    iget-object v0, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 283
    iget-object v0, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__preparedStmtOfResetSessionActivity:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 284
    iget-object v1, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 286
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 287
    iget-object v1, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    iget-object v1, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 290
    iget-object v1, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__preparedStmtOfResetSessionActivity:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v1

    .line 289
    iget-object v2, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 290
    iget-object v2, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__preparedStmtOfResetSessionActivity:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 291
    throw v1
.end method

.method public updateFilesystemNamesForAllSessions()V
    .locals 3

    .line 312
    iget-object v0, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 313
    iget-object v0, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__preparedStmtOfUpdateFilesystemNamesForAllSessions:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 314
    iget-object v1, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 316
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 317
    iget-object v1, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    iget-object v1, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 320
    iget-object v1, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__preparedStmtOfUpdateFilesystemNamesForAllSessions:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v1

    .line 319
    iget-object v2, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 320
    iget-object v2, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__preparedStmtOfUpdateFilesystemNamesForAllSessions:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 321
    throw v1
.end method

.method public updateSession(Ltech/ulo/library/model/entities/Session;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "session"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 271
    iget-object v0, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 273
    :try_start_0
    iget-object v0, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__updateAdapterOfSession:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 274
    iget-object p1, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    iget-object p1, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Ltech/ulo/library/model/daos/SessionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 277
    throw p1
.end method
