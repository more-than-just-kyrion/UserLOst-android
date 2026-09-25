package tech.ula.library.model.daos;

import androidx.lifecycle.LiveData;
import java.util.List;
import kotlin.Metadata;
import tech.ula.library.model.entities.Filesystem;

/* JADX INFO: compiled from: FilesystemDao.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\nH'J\u0014\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\fH'J\u0010\u0010\r\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0010\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\nH'J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\bH'J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\bH'¨\u0006\u0013"}, d2 = {"Ltech/ula/library/model/daos/FilesystemDao;", "", "deleteFilesystemById", "", "id", "", "findAppsFilesystemByType", "", "Ltech/ula/library/model/entities/Filesystem;", "requiredFilesystemType", "", "getAllFilesystems", "Landroidx/lifecycle/LiveData;", "getFilesystemById", "getFilesystemByName", "name", "insertFilesystem", "filesystem", "updateFilesystem", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface FilesystemDao {
    void deleteFilesystemById(long id);

    List<Filesystem> findAppsFilesystemByType(String requiredFilesystemType);

    LiveData<List<Filesystem>> getAllFilesystems();

    Filesystem getFilesystemById(long id);

    Filesystem getFilesystemByName(String name);

    long insertFilesystem(Filesystem filesystem);

    void updateFilesystem(Filesystem filesystem);
}
