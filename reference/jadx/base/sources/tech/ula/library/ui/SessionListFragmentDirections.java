package tech.ula.library.ui;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.navigation.NavDirections;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.R;
import tech.ula.library.model.entities.Session;

/* JADX INFO: compiled from: SessionListFragmentDirections.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0002\u0003\u0004B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, d2 = {"Ltech/ula/library/ui/SessionListFragmentDirections;", "", "()V", "ActionSessionListToSessionEdit", "Companion", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SessionListFragmentDirections {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: SessionListFragmentDirections.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B\u001b\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\u001f\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00052\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\bHÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\u0014\u0010\u0007\u001a\u00020\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001c"}, d2 = {"Ltech/ula/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;", "Landroidx/navigation/NavDirections;", "session", "Ltech/ula/library/model/entities/Session;", "editExisting", "", "(Ltech/ula/library/model/entities/Session;Z)V", "actionId", "", "getActionId", "()I", "arguments", "Landroid/os/Bundle;", "getArguments", "()Landroid/os/Bundle;", "getEditExisting", "()Z", "getSession", "()Ltech/ula/library/model/entities/Session;", "component1", "component2", "copy", "equals", "other", "", "hashCode", "toString", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final /* data */ class ActionSessionListToSessionEdit implements NavDirections {
        private final int actionId;
        private final boolean editExisting;
        private final Session session;

        /* JADX WARN: Multi-variable type inference failed */
        public ActionSessionListToSessionEdit() {
            this(null, false, 3, 0 == true ? 1 : 0);
        }

        public static /* synthetic */ ActionSessionListToSessionEdit copy$default(ActionSessionListToSessionEdit actionSessionListToSessionEdit, Session session, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                session = actionSessionListToSessionEdit.session;
            }
            if ((i & 2) != 0) {
                z = actionSessionListToSessionEdit.editExisting;
            }
            return actionSessionListToSessionEdit.copy(session, z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Session getSession() {
            return this.session;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final boolean getEditExisting() {
            return this.editExisting;
        }

        public final ActionSessionListToSessionEdit copy(Session session, boolean editExisting) {
            return new ActionSessionListToSessionEdit(session, editExisting);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ActionSessionListToSessionEdit)) {
                return false;
            }
            ActionSessionListToSessionEdit actionSessionListToSessionEdit = (ActionSessionListToSessionEdit) other;
            return Intrinsics.areEqual(this.session, actionSessionListToSessionEdit.session) && this.editExisting == actionSessionListToSessionEdit.editExisting;
        }

        public int hashCode() {
            Session session = this.session;
            return ((session == null ? 0 : session.hashCode()) * 31) + Boolean.hashCode(this.editExisting);
        }

        public String toString() {
            return "ActionSessionListToSessionEdit(session=" + this.session + ", editExisting=" + this.editExisting + ")";
        }

        public ActionSessionListToSessionEdit(Session session, boolean z) {
            this.session = session;
            this.editExisting = z;
            this.actionId = R.id.action_session_list_to_session_edit;
        }

        public /* synthetic */ ActionSessionListToSessionEdit(Session session, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : session, (i & 2) != 0 ? false : z);
        }

        public final Session getSession() {
            return this.session;
        }

        public final boolean getEditExisting() {
            return this.editExisting;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return this.actionId;
        }

        @Override // androidx.navigation.NavDirections
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            if (Parcelable.class.isAssignableFrom(Session.class)) {
                bundle.putParcelable("session", this.session);
            } else if (Serializable.class.isAssignableFrom(Session.class)) {
                bundle.putSerializable("session", (Serializable) this.session);
            }
            bundle.putBoolean("editExisting", this.editExisting);
            return bundle;
        }
    }

    private SessionListFragmentDirections() {
    }

    /* JADX INFO: compiled from: SessionListFragmentDirections.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Ltech/ula/library/ui/SessionListFragmentDirections$Companion;", "", "()V", "actionSessionListToSessionEdit", "Landroidx/navigation/NavDirections;", "session", "Ltech/ula/library/model/entities/Session;", "editExisting", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ NavDirections actionSessionListToSessionEdit$default(Companion companion, Session session, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                session = null;
            }
            if ((i & 2) != 0) {
                z = false;
            }
            return companion.actionSessionListToSessionEdit(session, z);
        }

        public final NavDirections actionSessionListToSessionEdit(Session session, boolean editExisting) {
            return new ActionSessionListToSessionEdit(session, editExisting);
        }
    }
}
