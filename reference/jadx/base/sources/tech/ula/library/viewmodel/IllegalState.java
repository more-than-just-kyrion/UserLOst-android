package tech.ula.library.viewmodel;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: MainActivityViewModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0015\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017¨\u0006\u0018"}, d2 = {"Ltech/ula/library/viewmodel/IllegalState;", "Ltech/ula/library/viewmodel/State;", "()V", "Ltech/ula/library/viewmodel/AssetsHaveNotBeenDownloaded;", "Ltech/ula/library/viewmodel/BusyboxMissing;", "Ltech/ula/library/viewmodel/DownloadCacheAccessedWhileEmpty;", "Ltech/ula/library/viewmodel/DownloadsDidNotCompleteSuccessfully;", "Ltech/ula/library/viewmodel/ErrorCopyingAppScript;", "Ltech/ula/library/viewmodel/ErrorFetchingAppDatabaseEntries;", "Ltech/ula/library/viewmodel/ErrorFetchingAssetLists;", "Ltech/ula/library/viewmodel/ErrorGeneratingDownloads;", "Ltech/ula/library/viewmodel/FailedToClearSupportFiles;", "Ltech/ula/library/viewmodel/FailedToCopyAssetsToFilesystem;", "Ltech/ula/library/viewmodel/FailedToCopyAssetsToLocalStorage;", "Ltech/ula/library/viewmodel/FailedToExtractFilesystem;", "Ltech/ula/library/viewmodel/IllegalStateTransition;", "Ltech/ula/library/viewmodel/InsufficientAvailableStorage;", "Ltech/ula/library/viewmodel/NoAppSelectedWhenPreferenceSubmitted;", "Ltech/ula/library/viewmodel/NoAppSelectedWhenTransitionNecessary;", "Ltech/ula/library/viewmodel/NoFilesystemSelectedWhenCredentialsSubmitted;", "Ltech/ula/library/viewmodel/NoFilesystemSelectedWhenFlavorSubmitted;", "Ltech/ula/library/viewmodel/NoSelectionsMadeWhenPermissionsGranted;", "Ltech/ula/library/viewmodel/NoSessionSelectedWhenTransitionNecessary;", "Ltech/ula/library/viewmodel/TooManySelectionsMadeWhenPermissionsGranted;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class IllegalState extends State {
    public /* synthetic */ IllegalState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private IllegalState() {
        super(null);
    }
}
