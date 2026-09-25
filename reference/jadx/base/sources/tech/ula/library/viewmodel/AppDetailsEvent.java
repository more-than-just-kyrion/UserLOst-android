package tech.ula.library.viewmodel;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.model.entities.App;

/* JADX INFO: compiled from: AppDetailsViewModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0003\u0004\u0005B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0003\u0006\u0007\b¨\u0006\t"}, d2 = {"Ltech/ula/library/viewmodel/AppDetailsEvent;", "", "()V", "AutoStartChanged", "ServiceTypeChanged", "SubmitApp", "Ltech/ula/library/viewmodel/AppDetailsEvent$AutoStartChanged;", "Ltech/ula/library/viewmodel/AppDetailsEvent$ServiceTypeChanged;", "Ltech/ula/library/viewmodel/AppDetailsEvent$SubmitApp;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class AppDetailsEvent {
    public /* synthetic */ AppDetailsEvent(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: AppDetailsViewModel.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Ltech/ula/library/viewmodel/AppDetailsEvent$SubmitApp;", "Ltech/ula/library/viewmodel/AppDetailsEvent;", "app", "Ltech/ula/library/model/entities/App;", "(Ltech/ula/library/model/entities/App;)V", "getApp", "()Ltech/ula/library/model/entities/App;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class SubmitApp extends AppDetailsEvent {
        private final App app;

        public static /* synthetic */ SubmitApp copy$default(SubmitApp submitApp, App app, int i, Object obj) {
            if ((i & 1) != 0) {
                app = submitApp.app;
            }
            return submitApp.copy(app);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final App getApp() {
            return this.app;
        }

        public final SubmitApp copy(App app) {
            Intrinsics.checkNotNullParameter(app, "app");
            return new SubmitApp(app);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof SubmitApp) && Intrinsics.areEqual(this.app, ((SubmitApp) other).app);
        }

        public int hashCode() {
            return this.app.hashCode();
        }

        public String toString() {
            return "SubmitApp(app=" + this.app + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SubmitApp(App app) {
            super(null);
            Intrinsics.checkNotNullParameter(app, "app");
            this.app = app;
        }

        public final App getApp() {
            return this.app;
        }
    }

    private AppDetailsEvent() {
    }

    /* JADX INFO: compiled from: AppDetailsViewModel.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Ltech/ula/library/viewmodel/AppDetailsEvent$ServiceTypeChanged;", "Ltech/ula/library/viewmodel/AppDetailsEvent;", "selectedButton", "", "app", "Ltech/ula/library/model/entities/App;", "(ILtech/ula/library/model/entities/App;)V", "getApp", "()Ltech/ula/library/model/entities/App;", "getSelectedButton", "()I", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class ServiceTypeChanged extends AppDetailsEvent {
        private final App app;
        private final int selectedButton;

        public static /* synthetic */ ServiceTypeChanged copy$default(ServiceTypeChanged serviceTypeChanged, int i, App app, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = serviceTypeChanged.selectedButton;
            }
            if ((i2 & 2) != 0) {
                app = serviceTypeChanged.app;
            }
            return serviceTypeChanged.copy(i, app);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getSelectedButton() {
            return this.selectedButton;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final App getApp() {
            return this.app;
        }

        public final ServiceTypeChanged copy(int selectedButton, App app) {
            Intrinsics.checkNotNullParameter(app, "app");
            return new ServiceTypeChanged(selectedButton, app);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ServiceTypeChanged)) {
                return false;
            }
            ServiceTypeChanged serviceTypeChanged = (ServiceTypeChanged) other;
            return this.selectedButton == serviceTypeChanged.selectedButton && Intrinsics.areEqual(this.app, serviceTypeChanged.app);
        }

        public int hashCode() {
            return (Integer.hashCode(this.selectedButton) * 31) + this.app.hashCode();
        }

        public String toString() {
            return "ServiceTypeChanged(selectedButton=" + this.selectedButton + ", app=" + this.app + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ServiceTypeChanged(int i, App app) {
            super(null);
            Intrinsics.checkNotNullParameter(app, "app");
            this.selectedButton = i;
            this.app = app;
        }

        public final App getApp() {
            return this.app;
        }

        public final int getSelectedButton() {
            return this.selectedButton;
        }
    }

    /* JADX INFO: compiled from: AppDetailsViewModel.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u00032\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Ltech/ula/library/viewmodel/AppDetailsEvent$AutoStartChanged;", "Ltech/ula/library/viewmodel/AppDetailsEvent;", "autoStartEnabled", "", "app", "Ltech/ula/library/model/entities/App;", "(ZLtech/ula/library/model/entities/App;)V", "getApp", "()Ltech/ula/library/model/entities/App;", "getAutoStartEnabled", "()Z", "component1", "component2", "copy", "equals", "other", "", "hashCode", "", "toString", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class AutoStartChanged extends AppDetailsEvent {
        private final App app;
        private final boolean autoStartEnabled;

        public static /* synthetic */ AutoStartChanged copy$default(AutoStartChanged autoStartChanged, boolean z, App app, int i, Object obj) {
            if ((i & 1) != 0) {
                z = autoStartChanged.autoStartEnabled;
            }
            if ((i & 2) != 0) {
                app = autoStartChanged.app;
            }
            return autoStartChanged.copy(z, app);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getAutoStartEnabled() {
            return this.autoStartEnabled;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final App getApp() {
            return this.app;
        }

        public final AutoStartChanged copy(boolean autoStartEnabled, App app) {
            Intrinsics.checkNotNullParameter(app, "app");
            return new AutoStartChanged(autoStartEnabled, app);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof AutoStartChanged)) {
                return false;
            }
            AutoStartChanged autoStartChanged = (AutoStartChanged) other;
            return this.autoStartEnabled == autoStartChanged.autoStartEnabled && Intrinsics.areEqual(this.app, autoStartChanged.app);
        }

        public int hashCode() {
            return (Boolean.hashCode(this.autoStartEnabled) * 31) + this.app.hashCode();
        }

        public String toString() {
            return "AutoStartChanged(autoStartEnabled=" + this.autoStartEnabled + ", app=" + this.app + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AutoStartChanged(boolean z, App app) {
            super(null);
            Intrinsics.checkNotNullParameter(app, "app");
            this.autoStartEnabled = z;
            this.app = app;
        }

        public final App getApp() {
            return this.app;
        }

        public final boolean getAutoStartEnabled() {
            return this.autoStartEnabled;
        }
    }
}
