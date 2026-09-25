package tech.ula.library.model.daos;

import androidx.lifecycle.LiveData;
import java.util.List;
import kotlin.Metadata;
import tech.ula.library.model.entities.Session;

/* JADX INFO: compiled from: SessionDao.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0014\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007H'J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u000b\u001a\u00020\fH'J\u0014\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007H'J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\bH'J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0010\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\fH'J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\tH'J\b\u0010\u0014\u001a\u00020\u0003H'J\b\u0010\u0015\u001a\u00020\u0003H'J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\tH'¨\u0006\u0017"}, d2 = {"Ltech/ula/library/model/daos/SessionDao;", "", "deleteSessionById", "", "id", "", "findActiveSessions", "Landroidx/lifecycle/LiveData;", "", "Ltech/ula/library/model/entities/Session;", "findAppsSession", "appName", "", "getAllSessions", "getAllSessionsOnce", "getSessionById", "getSessionByName", "name", "insertSession", "session", "resetSessionActivity", "updateFilesystemNamesForAllSessions", "updateSession", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface SessionDao {
    void deleteSessionById(long id);

    LiveData<List<Session>> findActiveSessions();

    List<Session> findAppsSession(String appName);

    LiveData<List<Session>> getAllSessions();

    List<Session> getAllSessionsOnce();

    Session getSessionById(long id);

    Session getSessionByName(String name);

    void insertSession(Session session);

    void resetSessionActivity();

    void updateFilesystemNamesForAllSessions();

    void updateSession(Session session);
}
