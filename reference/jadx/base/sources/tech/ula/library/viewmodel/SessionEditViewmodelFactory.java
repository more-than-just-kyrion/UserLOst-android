package tech.ula.library.viewmodel;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.model.repositories.UlaDatabase;

/* JADX INFO: compiled from: SessionEditViewModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J%\u0010\u0005\u001a\u0002H\u0006\"\b\b\u0000\u0010\u0006*\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00060\tH\u0016¢\u0006\u0002\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Ltech/ula/library/viewmodel/SessionEditViewmodelFactory;", "Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;", "ulaDatabase", "Ltech/ula/library/model/repositories/UlaDatabase;", "(Ltech/ula/library/model/repositories/UlaDatabase;)V", "create", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "modelClass", "Ljava/lang/Class;", "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SessionEditViewmodelFactory extends ViewModelProvider.NewInstanceFactory {
    private final UlaDatabase ulaDatabase;

    public SessionEditViewmodelFactory(UlaDatabase ulaDatabase) {
        Intrinsics.checkNotNullParameter(ulaDatabase, "ulaDatabase");
        this.ulaDatabase = ulaDatabase;
    }

    @Override // androidx.lifecycle.ViewModelProvider.NewInstanceFactory, androidx.lifecycle.ViewModelProvider.Factory
    public <T extends ViewModel> T create(Class<T> modelClass) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        return new SessionEditViewModel(this.ulaDatabase);
    }
}
