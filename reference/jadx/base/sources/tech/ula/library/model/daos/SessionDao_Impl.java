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
import com.iiordanov.bVNC.Constants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import tech.ula.library.model.entities.ExecutionType;
import tech.ula.library.model.entities.ExecutionTypeConverter;
import tech.ula.library.model.entities.ServiceType;
import tech.ula.library.model.entities.ServiceTypeConverter;
import tech.ula.library.model.entities.Session;

/* JADX INFO: loaded from: classes3.dex */
public final class SessionDao_Impl implements SessionDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<Session> __insertionAdapterOfSession;
    private final SharedSQLiteStatement __preparedStmtOfDeleteSessionById;
    private final SharedSQLiteStatement __preparedStmtOfResetSessionActivity;
    private final SharedSQLiteStatement __preparedStmtOfUpdateFilesystemNamesForAllSessions;
    private final EntityDeletionOrUpdateAdapter<Session> __updateAdapterOfSession;
    private final ServiceTypeConverter __serviceTypeConverter = new ServiceTypeConverter();
    private final ExecutionTypeConverter __executionTypeConverter = new ExecutionTypeConverter();

    public SessionDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfSession = new EntityInsertionAdapter<Session>(__db) { // from class: tech.ula.library.model.daos.SessionDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR ABORT INTO `session` (`id`,`name`,`filesystemId`,`filesystemName`,`active`,`username`,`password`,`vncPassword`,`serviceType`,`port`,`pid`,`geometry`,`isAppsSession`,`isProtected`,`displayOrientation`,`displayLocked`,`displayScaling`,`displayRemember`,`soundSupport`,`micSupport`,`serviceTypeRemember`,`executionType`,`shareStorage`,`memoryMb`,`cpuAllCores`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement supportSQLiteStatement, Session session) {
                supportSQLiteStatement.bindLong(1, session.getId());
                if (session.getName() == null) {
                    supportSQLiteStatement.bindNull(2);
                } else {
                    supportSQLiteStatement.bindString(2, session.getName());
                }
                supportSQLiteStatement.bindLong(3, session.getFilesystemId());
                if (session.getFilesystemName() == null) {
                    supportSQLiteStatement.bindNull(4);
                } else {
                    supportSQLiteStatement.bindString(4, session.getFilesystemName());
                }
                supportSQLiteStatement.bindLong(5, session.getActive() ? 1L : 0L);
                if (session.getUsername() == null) {
                    supportSQLiteStatement.bindNull(6);
                } else {
                    supportSQLiteStatement.bindString(6, session.getUsername());
                }
                if (session.getPassword() == null) {
                    supportSQLiteStatement.bindNull(7);
                } else {
                    supportSQLiteStatement.bindString(7, session.getPassword());
                }
                if (session.getVncPassword() == null) {
                    supportSQLiteStatement.bindNull(8);
                } else {
                    supportSQLiteStatement.bindString(8, session.getVncPassword());
                }
                String strFromServiceType = SessionDao_Impl.this.__serviceTypeConverter.fromServiceType(session.getServiceType());
                if (strFromServiceType == null) {
                    supportSQLiteStatement.bindNull(9);
                } else {
                    supportSQLiteStatement.bindString(9, strFromServiceType);
                }
                supportSQLiteStatement.bindLong(10, session.getPort());
                supportSQLiteStatement.bindLong(11, session.getPid());
                if (session.getGeometry() == null) {
                    supportSQLiteStatement.bindNull(12);
                } else {
                    supportSQLiteStatement.bindString(12, session.getGeometry());
                }
                supportSQLiteStatement.bindLong(13, session.isAppsSession() ? 1L : 0L);
                supportSQLiteStatement.bindLong(14, session.isProtected() ? 1L : 0L);
                supportSQLiteStatement.bindLong(15, session.getDisplayOrientation());
                supportSQLiteStatement.bindLong(16, session.getDisplayLocked() ? 1L : 0L);
                supportSQLiteStatement.bindDouble(17, session.getDisplayScaling());
                supportSQLiteStatement.bindLong(18, session.getDisplayRemember() ? 1L : 0L);
                supportSQLiteStatement.bindLong(19, session.getSoundSupport() ? 1L : 0L);
                supportSQLiteStatement.bindLong(20, session.getMicSupport() ? 1L : 0L);
                supportSQLiteStatement.bindLong(21, session.getServiceTypeRemember() ? 1L : 0L);
                String strFromExecutionType = SessionDao_Impl.this.__executionTypeConverter.fromExecutionType(session.getExecutionType());
                if (strFromExecutionType == null) {
                    supportSQLiteStatement.bindNull(22);
                } else {
                    supportSQLiteStatement.bindString(22, strFromExecutionType);
                }
                supportSQLiteStatement.bindLong(23, session.getShareStorage() ? 1L : 0L);
                supportSQLiteStatement.bindLong(24, session.getMemoryMb());
                supportSQLiteStatement.bindLong(25, session.getCpuAllCores() ? 1L : 0L);
            }
        };
        this.__updateAdapterOfSession = new EntityDeletionOrUpdateAdapter<Session>(__db) { // from class: tech.ula.library.model.daos.SessionDao_Impl.2
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR REPLACE `session` SET `id` = ?,`name` = ?,`filesystemId` = ?,`filesystemName` = ?,`active` = ?,`username` = ?,`password` = ?,`vncPassword` = ?,`serviceType` = ?,`port` = ?,`pid` = ?,`geometry` = ?,`isAppsSession` = ?,`isProtected` = ?,`displayOrientation` = ?,`displayLocked` = ?,`displayScaling` = ?,`displayRemember` = ?,`soundSupport` = ?,`micSupport` = ?,`serviceTypeRemember` = ?,`executionType` = ?,`shareStorage` = ?,`memoryMb` = ?,`cpuAllCores` = ? WHERE `id` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement supportSQLiteStatement, Session session) {
                supportSQLiteStatement.bindLong(1, session.getId());
                if (session.getName() == null) {
                    supportSQLiteStatement.bindNull(2);
                } else {
                    supportSQLiteStatement.bindString(2, session.getName());
                }
                supportSQLiteStatement.bindLong(3, session.getFilesystemId());
                if (session.getFilesystemName() == null) {
                    supportSQLiteStatement.bindNull(4);
                } else {
                    supportSQLiteStatement.bindString(4, session.getFilesystemName());
                }
                supportSQLiteStatement.bindLong(5, session.getActive() ? 1L : 0L);
                if (session.getUsername() == null) {
                    supportSQLiteStatement.bindNull(6);
                } else {
                    supportSQLiteStatement.bindString(6, session.getUsername());
                }
                if (session.getPassword() == null) {
                    supportSQLiteStatement.bindNull(7);
                } else {
                    supportSQLiteStatement.bindString(7, session.getPassword());
                }
                if (session.getVncPassword() == null) {
                    supportSQLiteStatement.bindNull(8);
                } else {
                    supportSQLiteStatement.bindString(8, session.getVncPassword());
                }
                String strFromServiceType = SessionDao_Impl.this.__serviceTypeConverter.fromServiceType(session.getServiceType());
                if (strFromServiceType == null) {
                    supportSQLiteStatement.bindNull(9);
                } else {
                    supportSQLiteStatement.bindString(9, strFromServiceType);
                }
                supportSQLiteStatement.bindLong(10, session.getPort());
                supportSQLiteStatement.bindLong(11, session.getPid());
                if (session.getGeometry() == null) {
                    supportSQLiteStatement.bindNull(12);
                } else {
                    supportSQLiteStatement.bindString(12, session.getGeometry());
                }
                supportSQLiteStatement.bindLong(13, session.isAppsSession() ? 1L : 0L);
                supportSQLiteStatement.bindLong(14, session.isProtected() ? 1L : 0L);
                supportSQLiteStatement.bindLong(15, session.getDisplayOrientation());
                supportSQLiteStatement.bindLong(16, session.getDisplayLocked() ? 1L : 0L);
                supportSQLiteStatement.bindDouble(17, session.getDisplayScaling());
                supportSQLiteStatement.bindLong(18, session.getDisplayRemember() ? 1L : 0L);
                supportSQLiteStatement.bindLong(19, session.getSoundSupport() ? 1L : 0L);
                supportSQLiteStatement.bindLong(20, session.getMicSupport() ? 1L : 0L);
                supportSQLiteStatement.bindLong(21, session.getServiceTypeRemember() ? 1L : 0L);
                String strFromExecutionType = SessionDao_Impl.this.__executionTypeConverter.fromExecutionType(session.getExecutionType());
                if (strFromExecutionType == null) {
                    supportSQLiteStatement.bindNull(22);
                } else {
                    supportSQLiteStatement.bindString(22, strFromExecutionType);
                }
                supportSQLiteStatement.bindLong(23, session.getShareStorage() ? 1L : 0L);
                supportSQLiteStatement.bindLong(24, session.getMemoryMb());
                supportSQLiteStatement.bindLong(25, session.getCpuAllCores() ? 1L : 0L);
                supportSQLiteStatement.bindLong(26, session.getId());
            }
        };
        this.__preparedStmtOfResetSessionActivity = new SharedSQLiteStatement(__db) { // from class: tech.ula.library.model.daos.SessionDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "update session set active = 0";
            }
        };
        this.__preparedStmtOfDeleteSessionById = new SharedSQLiteStatement(__db) { // from class: tech.ula.library.model.daos.SessionDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "delete from session where id = ?";
            }
        };
        this.__preparedStmtOfUpdateFilesystemNamesForAllSessions = new SharedSQLiteStatement(__db) { // from class: tech.ula.library.model.daos.SessionDao_Impl.5
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "update session set filesystemName = (select filesystem.name from filesystem where filesystem.id = session.filesystemId)";
            }
        };
    }

    @Override // tech.ula.library.model.daos.SessionDao
    public void insertSession(final Session session) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfSession.insert(session);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // tech.ula.library.model.daos.SessionDao
    public void updateSession(final Session session) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__updateAdapterOfSession.handle(session);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // tech.ula.library.model.daos.SessionDao
    public void resetSessionActivity() {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.__preparedStmtOfResetSessionActivity.acquire();
        this.__db.beginTransaction();
        try {
            supportSQLiteStatementAcquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfResetSessionActivity.release(supportSQLiteStatementAcquire);
        }
    }

    @Override // tech.ula.library.model.daos.SessionDao
    public void deleteSessionById(final long id) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.__preparedStmtOfDeleteSessionById.acquire();
        supportSQLiteStatementAcquire.bindLong(1, id);
        this.__db.beginTransaction();
        try {
            supportSQLiteStatementAcquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfDeleteSessionById.release(supportSQLiteStatementAcquire);
        }
    }

    @Override // tech.ula.library.model.daos.SessionDao
    public void updateFilesystemNamesForAllSessions() {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.__preparedStmtOfUpdateFilesystemNamesForAllSessions.acquire();
        this.__db.beginTransaction();
        try {
            supportSQLiteStatementAcquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfUpdateFilesystemNamesForAllSessions.release(supportSQLiteStatementAcquire);
        }
    }

    @Override // tech.ula.library.model.daos.SessionDao
    public LiveData<List<Session>> getAllSessions() {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("select * from Session", 0);
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"Session"}, false, new Callable<List<Session>>() { // from class: tech.ula.library.model.daos.SessionDao_Impl.6
            @Override // java.util.concurrent.Callable
            public List<Session> call() throws Exception {
                Cursor cursorQuery = DBUtil.query(SessionDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "filesystemId");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "filesystemName");
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "active");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "username");
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, Constants.testpassword);
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "vncPassword");
                    int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serviceType");
                    int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "port");
                    int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "pid");
                    int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "geometry");
                    int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isAppsSession");
                    int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isProtected");
                    int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayOrientation");
                    int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayLocked");
                    int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayScaling");
                    int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayRemember");
                    int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "soundSupport");
                    int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "micSupport");
                    int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serviceTypeRemember");
                    int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "executionType");
                    int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "shareStorage");
                    int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "memoryMb");
                    int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cpuAllCores");
                    int i = columnIndexOrThrow13;
                    ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        long j = cursorQuery.getLong(columnIndexOrThrow);
                        String string = cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2);
                        long j2 = cursorQuery.getLong(columnIndexOrThrow3);
                        String string2 = cursorQuery.isNull(columnIndexOrThrow4) ? null : cursorQuery.getString(columnIndexOrThrow4);
                        boolean z = cursorQuery.getInt(columnIndexOrThrow5) != 0;
                        String string3 = cursorQuery.isNull(columnIndexOrThrow6) ? null : cursorQuery.getString(columnIndexOrThrow6);
                        String string4 = cursorQuery.isNull(columnIndexOrThrow7) ? null : cursorQuery.getString(columnIndexOrThrow7);
                        String string5 = cursorQuery.isNull(columnIndexOrThrow8) ? null : cursorQuery.getString(columnIndexOrThrow8);
                        ServiceType serviceTypeFromString = SessionDao_Impl.this.__serviceTypeConverter.fromString(cursorQuery.isNull(columnIndexOrThrow9) ? null : cursorQuery.getString(columnIndexOrThrow9));
                        long j3 = cursorQuery.getLong(columnIndexOrThrow10);
                        long j4 = cursorQuery.getLong(columnIndexOrThrow11);
                        String string6 = cursorQuery.isNull(columnIndexOrThrow12) ? null : cursorQuery.getString(columnIndexOrThrow12);
                        boolean z2 = cursorQuery.getInt(i) != 0;
                        i = i;
                        int i2 = columnIndexOrThrow15;
                        boolean z3 = cursorQuery.getInt(columnIndexOrThrow14) != 0;
                        int i3 = cursorQuery.getInt(i2);
                        columnIndexOrThrow15 = i2;
                        int i4 = columnIndexOrThrow16;
                        int i5 = cursorQuery.getInt(i4);
                        columnIndexOrThrow16 = i4;
                        int i6 = columnIndexOrThrow17;
                        boolean z4 = i5 != 0;
                        float f = cursorQuery.getFloat(i6);
                        columnIndexOrThrow17 = i6;
                        int i7 = columnIndexOrThrow18;
                        int i8 = cursorQuery.getInt(i7);
                        columnIndexOrThrow18 = i7;
                        int i9 = columnIndexOrThrow19;
                        boolean z5 = i8 != 0;
                        int i10 = cursorQuery.getInt(i9);
                        columnIndexOrThrow19 = i9;
                        int i11 = columnIndexOrThrow20;
                        boolean z6 = i10 != 0;
                        int i12 = cursorQuery.getInt(i11);
                        columnIndexOrThrow20 = i11;
                        int i13 = columnIndexOrThrow21;
                        boolean z7 = i12 != 0;
                        int i14 = cursorQuery.getInt(i13);
                        columnIndexOrThrow21 = i13;
                        columnIndexOrThrow22 = columnIndexOrThrow22;
                        boolean z8 = i14 != 0;
                        ExecutionType executionTypeFromString = SessionDao_Impl.this.__executionTypeConverter.fromString(cursorQuery.isNull(columnIndexOrThrow22) ? null : cursorQuery.getString(columnIndexOrThrow22));
                        int i15 = columnIndexOrThrow23;
                        boolean z9 = cursorQuery.getInt(i15) != 0;
                        columnIndexOrThrow23 = i15;
                        int i16 = columnIndexOrThrow25;
                        columnIndexOrThrow25 = i16;
                        arrayList.add(new Session(j, string, j2, string2, z, string3, string4, string5, serviceTypeFromString, j3, j4, string6, z2, z3, i3, z4, f, z5, z6, z7, z8, executionTypeFromString, z9, cursorQuery.getLong(columnIndexOrThrow24), cursorQuery.getInt(i16) != 0));
                        columnIndexOrThrow24 = columnIndexOrThrow24;
                        columnIndexOrThrow = columnIndexOrThrow;
                    }
                    return arrayList;
                } finally {
                    cursorQuery.close();
                }
            }

            protected void finalize() {
                roomSQLiteQueryAcquire.release();
            }
        });
    }

    @Override // tech.ula.library.model.daos.SessionDao
    public List<Session> getAllSessionsOnce() throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("select * from Session", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "filesystemId");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "filesystemName");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "active");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "username");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, Constants.testpassword);
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "vncPassword");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serviceType");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "port");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "pid");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "geometry");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isAppsSession");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isProtected");
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayOrientation");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayLocked");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayScaling");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayRemember");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "soundSupport");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "micSupport");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serviceTypeRemember");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "executionType");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "shareStorage");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "memoryMb");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cpuAllCores");
                int i = columnIndexOrThrow13;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    long j = cursorQuery.getLong(columnIndexOrThrow);
                    String string = cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2);
                    long j2 = cursorQuery.getLong(columnIndexOrThrow3);
                    String string2 = cursorQuery.isNull(columnIndexOrThrow4) ? null : cursorQuery.getString(columnIndexOrThrow4);
                    boolean z = cursorQuery.getInt(columnIndexOrThrow5) != 0;
                    String string3 = cursorQuery.isNull(columnIndexOrThrow6) ? null : cursorQuery.getString(columnIndexOrThrow6);
                    String string4 = cursorQuery.isNull(columnIndexOrThrow7) ? null : cursorQuery.getString(columnIndexOrThrow7);
                    String string5 = cursorQuery.isNull(columnIndexOrThrow8) ? null : cursorQuery.getString(columnIndexOrThrow8);
                    ServiceType serviceTypeFromString = this.__serviceTypeConverter.fromString(cursorQuery.isNull(columnIndexOrThrow9) ? null : cursorQuery.getString(columnIndexOrThrow9));
                    long j3 = cursorQuery.getLong(columnIndexOrThrow10);
                    long j4 = cursorQuery.getLong(columnIndexOrThrow11);
                    String string6 = cursorQuery.isNull(columnIndexOrThrow12) ? null : cursorQuery.getString(columnIndexOrThrow12);
                    boolean z2 = cursorQuery.getInt(i) != 0;
                    i = i;
                    int i2 = columnIndexOrThrow15;
                    boolean z3 = cursorQuery.getInt(columnIndexOrThrow14) != 0;
                    int i3 = cursorQuery.getInt(i2);
                    columnIndexOrThrow15 = i2;
                    int i4 = columnIndexOrThrow16;
                    int i5 = cursorQuery.getInt(i4);
                    columnIndexOrThrow16 = i4;
                    int i6 = columnIndexOrThrow17;
                    boolean z4 = i5 != 0;
                    float f = cursorQuery.getFloat(i6);
                    columnIndexOrThrow17 = i6;
                    int i7 = columnIndexOrThrow18;
                    int i8 = cursorQuery.getInt(i7);
                    columnIndexOrThrow18 = i7;
                    int i9 = columnIndexOrThrow19;
                    boolean z5 = i8 != 0;
                    int i10 = cursorQuery.getInt(i9);
                    columnIndexOrThrow19 = i9;
                    int i11 = columnIndexOrThrow20;
                    boolean z6 = i10 != 0;
                    int i12 = cursorQuery.getInt(i11);
                    columnIndexOrThrow20 = i11;
                    int i13 = columnIndexOrThrow21;
                    boolean z7 = i12 != 0;
                    int i14 = cursorQuery.getInt(i13);
                    columnIndexOrThrow21 = i13;
                    columnIndexOrThrow22 = columnIndexOrThrow22;
                    boolean z8 = i14 != 0;
                    ExecutionType executionTypeFromString = this.__executionTypeConverter.fromString(cursorQuery.isNull(columnIndexOrThrow22) ? null : cursorQuery.getString(columnIndexOrThrow22));
                    int i15 = columnIndexOrThrow23;
                    boolean z9 = cursorQuery.getInt(i15) != 0;
                    columnIndexOrThrow23 = i15;
                    int i16 = columnIndexOrThrow25;
                    columnIndexOrThrow25 = i16;
                    arrayList.add(new Session(j, string, j2, string2, z, string3, string4, string5, serviceTypeFromString, j3, j4, string6, z2, z3, i3, z4, f, z5, z6, z7, z8, executionTypeFromString, z9, cursorQuery.getLong(columnIndexOrThrow24), cursorQuery.getInt(i16) != 0));
                    columnIndexOrThrow24 = columnIndexOrThrow24;
                    columnIndexOrThrow12 = columnIndexOrThrow12;
                    columnIndexOrThrow = columnIndexOrThrow;
                    columnIndexOrThrow14 = columnIndexOrThrow14;
                }
                cursorQuery.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override // tech.ula.library.model.daos.SessionDao
    public Session getSessionByName(final String name) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        Session session;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("select * from session where name = ?", 1);
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
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "filesystemId");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "filesystemName");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "active");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "username");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, Constants.testpassword);
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "vncPassword");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serviceType");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "port");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "pid");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "geometry");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isAppsSession");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isProtected");
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayOrientation");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayLocked");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayScaling");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayRemember");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "soundSupport");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "micSupport");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serviceTypeRemember");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "executionType");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "shareStorage");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "memoryMb");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cpuAllCores");
                if (cursorQuery.moveToFirst()) {
                    session = new Session(cursorQuery.getLong(columnIndexOrThrow), cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2), cursorQuery.getLong(columnIndexOrThrow3), cursorQuery.isNull(columnIndexOrThrow4) ? null : cursorQuery.getString(columnIndexOrThrow4), cursorQuery.getInt(columnIndexOrThrow5) != 0, cursorQuery.isNull(columnIndexOrThrow6) ? null : cursorQuery.getString(columnIndexOrThrow6), cursorQuery.isNull(columnIndexOrThrow7) ? null : cursorQuery.getString(columnIndexOrThrow7), cursorQuery.isNull(columnIndexOrThrow8) ? null : cursorQuery.getString(columnIndexOrThrow8), this.__serviceTypeConverter.fromString(cursorQuery.isNull(columnIndexOrThrow9) ? null : cursorQuery.getString(columnIndexOrThrow9)), cursorQuery.getLong(columnIndexOrThrow10), cursorQuery.getLong(columnIndexOrThrow11), cursorQuery.isNull(columnIndexOrThrow12) ? null : cursorQuery.getString(columnIndexOrThrow12), cursorQuery.getInt(columnIndexOrThrow13) != 0, cursorQuery.getInt(columnIndexOrThrow14) != 0, cursorQuery.getInt(columnIndexOrThrow15), cursorQuery.getInt(columnIndexOrThrow16) != 0, cursorQuery.getFloat(columnIndexOrThrow17), cursorQuery.getInt(columnIndexOrThrow18) != 0, cursorQuery.getInt(columnIndexOrThrow19) != 0, cursorQuery.getInt(columnIndexOrThrow20) != 0, cursorQuery.getInt(columnIndexOrThrow21) != 0, this.__executionTypeConverter.fromString(cursorQuery.isNull(r25) ? null : cursorQuery.getString(columnIndexOrThrow22)), cursorQuery.getInt(columnIndexOrThrow23) != 0, cursorQuery.getLong(columnIndexOrThrow24), cursorQuery.getInt(columnIndexOrThrow25) != 0);
                } else {
                    session = null;
                }
                cursorQuery.close();
                roomSQLiteQuery.release();
                return session;
            } catch (Throwable th) {
                th = th;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override // tech.ula.library.model.daos.SessionDao
    public Session getSessionById(final long id) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        Session session;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("select * from session where id = ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, id);
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "filesystemId");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "filesystemName");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "active");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "username");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, Constants.testpassword);
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "vncPassword");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serviceType");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "port");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "pid");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "geometry");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isAppsSession");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isProtected");
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayOrientation");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayLocked");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayScaling");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayRemember");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "soundSupport");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "micSupport");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serviceTypeRemember");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "executionType");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "shareStorage");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "memoryMb");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cpuAllCores");
                if (cursorQuery.moveToFirst()) {
                    session = new Session(cursorQuery.getLong(columnIndexOrThrow), cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2), cursorQuery.getLong(columnIndexOrThrow3), cursorQuery.isNull(columnIndexOrThrow4) ? null : cursorQuery.getString(columnIndexOrThrow4), cursorQuery.getInt(columnIndexOrThrow5) != 0, cursorQuery.isNull(columnIndexOrThrow6) ? null : cursorQuery.getString(columnIndexOrThrow6), cursorQuery.isNull(columnIndexOrThrow7) ? null : cursorQuery.getString(columnIndexOrThrow7), cursorQuery.isNull(columnIndexOrThrow8) ? null : cursorQuery.getString(columnIndexOrThrow8), this.__serviceTypeConverter.fromString(cursorQuery.isNull(columnIndexOrThrow9) ? null : cursorQuery.getString(columnIndexOrThrow9)), cursorQuery.getLong(columnIndexOrThrow10), cursorQuery.getLong(columnIndexOrThrow11), cursorQuery.isNull(columnIndexOrThrow12) ? null : cursorQuery.getString(columnIndexOrThrow12), cursorQuery.getInt(columnIndexOrThrow13) != 0, cursorQuery.getInt(columnIndexOrThrow14) != 0, cursorQuery.getInt(columnIndexOrThrow15), cursorQuery.getInt(columnIndexOrThrow16) != 0, cursorQuery.getFloat(columnIndexOrThrow17), cursorQuery.getInt(columnIndexOrThrow18) != 0, cursorQuery.getInt(columnIndexOrThrow19) != 0, cursorQuery.getInt(columnIndexOrThrow20) != 0, cursorQuery.getInt(columnIndexOrThrow21) != 0, this.__executionTypeConverter.fromString(cursorQuery.isNull(r25) ? null : cursorQuery.getString(columnIndexOrThrow22)), cursorQuery.getInt(columnIndexOrThrow23) != 0, cursorQuery.getLong(columnIndexOrThrow24), cursorQuery.getInt(columnIndexOrThrow25) != 0);
                } else {
                    session = null;
                }
                cursorQuery.close();
                roomSQLiteQuery.release();
                return session;
            } catch (Throwable th) {
                th = th;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override // tech.ula.library.model.daos.SessionDao
    public List<Session> findAppsSession(final String appName) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("select * from session where name = ? and isAppsSession = 1", 1);
        if (appName == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, appName);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "filesystemId");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "filesystemName");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "active");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "username");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, Constants.testpassword);
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "vncPassword");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serviceType");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "port");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "pid");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "geometry");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isAppsSession");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isProtected");
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayOrientation");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayLocked");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayScaling");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayRemember");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "soundSupport");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "micSupport");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serviceTypeRemember");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "executionType");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "shareStorage");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "memoryMb");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cpuAllCores");
                int i = columnIndexOrThrow13;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    long j = cursorQuery.getLong(columnIndexOrThrow);
                    String string = cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2);
                    long j2 = cursorQuery.getLong(columnIndexOrThrow3);
                    String string2 = cursorQuery.isNull(columnIndexOrThrow4) ? null : cursorQuery.getString(columnIndexOrThrow4);
                    boolean z = cursorQuery.getInt(columnIndexOrThrow5) != 0;
                    String string3 = cursorQuery.isNull(columnIndexOrThrow6) ? null : cursorQuery.getString(columnIndexOrThrow6);
                    String string4 = cursorQuery.isNull(columnIndexOrThrow7) ? null : cursorQuery.getString(columnIndexOrThrow7);
                    String string5 = cursorQuery.isNull(columnIndexOrThrow8) ? null : cursorQuery.getString(columnIndexOrThrow8);
                    ServiceType serviceTypeFromString = this.__serviceTypeConverter.fromString(cursorQuery.isNull(columnIndexOrThrow9) ? null : cursorQuery.getString(columnIndexOrThrow9));
                    long j3 = cursorQuery.getLong(columnIndexOrThrow10);
                    long j4 = cursorQuery.getLong(columnIndexOrThrow11);
                    String string6 = cursorQuery.isNull(columnIndexOrThrow12) ? null : cursorQuery.getString(columnIndexOrThrow12);
                    boolean z2 = cursorQuery.getInt(i) != 0;
                    i = i;
                    int i2 = columnIndexOrThrow15;
                    boolean z3 = cursorQuery.getInt(columnIndexOrThrow14) != 0;
                    int i3 = cursorQuery.getInt(i2);
                    columnIndexOrThrow15 = i2;
                    int i4 = columnIndexOrThrow16;
                    int i5 = cursorQuery.getInt(i4);
                    columnIndexOrThrow16 = i4;
                    int i6 = columnIndexOrThrow17;
                    boolean z4 = i5 != 0;
                    float f = cursorQuery.getFloat(i6);
                    columnIndexOrThrow17 = i6;
                    int i7 = columnIndexOrThrow18;
                    int i8 = cursorQuery.getInt(i7);
                    columnIndexOrThrow18 = i7;
                    int i9 = columnIndexOrThrow19;
                    boolean z5 = i8 != 0;
                    int i10 = cursorQuery.getInt(i9);
                    columnIndexOrThrow19 = i9;
                    int i11 = columnIndexOrThrow20;
                    boolean z6 = i10 != 0;
                    int i12 = cursorQuery.getInt(i11);
                    columnIndexOrThrow20 = i11;
                    int i13 = columnIndexOrThrow21;
                    boolean z7 = i12 != 0;
                    int i14 = cursorQuery.getInt(i13);
                    columnIndexOrThrow21 = i13;
                    columnIndexOrThrow22 = columnIndexOrThrow22;
                    boolean z8 = i14 != 0;
                    ExecutionType executionTypeFromString = this.__executionTypeConverter.fromString(cursorQuery.isNull(columnIndexOrThrow22) ? null : cursorQuery.getString(columnIndexOrThrow22));
                    int i15 = columnIndexOrThrow23;
                    boolean z9 = cursorQuery.getInt(i15) != 0;
                    columnIndexOrThrow23 = i15;
                    int i16 = columnIndexOrThrow25;
                    columnIndexOrThrow25 = i16;
                    arrayList.add(new Session(j, string, j2, string2, z, string3, string4, string5, serviceTypeFromString, j3, j4, string6, z2, z3, i3, z4, f, z5, z6, z7, z8, executionTypeFromString, z9, cursorQuery.getLong(columnIndexOrThrow24), cursorQuery.getInt(i16) != 0));
                    columnIndexOrThrow24 = columnIndexOrThrow24;
                    columnIndexOrThrow11 = columnIndexOrThrow11;
                    columnIndexOrThrow = columnIndexOrThrow;
                    columnIndexOrThrow14 = columnIndexOrThrow14;
                }
                cursorQuery.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override // tech.ula.library.model.daos.SessionDao
    public LiveData<List<Session>> findActiveSessions() {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("select * from session where active = 1", 0);
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"session"}, false, new Callable<List<Session>>() { // from class: tech.ula.library.model.daos.SessionDao_Impl.7
            @Override // java.util.concurrent.Callable
            public List<Session> call() throws Exception {
                Cursor cursorQuery = DBUtil.query(SessionDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "filesystemId");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "filesystemName");
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "active");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "username");
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, Constants.testpassword);
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "vncPassword");
                    int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serviceType");
                    int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "port");
                    int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "pid");
                    int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "geometry");
                    int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isAppsSession");
                    int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isProtected");
                    int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayOrientation");
                    int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayLocked");
                    int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayScaling");
                    int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayRemember");
                    int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "soundSupport");
                    int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "micSupport");
                    int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serviceTypeRemember");
                    int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "executionType");
                    int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "shareStorage");
                    int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "memoryMb");
                    int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cpuAllCores");
                    int i = columnIndexOrThrow13;
                    ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        long j = cursorQuery.getLong(columnIndexOrThrow);
                        String string = cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2);
                        long j2 = cursorQuery.getLong(columnIndexOrThrow3);
                        String string2 = cursorQuery.isNull(columnIndexOrThrow4) ? null : cursorQuery.getString(columnIndexOrThrow4);
                        boolean z = cursorQuery.getInt(columnIndexOrThrow5) != 0;
                        String string3 = cursorQuery.isNull(columnIndexOrThrow6) ? null : cursorQuery.getString(columnIndexOrThrow6);
                        String string4 = cursorQuery.isNull(columnIndexOrThrow7) ? null : cursorQuery.getString(columnIndexOrThrow7);
                        String string5 = cursorQuery.isNull(columnIndexOrThrow8) ? null : cursorQuery.getString(columnIndexOrThrow8);
                        ServiceType serviceTypeFromString = SessionDao_Impl.this.__serviceTypeConverter.fromString(cursorQuery.isNull(columnIndexOrThrow9) ? null : cursorQuery.getString(columnIndexOrThrow9));
                        long j3 = cursorQuery.getLong(columnIndexOrThrow10);
                        long j4 = cursorQuery.getLong(columnIndexOrThrow11);
                        String string6 = cursorQuery.isNull(columnIndexOrThrow12) ? null : cursorQuery.getString(columnIndexOrThrow12);
                        boolean z2 = cursorQuery.getInt(i) != 0;
                        i = i;
                        int i2 = columnIndexOrThrow15;
                        boolean z3 = cursorQuery.getInt(columnIndexOrThrow14) != 0;
                        int i3 = cursorQuery.getInt(i2);
                        columnIndexOrThrow15 = i2;
                        int i4 = columnIndexOrThrow16;
                        int i5 = cursorQuery.getInt(i4);
                        columnIndexOrThrow16 = i4;
                        int i6 = columnIndexOrThrow17;
                        boolean z4 = i5 != 0;
                        float f = cursorQuery.getFloat(i6);
                        columnIndexOrThrow17 = i6;
                        int i7 = columnIndexOrThrow18;
                        int i8 = cursorQuery.getInt(i7);
                        columnIndexOrThrow18 = i7;
                        int i9 = columnIndexOrThrow19;
                        boolean z5 = i8 != 0;
                        int i10 = cursorQuery.getInt(i9);
                        columnIndexOrThrow19 = i9;
                        int i11 = columnIndexOrThrow20;
                        boolean z6 = i10 != 0;
                        int i12 = cursorQuery.getInt(i11);
                        columnIndexOrThrow20 = i11;
                        int i13 = columnIndexOrThrow21;
                        boolean z7 = i12 != 0;
                        int i14 = cursorQuery.getInt(i13);
                        columnIndexOrThrow21 = i13;
                        columnIndexOrThrow22 = columnIndexOrThrow22;
                        boolean z8 = i14 != 0;
                        ExecutionType executionTypeFromString = SessionDao_Impl.this.__executionTypeConverter.fromString(cursorQuery.isNull(columnIndexOrThrow22) ? null : cursorQuery.getString(columnIndexOrThrow22));
                        int i15 = columnIndexOrThrow23;
                        boolean z9 = cursorQuery.getInt(i15) != 0;
                        columnIndexOrThrow23 = i15;
                        int i16 = columnIndexOrThrow25;
                        columnIndexOrThrow25 = i16;
                        arrayList.add(new Session(j, string, j2, string2, z, string3, string4, string5, serviceTypeFromString, j3, j4, string6, z2, z3, i3, z4, f, z5, z6, z7, z8, executionTypeFromString, z9, cursorQuery.getLong(columnIndexOrThrow24), cursorQuery.getInt(i16) != 0));
                        columnIndexOrThrow24 = columnIndexOrThrow24;
                        columnIndexOrThrow = columnIndexOrThrow;
                    }
                    return arrayList;
                } finally {
                    cursorQuery.close();
                }
            }

            protected void finalize() {
                roomSQLiteQueryAcquire.release();
            }
        });
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }
}
