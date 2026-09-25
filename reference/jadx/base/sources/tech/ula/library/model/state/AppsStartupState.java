package tech.ula.library.model.state;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: AppsStartupFsm.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0016\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018¨\u0006\u0019"}, d2 = {"Ltech/ula/library/model/state/AppsStartupState;", "", "()V", "Ltech/ula/library/model/state/AppDatabaseEntriesSynced;", "Ltech/ula/library/model/state/AppHasDisplayPreferencesSet;", "Ltech/ula/library/model/state/AppHasServiceTypePreferencesSet;", "Ltech/ula/library/model/state/AppRequiresDisplayPreferences;", "Ltech/ula/library/model/state/AppRequiresServiceTypePreferences;", "Ltech/ula/library/model/state/AppScriptCopyFailed;", "Ltech/ula/library/model/state/AppScriptCopySucceeded;", "Ltech/ula/library/model/state/AppsFilesystemHasCredentials;", "Ltech/ula/library/model/state/AppsFilesystemHasFlavor;", "Ltech/ula/library/model/state/AppsFilesystemRequiresCredentials;", "Ltech/ula/library/model/state/AppsFilesystemRequiresFlavor;", "Ltech/ula/library/model/state/CopyingAppScript;", "Ltech/ula/library/model/state/DatabaseEntriesFetchFailed;", "Ltech/ula/library/model/state/DatabaseEntriesFetched;", "Ltech/ula/library/model/state/FetchingDatabaseEntries;", "Ltech/ula/library/model/state/IncorrectAppTransition;", "Ltech/ula/library/model/state/PaymentMade;", "Ltech/ula/library/model/state/PaymentRequired;", "Ltech/ula/library/model/state/SyncingDatabaseEntries;", "Ltech/ula/library/model/state/UserContributionCheckComplete;", "Ltech/ula/library/model/state/UserFeedbackCheckComplete;", "Ltech/ula/library/model/state/WaitingForAppSelection;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class AppsStartupState {
    public /* synthetic */ AppsStartupState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private AppsStartupState() {
    }
}
