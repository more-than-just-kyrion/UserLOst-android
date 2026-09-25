package tech.ula.library.ui;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.navigation.NavDirections;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.R;
import tech.ula.library.model.entities.App;

/* JADX INFO: compiled from: AppsListFragmentDirections.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0002\u0003\u0004B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, d2 = {"Ltech/ula/library/ui/AppsListFragmentDirections;", "", "()V", "ActionAppListToAppDetails", "Companion", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AppsListFragmentDirections {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: AppsListFragmentDirections.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u0018"}, d2 = {"Ltech/ula/library/ui/AppsListFragmentDirections$ActionAppListToAppDetails;", "Landroidx/navigation/NavDirections;", "app", "Ltech/ula/library/model/entities/App;", "(Ltech/ula/library/model/entities/App;)V", "actionId", "", "getActionId", "()I", "getApp", "()Ltech/ula/library/model/entities/App;", "arguments", "Landroid/os/Bundle;", "getArguments", "()Landroid/os/Bundle;", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final /* data */ class ActionAppListToAppDetails implements NavDirections {
        private final int actionId;
        private final App app;

        /* JADX WARN: Multi-variable type inference failed */
        public ActionAppListToAppDetails() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public static /* synthetic */ ActionAppListToAppDetails copy$default(ActionAppListToAppDetails actionAppListToAppDetails, App app, int i, Object obj) {
            if ((i & 1) != 0) {
                app = actionAppListToAppDetails.app;
            }
            return actionAppListToAppDetails.copy(app);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final App getApp() {
            return this.app;
        }

        public final ActionAppListToAppDetails copy(App app) {
            return new ActionAppListToAppDetails(app);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof ActionAppListToAppDetails) && Intrinsics.areEqual(this.app, ((ActionAppListToAppDetails) other).app);
        }

        public int hashCode() {
            App app = this.app;
            if (app == null) {
                return 0;
            }
            return app.hashCode();
        }

        public String toString() {
            return "ActionAppListToAppDetails(app=" + this.app + ")";
        }

        public ActionAppListToAppDetails(App app) {
            this.app = app;
            this.actionId = R.id.action_app_list_to_app_details;
        }

        public /* synthetic */ ActionAppListToAppDetails(App app, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : app);
        }

        public final App getApp() {
            return this.app;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return this.actionId;
        }

        @Override // androidx.navigation.NavDirections
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            if (Parcelable.class.isAssignableFrom(App.class)) {
                bundle.putParcelable("app", this.app);
            } else if (Serializable.class.isAssignableFrom(App.class)) {
                bundle.putSerializable("app", (Serializable) this.app);
            }
            return bundle;
        }
    }

    private AppsListFragmentDirections() {
    }

    /* JADX INFO: compiled from: AppsListFragmentDirections.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u0007"}, d2 = {"Ltech/ula/library/ui/AppsListFragmentDirections$Companion;", "", "()V", "actionAppListToAppDetails", "Landroidx/navigation/NavDirections;", "app", "Ltech/ula/library/model/entities/App;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ NavDirections actionAppListToAppDetails$default(Companion companion, App app, int i, Object obj) {
            if ((i & 1) != 0) {
                app = null;
            }
            return companion.actionAppListToAppDetails(app);
        }

        public final NavDirections actionAppListToAppDetails(App app) {
            return new ActionAppListToAppDetails(app);
        }
    }
}
