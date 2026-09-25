.class public Lcom/freerdp/freerdpcore/services/BookmarkDB;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BookmarkDB.java"


# static fields
.field private static final DB_BACKUP_PREFIX:Ljava/lang/String; = "temp_"

.field static final DB_KEY_BOOKMARK_3G_ENABLE:Ljava/lang/String; = "enable_3g_settings"

.field static final DB_KEY_BOOKMARK_ASYNC_CHANNEL:Ljava/lang/String; = "async_channel"

.field static final DB_KEY_BOOKMARK_ASYNC_INPUT:Ljava/lang/String; = "async_input"

.field static final DB_KEY_BOOKMARK_ASYNC_UPDATE:Ljava/lang/String; = "async_update"

.field static final DB_KEY_BOOKMARK_CONSOLE_MODE:Ljava/lang/String; = "console_mode"

.field static final DB_KEY_BOOKMARK_DEBUG_LEVEL:Ljava/lang/String; = "debug_level"

.field static final DB_KEY_BOOKMARK_DOMAIN:Ljava/lang/String; = "domain"

.field static final DB_KEY_BOOKMARK_GW_DOMAIN:Ljava/lang/String; = "gateway_domain"

.field static final DB_KEY_BOOKMARK_GW_ENABLE:Ljava/lang/String; = "enable_gateway_settings"

.field static final DB_KEY_BOOKMARK_GW_HOSTNAME:Ljava/lang/String; = "gateway_hostname"

.field static final DB_KEY_BOOKMARK_GW_PASSWORD:Ljava/lang/String; = "gateway_password"

.field static final DB_KEY_BOOKMARK_GW_PORT:Ljava/lang/String; = "gateway_port"

.field static final DB_KEY_BOOKMARK_GW_USERNAME:Ljava/lang/String; = "gateway_username"

.field static final DB_KEY_BOOKMARK_HOSTNAME:Ljava/lang/String; = "hostname"

.field static final DB_KEY_BOOKMARK_LABEL:Ljava/lang/String; = "label"

.field static final DB_KEY_BOOKMARK_PASSWORD:Ljava/lang/String; = "password"

.field static final DB_KEY_BOOKMARK_PORT:Ljava/lang/String; = "port"

.field static final DB_KEY_BOOKMARK_REDIRECT_MICROPHONE:Ljava/lang/String; = "redirect_microphone"

.field static final DB_KEY_BOOKMARK_REDIRECT_SDCARD:Ljava/lang/String; = "redirect_sdcard"

.field static final DB_KEY_BOOKMARK_REDIRECT_SOUND:Ljava/lang/String; = "redirect_sound"

.field static final DB_KEY_BOOKMARK_REMOTE_PROGRAM:Ljava/lang/String; = "remote_program"

.field static final DB_KEY_BOOKMARK_SECURITY:Ljava/lang/String; = "security"

.field static final DB_KEY_BOOKMARK_USERNAME:Ljava/lang/String; = "username"

.field static final DB_KEY_BOOKMARK_WORK_DIR:Ljava/lang/String; = "work_dir"

.field static final DB_KEY_PERFORMANCE_COMPOSITION:Ljava/lang/String; = "perf_desktop_composition"

.field static final DB_KEY_PERFORMANCE_DRAG:Ljava/lang/String; = "perf_full_window_drag"

.field static final DB_KEY_PERFORMANCE_FLAGS:Ljava/lang/String; = "performance_flags"

.field static final DB_KEY_PERFORMANCE_FLAGS_3G:Ljava/lang/String; = "performance_3g"

.field static final DB_KEY_PERFORMANCE_FONTS:Ljava/lang/String; = "perf_font_smoothing"

.field static final DB_KEY_PERFORMANCE_GFX:Ljava/lang/String; = "perf_gfx"

.field static final DB_KEY_PERFORMANCE_H264:Ljava/lang/String; = "perf_gfx_h264"

.field static final DB_KEY_PERFORMANCE_MENU_ANIMATIONS:Ljava/lang/String; = "perf_menu_animations"

.field static final DB_KEY_PERFORMANCE_RFX:Ljava/lang/String; = "perf_remotefx"

.field static final DB_KEY_PERFORMANCE_THEME:Ljava/lang/String; = "perf_theming"

.field static final DB_KEY_PERFORMANCE_WALLPAPER:Ljava/lang/String; = "perf_wallpaper"

.field static final DB_KEY_SCREEN_COLORS:Ljava/lang/String; = "colors"

.field static final DB_KEY_SCREEN_HEIGHT:Ljava/lang/String; = "height"

.field static final DB_KEY_SCREEN_RESOLUTION:Ljava/lang/String; = "resolution"

.field static final DB_KEY_SCREEN_SETTINGS:Ljava/lang/String; = "screen_settings"

