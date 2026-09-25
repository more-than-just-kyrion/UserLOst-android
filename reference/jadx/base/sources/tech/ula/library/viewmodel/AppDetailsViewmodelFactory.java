package tech.ula.library.viewmodel;

import android.content.SharedPreferences;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import com.iiordanov.pubkeygenerator.PreferenceConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.model.daos.SessionDao;
import tech.ula.library.utils.AppDetails;

/* JADX INFO: compiled from: AppDetailsViewModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ%\u0010\u000b\u001a\u0002H\f\"\b\b\u0000\u0010\f*\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\f0\u000fH\u0016¢\u0006\u0002\u0010\u0010R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Ltech/ula/library/viewmodel/AppDetailsViewmodelFactory;", "Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;", "sessionDao", "Ltech/ula/library/model/daos/SessionDao;", "appDetails", "Ltech/ula/library/utils/AppDetails;", "buildVersion", "", PreferenceConstants.BACKUP_PREF_KEY, "Landroid/content/SharedPreferences;", "(Ltech/ula/library/model/daos/SessionDao;Ltech/ula/library/utils/AppDetails;ILandroid/content/SharedPreferences;)V", "create", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "modelClass", "Ljava/lang/Class;", "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AppDetailsViewmodelFactory extends ViewModelProvider.NewInstanceFactory {
    private final AppDetails appDetails;
    private final int buildVersion;
    private final SharedPreferences prefs;
    private final SessionDao sessionDao;

    public AppDetailsViewmodelFactory(SessionDao sessionDao, AppDetails appDetails, int i, SharedPreferences prefs) {
        Intrinsics.checkNotNullParameter(sessionDao, "sessionDao");
        Intrinsics.checkNotNullParameter(appDetails, "appDetails");
        Intrinsics.checkNotNullParameter(prefs, "prefs");
        this.sessionDao = sessionDao;
        this.appDetails = appDetails;
        this.buildVersion = i;
        this.prefs = prefs;
    }

    @Override // androidx.lifecycle.ViewModelProvider.NewInstanceFactory, androidx.lifecycle.ViewModelProvider.Factory
    public <T extends ViewModel> T create(Class<T> modelClass) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        return new AppDetailsViewModel(this.sessionDao, this.appDetails, this.buildVersion, this.prefs);
    }
}
