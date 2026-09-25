.class public final Ltech/ulo/library/model/daos/AppsDao_Impl;
.super Ljava/lang/Object;
.source "AppsDao_Impl.java"

# interfaces
.implements Ltech/ulo/library/model/daos/AppsDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfApp:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Ltech/ulo/library/model/entities/App;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteAllApps:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method static bridge synthetic -$$Nest$fget__db(Ltech/ulo/library/model/daos/AppsDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Ltech/ulo/library/model/daos/AppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

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

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Ltech/ulo/library/model/daos/AppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 35
    new-instance v0, Ltech/ulo/library/model/daos/AppsDao_Impl$1;

    invoke-direct {v0, p0, p1}, Ltech/ulo/library/model/daos/AppsDao_Impl$1;-><init>(Ltech/ulo/library/model/daos/AppsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ltech/ulo/library/model/daos/AppsDao_Impl;->__insertionAdapterOfApp:Landroidx/room/EntityInsertionAdapter;

    .line 75
    new-instance v0, Ltech/ulo/library/model/daos/AppsDao_Impl$2;

    invoke-direct {v0, p0, p1}, Ltech/ulo/library/model/daos/AppsDao_Impl$2;-><init>(Ltech/ulo/library/model/daos/AppsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ltech/ulo/library/model/daos/AppsDao_Impl;->__preparedStmtOfDeleteAllApps:Landroidx/room/SharedSQLiteStatement;

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

    .line 331
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteAllApps()V
    .locals 3

    .line 98
    iget-object v0, p0, Ltech/ulo/library/model/daos/AppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 99
    iget-object v0, p0, Ltech/ulo/library/model/daos/AppsDao_Impl;->__preparedStmtOfDeleteAllApps:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 100
    iget-object v1, p0, Ltech/ulo/library/model/daos/AppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 102
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 103
    iget-object v1, p0, Ltech/ulo/library/model/daos/AppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-object v1, p0, Ltech/ulo/library/model/daos/AppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 106
    iget-object v1, p0, Ltech/ulo/library/model/daos/AppsDao_Impl;->__preparedStmtOfDeleteAllApps:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v1

    .line 105
    iget-object v2, p0, Ltech/ulo/library/model/daos/AppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 106
    iget-object v2, p0, Ltech/ulo/library/model/daos/AppsDao_Impl;->__preparedStmtOfDeleteAllApps:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 107
    throw v1
.end method

.method public getActiveApps()Landroidx/lifecycle/LiveData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/App;",
            ">;>;"
        }
    .end annotation

    .line 259
    const-string v0, "select apps.* from apps inner join session on apps.name = session.name and session.active = 1"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 260
    iget-object v2, p0, Ltech/ulo/library/model/daos/AppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "apps"

    aput-object v4, v3, v1

    const/4 v4, 0x1

    const-string v5, "session"

    aput-object v5, v3, v4

    new-instance v4, Ltech/ulo/library/model/daos/AppsDao_Impl$4;

    invoke-direct {v4, p0, v0}, Ltech/ulo/library/model/daos/AppsDao_Impl$4;-><init>(Ltech/ulo/library/model/daos/AppsDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v2, v3, v1, v4}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getAllApps()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/App;",
            ">;>;"
        }
    .end annotation

    .line 113
    const-string v0, "select * from apps"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 114
    iget-object v2, p0, Ltech/ulo/library/model/daos/AppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "apps"

    aput-object v4, v3, v1

    new-instance v4, Ltech/ulo/library/model/daos/AppsDao_Impl$3;

    invoke-direct {v4, p0, v0}, Ltech/ulo/library/model/daos/AppsDao_Impl$3;-><init>(Ltech/ulo/library/model/daos/AppsDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v2, v3, v1, v4}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getAppByName(Ljava/lang/String;)Ltech/ulo/library/model/entities/App;
    .locals 24
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

    .line 187
    const-string v2, "select * from apps where name = ?"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 194
    :goto_0
    iget-object v0, v1, Ltech/ulo/library/model/daos/AppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 195
    iget-object v0, v1, Ltech/ulo/library/model/daos/AppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 197
    :try_start_0
    const-string v0, "name"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 198
    const-string v7, "category"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 199
    const-string v8, "filesystemRequired"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 200
    const-string v9, "supportsCli"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 201
    const-string v10, "supportsGui"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 202
    const-string v11, "supportsStandalone"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 203
    const-string v12, "isPaidApp"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 204
    const-string v13, "version"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 206
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 208
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object v15, v5

    goto :goto_1

    .line 211
    :cond_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 214
    :goto_1
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v16, v5

    goto :goto_2

    .line 217
    :cond_2
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .line 220
    :goto_2
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v17, v5

    goto :goto_3

    .line 223
    :cond_3
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    .line 227
    :goto_3
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    move/from16 v18, v3

    goto :goto_4

    :cond_4
    move/from16 v18, v4

    .line 231
    :goto_4
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    move/from16 v19, v3

    goto :goto_5

    :cond_5
    move/from16 v19, v4

    .line 234
    :goto_5
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_6
    move-object/from16 v20, v5

    goto :goto_7

    .line 237
    :cond_6
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 241
    :goto_7
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_7

    move/from16 v21, v3

    goto :goto_8

    :cond_7
    move/from16 v21, v4

    .line 244
    :goto_8
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 245
    new-instance v5, Ltech/ulo/library/model/entities/App;

    move-object v14, v5

    invoke-direct/range {v14 .. v23}, Ltech/ulo/library/model/entities/App;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 252
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v5

    :catchall_0
    move-exception v0

    .line 251
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 252
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 253
    throw v0
.end method

.method public insertApp(Ltech/ulo/library/model/entities/App;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "application"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Ltech/ulo/library/model/daos/AppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 87
    iget-object v0, p0, Ltech/ulo/library/model/daos/AppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 89
    :try_start_0
    iget-object v0, p0, Ltech/ulo/library/model/daos/AppsDao_Impl;->__insertionAdapterOfApp:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 90
    iget-object p1, p0, Ltech/ulo/library/model/daos/AppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object p1, p0, Ltech/ulo/library/model/daos/AppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Ltech/ulo/library/model/daos/AppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 93
    throw p1
.end method