.field static final DB_KEY_SCREEN_SETTINGS_3G:Ljava/lang/String; = "screen_3g"

.field static final DB_KEY_SCREEN_WIDTH:Ljava/lang/String; = "width"

.field private static final DB_NAME:Ljava/lang/String; = "bookmarks.db"

.field private static final DB_TABLES:[Ljava/lang/String;

.field static final DB_TABLE_BOOKMARK:Ljava/lang/String; = "tbl_manual_bookmarks"

.field static final DB_TABLE_PERFORMANCE:Ljava/lang/String; = "tbl_performance_flags"

.field static final DB_TABLE_SCREEN:Ljava/lang/String; = "tbl_screen_settings"

.field private static final DB_VERSION:I = 0x9

.field public static final ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 34
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tbl_manual_bookmarks"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "tbl_screen_settings"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "tbl_performance_flags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/freerdp/freerdpcore/services/BookmarkDB;->DB_TABLES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x9

    .line 86
    const-string v2, "bookmarks.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private static GetColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM "

    const/4 v1, 0x0

    .line 95
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " LIMIT 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 98
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 109
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object p0, v1

    .line 103
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_3
    return-object v1

    :catchall_1
    move-exception p1

    move-object v1, p0

    :goto_4
    if-eqz v1, :cond_2

    .line 109
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_2
    throw p1
.end method

.method private backupTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    .line 129
    sget-object v0, Lcom/freerdp/freerdpcore/services/BookmarkDB;->DB_TABLES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "temp_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ALTER TABLE \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' RENAME TO \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 161
    const-string v0, "CREATE TABLE IF NOT EXISTS tbl_screen_settings (_id INTEGER PRIMARY KEY, colors INTEGER DEFAULT 16, resolution INTEGER DEFAULT 0, width, height);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 172
    const-string v0, "CREATE TABLE IF NOT EXISTS tbl_performance_flags (_id INTEGER PRIMARY KEY, perf_remotefx INTEGER, perf_gfx INTEGER, perf_gfx_h264 INTEGER, perf_wallpaper INTEGER, perf_theming INTEGER, perf_full_window_drag INTEGER, perf_menu_animations INTEGER, perf_font_smoothing INTEGER, perf_desktop_composition INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/services/BookmarkDB;->getManualBookmarksCreationString()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private downgradeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 376
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 380
    :try_start_0
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkDB;->dropOldTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 381
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkDB;->backupTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 382
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkDB;->createDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 383
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkDB;->downgradeTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 385
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 390
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkDB;->dropOldTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catchall_0
    move-exception v0

    .line 389
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 390
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkDB;->dropOldTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 391
    throw v0
.end method

.method private downgradeTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    .line 202
    sget-object v0, Lcom/freerdp/freerdpcore/services/BookmarkDB;->DB_TABLES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "temp_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 206
    invoke-static {p1, v3}, Lcom/freerdp/freerdpcore/services/BookmarkDB;->GetColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 207
    invoke-static {p1, v4}, Lcom/freerdp/freerdpcore/services/BookmarkDB;->GetColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    if-eqz v5, :cond_0

    .line 211
    invoke-interface {v5, v6}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 214
    const-string v6, ","

    invoke-static {v5, v6}, Lcom/freerdp/freerdpcore/services/BookmarkDB;->joinStrings(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 215
    const-string v6, "INSERT INTO %s (%s) SELECT %s from \'%s\'"

    filled-new-array {v3, v5, v5, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dropOldTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .line 146
    sget-object v0, Lcom/freerdp/freerdpcore/services/BookmarkDB;->DB_TABLES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "temp_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DROP TABLE IF EXISTS \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getManualBookmarksCreationString()Ljava/lang/String;
    .locals 1

    .line 308
    const-string v0, "CREATE TABLE IF NOT EXISTS tbl_manual_bookmarks (_id INTEGER PRIMARY KEY, label TEXT NOT NULL, hostname TEXT NOT NULL, username TEXT NOT NULL, password TEXT, domain TEXT, port TEXT, screen_settings INTEGER NOT NULL, performance_flags INTEGER NOT NULL, enable_gateway_settings INTEGER DEFAULT 0, gateway_hostname TEXT, gateway_port INTEGER DEFAULT 443, gateway_username TEXT, gateway_password TEXT, gateway_domain TEXT, enable_3g_settings INTEGER DEFAULT 0, screen_3g INTEGER NOT NULL, performance_3g INTEGER NOT NULL, redirect_sdcard INTEGER DEFAULT 0, redirect_sound INTEGER DEFAULT 0, redirect_microphone INTEGER DEFAULT 0, security INTEGER, remote_program TEXT, work_dir TEXT, async_channel INTEGER DEFAULT 0, async_input INTEGER DEFAULT 0, async_update INTEGER DEFAULT 0, console_mode INTEGER, debug_level TEXT DEFAULT \'INFO\', FOREIGN KEY(screen_settings) REFERENCES tbl_screen_settings(_id), FOREIGN KEY(performance_flags) REFERENCES tbl_performance_flags(_id), FOREIGN KEY(screen_3g) REFERENCES tbl_screen_settings(_id), FOREIGN KEY(performance_3g) REFERENCES tbl_performance_flags(_id) );"

    return-object v0
.end method

.method private getTableNames(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 225
    const-string v0, "SELECT name FROM sqlite_master WHERE type=\'table\'"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 231
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 241
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 242
    throw v0
.end method

.method private insertDefault(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 16

    move-object/from16 v0, p1

    .line 249
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/16 v2, 0x20

    .line 250
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "colors"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x1

    .line 251
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "resolution"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v3, 0x400

    .line 252
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "width"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v3, 0x300

    .line 253
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "height"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    const-string v3, "tbl_screen_settings"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 256
    invoke-virtual {v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 258
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 259
    const-string v3, "perf_remotefx"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 260
    const-string v3, "perf_gfx"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v3, 0x0

    .line 261
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v9, "perf_gfx_h264"

    invoke-virtual {v1, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    const-string v9, "perf_wallpaper"

    invoke-virtual {v1, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 263
    const-string v9, "perf_theming"

    invoke-virtual {v1, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 264
    const-string v9, "perf_full_window_drag"

    invoke-virtual {v1, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    const-string v9, "perf_menu_animations"

    invoke-virtual {v1, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 266
    const-string v9, "perf_font_smoothing"

    invoke-virtual {v1, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 267
    const-string v9, "perf_desktop_composition"

    invoke-virtual {v1, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    const-string v9, "tbl_performance_flags"

    invoke-virtual {v0, v9, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    .line 270
    invoke-virtual {v0, v9, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v12

    .line 272
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 273
    const-string v9, "label"

    const-string v14, "Test Server"

    invoke-virtual {v1, v9, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v9, "hostname"

    const-string v14, "testservice.afreerdp.com"

    invoke-virtual {v1, v9, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v9, "username"

    const-string v14, ""

    invoke-virtual {v1, v9, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v9, "password"

    invoke-virtual {v1, v9, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v9, "domain"

    invoke-virtual {v1, v9, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v9, "port"

    const-string v15, "3389"

    invoke-virtual {v1, v9, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v9, "screen_settings"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 281
    const-string v5, "screen_3g"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 282
    const-string v5, "performance_flags"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 283
    const-string v5, "performance_3g"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 285
    const-string v5, "redirect_sdcard"

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 286
    const-string v5, "redirect_sound"

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    const-string v5, "redirect_microphone"

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 288
    const-string v5, "security"

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 289
    const-string v5, "remote_program"

    invoke-virtual {v1, v5, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v5, "work_dir"

    invoke-virtual {v1, v5, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v5, "async_channel"

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    const-string v5, "async_input"

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    const-string v5, "async_update"

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    const-string v2, "console_mode"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 295
    const-string v2, "debug_level"

    const-string v3, "INFO"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v2, "tbl_manual_bookmarks"

    invoke-virtual {v0, v2, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method private static joinStrings(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private recreateDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .line 346
    sget-object v0, Lcom/freerdp/freerdpcore/services/BookmarkDB;->DB_TABLES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 348
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DROP TABLE IF EXISTS \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 349
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkDB;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private upgradeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 356
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 360
    :try_start_0
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkDB;->dropOldTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 361
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkDB;->backupTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 362
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkDB;->createDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 363
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkDB;->upgradeTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 365
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 370
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkDB;->dropOldTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catchall_0
    move-exception v0

    .line 369
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 370
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkDB;->dropOldTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 371
    throw v0
.end method

.method private upgradeTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    .line 180
    sget-object v0, Lcom/freerdp/freerdpcore/services/BookmarkDB;->DB_TABLES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "temp_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 184
    invoke-static {p1, v3}, Lcom/freerdp/freerdpcore/services/BookmarkDB;->GetColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 185
    invoke-static {p1, v4}, Lcom/freerdp/freerdpcore/services/BookmarkDB;->GetColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 189
    invoke-interface {v6, v5}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 192
    const-string v5, ","

    invoke-static {v6, v5}, Lcom/freerdp/freerdpcore/services/BookmarkDB;->joinStrings(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 193
    const-string v6, "INSERT INTO %s (%s) SELECT %s from \'%s\'"

    filled-new-array {v3, v5, v5, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 195
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 302
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkDB;->createDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 303
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkDB;->insertDefault(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 420
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkDB;->downgradeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    .line 413
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkDB;->recreateDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 410
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkDB;->upgradeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
