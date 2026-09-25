.class public final Ltech/ulo/library/model/repositories/Migration3To4;
.super Landroidx/room/migration/Migration;
.source "UlaDatabase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Ltech/ulo/library/model/repositories/Migration3To4;",
        "Landroidx/room/migration/Migration;",
        "()V",
        "migrate",
        "",
        "database",
        "Landroidx/sqlite/db/SupportSQLiteDatabase;",
        "UserLOstLibrary_UserLOstRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x4

    .line 106
    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    const-string v0, "PRAGMA foreign_keys=off;"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    const-string v0, "BEGIN TRANSACTION;"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    const-string v0, "CREATE TEMPORARY TABLE filesystem_backup(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT NOT NULL, distributionType TEXT NOT NULL, archType TEXT NOT NULL, defaultUsername TEXT NOT NULL, defaultPassword TEXT NOT NULL, defaultVncPassword TEXT NOT NULL, isAppsFilesystem INTEGER NOT NULL);"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    const-string v0, "INSERT INTO filesystem_backup SELECT id, name, distributionType, archType, defaultUsername, defaultPassword, defaultVncPassword, isAppsFilesystem FROM filesystem;"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    const-string v0, "DROP TABLE filesystem;"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    const-string v0, "CREATE TABLE filesystem(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT NOT NULL, distributionType TEXT NOT NULL, archType TEXT NOT NULL, defaultUsername TEXT NOT NULL, defaultPassword TEXT NOT NULL, defaultVncPassword TEXT NOT NULL, isAppsFilesystem INTEGER NOT NULL, lastUpdated INTEGER NOT NULL DEFAULT -1);"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    const-string v0, "INSERT INTO filesystem SELECT id, name, distributionType, archType, defaultUsername, defaultPassword, defaultVncPassword, isAppsFilesystem, -1 FROM filesystem_backup;"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 117
    const-string v0, "DROP TABLE filesystem_backup;"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 120
    const-string v0, "CREATE TEMPORARY TABLE session_backup(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT NOT NULL, filesystemId INTEGER NOT NULL, filesystemName TEXT NOT NULL, active INTEGER NOT NULL, username TEXT NOT NULL, password TEXT NOT NULL, vncPassword TEXT NOT NULL, serviceType TEXT NOT NULL, port INTEGER NOT NULL, pid INTEGER NOT NULL, isAppsSession INTEGER NOT NULL, FOREIGN KEY(filesystemId) REFERENCES filesystem(id))"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 121
    const-string v0, "INSERT INTO session_backup SELECT id, name, filesystemId, filesystemName, active, username, password, vncPassword, serviceType, port, pid, isAppsSession FROM session;"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 122
    const-string v0, "DROP TABLE session;"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    const-string v0, "CREATE TABLE session(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT NOT NULL, filesystemId INTEGER NOT NULL, filesystemName TEXT NOT NULL, active INTEGER NOT NULL, username TEXT NOT NULL, password TEXT NOT NULL, vncPassword TEXT NOT NULL, serviceType TEXT NOT NULL, port INTEGER NOT NULL, pid INTEGER NOT NULL, isAppsSession INTEGER NOT NULL, FOREIGN KEY(filesystemId) REFERENCES filesystem(id) ON UPDATE NO ACTION ON DELETE CASCADE)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 124
    const-string v0, "INSERT INTO session SELECT id, name, filesystemId, filesystemName, active, username, password, vncPassword, serviceType, port, pid, isAppsSession FROM session_backup;"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 125
    const-string v0, "DROP TABLE session_backup;"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 126
    const-string v0, "CREATE INDEX index_session_filesystemId ON session (filesystemId)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 128
    const-string v0, "COMMIT;"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    const-string v0, "PRAGMA foreign_keys_on"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
