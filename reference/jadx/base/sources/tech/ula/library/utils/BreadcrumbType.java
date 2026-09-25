package tech.ula.library.utils;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: Logger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0005\u0003\u0004\u0005\u0006\u0007B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0005\b\t\n\u000b\f¨\u0006\r"}, d2 = {"Ltech/ula/library/utils/BreadcrumbType;", "", "()V", "ObservedState", "ReceivedEvent", "ReceivedIntent", "RuntimeError", "SubmittedEvent", "Ltech/ula/library/utils/BreadcrumbType$ObservedState;", "Ltech/ula/library/utils/BreadcrumbType$ReceivedEvent;", "Ltech/ula/library/utils/BreadcrumbType$ReceivedIntent;", "Ltech/ula/library/utils/BreadcrumbType$RuntimeError;", "Ltech/ula/library/utils/BreadcrumbType$SubmittedEvent;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class BreadcrumbType {
    public /* synthetic */ BreadcrumbType(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private BreadcrumbType() {
    }

    /* JADX INFO: compiled from: Logger.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016¨\u0006\u0005"}, d2 = {"Ltech/ula/library/utils/BreadcrumbType$ReceivedIntent;", "Ltech/ula/library/utils/BreadcrumbType;", "()V", "toString", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ReceivedIntent extends BreadcrumbType {
        public static final ReceivedIntent INSTANCE = new ReceivedIntent();

        private ReceivedIntent() {
            super(null);
        }

        public String toString() {
            return "Intent received";
        }
    }

    /* JADX INFO: compiled from: Logger.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016¨\u0006\u0005"}, d2 = {"Ltech/ula/library/utils/BreadcrumbType$SubmittedEvent;", "Ltech/ula/library/utils/BreadcrumbType;", "()V", "toString", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SubmittedEvent extends BreadcrumbType {
        public static final SubmittedEvent INSTANCE = new SubmittedEvent();

        private SubmittedEvent() {
            super(null);
        }

        public String toString() {
            return "Event submitted";
        }
    }

    /* JADX INFO: compiled from: Logger.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016¨\u0006\u0005"}, d2 = {"Ltech/ula/library/utils/BreadcrumbType$ReceivedEvent;", "Ltech/ula/library/utils/BreadcrumbType;", "()V", "toString", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ReceivedEvent extends BreadcrumbType {
        public static final ReceivedEvent INSTANCE = new ReceivedEvent();

        private ReceivedEvent() {
            super(null);
        }

        public String toString() {
            return "Event received";
        }
    }

    /* JADX INFO: compiled from: Logger.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016¨\u0006\u0005"}, d2 = {"Ltech/ula/library/utils/BreadcrumbType$ObservedState;", "Ltech/ula/library/utils/BreadcrumbType;", "()V", "toString", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ObservedState extends BreadcrumbType {
        public static final ObservedState INSTANCE = new ObservedState();

        private ObservedState() {
            super(null);
        }

        public String toString() {
            return "State observed";
        }
    }

    /* JADX INFO: compiled from: Logger.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016¨\u0006\u0005"}, d2 = {"Ltech/ula/library/utils/BreadcrumbType$RuntimeError;", "Ltech/ula/library/utils/BreadcrumbType;", "()V", "toString", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class RuntimeError extends BreadcrumbType {
        public static final RuntimeError INSTANCE = new RuntimeError();

        private RuntimeError() {
            super(null);
        }

        public String toString() {
            return "Runtime error";
        }
    }
}
