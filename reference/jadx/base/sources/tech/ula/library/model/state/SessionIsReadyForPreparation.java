package tech.ula.library.model.state;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.model.entities.Filesystem;
import tech.ula.library.model.entities.Session;

/* JADX INFO: compiled from: SessionStartupFsm.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Ltech/ula/library/model/state/SessionIsReadyForPreparation;", "Ltech/ula/library/model/state/SessionStartupState;", "session", "Ltech/ula/library/model/entities/Session;", "filesystem", "Ltech/ula/library/model/entities/Filesystem;", "(Ltech/ula/library/model/entities/Session;Ltech/ula/library/model/entities/Filesystem;)V", "getFilesystem", "()Ltech/ula/library/model/entities/Filesystem;", "getSession", "()Ltech/ula/library/model/entities/Session;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class SessionIsReadyForPreparation extends SessionStartupState {
    private final Filesystem filesystem;
    private final Session session;

    public static /* synthetic */ SessionIsReadyForPreparation copy$default(SessionIsReadyForPreparation sessionIsReadyForPreparation, Session session, Filesystem filesystem, int i, Object obj) {
        if ((i & 1) != 0) {
            session = sessionIsReadyForPreparation.session;
        }
        if ((i & 2) != 0) {
            filesystem = sessionIsReadyForPreparation.filesystem;
        }
        return sessionIsReadyForPreparation.copy(session, filesystem);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Session getSession() {
        return this.session;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Filesystem getFilesystem() {
        return this.filesystem;
    }

    public final SessionIsReadyForPreparation copy(Session session, Filesystem filesystem) {
        Intrinsics.checkNotNullParameter(session, "session");
        Intrinsics.checkNotNullParameter(filesystem, "filesystem");
        return new SessionIsReadyForPreparation(session, filesystem);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SessionIsReadyForPreparation)) {
            return false;
        }
        SessionIsReadyForPreparation sessionIsReadyForPreparation = (SessionIsReadyForPreparation) other;
        return Intrinsics.areEqual(this.session, sessionIsReadyForPreparation.session) && Intrinsics.areEqual(this.filesystem, sessionIsReadyForPreparation.filesystem);
    }

    public int hashCode() {
        return (this.session.hashCode() * 31) + this.filesystem.hashCode();
    }

    public String toString() {
        return "SessionIsReadyForPreparation(session=" + this.session + ", filesystem=" + this.filesystem + ")";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SessionIsReadyForPreparation(Session session, Filesystem filesystem) {
        super(null);
        Intrinsics.checkNotNullParameter(session, "session");
        Intrinsics.checkNotNullParameter(filesystem, "filesystem");
        this.session = session;
        this.filesystem = filesystem;
    }

    public final Filesystem getFilesystem() {
        return this.filesystem;
    }

    public final Session getSession() {
        return this.session;
    }
}
