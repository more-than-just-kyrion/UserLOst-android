package tech.ula.library.model.state;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: SessionStartupFsm.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0010\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012¨\u0006\u0013"}, d2 = {"Ltech/ula/library/model/state/SessionStartupEvent;", "", "()V", "Ltech/ula/library/model/state/AssetDownloadComplete;", "Ltech/ula/library/model/state/AssetExtractionComplete;", "Ltech/ula/library/model/state/AssetExtractionFailed;", "Ltech/ula/library/model/state/CopyDownloadsToLocalStorage;", "Ltech/ula/library/model/state/DownloadAssets;", "Ltech/ula/library/model/state/ExtractFilesystem;", "Ltech/ula/library/model/state/FilesystemExtractionComplete;", "Ltech/ula/library/model/state/FilesystemExtractionFailed;", "Ltech/ula/library/model/state/GenerateDownloads;", "Ltech/ula/library/model/state/ResetSessionState;", "Ltech/ula/library/model/state/RetrieveAssetLists;", "Ltech/ula/library/model/state/SessionSelected;", "Ltech/ula/library/model/state/SyncDownloadState;", "Ltech/ula/library/model/state/VerifyAvailableStorage;", "Ltech/ula/library/model/state/VerifyAvailableStorageComplete;", "Ltech/ula/library/model/state/VerifyFilesystemAssets;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class SessionStartupEvent {
    public /* synthetic */ SessionStartupEvent(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private SessionStartupEvent() {
    }
}
