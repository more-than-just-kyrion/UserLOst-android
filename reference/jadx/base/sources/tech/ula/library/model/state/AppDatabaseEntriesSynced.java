package tech.ula.library.model.state;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.model.entities.App;
import tech.ula.library.model.entities.Filesystem;
import tech.ula.library.model.entities.Session;

/* JADX INFO: compiled from: AppsStartupFsm.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001b"}, d2 = {"Ltech/ula/library/model/state/AppDatabaseEntriesSynced;", "Ltech/ula/library/model/state/AppsStartupState;", "app", "Ltech/ula/library/model/entities/App;", "session", "Ltech/ula/library/model/entities/Session;", "filesystem", "Ltech/ula/library/model/entities/Filesystem;", "(Ltech/ula/library/model/entities/App;Ltech/ula/library/model/entities/Session;Ltech/ula/library/model/entities/Filesystem;)V", "getApp", "()Ltech/ula/library/model/entities/App;", "getFilesystem", "()Ltech/ula/library/model/entities/Filesystem;", "getSession", "()Ltech/ula/library/model/entities/Session;", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class AppDatabaseEntriesSynced extends AppsStartupState {
    private final App app;
    private final Filesystem filesystem;
    private final Session session;

    public static /* synthetic */ AppDatabaseEntriesSynced copy$default(AppDatabaseEntriesSynced appDatabaseEntriesSynced, App app, Session session, Filesystem filesystem, int i, Object obj) {
        if ((i & 1) != 0) {
            app = appDatabaseEntriesSynced.app;
        }
        if ((i & 2) != 0) {
            session = appDatabaseEntriesSynced.session;
        }
        if ((i & 4) != 0) {
            filesystem = appDatabaseEntriesSynced.filesystem;
        }
        return appDatabaseEntriesSynced.copy(app, session, filesystem);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final App getApp() {
        return this.app;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Session getSession() {
        return this.session;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Filesystem getFilesystem() {
        return this.filesystem;
    }

    public final AppDatabaseEntriesSynced copy(App app, Session session, Filesystem filesystem) {
        Intrinsics.checkNotNullParameter(app, "app");
        Intrinsics.checkNotNullParameter(session, "session");
        Intrinsics.checkNotNullParameter(filesystem, "filesystem");
        return new AppDatabaseEntriesSynced(app, session, filesystem);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AppDatabaseEntriesSynced)) {
            return false;
        }
        AppDatabaseEntriesSynced appDatabaseEntriesSynced = (AppDatabaseEntriesSynced) other;
        return Intrinsics.areEqual(this.app, appDatabaseEntriesSynced.app) && Intrinsics.areEqual(this.session, appDatabaseEntriesSynced.session) && Intrinsics.areEqual(this.filesystem, appDatabaseEntriesSynced.filesystem);
    }

    public int hashCode() {
        return (((this.app.hashCode() * 31) + this.session.hashCode()) * 31) + this.filesystem.hashCode();
    }

    public String toString() {
        return "AppDatabaseEntriesSynced(app=" + this.app + ", session=" + this.session + ", filesystem=" + this.filesystem + ")";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppDatabaseEntriesSynced(App app, Session session, Filesystem filesystem) {
        super(null);
        Intrinsics.checkNotNullParameter(app, "app");
        Intrinsics.checkNotNullParameter(session, "session");
        Intrinsics.checkNotNullParameter(filesystem, "filesystem");
        this.app = app;
        this.session = session;
        this.filesystem = filesystem;
    }

    public final App getApp() {
        return this.app;
    }

    public final Filesystem getFilesystem() {
        return this.filesystem;
    }

    public final Session getSession() {
        return this.session;
    }
}
