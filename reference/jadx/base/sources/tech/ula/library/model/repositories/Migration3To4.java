package tech.ula.library.model.repositories;

import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UlaDatabase.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Ltech/ula/library/model/repositories/Migration3To4;", "Landroidx/room/migration/Migration;", "()V", "migrate", "", "database", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Migration3To4 extends Migration {
    public Migration3To4() {
        super(3, 4);
    }

    @Override // androidx.room.migration.Migration
    public void migrate(SupportSQLiteDatabase database) {
        Intrinsics.checkNotNullParameter(database, "database");
        database.execSQL("PRAGMA foreign_keys=off;");
        database.execSQL("BEGIN TRANSACTION;");
        database.execSQL("CREATE TEMPORARY TABLE filesystem_backup(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT NOT NULL, distributionType TEXT NOT NULL, archType TEXT NOT NULL, defaultUsername TEXT NOT NULL, defaultPassword TEXT NOT NULL, defaultVncPassword TEXT NOT NULL, isAppsFilesystem INTEGER NOT NULL);");
        database.execSQL("INSERT INTO filesystem_backup SELECT id, name, distributionType, archType, defaultUsername, defaultPassword, defaultVncPassword, isAppsFilesystem FROM filesystem;");
        database.execSQL("DROP TABLE filesystem;");
        database.execSQL("CREATE TABLE filesystem(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT NOT NULL, distributionType TEXT NOT NULL, archType TEXT NOT NULL, defaultUsername TEXT NOT NULL, defaultPassword TEXT NOT NULL, defaultVncPassword TEXT NOT NULL, isAppsFilesystem INTEGER NOT NULL, lastUpdated INTEGER NOT NULL DEFAULT -1);");
        database.execSQL("INSERT INTO filesystem SELECT id, name, distributionType, archType, defaultUsername, defaultPassword, defaultVncPassword, isAppsFilesystem, -1 FROM filesystem_backup;");
        database.execSQL("DROP TABLE filesystem_backup;");
        database.execSQL("CREATE TEMPORARY TABLE session_backup(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT NOT NULL, filesystemId INTEGER NOT NULL, filesystemName TEXT NOT NULL, active INTEGER NOT NULL, username TEXT NOT NULL, password TEXT NOT NULL, vncPassword TEXT NOT NULL, serviceType TEXT NOT NULL, port INTEGER NOT NULL, pid INTEGER NOT NULL, isAppsSession INTEGER NOT NULL, FOREIGN KEY(filesystemId) REFERENCES filesystem(id))");
        database.execSQL("INSERT INTO session_backup SELECT id, name, filesystemId, filesystemName, active, username, password, vncPassword, serviceType, port, pid, isAppsSession FROM session;");
        database.execSQL("DROP TABLE session;");
        database.execSQL("CREATE TABLE session(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT NOT NULL, filesystemId INTEGER NOT NULL, filesystemName TEXT NOT NULL, active INTEGER NOT NULL, username TEXT NOT NULL, password TEXT NOT NULL, vncPassword TEXT NOT NULL, serviceType TEXT NOT NULL, port INTEGER NOT NULL, pid INTEGER NOT NULL, isAppsSession INTEGER NOT NULL, FOREIGN KEY(filesystemId) REFERENCES filesystem(id) ON UPDATE NO ACTION ON DELETE CASCADE)");
        database.execSQL("INSERT INTO session SELECT id, name, filesystemId, filesystemName, active, username, password, vncPassword, serviceType, port, pid, isAppsSession FROM session_backup;");
        database.execSQL("DROP TABLE session_backup;");
        database.execSQL("CREATE INDEX index_session_filesystemId ON session (filesystemId)");
        database.execSQL("COMMIT;");
        database.execSQL("PRAGMA foreign_keys_on");
    }
}
