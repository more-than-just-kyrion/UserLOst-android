package tech.ula.library.viewmodel;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.spongycastle.i18n.ErrorBundle;

/* JADX INFO: compiled from: FilesystemListViewModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0003\u0004\u0005B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0003\u0006\u0007\b¨\u0006\t"}, d2 = {"Ltech/ula/library/viewmodel/FilesystemExportState;", "Ltech/ula/library/viewmodel/FilesystemListViewState;", "()V", "Failure", "Success", "Update", "Ltech/ula/library/viewmodel/FilesystemExportState$Failure;", "Ltech/ula/library/viewmodel/FilesystemExportState$Success;", "Ltech/ula/library/viewmodel/FilesystemExportState$Update;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class FilesystemExportState extends FilesystemListViewState {
    public /* synthetic */ FilesystemExportState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: FilesystemListViewModel.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Ltech/ula/library/viewmodel/FilesystemExportState$Update;", "Ltech/ula/library/viewmodel/FilesystemExportState;", ErrorBundle.DETAIL_ENTRY, "", "(Ljava/lang/String;)V", "getDetails", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Update extends FilesystemExportState {
        private final String details;

        public static /* synthetic */ Update copy$default(Update update, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = update.details;
            }
            return update.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getDetails() {
            return this.details;
        }

        public final Update copy(String details) {
            Intrinsics.checkNotNullParameter(details, "details");
            return new Update(details);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Update) && Intrinsics.areEqual(this.details, ((Update) other).details);
        }

        public int hashCode() {
            return this.details.hashCode();
        }

        public String toString() {
            return "Update(details=" + this.details + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Update(String details) {
            super(null);
            Intrinsics.checkNotNullParameter(details, "details");
            this.details = details;
        }

        public final String getDetails() {
            return this.details;
        }
    }

    private FilesystemExportState() {
        super(null);
    }

    /* JADX INFO: compiled from: FilesystemListViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Ltech/ula/library/viewmodel/FilesystemExportState$Success;", "Ltech/ula/library/viewmodel/FilesystemExportState;", "()V", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Success extends FilesystemExportState {
        public static final Success INSTANCE = new Success();

        private Success() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: FilesystemListViewModel.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Ltech/ula/library/viewmodel/FilesystemExportState$Failure;", "Ltech/ula/library/viewmodel/FilesystemExportState;", "reason", "", ErrorBundle.DETAIL_ENTRY, "", "(ILjava/lang/String;)V", "getDetails", "()Ljava/lang/String;", "getReason", "()I", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Failure extends FilesystemExportState {
        private final String details;
        private final int reason;

        public static /* synthetic */ Failure copy$default(Failure failure, int i, String str, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = failure.reason;
            }
            if ((i2 & 2) != 0) {
                str = failure.details;
            }
            return failure.copy(i, str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getReason() {
            return this.reason;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getDetails() {
            return this.details;
        }

        public final Failure copy(int reason, String details) {
            Intrinsics.checkNotNullParameter(details, "details");
            return new Failure(reason, details);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Failure)) {
                return false;
            }
            Failure failure = (Failure) other;
            return this.reason == failure.reason && Intrinsics.areEqual(this.details, failure.details);
        }

        public int hashCode() {
            return (Integer.hashCode(this.reason) * 31) + this.details.hashCode();
        }

        public String toString() {
            return "Failure(reason=" + this.reason + ", details=" + this.details + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Failure(int i, String details) {
            super(null);
            Intrinsics.checkNotNullParameter(details, "details");
            this.reason = i;
            this.details = details;
        }

        public /* synthetic */ Failure(int i, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, (i2 & 2) != 0 ? "" : str);
        }

        public final String getDetails() {
            return this.details;
        }

        public final int getReason() {
            return this.reason;
        }
    }
}
