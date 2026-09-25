package tech.ula.library.model.state;

import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppsStartupFsm.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001¢\u0006\u0002\u0010\u0005J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0001HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0001HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0015"}, d2 = {"Ltech/ula/library/model/state/IncorrectAppTransition;", "Ltech/ula/library/model/state/AppsStartupState;", NotificationCompat.CATEGORY_EVENT, "Ltech/ula/library/model/state/AppsStartupEvent;", "state", "(Ltech/ula/library/model/state/AppsStartupEvent;Ltech/ula/library/model/state/AppsStartupState;)V", "getEvent", "()Ltech/ula/library/model/state/AppsStartupEvent;", "getState", "()Ltech/ula/library/model/state/AppsStartupState;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class IncorrectAppTransition extends AppsStartupState {
    private final AppsStartupEvent event;
    private final AppsStartupState state;

    public static /* synthetic */ IncorrectAppTransition copy$default(IncorrectAppTransition incorrectAppTransition, AppsStartupEvent appsStartupEvent, AppsStartupState appsStartupState, int i, Object obj) {
        if ((i & 1) != 0) {
            appsStartupEvent = incorrectAppTransition.event;
        }
        if ((i & 2) != 0) {
            appsStartupState = incorrectAppTransition.state;
        }
        return incorrectAppTransition.copy(appsStartupEvent, appsStartupState);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final AppsStartupEvent getEvent() {
        return this.event;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final AppsStartupState getState() {
        return this.state;
    }

    public final IncorrectAppTransition copy(AppsStartupEvent event, AppsStartupState state) {
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(state, "state");
        return new IncorrectAppTransition(event, state);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof IncorrectAppTransition)) {
            return false;
        }
        IncorrectAppTransition incorrectAppTransition = (IncorrectAppTransition) other;
        return Intrinsics.areEqual(this.event, incorrectAppTransition.event) && Intrinsics.areEqual(this.state, incorrectAppTransition.state);
    }

    public int hashCode() {
        return (this.event.hashCode() * 31) + this.state.hashCode();
    }

    public String toString() {
        return "IncorrectAppTransition(event=" + this.event + ", state=" + this.state + ")";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IncorrectAppTransition(AppsStartupEvent event, AppsStartupState state) {
        super(null);
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(state, "state");
        this.event = event;
        this.state = state;
    }

    public final AppsStartupEvent getEvent() {
        return this.event;
    }

    public final AppsStartupState getState() {
        return this.state;
    }
}
