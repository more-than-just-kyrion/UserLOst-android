.class public final Ltech/ulo/library/model/repositories/Migration6To7;
.super Landroidx/room/migration/Migration;
.source "UlaDatabase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Ltech/ulo/library/model/repositories/Migration6To7;",
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

    const/4 v0, 0x6

    const/4 v1, 0x7

    .line 145
    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    const-string v0, "PRAGMA foreign_keys=off;"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 148
    const-string v0, "BEGIN TRANSACTION;"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 151
    const-string v0, "CREATE TEMPORARY TABLE filesystem_backup(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT NOT NULL, distributionType TEXT NOT NULL, archType TEXT NOT NULL, defaultUsername TEXT NOT NULL, defaultPassword TEXT NOT NULL, defaultVncPassword TEXT NOT NULL, isAppsFilesystem INTEGER NOT NULL, isCreatedFromBackup INTEGER NOT NULL);"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 152
    const-string v0, "INSERT INTO filesystem_backup SELECT id, name, distributionType, archType, defaultUsername, defaultPassword, defaultVncPassword, isAppsFilesystem, isCreatedFromBackup FROM filesystem;"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 153
    const-string v0, "DROP TABLE filesystem;"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 154
    const-string v0, "CREATE TABLE filesystem(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT NOT NULL, distributionType TEXT NOT NULL, archType TEXT NOT NULL, defaultUsername TEXT NOT NULL, defaultPassword TEXT NOT NULL, defaultVncPassword TEXT NOT NULL, isAppsFilesystem INTEGER NOT NULL, isCreatedFromBackup INTEGER NOT NULL, versionCodeUsed TEXT NOT NULL DEFAULT \'v0.0.0\');"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 155
    const-string v0, "INSERT INTO filesystem SELECT id, name, distributionType, archType, defaultUsername, defaultPassword, defaultVncPassword, isAppsFilesystem, isCreatedFromBackup, \'v0.0.0\' FROM filesystem_backup;"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 156
    const-string v0, "DROP TABLE filesystem_backup;"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 158
    const-string v0, "COMMIT;"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 159
    const-string v0, "PRAGMA foreign_keys_on"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
