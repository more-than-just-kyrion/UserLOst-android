package tech.ula.library.model.daos;

import android.database.Cursor;
import androidx.lifecycle.LiveData;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import tech.ula.library.model.entities.ExecutionTypeConverter;
import tech.ula.library.model.entities.Filesystem;

/* JADX INFO: loaded from: classes3.dex */
public final class FilesystemDao_Impl implements FilesystemDao {
    private final RoomDatabase __db;
    private final ExecutionTypeConverter __executionTypeConverter = new ExecutionTypeConverter();
    private final EntityInsertionAdapter<Filesystem> __insertionAdapterOfFilesystem;
    private final SharedSQLiteStatement __preparedStmtOfDeleteFilesystemById;
    private final EntityDeletionOrUpdateAdapter<Filesystem> __updateAdapterOfFilesystem;

    public FilesystemDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfFilesystem = new EntityInsertionAdapter<Filesystem>(__db) { // from class: tech.ula.library.model.daos.FilesystemDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR ABORT INTO `filesystem` (`id`,`name`,`distributionType`,`archType`,`flavor`,`defaultUsername`,`defaultPassword`,`defaultVncPassword`,`isAppsFilesystem`,`versionCodeUsed`,`isCreatedFromBackup`,`isProtected`,`isPaid`,`hasPaidUp`,`executionType`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement supportSQLiteStatement, Filesystem filesystem) {
                supportSQLiteStatement.bindLong(1, filesystem.getId());
                if (filesystem.getName() == null) {
                    supportSQLiteStatement.bindNull(2);
                } else {
                    supportSQLiteStatement.bindString(2, filesystem.getName());
                }
                if (filesystem.getDistributionType() == null) {
                    supportSQLiteStatement.bindNull(3);
                } else {
                    supportSQLiteStatement.bindString(3, filesystem.getDistributionType());
                }
                if (filesystem.getArchType() == null) {
                    supportSQLiteStatement.bindNull(4);
                } else {
                    supportSQLiteStatement.bindString(4, filesystem.getArchType());
                }
                if (filesystem.getFlavor() == null) {
                    supportSQLiteStatement.bindNull(5);
                } else {
                    supportSQLiteStatement.bindString(5, filesystem.getFlavor());
                }
                if (filesystem.getDefaultUsername() == null) {
                    supportSQLiteStatement.bindNull(6);
                } else {
                    supportSQLiteStatement.bindString(6, filesystem.getDefaultUsername());
                }
                if (filesystem.getDefaultPassword() == null) {
                    supportSQLiteStatement.bindNull(7);
                } else {
                    supportSQLiteStatement.bindString(7, filesystem.getDefaultPassword());
                }
                if (filesystem.getDefaultVncPassword() == null) {
                    supportSQLiteStatement.bindNull(8);
                } else {
                    supportSQLiteStatement.bindString(8, filesystem.getDefaultVncPassword());
                }
                supportSQLiteStatement.bindLong(9, filesystem.isAppsFilesystem() ? 1L : 0L);
                if (filesystem.getVersionCodeUsed() == null) {
                    supportSQLiteStatement.bindNull(10);
                } else {
                    supportSQLiteStatement.bindString(10, filesystem.getVersionCodeUsed());
                }
                supportSQLiteStatement.bindLong(11, filesystem.isCreatedFromBackup() ? 1L : 0L);
                supportSQLiteStatement.bindLong(12, filesystem.isProtected() ? 1L : 0L);
                supportSQLiteStatement.bindLong(13, filesystem.isPaid() ? 1L : 0L);
                supportSQLiteStatement.bindLong(14, filesystem.getHasPaidUp() ? 1L : 0L);
                String strFromExecutionType = FilesystemDao_Impl.this.__executionTypeConverter.fromExecutionType(filesystem.getExecutionType());
                if (strFromExecutionType == null) {
                    supportSQLiteStatement.bindNull(15);
                } else {
                    supportSQLiteStatement.bindString(15, strFromExecutionType);
                }
            }
        };
        this.__updateAdapterOfFilesystem = new EntityDeletionOrUpdateAdapter<Filesystem>(__db) { // from class: tech.ula.library.model.daos.FilesystemDao_Impl.2
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR REPLACE `filesystem` SET `id` = ?,`name` = ?,`distributionType` = ?,`archType` = ?,`flavor` = ?,`defaultUsername` = ?,`defaultPassword` = ?,`defaultVncPassword` = ?,`isAppsFilesystem` = ?,`versionCodeUsed` = ?,`isCreatedFromBackup` = ?,`isProtected` = ?,`isPaid` = ?,`hasPaidUp` = ?,`executionType` = ? WHERE `id` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement supportSQLiteStatement, Filesystem filesystem) {
                supportSQLiteStatement.bindLong(1, filesystem.getId());
                if (filesystem.getName() == null) {
                    supportSQLiteStatement.bindNull(2);
                } else {
                    supportSQLiteStatement.bindString(2, filesystem.getName());
                }
                if (filesystem.getDistributionType() == null) {
                    supportSQLiteStatement.bindNull(3);
                } else {
                    supportSQLiteStatement.bindString(3, filesystem.getDistributionType());
                }
                if (filesystem.getArchType() == null) {
                    supportSQLiteStatement.bindNull(4);
                } else {
                    supportSQLiteStatement.bindString(4, filesystem.getArchType());
                }
                if (filesystem.getFlavor() == null) {
                    supportSQLiteStatement.bindNull(5);
                } else {
                    supportSQLiteStatement.bindString(5, filesystem.getFlavor());
                }
                if (filesystem.getDefaultUsername() == null) {
                    supportSQLiteStatement.bindNull(6);
                } else {
                    supportSQLiteStatement.bindString(6, filesystem.getDefaultUsername());
                }
                if (filesystem.getDefaultPassword() == null) {
                    supportSQLiteStatement.bindNull(7);
                } else {
                    supportSQLiteStatement.bindString(7, filesystem.getDefaultPassword());
                }
                if (filesystem.getDefaultVncPassword() == null) {
                    supportSQLiteStatement.bindNull(8);
                } else {
                    supportSQLiteStatement.bindString(8, filesystem.getDefaultVncPassword());
                }
                supportSQLiteStatement.bindLong(9, filesystem.isAppsFilesystem() ? 1L : 0L);
                if (filesystem.getVersionCodeUsed() == null) {
                    supportSQLiteStatement.bindNull(10);
                } else {
                    supportSQLiteStatement.bindString(10, filesystem.getVersionCodeUsed());
                }
                supportSQLiteStatement.bindLong(11, filesystem.isCreatedFromBackup() ? 1L : 0L);
                supportSQLiteStatement.bindLong(12, filesystem.isProtected() ? 1L : 0L);
                supportSQLiteStatement.bindLong(13, filesystem.isPaid() ? 1L : 0L);
                supportSQLiteStatement.bindLong(14, filesystem.getHasPaidUp() ? 1L : 0L);
                String strFromExecutionType = FilesystemDao_Impl.this.__executionTypeConverter.fromExecutionType(filesystem.getExecutionType());
                if (strFromExecutionType == null) {
                    supportSQLiteStatement.bindNull(15);
                } else {
                    supportSQLiteStatement.bindString(15, strFromExecutionType);
                }
                supportSQLiteStatement.bindLong(16, filesystem.getId());
            }
        };
        this.__preparedStmtOfDeleteFilesystemById = new SharedSQLiteStatement(__db) { // from class: tech.ula.library.model.daos.FilesystemDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "delete from filesystem where id = ?";
            }
        };
    }

    @Override // tech.ula.library.model.daos.FilesystemDao
    public long insertFilesystem(final Filesystem filesystem) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            long jInsertAndReturnId = this.__insertionAdapterOfFilesystem.insertAndReturnId(filesystem);
            this.__db.setTransactionSuccessful();
            return jInsertAndReturnId;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // tech.ula.library.model.daos.FilesystemDao
    public void updateFilesystem(final Filesystem filesystem) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__updateAdapterOfFilesystem.handle(filesystem);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // tech.ula.library.model.daos.FilesystemDao
    public void deleteFilesystemById(final long id) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.__preparedStmtOfDeleteFilesystemById.acquire();
        supportSQLiteStatementAcquire.bindLong(1, id);
        this.__db.beginTransaction();
        try {
            supportSQLiteStatementAcquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfDeleteFilesystemById.release(supportSQLiteStatementAcquire);
        }
    }

    @Override // tech.ula.library.model.daos.FilesystemDao
    public LiveData<List<Filesystem>> getAllFilesystems() {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("select * from filesystem", 0);
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"filesystem"}, false, new Callable<List<Filesystem>>() { // from class: tech.ula.library.model.daos.FilesystemDao_Impl.4
            @Override // java.util.concurrent.Callable
            public List<Filesystem> call() throws Exception {
                Cursor cursorQuery = DBUtil.query(FilesystemDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "distributionType");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "archType");
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "flavor");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "defaultUsername");
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "defaultPassword");
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "defaultVncPassword");
                    int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isAppsFilesystem");
                    int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "versionCodeUsed");
                    int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isCreatedFromBackup");
                    int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isProtected");
                    int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isPaid");
                    int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "hasPaidUp");
                    try {
                        int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "executionType");
                        int i = columnIndexOrThrow14;
                        ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                        while (cursorQuery.moveToNext()) {
                            int i2 = columnIndexOrThrow15;
                            int i3 = columnIndexOrThrow;
                            try {
                                arrayList.add(new Filesystem(cursorQuery.getLong(columnIndexOrThrow), cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2), cursorQuery.isNull(columnIndexOrThrow3) ? null : cursorQuery.getString(columnIndexOrThrow3), cursorQuery.isNull(columnIndexOrThrow4) ? null : cursorQuery.getString(columnIndexOrThrow4), cursorQuery.isNull(columnIndexOrThrow5) ? null : cursorQuery.getString(columnIndexOrThrow5), cursorQuery.isNull(columnIndexOrThrow6) ? null : cursorQuery.getString(columnIndexOrThrow6), cursorQuery.isNull(columnIndexOrThrow7) ? null : cursorQuery.getString(columnIndexOrThrow7), cursorQuery.isNull(columnIndexOrThrow8) ? null : cursorQuery.getString(columnIndexOrThrow8), cursorQuery.getInt(columnIndexOrThrow9) != 0, cursorQuery.isNull(columnIndexOrThrow10) ? null : cursorQuery.getString(columnIndexOrThrow10), cursorQuery.getInt(columnIndexOrThrow11) != 0, cursorQuery.getInt(columnIndexOrThrow12) != 0, cursorQuery.getInt(columnIndexOrThrow13) != 0, cursorQuery.getInt(i) != 0, FilesystemDao_Impl.this.__executionTypeConverter.fromString(cursorQuery.isNull(i2) ? null : cursorQuery.getString(i2))));
                                columnIndexOrThrow = i3;
                                columnIndexOrThrow13 = columnIndexOrThrow13;
                                columnIndexOrThrow15 = i2;
                                i = i;
                            } catch (Throwable th) {
                                th = th;
                                cursorQuery.close();
                                throw th;
                            }
                        }
                        cursorQuery.close();
                        return arrayList;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }

            protected void finalize() {
                roomSQLiteQueryAcquire.release();
            }
        });
    }

    @Override // tech.ula.library.model.daos.FilesystemDao
    public Filesystem getFilesystemByName(final String name) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        Filesystem filesystem;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("select * from filesystem where name = ?", 1);
        if (name == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, name);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "distributionType");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "archType");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "flavor");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "defaultUsername");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "defaultPassword");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "defaultVncPassword");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isAppsFilesystem");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "versionCodeUsed");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isCreatedFromBackup");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isProtected");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isPaid");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "hasPaidUp");
                try {
                    int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "executionType");
                    if (cursorQuery.moveToFirst()) {
                        filesystem = new Filesystem(cursorQuery.getLong(columnIndexOrThrow), cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2), cursorQuery.isNull(columnIndexOrThrow3) ? null : cursorQuery.getString(columnIndexOrThrow3), cursorQuery.isNull(columnIndexOrThrow4) ? null : cursorQuery.getString(columnIndexOrThrow4), cursorQuery.isNull(columnIndexOrThrow5) ? null : cursorQuery.getString(columnIndexOrThrow5), cursorQuery.isNull(columnIndexOrThrow6) ? null : cursorQuery.getString(columnIndexOrThrow6), cursorQuery.isNull(columnIndexOrThrow7) ? null : cursorQuery.getString(columnIndexOrThrow7), cursorQuery.isNull(columnIndexOrThrow8) ? null : cursorQuery.getString(columnIndexOrThrow8), cursorQuery.getInt(columnIndexOrThrow9) != 0, cursorQuery.isNull(columnIndexOrThrow10) ? null : cursorQuery.getString(columnIndexOrThrow10), cursorQuery.getInt(columnIndexOrThrow11) != 0, cursorQuery.getInt(columnIndexOrThrow12) != 0, cursorQuery.getInt(columnIndexOrThrow13) != 0, cursorQuery.getInt(columnIndexOrThrow14) != 0, this.__executionTypeConverter.fromString(cursorQuery.isNull(columnIndexOrThrow15) ? null : cursorQuery.getString(columnIndexOrThrow15)));
                    } else {
                        filesystem = null;
                    }
                    cursorQuery.close();
                    roomSQLiteQuery.release();
                    return filesystem;
                } catch (Throwable th) {
                    th = th;
                    cursorQuery.close();
                    roomSQLiteQuery.release();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override // tech.ula.library.model.daos.FilesystemDao
    public Filesystem getFilesystemById(final long id) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        Filesystem filesystem;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("select * from filesystem where id = ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, id);
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "distributionType");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "archType");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "flavor");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "defaultUsername");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "defaultPassword");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "defaultVncPassword");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isAppsFilesystem");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "versionCodeUsed");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isCreatedFromBackup");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isProtected");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isPaid");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "hasPaidUp");
                try {
                    int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "executionType");
                    if (cursorQuery.moveToFirst()) {
                        filesystem = new Filesystem(cursorQuery.getLong(columnIndexOrThrow), cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2), cursorQuery.isNull(columnIndexOrThrow3) ? null : cursorQuery.getString(columnIndexOrThrow3), cursorQuery.isNull(columnIndexOrThrow4) ? null : cursorQuery.getString(columnIndexOrThrow4), cursorQuery.isNull(columnIndexOrThrow5) ? null : cursorQuery.getString(columnIndexOrThrow5), cursorQuery.isNull(columnIndexOrThrow6) ? null : cursorQuery.getString(columnIndexOrThrow6), cursorQuery.isNull(columnIndexOrThrow7) ? null : cursorQuery.getString(columnIndexOrThrow7), cursorQuery.isNull(columnIndexOrThrow8) ? null : cursorQuery.getString(columnIndexOrThrow8), cursorQuery.getInt(columnIndexOrThrow9) != 0, cursorQuery.isNull(columnIndexOrThrow10) ? null : cursorQuery.getString(columnIndexOrThrow10), cursorQuery.getInt(columnIndexOrThrow11) != 0, cursorQuery.getInt(columnIndexOrThrow12) != 0, cursorQuery.getInt(columnIndexOrThrow13) != 0, cursorQuery.getInt(columnIndexOrThrow14) != 0, this.__executionTypeConverter.fromString(cursorQuery.isNull(columnIndexOrThrow15) ? null : cursorQuery.getString(columnIndexOrThrow15)));
                    } else {
                        filesystem = null;
                    }
                    cursorQuery.close();
                    roomSQLiteQuery.release();
                    return filesystem;
                } catch (Throwable th) {
                    th = th;
                    cursorQuery.close();
                    roomSQLiteQuery.release();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override // tech.ula.library.model.daos.FilesystemDao
    public List<Filesystem> findAppsFilesystemByType(final String requiredFilesystemType) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("select * from filesystem where isAppsFilesystem = 1 and distributionType = ?", 1);
        if (requiredFilesystemType == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, requiredFilesystemType);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "distributionType");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "archType");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "flavor");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "defaultUsername");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "defaultPassword");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "defaultVncPassword");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isAppsFilesystem");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "versionCodeUsed");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isCreatedFromBackup");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isProtected");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isPaid");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "hasPaidUp");
                try {
                    int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "executionType");
                    int i = columnIndexOrThrow14;
                    ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        int i2 = columnIndexOrThrow15;
                        int i3 = columnIndexOrThrow;
                        try {
                            arrayList.add(new Filesystem(cursorQuery.getLong(columnIndexOrThrow), cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2), cursorQuery.isNull(columnIndexOrThrow3) ? null : cursorQuery.getString(columnIndexOrThrow3), cursorQuery.isNull(columnIndexOrThrow4) ? null : cursorQuery.getString(columnIndexOrThrow4), cursorQuery.isNull(columnIndexOrThrow5) ? null : cursorQuery.getString(columnIndexOrThrow5), cursorQuery.isNull(columnIndexOrThrow6) ? null : cursorQuery.getString(columnIndexOrThrow6), cursorQuery.isNull(columnIndexOrThrow7) ? null : cursorQuery.getString(columnIndexOrThrow7), cursorQuery.isNull(columnIndexOrThrow8) ? null : cursorQuery.getString(columnIndexOrThrow8), cursorQuery.getInt(columnIndexOrThrow9) != 0, cursorQuery.isNull(columnIndexOrThrow10) ? null : cursorQuery.getString(columnIndexOrThrow10), cursorQuery.getInt(columnIndexOrThrow11) != 0, cursorQuery.getInt(columnIndexOrThrow12) != 0, cursorQuery.getInt(columnIndexOrThrow13) != 0, cursorQuery.getInt(i) != 0, this.__executionTypeConverter.fromString(cursorQuery.isNull(i2) ? null : cursorQuery.getString(i2))));
                            columnIndexOrThrow = i3;
                            columnIndexOrThrow15 = i2;
                            columnIndexOrThrow11 = columnIndexOrThrow11;
                        } catch (Throwable th) {
                            th = th;
                            cursorQuery.close();
                            roomSQLiteQuery.release();
                            throw th;
                        }
                    }
                    cursorQuery.close();
                    roomSQLiteQuery.release();
                    return arrayList;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }
}
