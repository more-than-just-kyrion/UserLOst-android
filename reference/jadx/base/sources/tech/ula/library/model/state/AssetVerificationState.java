package tech.ula.library.model.state;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: SessionStartupFsm.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0004\u0003\u0004\u0005\u0006¨\u0006\u0007"}, d2 = {"Ltech/ula/library/model/state/AssetVerificationState;", "Ltech/ula/library/model/state/SessionStartupState;", "()V", "Ltech/ula/library/model/state/AssetsAreMissingFromSupportDirectories;", "Ltech/ula/library/model/state/FilesystemAssetCopyFailed;", "Ltech/ula/library/model/state/FilesystemAssetVerificationSucceeded;", "Ltech/ula/library/model/state/VerifyingFilesystemAssets;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class AssetVerificationState extends SessionStartupState {
    public /* synthetic */ AssetVerificationState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private AssetVerificationState() {
        super(null);
    }
}
