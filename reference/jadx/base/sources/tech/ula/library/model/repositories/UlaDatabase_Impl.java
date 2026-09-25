package tech.ula.library.model.repositories;

import androidx.room.DatabaseConfiguration;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.RoomMasterTable;
import androidx.room.RoomOpenHelper;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import com.iiordanov.bVNC.Constants;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import tech.ula.library.model.daos.AppsDao;
import tech.ula.library.model.daos.AppsDao_Impl;
import tech.ula.library.model.daos.FilesystemDao;
import tech.ula.library.model.daos.FilesystemDao_Impl;
import tech.ula.library.model.daos.SessionDao;
import tech.ula.library.model.daos.SessionDao_Impl;

/* JADX INFO: loaded from: classes3.dex */
public final class UlaDatabase_Impl extends UlaDatabase {
    private volatile AppsDao _appsDao;
    private volatile FilesystemDao _filesystemDao;
    private volatile SessionDao _sessionDao;

    @Override // androidx.room.RoomDatabase
    protected SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration configuration) {
        return configuration.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(configuration.context).name(configuration.name).callback(new RoomOpenHelper(configuration, new RoomOpenHelper.Delegate(17) { // from class: tech.ula.library.model.repositories.UlaDatabase_Impl.1
            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onPostMigrate(SupportSQLiteDatabase _db) {
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void createAllTables(SupportSQLiteDatabase _db) {
                _db.execSQL("CREATE TABLE IF NOT EXISTS `session` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT NOT NULL, `filesystemId` INTEGER NOT NULL, `filesystemName` TEXT NOT NULL, `active` INTEGER NOT NULL, `username` TEXT NOT NULL, `password` TEXT NOT NULL, `vncPassword` TEXT NOT NULL, `serviceType` TEXT NOT NULL, `port` INTEGER NOT NULL, `pid` INTEGER NOT NULL, `geometry` TEXT NOT NULL, `isAppsSession` INTEGER NOT NULL, `isProtected` INTEGER NOT NULL, `displayOrientation` INTEGER NOT NULL, `displayLocked` INTEGER NOT NULL, `displayScaling` REAL NOT NULL, `displayRemember` INTEGER NOT NULL, `soundSupport` INTEGER NOT NULL, `micSupport` INTEGER NOT NULL, `serviceTypeRemember` INTEGER NOT NULL, `executionType` TEXT NOT NULL, `shareStorage` INTEGER NOT NULL, `memoryMb` INTEGER NOT NULL, `cpuAllCores` INTEGER NOT NULL, FOREIGN KEY(`filesystemId`) REFERENCES `filesystem`(`id`) ON UPDATE NO ACTION ON DELETE CASCADE )");
                _db.execSQL("CREATE INDEX IF NOT EXISTS `index_session_filesystemId` ON `session` (`filesystemId`)");
                _db.execSQL("CREATE TABLE IF NOT EXISTS `filesystem` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT NOT NULL, `distributionType` TEXT NOT NULL, `archType` TEXT NOT NULL, `flavor` TEXT NOT NULL, `defaultUsername` TEXT NOT NULL, `defaultPassword` TEXT NOT NULL, `defaultVncPassword` TEXT NOT NULL, `isAppsFilesystem` INTEGER NOT NULL, `versionCodeUsed` TEXT NOT NULL, `isCreatedFromBackup` INTEGER NOT NULL, `isProtected` INTEGER NOT NULL, `isPaid` INTEGER NOT NULL, `hasPaidUp` INTEGER NOT NULL, `executionType` TEXT NOT NULL)");
                _db.execSQL("CREATE TABLE IF NOT EXISTS `apps` (`name` TEXT NOT NULL, `category` TEXT NOT NULL, `filesystemRequired` TEXT NOT NULL, `supportsCli` INTEGER NOT NULL, `supportsGui` INTEGER NOT NULL, `supportsStandalone` TEXT NOT NULL, `isPaidApp` INTEGER NOT NULL, `version` INTEGER NOT NULL, PRIMARY KEY(`name`))");
                _db.execSQL("CREATE UNIQUE INDEX IF NOT EXISTS `index_apps_name` ON `apps` (`name`)");
                _db.execSQL(RoomMasterTable.CREATE_QUERY);
                _db.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '0d620be981a838ed87ac1f7aa2e24f54')");
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void dropAllTables(SupportSQLiteDatabase _db) {
                _db.execSQL("DROP TABLE IF EXISTS `session`");
                _db.execSQL("DROP TABLE IF EXISTS `filesystem`");
                _db.execSQL("DROP TABLE IF EXISTS `apps`");
                if (UlaDatabase_Impl.this.mCallbacks != null) {
                    int size = UlaDatabase_Impl.this.mCallbacks.size();
                    for (int i = 0; i < size; i++) {
                        ((RoomDatabase.Callback) UlaDatabase_Impl.this.mCallbacks.get(i)).onDestructiveMigration(_db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            protected void onCreate(SupportSQLiteDatabase _db) {
                if (UlaDatabase_Impl.this.mCallbacks != null) {
                    int size = UlaDatabase_Impl.this.mCallbacks.size();
                    for (int i = 0; i < size; i++) {
                        ((RoomDatabase.Callback) UlaDatabase_Impl.this.mCallbacks.get(i)).onCreate(_db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onOpen(SupportSQLiteDatabase _db) {
                UlaDatabase_Impl.this.mDatabase = _db;
                _db.execSQL("PRAGMA foreign_keys = ON");
                UlaDatabase_Impl.this.internalInitInvalidationTracker(_db);
                if (UlaDatabase_Impl.this.mCallbacks != null) {
                    int size = UlaDatabase_Impl.this.mCallbacks.size();
                    for (int i = 0; i < size; i++) {
                        ((RoomDatabase.Callback) UlaDatabase_Impl.this.mCallbacks.get(i)).onOpen(_db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onPreMigrate(SupportSQLiteDatabase _db) {
                DBUtil.dropFtsSyncTriggers(_db);
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            protected RoomOpenHelper.ValidationResult onValidateSchema(SupportSQLiteDatabase _db) {
                HashMap map = new HashMap(25);
                map.put("id", new TableInfo.Column("id", "INTEGER", true, 1, null, 1));
                map.put("name", new TableInfo.Column("name", "TEXT", true, 0, null, 1));
                map.put("filesystemId", new TableInfo.Column("filesystemId", "INTEGER", true, 0, null, 1));
                map.put("filesystemName", new TableInfo.Column("filesystemName", "TEXT", true, 0, null, 1));
                map.put("active", new TableInfo.Column("active", "INTEGER", true, 0, null, 1));
                map.put("username", new TableInfo.Column("username", "TEXT", true, 0, null, 1));
                map.put(Constants.testpassword, new TableInfo.Column(Constants.testpassword, "TEXT", true, 0, null, 1));
                map.put("vncPassword", new TableInfo.Column("vncPassword", "TEXT", true, 0, null, 1));
                map.put("serviceType", new TableInfo.Column("serviceType", "TEXT", true, 0, null, 1));
                map.put("port", new TableInfo.Column("port", "INTEGER", true, 0, null, 1));
                map.put("pid", new TableInfo.Column("pid", "INTEGER", true, 0, null, 1));
                map.put("geometry", new TableInfo.Column("geometry", "TEXT", true, 0, null, 1));
                map.put("isAppsSession", new TableInfo.Column("isAppsSession", "INTEGER", true, 0, null, 1));
                map.put("isProtected", new TableInfo.Column("isProtected", "INTEGER", true, 0, null, 1));
                map.put("displayOrientation", new TableInfo.Column("displayOrientation", "INTEGER", true, 0, null, 1));
                map.put("displayLocked", new TableInfo.Column("displayLocked", "INTEGER", true, 0, null, 1));
                map.put("displayScaling", new TableInfo.Column("displayScaling", "REAL", true, 0, null, 1));
                map.put("displayRemember", new TableInfo.Column("displayRemember", "INTEGER", true, 0, null, 1));
                map.put("soundSupport", new TableInfo.Column("soundSupport", "INTEGER", true, 0, null, 1));
                map.put("micSupport", new TableInfo.Column("micSupport", "INTEGER", true, 0, null, 1));
                map.put("serviceTypeRemember", new TableInfo.Column("serviceTypeRemember", "INTEGER", true, 0, null, 1));
                map.put("executionType", new TableInfo.Column("executionType", "TEXT", true, 0, null, 1));
                map.put("shareStorage", new TableInfo.Column("shareStorage", "INTEGER", true, 0, null, 1));
                map.put("memoryMb", new TableInfo.Column("memoryMb", "INTEGER", true, 0, null, 1));
                map.put("cpuAllCores", new TableInfo.Column("cpuAllCores", "INTEGER", true, 0, null, 1));
                HashSet hashSet = new HashSet(1);
                hashSet.add(new TableInfo.ForeignKey("filesystem", "CASCADE", "NO ACTION", Arrays.asList("filesystemId"), Arrays.asList("id")));
                HashSet hashSet2 = new HashSet(1);
                hashSet2.add(new TableInfo.Index("index_session_filesystemId", false, Arrays.asList("filesystemId")));
                TableInfo tableInfo = new TableInfo("session", map, hashSet, hashSet2);
                TableInfo tableInfo2 = TableInfo.read(_db, "session");
                if (!tableInfo.equals(tableInfo2)) {
                    return new RoomOpenHelper.ValidationResult(false, "session(tech.ula.library.model.entities.Session).\n Expected:\n" + tableInfo + "\n Found:\n" + tableInfo2);
                }
                HashMap map2 = new HashMap(15);
                map2.put("id", new TableInfo.Column("id", "INTEGER", true, 1, null, 1));
                map2.put("name", new TableInfo.Column("name", "TEXT", true, 0, null, 1));
                map2.put("distributionType", new TableInfo.Column("distributionType", "TEXT", true, 0, null, 1));
                map2.put("archType", new TableInfo.Column("archType", "TEXT", true, 0, null, 1));
                map2.put("flavor", new TableInfo.Column("flavor", "TEXT", true, 0, null, 1));
                map2.put("defaultUsername", new TableInfo.Column("defaultUsername", "TEXT", true, 0, null, 1));
                map2.put("defaultPassword", new TableInfo.Column("defaultPassword", "TEXT", true, 0, null, 1));
                map2.put("defaultVncPassword", new TableInfo.Column("defaultVncPassword", "TEXT", true, 0, null, 1));
                map2.put("isAppsFilesystem", new TableInfo.Column("isAppsFilesystem", "INTEGER", true, 0, null, 1));
                map2.put("versionCodeUsed", new TableInfo.Column("versionCodeUsed", "TEXT", true, 0, null, 1));
                map2.put("isCreatedFromBackup", new TableInfo.Column("isCreatedFromBackup", "INTEGER", true, 0, null, 1));
                map2.put("isProtected", new TableInfo.Column("isProtected", "INTEGER", true, 0, null, 1));
                map2.put("isPaid", new TableInfo.Column("isPaid", "INTEGER", true, 0, null, 1));
                map2.put("hasPaidUp", new TableInfo.Column("hasPaidUp", "INTEGER", true, 0, null, 1));
                map2.put("executionType", new TableInfo.Column("executionType", "TEXT", true, 0, null, 1));
                TableInfo tableInfo3 = new TableInfo("filesystem", map2, new HashSet(0), new HashSet(0));
                TableInfo tableInfo4 = TableInfo.read(_db, "filesystem");
                if (!tableInfo3.equals(tableInfo4)) {
                    return new RoomOpenHelper.ValidationResult(false, "filesystem(tech.ula.library.model.entities.Filesystem).\n Expected:\n" + tableInfo3 + "\n Found:\n" + tableInfo4);
                }
                HashMap map3 = new HashMap(8);
                map3.put("name", new TableInfo.Column("name", "TEXT", true, 1, null, 1));
                map3.put("category", new TableInfo.Column("category", "TEXT", true, 0, null, 1));
                map3.put("filesystemRequired", new TableInfo.Column("filesystemRequired", "TEXT", true, 0, null, 1));
                map3.put("supportsCli", new TableInfo.Column("supportsCli", "INTEGER", true, 0, null, 1));
                map3.put("supportsGui", new TableInfo.Column("supportsGui", "INTEGER", true, 0, null, 1));
                map3.put("supportsStandalone", new TableInfo.Column("supportsStandalone", "TEXT", true, 0, null, 1));
                map3.put("isPaidApp", new TableInfo.Column("isPaidApp", "INTEGER", true, 0, null, 1));
                map3.put("version", new TableInfo.Column("version", "INTEGER", true, 0, null, 1));
                HashSet hashSet3 = new HashSet(0);
                HashSet hashSet4 = new HashSet(1);
                hashSet4.add(new TableInfo.Index("index_apps_name", true, Arrays.asList("name")));
                TableInfo tableInfo5 = new TableInfo("apps", map3, hashSet3, hashSet4);
                TableInfo tableInfo6 = TableInfo.read(_db, "apps");
                if (!tableInfo5.equals(tableInfo6)) {
                    return new RoomOpenHelper.ValidationResult(false, "apps(tech.ula.library.model.entities.App).\n Expected:\n" + tableInfo5 + "\n Found:\n" + tableInfo6);
                }
                return new RoomOpenHelper.ValidationResult(true, null);
            }
        }, "0d620be981a838ed87ac1f7aa2e24f54", "8a92ef7945eeae7742aac6286ad5d6c4")).build());
    }

    @Override // androidx.room.RoomDatabase
    protected InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "session", "filesystem", "apps");
    }

    @Override // androidx.room.RoomDatabase
    public void clearAllTables() {
        super.assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.execSQL("PRAGMA defer_foreign_keys = TRUE");
            writableDatabase.execSQL("DELETE FROM `session`");
            writableDatabase.execSQL("DELETE FROM `filesystem`");
            writableDatabase.execSQL("DELETE FROM `apps`");
            super.setTransactionSuccessful();
        } finally {
            super.endTransaction();
            writableDatabase.query("PRAGMA wal_checkpoint(FULL)").close();
            if (!writableDatabase.inTransaction()) {
                writableDatabase.execSQL("VACUUM");
            }
        }
    }

    @Override // androidx.room.RoomDatabase
    protected Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        HashMap map = new HashMap();
        map.put(SessionDao.class, SessionDao_Impl.getRequiredConverters());
        map.put(FilesystemDao.class, FilesystemDao_Impl.getRequiredConverters());
        map.put(AppsDao.class, AppsDao_Impl.getRequiredConverters());
        return map;
    }

    @Override // tech.ula.library.model.repositories.UlaDatabase
    public SessionDao sessionDao() {
        SessionDao sessionDao;
        if (this._sessionDao != null) {
            return this._sessionDao;
        }
        synchronized (this) {
            if (this._sessionDao == null) {
                this._sessionDao = new SessionDao_Impl(this);
            }
            sessionDao = this._sessionDao;
        }
        return sessionDao;
    }

    @Override // tech.ula.library.model.repositories.UlaDatabase
    public FilesystemDao filesystemDao() {
        FilesystemDao filesystemDao;
        if (this._filesystemDao != null) {
            return this._filesystemDao;
        }
        synchronized (this) {
            if (this._filesystemDao == null) {
                this._filesystemDao = new FilesystemDao_Impl(this);
            }
            filesystemDao = this._filesystemDao;
        }
        return filesystemDao;
    }

    @Override // tech.ula.library.model.repositories.UlaDatabase
    public AppsDao appsDao() {
        AppsDao appsDao;
        if (this._appsDao != null) {
            return this._appsDao;
        }
        synchronized (this) {
            if (this._appsDao == null) {
                this._appsDao = new AppsDao_Impl(this);
            }
            appsDao = this._appsDao;
        }
        return appsDao;
    }
}
