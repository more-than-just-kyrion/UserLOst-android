package tech.ula.library.viewmodel;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.model.state.AppsStartupFsm;
import tech.ula.library.model.state.SessionStartupFsm;

/* JADX INFO: compiled from: MainActivityViewModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J%\u0010\u0007\u001a\u0002H\b\"\b\b\u0000\u0010\b*\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\b0\u000bH\u0016¢\u0006\u0002\u0010\fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Ltech/ula/library/viewmodel/MainActivityViewModelFactory;", "Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;", "appsStartupFsm", "Ltech/ula/library/model/state/AppsStartupFsm;", "sessionStartupFsm", "Ltech/ula/library/model/state/SessionStartupFsm;", "(Ltech/ula/library/model/state/AppsStartupFsm;Ltech/ula/library/model/state/SessionStartupFsm;)V", "create", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "modelClass", "Ljava/lang/Class;", "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MainActivityViewModelFactory extends ViewModelProvider.NewInstanceFactory {
    private final AppsStartupFsm appsStartupFsm;
    private final SessionStartupFsm sessionStartupFsm;

    public MainActivityViewModelFactory(AppsStartupFsm appsStartupFsm, SessionStartupFsm sessionStartupFsm) {
        Intrinsics.checkNotNullParameter(appsStartupFsm, "appsStartupFsm");
        Intrinsics.checkNotNullParameter(sessionStartupFsm, "sessionStartupFsm");
        this.appsStartupFsm = appsStartupFsm;
        this.sessionStartupFsm = sessionStartupFsm;
    }

    @Override // androidx.lifecycle.ViewModelProvider.NewInstanceFactory, androidx.lifecycle.ViewModelProvider.Factory
    public <T extends ViewModel> T create(Class<T> modelClass) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        return new MainActivityViewModel(this.appsStartupFsm, this.sessionStartupFsm, null, 4, null);
    }
}
