package tech.ula.library.utils;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.R;
import tech.ula.library.viewmodel.AssetsHaveNotBeenDownloaded;
import tech.ula.library.viewmodel.BusyboxMissing;
import tech.ula.library.viewmodel.DownloadCacheAccessedWhileEmpty;
import tech.ula.library.viewmodel.DownloadsDidNotCompleteSuccessfully;
import tech.ula.library.viewmodel.ErrorCopyingAppScript;
import tech.ula.library.viewmodel.ErrorFetchingAppDatabaseEntries;
import tech.ula.library.viewmodel.ErrorFetchingAssetLists;
import tech.ula.library.viewmodel.ErrorGeneratingDownloads;
import tech.ula.library.viewmodel.FailedToClearSupportFiles;
import tech.ula.library.viewmodel.FailedToCopyAssetsToFilesystem;
import tech.ula.library.viewmodel.FailedToCopyAssetsToLocalStorage;
import tech.ula.library.viewmodel.FailedToExtractFilesystem;
import tech.ula.library.viewmodel.IllegalState;
import tech.ula.library.viewmodel.IllegalStateTransition;
import tech.ula.library.viewmodel.InsufficientAvailableStorage;
import tech.ula.library.viewmodel.NoAppSelectedWhenPreferenceSubmitted;
import tech.ula.library.viewmodel.NoAppSelectedWhenTransitionNecessary;
import tech.ula.library.viewmodel.NoFilesystemSelectedWhenCredentialsSubmitted;
import tech.ula.library.viewmodel.NoFilesystemSelectedWhenFlavorSubmitted;
import tech.ula.library.viewmodel.NoSelectionsMadeWhenPermissionsGranted;
import tech.ula.library.viewmodel.NoSessionSelectedWhenTransitionNecessary;
import tech.ula.library.viewmodel.TooManySelectionsMadeWhenPermissionsGranted;

/* JADX INFO: compiled from: IllegalStateHandler.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Ltech/ula/library/utils/IllegalStateHandler;", "", "()V", "getLocalizationData", "Ltech/ula/library/utils/Localization;", "state", "Ltech/ula/library/viewmodel/IllegalState;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class IllegalStateHandler {
    public static final IllegalStateHandler INSTANCE = new IllegalStateHandler();

    private IllegalStateHandler() {
    }

    public final Localization getLocalizationData(IllegalState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        if (state instanceof IllegalStateTransition) {
            return new LocalizationData(R.string.illegal_state_transition, CollectionsKt.listOf(((IllegalStateTransition) state).getTransition()));
        }
        if (state instanceof TooManySelectionsMadeWhenPermissionsGranted) {
            return new LocalizationData(R.string.illegal_state_too_many_selections_when_permissions_granted, null, 2, null);
        }
        if (state instanceof NoSelectionsMadeWhenPermissionsGranted) {
            return new LocalizationData(R.string.illegal_state_no_selections_when_permissions_granted, null, 2, null);
        }
        if (state instanceof NoFilesystemSelectedWhenFlavorSubmitted) {
            return new LocalizationData(R.string.illegal_state_no_filesystem_selected_when_flavor_selected, null, 2, null);
        }
        if (state instanceof NoFilesystemSelectedWhenCredentialsSubmitted) {
            return new LocalizationData(R.string.illegal_state_no_filesystem_selected_when_credentials_selected, null, 2, null);
        }
        if (state instanceof NoAppSelectedWhenPreferenceSubmitted) {
            return new LocalizationData(R.string.illegal_state_no_app_selected_when_preference_submitted, null, 2, null);
        }
        if (state instanceof NoAppSelectedWhenTransitionNecessary) {
            return new LocalizationData(R.string.illegal_state_no_app_selected_when_preparation_started, null, 2, null);
        }
        if (state instanceof ErrorFetchingAppDatabaseEntries) {
            return new LocalizationData(R.string.illegal_state_error_fetching_app_database_entries, null, 2, null);
        }
        if (state instanceof ErrorCopyingAppScript) {
            return new LocalizationData(R.string.illegal_state_error_copying_app_script, null, 2, null);
        }
        if (state instanceof NoSessionSelectedWhenTransitionNecessary) {
            return new LocalizationData(R.string.illegal_state_no_session_selected_when_preparation_started, null, 2, null);
        }
        if (state instanceof ErrorFetchingAssetLists) {
            return new LocalizationData(R.string.illegal_state_error_fetching_asset_lists, null, 2, null);
        }
        if (state instanceof ErrorGeneratingDownloads) {
            return new LocalizationData(((ErrorGeneratingDownloads) state).getErrorId(), null, 2, null);
        }
        if (state instanceof DownloadsDidNotCompleteSuccessfully) {
            return ((DownloadsDidNotCompleteSuccessfully) state).getReason();
        }
        if (state instanceof FailedToCopyAssetsToLocalStorage) {
            return new LocalizationData(R.string.illegal_state_failed_to_copy_assets_to_local, null, 2, null);
        }
        if (state instanceof AssetsHaveNotBeenDownloaded) {
            return new LocalizationData(R.string.illegal_state_assets_have_not_been_downloaded, null, 2, null);
        }
        if (state instanceof DownloadCacheAccessedWhileEmpty) {
            return new LocalizationData(R.string.illegal_state_empty_download_cache_access, null, 2, null);
        }
        if (state instanceof FailedToCopyAssetsToFilesystem) {
            return new LocalizationData(R.string.illegal_state_failed_to_copy_assets_to_filesystem, null, 2, null);
        }
        if (state instanceof FailedToExtractFilesystem) {
            return new LocalizationData(R.string.illegal_state_failed_to_extract_filesystem, CollectionsKt.listOf(((FailedToExtractFilesystem) state).getReason()));
        }
        if (state instanceof FailedToClearSupportFiles) {
            return new LocalizationData(R.string.illegal_state_failed_to_clear_support_files, null, 2, null);
        }
        if (state instanceof InsufficientAvailableStorage) {
            return new LocalizationData(R.string.illegal_state_insufficient_storage, null, 2, null);
        }
        if (state instanceof BusyboxMissing) {
            return new LocalizationData(R.string.illegal_state_busybox_missing, null, 2, null);
        }
        throw new NoWhenBranchMatchedException();
    }
}
