package tech.ula.library.model.repositories;

import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UlaDatabase.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Ltech/ula/library/model/repositories/Migration2To3;", "Landroidx/room/migration/Migration;", "()V", "migrate", "", "database", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Migration2To3 extends Migration {
    public Migration2To3() {
        super(2, 3);
    }

    @Override // androidx.room.migration.Migration
    public void migrate(SupportSQLiteDatabase database) {
        Intrinsics.checkNotNullParameter(database, "database");
        database.execSQL("CREATE TABLE apps (name TEXT NOT NULL, category TEXT NOT NULL, filesystemRequired TEXT NOT NULL, supportsCli INTEGER NOT NULL, supportsGui INTEGER NOT NULL, isPaidApp INTEGER NOT NULL, version INTEGER NOT NULL, PRIMARY KEY(`name`))");
        database.execSQL("CREATE UNIQUE INDEX index_apps_name ON apps (name)");
        database.execSQL("DROP INDEX index_filesystem_name");
        database.execSQL("ALTER TABLE filesystem ADD COLUMN isAppsFilesystem INTEGER NOT NULL DEFAULT 0");
        database.execSQL("DROP INDEX index_session_name");
        database.execSQL("ALTER TABLE session ADD COLUMN isAppsSession INTEGER NOT NULL DEFAULT 0");
        database.execSQL("ALTER TABLE filesystem ADD COLUMN defaultVncPassword TEXT NOT NULL DEFAULT 'userland'");
        database.execSQL("ALTER TABLE session ADD COLUMN vncPassword TEXT NOT NULL DEFAULT 'userland'");
    }
}
