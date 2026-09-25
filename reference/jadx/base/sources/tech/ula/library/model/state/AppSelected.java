package tech.ula.library.model.state;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.model.entities.App;

/* JADX INFO: compiled from: AppsStartupFsm.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J'\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00052\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000b¨\u0006\u0018"}, d2 = {"Ltech/ula/library/model/state/AppSelected;", "Ltech/ula/library/model/state/AppsStartupEvent;", "app", "Ltech/ula/library/model/entities/App;", "askConnectType", "", "askDisplayPreferences", "(Ltech/ula/library/model/entities/App;ZZ)V", "getApp", "()Ltech/ula/library/model/entities/App;", "getAskConnectType", "()Z", "getAskDisplayPreferences", "component1", "component2", "component3", "copy", "equals", "other", "", "hashCode", "", "toString", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class AppSelected extends AppsStartupEvent {
    private final App app;
    private final boolean askConnectType;
    private final boolean askDisplayPreferences;

    public static /* synthetic */ AppSelected copy$default(AppSelected appSelected, App app, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            app = appSelected.app;
        }
        if ((i & 2) != 0) {
            z = appSelected.askConnectType;
        }
        if ((i & 4) != 0) {
            z2 = appSelected.askDisplayPreferences;
        }
        return appSelected.copy(app, z, z2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final App getApp() {
        return this.app;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getAskConnectType() {
        return this.askConnectType;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getAskDisplayPreferences() {
        return this.askDisplayPreferences;
    }

    public final AppSelected copy(App app, boolean askConnectType, boolean askDisplayPreferences) {
        Intrinsics.checkNotNullParameter(app, "app");
        return new AppSelected(app, askConnectType, askDisplayPreferences);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AppSelected)) {
            return false;
        }
        AppSelected appSelected = (AppSelected) other;
        return Intrinsics.areEqual(this.app, appSelected.app) && this.askConnectType == appSelected.askConnectType && this.askDisplayPreferences == appSelected.askDisplayPreferences;
    }

    public int hashCode() {
        return (((this.app.hashCode() * 31) + Boolean.hashCode(this.askConnectType)) * 31) + Boolean.hashCode(this.askDisplayPreferences);
    }

    public String toString() {
        return "AppSelected(app=" + this.app + ", askConnectType=" + this.askConnectType + ", askDisplayPreferences=" + this.askDisplayPreferences + ")";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppSelected(App app, boolean z, boolean z2) {
        super(null);
        Intrinsics.checkNotNullParameter(app, "app");
        this.app = app;
        this.askConnectType = z;
        this.askDisplayPreferences = z2;
    }

    public final App getApp() {
        return this.app;
    }

    public final boolean getAskConnectType() {
        return this.askConnectType;
    }

    public final boolean getAskDisplayPreferences() {
        return this.askDisplayPreferences;
    }
}
