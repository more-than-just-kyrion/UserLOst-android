package tech.ula.library.ui;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.model.entities.App;

/* JADX INFO: compiled from: AppDetailsFragmentArgs.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0012J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0016"}, d2 = {"Ltech/ula/library/ui/AppDetailsFragmentArgs;", "Landroidx/navigation/NavArgs;", "app", "Ltech/ula/library/model/entities/App;", "(Ltech/ula/library/model/entities/App;)V", "getApp", "()Ltech/ula/library/model/entities/App;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toBundle", "Landroid/os/Bundle;", "toSavedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "toString", "", "Companion", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class AppDetailsFragmentArgs implements NavArgs {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final App app;

    /* JADX WARN: Multi-variable type inference failed */
    public AppDetailsFragmentArgs() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ AppDetailsFragmentArgs copy$default(AppDetailsFragmentArgs appDetailsFragmentArgs, App app, int i, Object obj) {
        if ((i & 1) != 0) {
            app = appDetailsFragmentArgs.app;
        }
        return appDetailsFragmentArgs.copy(app);
    }

    @JvmStatic
    public static final AppDetailsFragmentArgs fromBundle(Bundle bundle) {
        return INSTANCE.fromBundle(bundle);
    }

    @JvmStatic
    public static final AppDetailsFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
        return INSTANCE.fromSavedStateHandle(savedStateHandle);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final App getApp() {
        return this.app;
    }

    public final AppDetailsFragmentArgs copy(App app) {
        return new AppDetailsFragmentArgs(app);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof AppDetailsFragmentArgs) && Intrinsics.areEqual(this.app, ((AppDetailsFragmentArgs) other).app);
    }

    public int hashCode() {
        App app = this.app;
        if (app == null) {
            return 0;
        }
        return app.hashCode();
    }

    public String toString() {
        return "AppDetailsFragmentArgs(app=" + this.app + ")";
    }

    public AppDetailsFragmentArgs(App app) {
        this.app = app;
    }

    public /* synthetic */ AppDetailsFragmentArgs(App app, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : app);
    }

    public final App getApp() {
        return this.app;
    }

    public final Bundle toBundle() {
        Bundle bundle = new Bundle();
        if (Parcelable.class.isAssignableFrom(App.class)) {
            bundle.putParcelable("app", this.app);
        } else if (Serializable.class.isAssignableFrom(App.class)) {
            bundle.putSerializable("app", (Serializable) this.app);
        }
        return bundle;
    }

    public final SavedStateHandle toSavedStateHandle() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        if (Parcelable.class.isAssignableFrom(App.class)) {
            savedStateHandle.set("app", this.app);
        } else if (Serializable.class.isAssignableFrom(App.class)) {
            savedStateHandle.set("app", (Serializable) this.app);
        }
        return savedStateHandle;
    }

    /* JADX INFO: compiled from: AppDetailsFragmentArgs.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0007¨\u0006\n"}, d2 = {"Ltech/ula/library/ui/AppDetailsFragmentArgs$Companion;", "", "()V", "fromBundle", "Ltech/ula/library/ui/AppDetailsFragmentArgs;", "bundle", "Landroid/os/Bundle;", "fromSavedStateHandle", "savedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final AppDetailsFragmentArgs fromBundle(Bundle bundle) {
            App app;
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.setClassLoader(AppDetailsFragmentArgs.class.getClassLoader());
            if (!bundle.containsKey("app")) {
                app = null;
            } else if (Parcelable.class.isAssignableFrom(App.class) || Serializable.class.isAssignableFrom(App.class)) {
                app = (App) bundle.get("app");
            } else {
                throw new UnsupportedOperationException(App.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
            return new AppDetailsFragmentArgs(app);
        }

        @JvmStatic
        public final AppDetailsFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
            App app;
            Intrinsics.checkNotNullParameter(savedStateHandle, "savedStateHandle");
            if (!savedStateHandle.contains("app")) {
                app = null;
            } else if (Parcelable.class.isAssignableFrom(App.class) || Serializable.class.isAssignableFrom(App.class)) {
                app = (App) savedStateHandle.get("app");
            } else {
                throw new UnsupportedOperationException(App.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
            return new AppDetailsFragmentArgs(app);
        }
    }
}
