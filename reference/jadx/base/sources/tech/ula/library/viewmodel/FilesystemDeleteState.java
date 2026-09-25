package tech.ula.library.viewmodel;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: FilesystemListViewModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0003\u0004\u0005B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0003\u0006\u0007\b¨\u0006\t"}, d2 = {"Ltech/ula/library/viewmodel/FilesystemDeleteState;", "Ltech/ula/library/viewmodel/FilesystemListViewState;", "()V", "Failure", "InProgress", "Success", "Ltech/ula/library/viewmodel/FilesystemDeleteState$Failure;", "Ltech/ula/library/viewmodel/FilesystemDeleteState$InProgress;", "Ltech/ula/library/viewmodel/FilesystemDeleteState$Success;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class FilesystemDeleteState extends FilesystemListViewState {
    public /* synthetic */ FilesystemDeleteState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: FilesystemListViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Ltech/ula/library/viewmodel/FilesystemDeleteState$InProgress;", "Ltech/ula/library/viewmodel/FilesystemDeleteState;", "()V", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class InProgress extends FilesystemDeleteState {
        public static final InProgress INSTANCE = new InProgress();

        private InProgress() {
            super(null);
        }
    }

    private FilesystemDeleteState() {
        super(null);
    }

    /* JADX INFO: compiled from: FilesystemListViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Ltech/ula/library/viewmodel/FilesystemDeleteState$Success;", "Ltech/ula/library/viewmodel/FilesystemDeleteState;", "()V", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Success extends FilesystemDeleteState {
        public static final Success INSTANCE = new Success();

        private Success() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: FilesystemListViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Ltech/ula/library/viewmodel/FilesystemDeleteState$Failure;", "Ltech/ula/library/viewmodel/FilesystemDeleteState;", "()V", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Failure extends FilesystemDeleteState {
        public static final Failure INSTANCE = new Failure();

        private Failure() {
            super(null);
        }
    }
}
