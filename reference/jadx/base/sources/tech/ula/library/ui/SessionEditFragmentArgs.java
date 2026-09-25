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
import tech.ula.library.model.entities.Session;

/* JADX INFO: compiled from: SessionEditFragmentArgs.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u001b\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0016J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u001a"}, d2 = {"Ltech/ula/library/ui/SessionEditFragmentArgs;", "Landroidx/navigation/NavArgs;", "session", "Ltech/ula/library/model/entities/Session;", "editExisting", "", "(Ltech/ula/library/model/entities/Session;Z)V", "getEditExisting", "()Z", "getSession", "()Ltech/ula/library/model/entities/Session;", "component1", "component2", "copy", "equals", "other", "", "hashCode", "", "toBundle", "Landroid/os/Bundle;", "toSavedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "toString", "", "Companion", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class SessionEditFragmentArgs implements NavArgs {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final boolean editExisting;
    private final Session session;

    /* JADX WARN: Multi-variable type inference failed */
    public SessionEditFragmentArgs() {
        this(null, false, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ SessionEditFragmentArgs copy$default(SessionEditFragmentArgs sessionEditFragmentArgs, Session session, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            session = sessionEditFragmentArgs.session;
        }
        if ((i & 2) != 0) {
            z = sessionEditFragmentArgs.editExisting;
        }
        return sessionEditFragmentArgs.copy(session, z);
    }

    @JvmStatic
    public static final SessionEditFragmentArgs fromBundle(Bundle bundle) {
        return INSTANCE.fromBundle(bundle);
    }

    @JvmStatic
    public static final SessionEditFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
        return INSTANCE.fromSavedStateHandle(savedStateHandle);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Session getSession() {
        return this.session;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getEditExisting() {
        return this.editExisting;
    }

    public final SessionEditFragmentArgs copy(Session session, boolean editExisting) {
        return new SessionEditFragmentArgs(session, editExisting);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SessionEditFragmentArgs)) {
            return false;
        }
        SessionEditFragmentArgs sessionEditFragmentArgs = (SessionEditFragmentArgs) other;
        return Intrinsics.areEqual(this.session, sessionEditFragmentArgs.session) && this.editExisting == sessionEditFragmentArgs.editExisting;
    }

    public int hashCode() {
        Session session = this.session;
        return ((session == null ? 0 : session.hashCode()) * 31) + Boolean.hashCode(this.editExisting);
    }

    public String toString() {
        return "SessionEditFragmentArgs(session=" + this.session + ", editExisting=" + this.editExisting + ")";
    }

    public SessionEditFragmentArgs(Session session, boolean z) {
        this.session = session;
        this.editExisting = z;
    }

    public /* synthetic */ SessionEditFragmentArgs(Session session, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : session, (i & 2) != 0 ? false : z);
    }

    public final Session getSession() {
        return this.session;
    }

    public final boolean getEditExisting() {
        return this.editExisting;
    }

    public final Bundle toBundle() {
        Bundle bundle = new Bundle();
        if (Parcelable.class.isAssignableFrom(Session.class)) {
            bundle.putParcelable("session", this.session);
        } else if (Serializable.class.isAssignableFrom(Session.class)) {
            bundle.putSerializable("session", (Serializable) this.session);
        }
        bundle.putBoolean("editExisting", this.editExisting);
        return bundle;
    }

    public final SavedStateHandle toSavedStateHandle() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        if (Parcelable.class.isAssignableFrom(Session.class)) {
            savedStateHandle.set("session", this.session);
        } else if (Serializable.class.isAssignableFrom(Session.class)) {
            savedStateHandle.set("session", (Serializable) this.session);
        }
        savedStateHandle.set("editExisting", Boolean.valueOf(this.editExisting));
        return savedStateHandle;
    }

    /* JADX INFO: compiled from: SessionEditFragmentArgs.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0007¨\u0006\n"}, d2 = {"Ltech/ula/library/ui/SessionEditFragmentArgs$Companion;", "", "()V", "fromBundle", "Ltech/ula/library/ui/SessionEditFragmentArgs;", "bundle", "Landroid/os/Bundle;", "fromSavedStateHandle", "savedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final SessionEditFragmentArgs fromBundle(Bundle bundle) {
            Session session;
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.setClassLoader(SessionEditFragmentArgs.class.getClassLoader());
            if (!bundle.containsKey("session")) {
                session = null;
            } else if (Parcelable.class.isAssignableFrom(Session.class) || Serializable.class.isAssignableFrom(Session.class)) {
                session = (Session) bundle.get("session");
            } else {
                throw new UnsupportedOperationException(Session.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
            return new SessionEditFragmentArgs(session, bundle.containsKey("editExisting") ? bundle.getBoolean("editExisting") : false);
        }

        @JvmStatic
        public final SessionEditFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
            Session session;
            Boolean bool;
            Intrinsics.checkNotNullParameter(savedStateHandle, "savedStateHandle");
            if (!savedStateHandle.contains("session")) {
                session = null;
            } else if (Parcelable.class.isAssignableFrom(Session.class) || Serializable.class.isAssignableFrom(Session.class)) {
                session = (Session) savedStateHandle.get("session");
            } else {
                throw new UnsupportedOperationException(Session.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
            if (savedStateHandle.contains("editExisting")) {
                bool = (Boolean) savedStateHandle.get("editExisting");
                if (bool == null) {
                    throw new IllegalArgumentException("Argument \"editExisting\" of type boolean does not support null values");
                }
            } else {
                bool = false;
            }
            return new SessionEditFragmentArgs(session, bool.booleanValue());
        }
    }
}
