.class public final Ltech/ulo/library/model/repositories/UlaDatabase_Impl;
.super Ltech/ulo/library/model/repositories/UlaDatabase;
.source "UlaDatabase_Impl.java"


# instance fields
.field private volatile _appsDao:Ltech/ulo/library/model/daos/AppsDao;

.field private volatile _filesystemDao:Ltech/ulo/library/model/daos/FilesystemDao;

.field private volatile _sessionDao:Ltech/ulo/library/model/daos/SessionDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ltech/ulo/library/model/repositories/UlaDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ltech/ulo/library/model/repositories/UlaDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Ltech/ulo/library/model/repositories/UlaDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Ltech/ulo/library/model/repositories/UlaDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Ltech/ulo/library/model/repositories/UlaDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Ltech/ulo/library/model/repositories/UlaDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Ltech/ulo/library/model/repositories/UlaDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Ltech/ulo/library/model/repositories/UlaDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Ltech/ulo/library/model/repositories/UlaDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Ltech/ulo/library/model/repositories/UlaDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Ltech/ulo/library/model/repositories/UlaDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Ltech/ulo/library/model/repositories/UlaDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Ltech/ulo/library/model/repositories/UlaDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Ltech/ulo/library/model/repositories/UlaDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Ltech/ulo/library/model/repositories/UlaDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Ltech/ulo/library/model/repositories/UlaDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 37
    iput-object p1, p0, Ltech/ulo/library/model/repositories/UlaDatabase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$700(Ltech/ulo/library/model/repositories/UlaDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Ltech/ulo/library/model/repositories/UlaDatabase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$800(Ltech/ulo/library/model/repositories/UlaDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Ltech/ulo/library/model/repositories/UlaDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Ltech/ulo/library/model/repositories/UlaDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Ltech/ulo/library/model/repositories/UlaDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public appsDao()Ltech/ulo/library/model/daos/AppsDao;
    .locals 1

    .line 269
    iget-object v0, p0, Ltech/ulo/library/model/repositories/UlaDatabase_Impl;->_appsDao:Ltech/ulo/library/model/daos/AppsDao;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Ltech/ulo/library/model/repositories/UlaDatabase_Impl;->_appsDao:Ltech/ulo/library/model/daos/AppsDao;

    return-object v0

    .line 272
    :cond_0
    monitor-enter p0

    .line 273
    :try_start_0
    iget-object v0, p0, Ltech/ulo/library/model/repositories/UlaDatabase_Impl;->_appsDao:Ltech/ulo/library/model/daos/AppsDao;

    if-nez v0, :cond_1

    .line 274
    new-instance v0, Ltech/ulo/library/model/daos/AppsDao_Impl;

    invoke-direct {v0, p0}, Ltech/ulo/library/model/daos/AppsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ltech/ulo/library/model/repositories/UlaDatabase_Impl;->_appsDao:Ltech/ulo/library/model/daos/AppsDao;

    .line 276
    :cond_1
    iget-object v0, p0, Ltech/ulo/library/model/repositories/UlaDatabase_Impl;->_appsDao:Ltech/ulo/library/model/daos/AppsDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 277
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearAllTables()V
    .locals 4

    .line 203
    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    invoke-super {p0}, Ltech/ulo/library/model/repositories/UlaDatabase;->assertNotMainThread()V

    .line 204
    invoke-super {p0}, Ltech/ulo/library/model/repositories/UlaDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2

    .line 210
    :try_start_0
    invoke-super {p0}, Ltech/ulo/library/model/repositories/UlaDatabase;->beginTransaction()V

    .line 212
    const-string v3, "PRAGMA defer_foreign_keys = TRUE"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 214
    const-string v3, "DELETE FROM `session`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 215
    const-string v3, "DELETE FROM `filesystem`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 216
    const-string v3, "DELETE FROM `apps`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 217
    invoke-super {p0}, Ltech/ulo/library/model/repositories/UlaDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    invoke-super {p0}, Ltech/ulo/library/model/repositories/UlaDatabase;->endTransaction()V

    .line 223
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 224
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    .line 219
    invoke-super {p0}, Ltech/ulo/library/model/repositories/UlaDatabase;->endTransaction()V

    .line 223
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 224
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 225
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 227
    :cond_1
    throw v3
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 6

    .line 196
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 197
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 198
    new-instance v3, Landroidx/room/InvalidationTracker;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "session"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "filesystem"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "apps"

    aput-object v5, v4, v1

    invoke-direct {v3, p0, v0, v2, v4}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v3
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 46
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Ltech/ulo/library/model/repositories/UlaDatabase_Impl$1;

    const/16 v2, 0x11

    invoke-direct {v1, p0, v2}, Ltech/ulo/library/model/repositories/UlaDatabase_Impl$1;-><init>(Ltech/ulo/library/model/repositories/UlaDatabase_Impl;I)V

    const-string v2, "0d620be981a838ed87ac1f7aa2e24f54"

    const-string v3, "8a92ef7945eeae7742aac6286ad5d6c4"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 187
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 188
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 190
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public filesystemDao()Ltech/ulo/library/model/daos/FilesystemDao;
    .locals 1

    .line 255
    iget-object v0, p0, Ltech/ulo/library/model/repositories/UlaDatabase_Impl;->_filesystemDao:Ltech/ulo/library/model/daos/FilesystemDao;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Ltech/ulo/library/model/repositories/UlaDatabase_Impl;->_filesystemDao:Ltech/ulo/library/model/daos/FilesystemDao;

    return-object v0

    .line 258
    :cond_0
    monitor-enter p0

    .line 259
    :try_start_0
    iget-object v0, p0, Ltech/ulo/library/model/repositories/UlaDatabase_Impl;->_filesystemDao:Ltech/ulo/library/model/daos/FilesystemDao;

    if-nez v0, :cond_1

    .line 260
    new-instance v0, Ltech/ulo/library/model/daos/FilesystemDao_Impl;

    invoke-direct {v0, p0}, Ltech/ulo/library/model/daos/FilesystemDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ltech/ulo/library/model/repositories/UlaDatabase_Impl;->_filesystemDao:Ltech/ulo/library/model/daos/FilesystemDao;

    .line 262
    :cond_1
    iget-object v0, p0, Ltech/ulo/library/model/repositories/UlaDatabase_Impl;->_filesystemDao:Ltech/ulo/library/model/daos/FilesystemDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 263
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getRequiredTypeConverters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 233
    const-class v1, Ltech/ulo/library/model/daos/SessionDao;

    invoke-static {}, Ltech/ulo/library/model/daos/SessionDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-class v1, Ltech/ulo/library/model/daos/FilesystemDao;

    invoke-static {}, Ltech/ulo/library/model/daos/FilesystemDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-class v1, Ltech/ulo/library/model/daos/AppsDao;

    invoke-static {}, Ltech/ulo/library/model/daos/AppsDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public sessionDao()Ltech/ulo/library/model/daos/SessionDao;
    .locals 1

    .line 241
    iget-object v0, p0, Ltech/ulo/library/model/repositories/UlaDatabase_Impl;->_sessionDao:Ltech/ulo/library/model/daos/SessionDao;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Ltech/ulo/library/model/repositories/UlaDatabase_Impl;->_sessionDao:Ltech/ulo/library/model/daos/SessionDao;

    return-object v0

    .line 244
    :cond_0
    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v0, p0, Ltech/ulo/library/model/repositories/UlaDatabase_Impl;->_sessionDao:Ltech/ulo/library/model/daos/SessionDao;

    if-nez v0, :cond_1

    .line 246
    new-instance v0, Ltech/ulo/library/model/daos/SessionDao_Impl;

    invoke-direct {v0, p0}, Ltech/ulo/library/model/daos/SessionDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ltech/ulo/library/model/repositories/UlaDatabase_Impl;->_sessionDao:Ltech/ulo/library/model/daos/SessionDao;

    .line 248
    :cond_1
    iget-object v0, p0, Ltech/ulo/library/model/repositories/UlaDatabase_Impl;->_sessionDao:Ltech/ulo/library/model/daos/SessionDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 249
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
