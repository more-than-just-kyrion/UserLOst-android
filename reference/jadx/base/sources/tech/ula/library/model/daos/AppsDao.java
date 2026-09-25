package tech.ula.library.model.daos;

import androidx.lifecycle.LiveData;
import java.util.List;
import kotlin.Metadata;
import tech.ula.library.model.entities.App;

/* JADX INFO: compiled from: AppsDao.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H'J\u0014\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005H'J\u0014\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005H'J\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH'J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0007H'¨\u0006\u000e"}, d2 = {"Ltech/ula/library/model/daos/AppsDao;", "", "deleteAllApps", "", "getActiveApps", "Landroidx/lifecycle/LiveData;", "", "Ltech/ula/library/model/entities/App;", "getAllApps", "getAppByName", "name", "", "insertApp", "application", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface AppsDao {
    void deleteAllApps();

    LiveData<List<App>> getActiveApps();

    LiveData<List<App>> getAllApps();

    App getAppByName(String name);

    void insertApp(App application);
}
