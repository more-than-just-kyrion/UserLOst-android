.class public final Ltech/ulo/library/model/daos/FilesystemDao_Impl;
.super Ljava/lang/Object;
.source "FilesystemDao_Impl.java"

# interfaces
.implements Ltech/ulo/library/model/daos/FilesystemDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __executionTypeConverter:Ltech/ulo/library/model/entities/ExecutionTypeConverter;

.field private final __insertionAdapterOfFilesystem:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Ltech/ulo/library/model/entities/Filesystem;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteFilesystemById:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfFilesystem:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Ltech/ulo/library/model/entities/Filesystem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fget__db(Ltech/ulo/library/model/daos/FilesystemDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__executionTypeConverter(Ltech/ulo/library/model/daos/FilesystemDao_Impl;)Ltech/ulo/library/model/entities/ExecutionTypeConverter;
    .locals 0

    iget-object p0, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__executionTypeConverter:Ltech/ulo/library/model/entities/ExecutionTypeConverter;

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

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ltech/ulo/library/model/entities/ExecutionTypeConverter;

    invoke-direct {v0}, Ltech/ulo/library/model/entities/ExecutionTypeConverter;-><init>()V

    iput-object v0, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__executionTypeConverter:Ltech/ulo/library/model/entities/ExecutionTypeConverter;

    .line 41
    iput-object p1, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 42
    new-instance v0, Ltech/ulo/library/model/daos/FilesystemDao_Impl$1;

    invoke-direct {v0, p0, p1}, Ltech/ulo/library/model/daos/FilesystemDao_Impl$1;-><init>(Ltech/ulo/library/model/daos/FilesystemDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__insertionAdapterOfFilesystem:Landroidx/room/EntityInsertionAdapter;

    .line 115
    new-instance v0, Ltech/ulo/library/model/daos/FilesystemDao_Impl$2;

    invoke-direct {v0, p0, p1}, Ltech/ulo/library/model/daos/FilesystemDao_Impl$2;-><init>(Ltech/ulo/library/model/daos/FilesystemDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__updateAdapterOfFilesystem:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 189
    new-instance v0, Ltech/ulo/library/model/daos/FilesystemDao_Impl$3;

    invoke-direct {v0, p0, p1}, Ltech/ulo/library/model/daos/FilesystemDao_Impl$3;-><init>(Ltech/ulo/library/model/daos/FilesystemDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__preparedStmtOfDeleteFilesystemById:Landroidx/room/SharedSQLiteStatement;

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

    .line 714
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteFilesystemById(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 226
    iget-object v0, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__preparedStmtOfDeleteFilesystemById:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 228
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 229
    iget-object p1, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 231
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 232
    iget-object p1, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    iget-object p1, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 235
    iget-object p1, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__preparedStmtOfDeleteFilesystemById:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 234
    iget-object p2, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 235
    iget-object p2, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__preparedStmtOfDeleteFilesystemById:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 236
    throw p1
.end method

.method public findAppsFilesystemByType(Ljava/lang/String;)Ljava/util/List;
    .locals 39
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "requiredFilesystemType"
        }
    .end annotation

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

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 597
    const-string v2, "select * from filesystem where isAppsFilesystem = 1 and distributionType = ?"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    if-nez v0, :cond_0

    .line 600
    invoke-virtual {v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 602
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 604
    :goto_0
    iget-object v0, v1, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 605
    iget-object v0, v1, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 607
    :try_start_0
    const-string v0, "id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 608
    const-string v7, "name"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 609
    const-string v8, "distributionType"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 610
    const-string v9, "archType"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 611
    const-string v10, "flavor"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 612
    const-string v11, "defaultUsername"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 613
    const-string v12, "defaultPassword"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 614
    const-string v13, "defaultVncPassword"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 615
    const-string v14, "isAppsFilesystem"

    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 616
    const-string v15, "versionCodeUsed"

    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 617
    const-string v3, "isCreatedFromBackup"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 618
    const-string v4, "isProtected"

    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 619
    const-string v5, "isPaid"

    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v16, v2

    .line 620
    :try_start_1
    const-string v2, "hasPaidUp"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 621
    :try_start_2
    const-string v1, "executionType"

    invoke-static {v6, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    .line 622
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v18, v2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 623
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 626
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 628
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v22, 0x0

    goto :goto_2

    .line 631
    :cond_1
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v22, v2

    .line 634
    :goto_2
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v23, 0x0

    goto :goto_3

    .line 637
    :cond_2
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v23, v2

    .line 640
    :goto_3
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v24, 0x0

    goto :goto_4

    .line 643
    :cond_3
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v24, v2

    .line 646
    :goto_4
    invoke-interface {v6, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v25, 0x0

    goto :goto_5

    .line 649
    :cond_4
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v25, v2

    .line 652
    :goto_5
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v26, 0x0

    goto :goto_6

    .line 655
    :cond_5
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v26, v2

    .line 658
    :goto_6
    invoke-interface {v6, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v27, 0x0

    goto :goto_7

    .line 661
    :cond_6
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v27, v2

    .line 664
    :goto_7
    invoke-interface {v6, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v28, 0x0

    goto :goto_8

    .line 667
    :cond_7
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v28, v2

    .line 671
    :goto_8
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_8

    const/16 v29, 0x1

    goto :goto_9

    :cond_8
    const/16 v29, 0x0

    .line 674
    :goto_9
    invoke-interface {v6, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v30, 0x0

    goto :goto_a

    .line 677
    :cond_9
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v30, v2

    .line 681
    :goto_a
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_a

    const/16 v31, 0x1

    goto :goto_b

    :cond_a
    const/16 v31, 0x0

    .line 685
    :goto_b
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_b

    const/16 v32, 0x1

    goto :goto_c

    :cond_b
    const/16 v32, 0x0

    .line 689
    :goto_c
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_c

    move/from16 v2, v18

    const/16 v33, 0x1

    goto :goto_d

    :cond_c
    move/from16 v2, v18

    const/16 v33, 0x0

    .line 693
    :goto_d
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    if-eqz v18, :cond_d

    const/16 v34, 0x1

    goto :goto_e

    :cond_d
    const/16 v34, 0x0

    :goto_e
    move/from16 v38, v17

    move/from16 v17, v0

    move/from16 v0, v38

    .line 697
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_e

    move/from16 v36, v0

    move/from16 v18, v2

    move/from16 v37, v3

    const/4 v0, 0x0

    :goto_f
    move-object/from16 v2, p0

    goto :goto_10

    .line 700
    :cond_e
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v36, v0

    move/from16 v37, v3

    move-object/from16 v0, v18

    move/from16 v18, v2

    goto :goto_f

    .line 702
    :goto_10
    :try_start_3
    iget-object v3, v2, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__executionTypeConverter:Ltech/ulo/library/model/entities/ExecutionTypeConverter;

    invoke-virtual {v3, v0}, Ltech/ulo/library/model/entities/ExecutionTypeConverter;->fromString(Ljava/lang/String;)Ltech/ulo/library/model/entities/ExecutionType;

    move-result-object v35

    .line 703
    new-instance v0, Ltech/ulo/library/model/entities/Filesystem;

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v35}, Ltech/ulo/library/model/entities/Filesystem;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZLtech/ulo/library/model/entities/ExecutionType;)V

    .line 704
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v0, v17

    move/from16 v17, v36

    move/from16 v3, v37

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto :goto_12

    :cond_f
    move-object/from16 v2, p0

    .line 708
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 709
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_12

    :catchall_2
    move-exception v0

    goto :goto_11

    :catchall_3
    move-exception v0

    move-object/from16 v16, v2

    :goto_11
    move-object v2, v1

    .line 708
    :goto_12
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 709
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 710
    throw v0
.end method

.method public getAllFilesystems()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Filesystem;",
            ">;>;"
        }
    .end annotation

    .line 242
    const-string v0, "select * from filesystem"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 243
    iget-object v2, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "filesystem"

    aput-object v4, v3, v1

    new-instance v4, Ltech/ulo/library/model/daos/FilesystemDao_Impl$4;

    invoke-direct {v4, p0, v0}, Ltech/ulo/library/model/daos/FilesystemDao_Impl$4;-><init>(Ltech/ulo/library/model/daos/FilesystemDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v2, v3, v1, v4}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getFilesystemById(J)Ltech/ulo/library/model/entities/Filesystem;
    .locals 35
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 482
    const-string v0, "select * from filesystem where id = ?"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    move-wide/from16 v4, p1

    .line 484
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 485
    iget-object v0, v1, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 486
    iget-object v0, v1, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 488
    :try_start_0
    const-string v0, "id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 489
    const-string v7, "name"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 490
    const-string v8, "distributionType"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 491
    const-string v9, "archType"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 492
    const-string v10, "flavor"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 493
    const-string v11, "defaultUsername"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 494
    const-string v12, "defaultPassword"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 495
    const-string v13, "defaultVncPassword"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 496
    const-string v14, "isAppsFilesystem"

    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 497
    const-string v15, "versionCodeUsed"

    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 498
    const-string v2, "isCreatedFromBackup"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 499
    const-string v4, "isProtected"

    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 500
    const-string v5, "isPaid"

    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v16, v3

    .line 501
    :try_start_1
    const-string v3, "hasPaidUp"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 502
    :try_start_2
    const-string v1, "executionType"

    invoke-static {v6, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 504
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 506
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 508
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v21, 0x0

    goto :goto_0

    .line 511
    :cond_0
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    .line 514
    :goto_0
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v22, 0x0

    goto :goto_1

    .line 517
    :cond_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v0

    .line 520
    :goto_1
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v23, 0x0

    goto :goto_2

    .line 523
    :cond_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v0

    .line 526
    :goto_2
    invoke-interface {v6, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v24, 0x0

    goto :goto_3

    .line 529
    :cond_3
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v24, v0

    .line 532
    :goto_3
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v25, 0x0

    goto :goto_4

    .line 535
    :cond_4
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v0

    .line 538
    :goto_4
    invoke-interface {v6, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v26, 0x0

    goto :goto_5

    .line 541
    :cond_5
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v26, v0

    .line 544
    :goto_5
    invoke-interface {v6, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v27, 0x0

    goto :goto_6

    .line 547
    :cond_6
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v27, v0

    .line 551
    :goto_6
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v28, 0x1

    goto :goto_7

    :cond_7
    const/16 v28, 0x0

    .line 554
    :goto_7
    invoke-interface {v6, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v29, 0x0

    goto :goto_8

    .line 557
    :cond_8
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v29, v0

    .line 561
    :goto_8
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_9

    const/16 v30, 0x1

    goto :goto_9

    :cond_9
    const/16 v30, 0x0

    .line 565
    :goto_9
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_a

    const/16 v31, 0x1

    goto :goto_a

    :cond_a
    const/16 v31, 0x0

    .line 569
    :goto_a
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_b

    const/16 v32, 0x1

    goto :goto_b

    :cond_b
    const/16 v32, 0x0

    .line 573
    :goto_b
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_c

    const/16 v33, 0x1

    goto :goto_c

    :cond_c
    const/16 v33, 0x0

    .line 577
    :goto_c
    invoke-interface {v6, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v5, 0x0

    :goto_d
    move-object/from16 v1, p0

    goto :goto_e

    .line 580
    :cond_d
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_d

    .line 582
    :goto_e
    :try_start_3
    iget-object v0, v1, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__executionTypeConverter:Ltech/ulo/library/model/entities/ExecutionTypeConverter;

    invoke-virtual {v0, v5}, Ltech/ulo/library/model/entities/ExecutionTypeConverter;->fromString(Ljava/lang/String;)Ltech/ulo/library/model/entities/ExecutionType;

    move-result-object v34

    .line 583
    new-instance v5, Ltech/ulo/library/model/entities/Filesystem;

    move-object/from16 v18, v5

    invoke-direct/range {v18 .. v34}, Ltech/ulo/library/model/entities/Filesystem;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZLtech/ulo/library/model/entities/ExecutionType;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_f

    :cond_e
    move-object/from16 v1, p0

    const/4 v5, 0x0

    .line 589
    :goto_f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 590
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v5

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_10

    :catchall_1
    move-exception v0

    goto :goto_10

    :catchall_2
    move-exception v0

    move-object/from16 v16, v3

    .line 589
    :goto_10
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 590
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 591
    throw v0
.end method

.method public getFilesystemByName(Ljava/lang/String;)Ltech/ulo/library/model/entities/Filesystem;
    .locals 35
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

    .line 363
    const-string v2, "select * from filesystem where name = ?"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    if-nez v0, :cond_0

    .line 366
    invoke-virtual {v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 368
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 370
    :goto_0
    iget-object v0, v1, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 371
    iget-object v0, v1, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 373
    :try_start_0
    const-string v0, "id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 374
    const-string v7, "name"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 375
    const-string v8, "distributionType"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 376
    const-string v9, "archType"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 377
    const-string v10, "flavor"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 378
    const-string v11, "defaultUsername"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 379
    const-string v12, "defaultPassword"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 380
    const-string v13, "defaultVncPassword"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 381
    const-string v14, "isAppsFilesystem"

    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 382
    const-string v15, "versionCodeUsed"

    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 383
    const-string v3, "isCreatedFromBackup"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 384
    const-string v4, "isProtected"

    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 385
    const-string v5, "isPaid"

    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v16, v2

    .line 386
    :try_start_1
    const-string v2, "hasPaidUp"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 387
    :try_start_2
    const-string v1, "executionType"

    invoke-static {v6, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 389
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 391
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 393
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v21, 0x0

    goto :goto_1

    .line 396
    :cond_1
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    .line 399
    :goto_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v22, 0x0

    goto :goto_2

    .line 402
    :cond_2
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v0

    .line 405
    :goto_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v23, 0x0

    goto :goto_3

    .line 408
    :cond_3
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v0

    .line 411
    :goto_3
    invoke-interface {v6, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v24, 0x0

    goto :goto_4

    .line 414
    :cond_4
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v24, v0

    .line 417
    :goto_4
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v25, 0x0

    goto :goto_5

    .line 420
    :cond_5
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v0

    .line 423
    :goto_5
    invoke-interface {v6, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v26, 0x0

    goto :goto_6

    .line 426
    :cond_6
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v26, v0

    .line 429
    :goto_6
    invoke-interface {v6, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v27, 0x0

    goto :goto_7

    .line 432
    :cond_7
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v27, v0

    .line 436
    :goto_7
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v28, 0x1

    goto :goto_8

    :cond_8
    const/16 v28, 0x0

    .line 439
    :goto_8
    invoke-interface {v6, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v29, 0x0

    goto :goto_9

    .line 442
    :cond_9
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v29, v0

    .line 446
    :goto_9
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_a

    const/16 v30, 0x1

    goto :goto_a

    :cond_a
    const/16 v30, 0x0

    .line 450
    :goto_a
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_b

    const/16 v31, 0x1

    goto :goto_b

    :cond_b
    const/16 v31, 0x0

    .line 454
    :goto_b
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_c

    const/16 v32, 0x1

    goto :goto_c

    :cond_c
    const/16 v32, 0x0

    .line 458
    :goto_c
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_d

    const/16 v33, 0x1

    goto :goto_d

    :cond_d
    const/16 v33, 0x0

    .line 462
    :goto_d
    invoke-interface {v6, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v5, 0x0

    :goto_e
    move-object/from16 v1, p0

    goto :goto_f

    .line 465
    :cond_e
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_e

    .line 467
    :goto_f
    :try_start_3
    iget-object v0, v1, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__executionTypeConverter:Ltech/ulo/library/model/entities/ExecutionTypeConverter;

    invoke-virtual {v0, v5}, Ltech/ulo/library/model/entities/ExecutionTypeConverter;->fromString(Ljava/lang/String;)Ltech/ulo/library/model/entities/ExecutionType;

    move-result-object v34

    .line 468
    new-instance v5, Ltech/ulo/library/model/entities/Filesystem;

    move-object/from16 v18, v5

    invoke-direct/range {v18 .. v34}, Ltech/ulo/library/model/entities/Filesystem;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZLtech/ulo/library/model/entities/ExecutionType;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_10

    :cond_f
    move-object/from16 v1, p0

    const/4 v5, 0x0

    .line 474
    :goto_10
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 475
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v5

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_11

    :catchall_1
    move-exception v0

    goto :goto_11

    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    .line 474
    :goto_11
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 475
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 476
    throw v0
.end method

.method public insertFilesystem(Ltech/ulo/library/model/entities/Filesystem;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "filesystem"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 201
    iget-object v0, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 203
    :try_start_0
    iget-object v0, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__insertionAdapterOfFilesystem:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 204
    iget-object p1, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    iget-object p1, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 208
    throw p1
.end method

.method public updateFilesystem(Ltech/ulo/library/model/entities/Filesystem;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "filesystem"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 214
    iget-object v0, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 216
    :try_start_0
    iget-object v0, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__updateAdapterOfFilesystem:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 217
    iget-object p1, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    iget-object p1, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 220
    throw p1
.end method
