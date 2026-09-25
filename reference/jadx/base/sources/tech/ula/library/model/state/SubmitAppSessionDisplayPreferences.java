package tech.ula.library.model.state;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.model.entities.DisplayPreferences;
import tech.ula.library.model.entities.Session;

/* JADX INFO: compiled from: AppsStartupFsm.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Ltech/ula/library/model/state/SubmitAppSessionDisplayPreferences;", "Ltech/ula/library/model/state/AppsStartupEvent;", "appSession", "Ltech/ula/library/model/entities/Session;", "displayPreferences", "Ltech/ula/library/model/entities/DisplayPreferences;", "(Ltech/ula/library/model/entities/Session;Ltech/ula/library/model/entities/DisplayPreferences;)V", "getAppSession", "()Ltech/ula/library/model/entities/Session;", "getDisplayPreferences", "()Ltech/ula/library/model/entities/DisplayPreferences;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class SubmitAppSessionDisplayPreferences extends AppsStartupEvent {
    private final Session appSession;
    private final DisplayPreferences displayPreferences;

    public static /* synthetic */ SubmitAppSessionDisplayPreferences copy$default(SubmitAppSessionDisplayPreferences submitAppSessionDisplayPreferences, Session session, DisplayPreferences displayPreferences, int i, Object obj) {
        if ((i & 1) != 0) {
            session = submitAppSessionDisplayPreferences.appSession;
        }
        if ((i & 2) != 0) {
            displayPreferences = submitAppSessionDisplayPreferences.displayPreferences;
        }
        return submitAppSessionDisplayPreferences.copy(session, displayPreferences);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Session getAppSession() {
        return this.appSession;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final DisplayPreferences getDisplayPreferences() {
        return this.displayPreferences;
    }

    public final SubmitAppSessionDisplayPreferences copy(Session appSession, DisplayPreferences displayPreferences) {
        Intrinsics.checkNotNullParameter(appSession, "appSession");
        Intrinsics.checkNotNullParameter(displayPreferences, "displayPreferences");
        return new SubmitAppSessionDisplayPreferences(appSession, displayPreferences);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SubmitAppSessionDisplayPreferences)) {
            return false;
        }
        SubmitAppSessionDisplayPreferences submitAppSessionDisplayPreferences = (SubmitAppSessionDisplayPreferences) other;
        return Intrinsics.areEqual(this.appSession, submitAppSessionDisplayPreferences.appSession) && Intrinsics.areEqual(this.displayPreferences, submitAppSessionDisplayPreferences.displayPreferences);
    }

    public int hashCode() {
        return (this.appSession.hashCode() * 31) + this.displayPreferences.hashCode();
    }

    public String toString() {
        return "SubmitAppSessionDisplayPreferences(appSession=" + this.appSession + ", displayPreferences=" + this.displayPreferences + ")";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubmitAppSessionDisplayPreferences(Session appSession, DisplayPreferences displayPreferences) {
        super(null);
        Intrinsics.checkNotNullParameter(appSession, "appSession");
        Intrinsics.checkNotNullParameter(displayPreferences, "displayPreferences");
        this.appSession = appSession;
        this.displayPreferences = displayPreferences;
    }

    public final Session getAppSession() {
        return this.appSession;
    }

    public final DisplayPreferences getDisplayPreferences() {
        return this.displayPreferences;
    }
}
