package tech.ula.library.model.state;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: SessionStartupFsm.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\r\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f¨\u0006\u0010"}, d2 = {"Ltech/ula/library/model/state/SessionStartupState;", "", "()V", "Ltech/ula/library/model/state/AssetRetrievalState;", "Ltech/ula/library/model/state/AssetVerificationState;", "Ltech/ula/library/model/state/AvfSessionSelected;", "Ltech/ula/library/model/state/CopyingFilesLocallyState;", "Ltech/ula/library/model/state/DownloadRequirementsGenerationState;", "Ltech/ula/library/model/state/DownloadingAssetsState;", "Ltech/ula/library/model/state/ExtractionState;", "Ltech/ula/library/model/state/IncorrectSessionTransition;", "Ltech/ula/library/model/state/SessionIsReadyForPreparation;", "Ltech/ula/library/model/state/SessionIsRestartable;", "Ltech/ula/library/model/state/SingleSessionSupported;", "Ltech/ula/library/model/state/StorageVerificationState;", "Ltech/ula/library/model/state/WaitingForSessionSelection;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class SessionStartupState {
    public /* synthetic */ SessionStartupState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private SessionStartupState() {
    }
}
