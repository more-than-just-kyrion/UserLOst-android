package tech.ula.library.viewmodel;

import androidx.core.app.NotificationCompat;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import com.iiordanov.bVNC.Constants;
import com.iiordanov.bVNC.RfbProto;
import io.sentry.marshaller.json.JsonMarshaller;
import java.io.FileNotFoundException;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import org.spongycastle.bcpg.SecretKeyPacket;
import tech.ula.library.R;
import tech.ula.library.model.entities.App;
import tech.ula.library.model.entities.DisplayPreferences;
import tech.ula.library.model.entities.ExecutionType;
import tech.ula.library.model.entities.Filesystem;
import tech.ula.library.model.entities.ServiceTypePreferences;
import tech.ula.library.model.entities.Session;
import tech.ula.library.model.repositories.DownloadMetadata;
import tech.ula.library.model.state.AppDatabaseEntriesSynced;
import tech.ula.library.model.state.AppHasDisplayPreferencesSet;
import tech.ula.library.model.state.AppHasServiceTypePreferencesSet;
import tech.ula.library.model.state.AppRequiresDisplayPreferences;
import tech.ula.library.model.state.AppRequiresServiceTypePreferences;
import tech.ula.library.model.state.AppScriptCopyFailed;
import tech.ula.library.model.state.AppScriptCopySucceeded;
import tech.ula.library.model.state.AppSelected;
import tech.ula.library.model.state.AppsFilesystemHasCredentials;
import tech.ula.library.model.state.AppsFilesystemHasFlavor;
import tech.ula.library.model.state.AppsFilesystemRequiresCredentials;
import tech.ula.library.model.state.AppsFilesystemRequiresFlavor;
import tech.ula.library.model.state.AppsStartupEvent;
import tech.ula.library.model.state.AppsStartupFsm;
import tech.ula.library.model.state.AppsStartupState;
import tech.ula.library.model.state.AssetDownloadComplete;
import tech.ula.library.model.state.AssetExtractionComplete;
import tech.ula.library.model.state.AssetExtractionFailed;
import tech.ula.library.model.state.AssetListsRetrievalFailed;
import tech.ula.library.model.state.AssetListsRetrievalSucceeded;
import tech.ula.library.model.state.AssetRetrievalState;
import tech.ula.library.model.state.AssetVerificationState;
import tech.ula.library.model.state.AssetsAreMissingFromSupportDirectories;
import tech.ula.library.model.state.AttemptedCacheAccessWhileEmpty;
import tech.ula.library.model.state.AvfSessionSelected;
import tech.ula.library.model.state.CheckAppSessionDisplayPreferences;
import tech.ula.library.model.state.CheckAppSessionServiceTypePreferences;
import tech.ula.library.model.state.CheckAppsFilesystemCredentials;
import tech.ula.library.model.state.CheckAppsFilesystemFlavor;
import tech.ula.library.model.state.CheckPayment;
import tech.ula.library.model.state.CopyAppScriptToFilesystem;
import tech.ula.library.model.state.CopyDownloadsToLocalStorage;
import tech.ula.library.model.state.CopyingAppScript;
import tech.ula.library.model.state.CopyingFilesLocallyState;
import tech.ula.library.model.state.CopyingFilesToLocalDirectories;
import tech.ula.library.model.state.DatabaseEntriesFetchFailed;
import tech.ula.library.model.state.DatabaseEntriesFetched;
import tech.ula.library.model.state.DownloadAssets;
import tech.ula.library.model.state.DownloadRequirementsGenerationState;
import tech.ula.library.model.state.DownloadingAssets;
import tech.ula.library.model.state.DownloadingAssetsState;
import tech.ula.library.model.state.DownloadsHaveFailed;
import tech.ula.library.model.state.DownloadsHaveSucceeded;
import tech.ula.library.model.state.DownloadsRequired;
import tech.ula.library.model.state.ExtractFilesystem;
import tech.ula.library.model.state.ExtractingFilesystem;
import tech.ula.library.model.state.ExtractionFailed;
import tech.ula.library.model.state.ExtractionHasCompletedSuccessfully;
import tech.ula.library.model.state.ExtractionState;
import tech.ula.library.model.state.FetchingDatabaseEntries;
import tech.ula.library.model.state.FilesystemAssetCopyFailed;
import tech.ula.library.model.state.FilesystemAssetVerificationSucceeded;
import tech.ula.library.model.state.FilesystemExtractionComplete;
import tech.ula.library.model.state.FilesystemExtractionFailed;
import tech.ula.library.model.state.GenerateDownloads;
import tech.ula.library.model.state.GeneratingDownloadRequirements;
import tech.ula.library.model.state.IncorrectAppTransition;
import tech.ula.library.model.state.IncorrectSessionTransition;
import tech.ula.library.model.state.LocalDirectoryCopyFailed;
import tech.ula.library.model.state.LocalDirectoryCopySucceeded;
import tech.ula.library.model.state.LowAvailableStorage;
import tech.ula.library.model.state.NoDownloadsRequired;
import tech.ula.library.model.state.PaymentMade;
import tech.ula.library.model.state.PaymentRequired;
import tech.ula.library.model.state.RemoteUnreachableForGeneration;
import tech.ula.library.model.state.ResetAppState;
import tech.ula.library.model.state.ResetSessionState;
import tech.ula.library.model.state.RetrieveAssetLists;
import tech.ula.library.model.state.RetrievingAssetLists;
import tech.ula.library.model.state.SessionIsReadyForPreparation;
import tech.ula.library.model.state.SessionIsRestartable;
import tech.ula.library.model.state.SessionSelected;
import tech.ula.library.model.state.SessionStartupEvent;
import tech.ula.library.model.state.SessionStartupFsm;
import tech.ula.library.model.state.SessionStartupState;
import tech.ula.library.model.state.SingleSessionSupported;
import tech.ula.library.model.state.StorageVerificationCompletedSuccessfully;
import tech.ula.library.model.state.StorageVerificationState;
import tech.ula.library.model.state.SubmitAppSessionDisplayPreferences;
import tech.ula.library.model.state.SubmitAppSessionServiceTypePreferences;
import tech.ula.library.model.state.SubmitAppsFilesystemCredentials;
import tech.ula.library.model.state.SubmitAppsFilesystemFlavor;
import tech.ula.library.model.state.SubmitPayment;
import tech.ula.library.model.state.SyncDatabaseEntries;
import tech.ula.library.model.state.SyncDownloadState;
import tech.ula.library.model.state.SyncingDatabaseEntries;
import tech.ula.library.model.state.UserContributionCheckComplete;
import tech.ula.library.model.state.UserContributionChecked;
import tech.ula.library.model.state.UserFeedbackCheckComplete;
import tech.ula.library.model.state.UserFeedbackChecked;
import tech.ula.library.model.state.VerifyAvailableStorage;
import tech.ula.library.model.state.VerifyAvailableStorageComplete;
import tech.ula.library.model.state.VerifyFilesystemAssets;
import tech.ula.library.model.state.VerifyingFilesystemAssets;
import tech.ula.library.model.state.VerifyingSufficientStorage;
import tech.ula.library.model.state.VerifyingSufficientStorageFailed;
import tech.ula.library.model.state.WaitingForAppSelection;
import tech.ula.library.model.state.WaitingForSessionSelection;
import tech.ula.library.utils.AssetFileClearer;
import tech.ula.library.utils.BreadcrumbType;
import tech.ula.library.utils.Logger;
import tech.ula.library.utils.SentryLogger;
import tech.ula.library.utils.UlaBreadcrumb;

/* JADX INFO: compiled from: MainActivityViewModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0082\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\b\u00105\u001a\u00020\u000bH\u0002J\u0006\u00106\u001a\u000207J\u0016\u00108\u001a\u0002072\f\u00109\u001a\b\u0012\u0004\u0012\u0002070:H\u0002J\f\u0010;\u001a\b\u0012\u0004\u0012\u0002010\rJ\u0010\u0010<\u001a\u0002072\u0006\u0010=\u001a\u00020\u000eH\u0002J\u0010\u0010>\u001a\u0002072\u0006\u0010=\u001a\u00020?H\u0002J\u0010\u0010@\u001a\u0002072\u0006\u0010=\u001a\u00020AH\u0002J\u0016\u0010B\u001a\u0002072\u0006\u0010C\u001a\u00020DH\u0086@¢\u0006\u0002\u0010EJ\u0010\u0010F\u001a\u0002072\u0006\u0010=\u001a\u00020GH\u0002J\u0010\u0010H\u001a\u0002072\u0006\u0010=\u001a\u00020IH\u0002J\u0010\u0010J\u001a\u0002072\u0006\u0010=\u001a\u00020KH\u0002J\u000e\u0010L\u001a\u0002072\u0006\u0010=\u001a\u00020MJ\u0006\u0010N\u001a\u000207J\u0006\u0010O\u001a\u000207J\u0010\u0010P\u001a\u0002072\u0006\u0010=\u001a\u00020-H\u0002J\u0010\u0010Q\u001a\u0002072\u0006\u0010=\u001a\u00020RH\u0002J\u0006\u0010S\u001a\u000207J\u0006\u0010T\u001a\u000207J\b\u0010U\u001a\u000207H\u0014J\u0006\u0010V\u001a\u000207J\u0010\u0010W\u001a\u0002072\u0006\u0010=\u001a\u00020XH\u0002J\b\u0010Y\u001a\u000207H\u0002J\b\u0010Z\u001a\u00020\u000bH\u0002J\b\u0010[\u001a\u00020\u000bH\u0002J\u0014\u0010\\\u001a\u0002072\f\u0010]\u001a\b\u0012\u0004\u0012\u00020_0^J\u000e\u0010`\u001a\u0002072\u0006\u0010a\u001a\u00020bJ&\u0010c\u001a\u0002072\u0006\u0010d\u001a\u00020\u001b2\u0006\u0010e\u001a\u00020\u000b2\u0006\u0010f\u001a\u00020\u000b2\u0006\u0010g\u001a\u00020\u000bJ\u000e\u0010h\u001a\u0002072\u0006\u0010i\u001a\u00020jJ\u0010\u0010k\u001a\u0002072\u0006\u0010l\u001a\u00020mH\u0002J\u000e\u0010n\u001a\u0002072\u0006\u0010o\u001a\u00020pJ\u0006\u0010q\u001a\u000207J\u000e\u0010r\u001a\u0002072\u0006\u0010s\u001a\u00020\u000bJ\u0006\u0010t\u001a\u000207J\u001e\u0010u\u001a\u0002072\u0006\u0010v\u001a\u00020\u00112\u0006\u0010w\u001a\u00020\u00112\u0006\u0010x\u001a\u00020\u0011J \u0010y\u001a\u0002072\u0006\u0010z\u001a\u00020\u00112\u0006\u0010{\u001a\u00020\u000b2\b\b\u0002\u0010|\u001a\u00020}J\u000e\u0010~\u001a\u0002072\u0006\u0010\u007f\u001a\u00020'J\u0012\u0010\u0080\u0001\u001a\u0002072\u0007\u0010l\u001a\u00030\u0081\u0001H\u0002J\u0007\u0010\u0082\u0001\u001a\u000207J\u0007\u0010\u0083\u0001\u001a\u000207J\u0007\u0010\u0084\u0001\u001a\u000207J-\u0010\u0085\u0001\u001a\u0002072\t\b\u0002\u0010\u0086\u0001\u001a\u00020\u001b2\t\b\u0002\u0010\u0087\u0001\u001a\u00020'2\u0006\u0010f\u001a\u00020\u000b2\u0006\u0010g\u001a\u00020\u000bR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082D¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u00020\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001a\u0010 \u001a\u00020!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001a\u0010&\u001a\u00020'X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010,\u001a\b\u0012\u0004\u0012\u00020-0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010/\u001a\b\u0012\u0004\u0012\u00020100X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020!X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020'X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0088\u0001"}, d2 = {"Ltech/ula/library/viewmodel/MainActivityViewModel;", "Landroidx/lifecycle/ViewModel;", "Lkotlinx/coroutines/CoroutineScope;", "appsStartupFsm", "Ltech/ula/library/model/state/AppsStartupFsm;", "sessionStartupFsm", "Ltech/ula/library/model/state/SessionStartupFsm;", JsonMarshaller.LOGGER, "Ltech/ula/library/utils/Logger;", "(Ltech/ula/library/model/state/AppsStartupFsm;Ltech/ula/library/model/state/SessionStartupFsm;Ltech/ula/library/utils/Logger;)V", "appsAreWaitingForSelection", "", "appsState", "Landroidx/lifecycle/LiveData;", "Ltech/ula/library/model/state/AppsStartupState;", "avfSessionStartDispatched", "className", "", "coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "job", "Lkotlinx/coroutines/CompletableJob;", "lastAskConnectType", "lastAskDisplayPreferences", "lastSelectedApp", "Ltech/ula/library/model/entities/App;", "getLastSelectedApp", "()Ltech/ula/library/model/entities/App;", "setLastSelectedApp", "(Ltech/ula/library/model/entities/App;)V", "lastSelectedFilesystem", "Ltech/ula/library/model/entities/Filesystem;", "getLastSelectedFilesystem", "()Ltech/ula/library/model/entities/Filesystem;", "setLastSelectedFilesystem", "(Ltech/ula/library/model/entities/Filesystem;)V", "lastSelectedSession", "Ltech/ula/library/model/entities/Session;", "getLastSelectedSession", "()Ltech/ula/library/model/entities/Session;", "setLastSelectedSession", "(Ltech/ula/library/model/entities/Session;)V", "sessionState", "Ltech/ula/library/model/state/SessionStartupState;", "sessionsAreWaitingForSelection", "state", "Landroidx/lifecycle/MediatorLiveData;", "Ltech/ula/library/viewmodel/State;", "unselectedApp", "unselectedFilesystem", "unselectedSession", "appsPreparationRequirementsHaveBeenSelected", "companionAppSetupComplete", "", "doTransitionIfRequirementsAreSelected", "transition", "Lkotlin/Function0;", "getState", "handleAppsPreparationState", "newState", "handleAssetRetrievalState", "Ltech/ula/library/model/state/AssetRetrievalState;", "handleAssetVerificationState", "Ltech/ula/library/model/state/AssetVerificationState;", "handleClearSupportFiles", "assetFileClearer", "Ltech/ula/library/utils/AssetFileClearer;", "(Ltech/ula/library/utils/AssetFileClearer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "handleCopyingFilesLocallyState", "Ltech/ula/library/model/state/CopyingFilesLocallyState;", "handleDownloadRequirementsGenerationState", "Ltech/ula/library/model/state/DownloadRequirementsGenerationState;", "handleDownloadingAssetsState", "Ltech/ula/library/model/state/DownloadingAssetsState;", "handleExtractionState", "Ltech/ula/library/model/state/ExtractionState;", "handleOnResume", "handleSessionHasBeenActivated", "handleSessionPreparationState", "handleStorageVerificationState", "Ltech/ula/library/model/state/StorageVerificationState;", "handleUserInputCancelled", "lowAvailableStorageAcknowledged", "onCleared", "permissionsHaveBeenGranted", "postIllegalStateWithLog", "Ltech/ula/library/viewmodel/IllegalState;", "resetStartupState", "selectionsCanBeMade", "sessionPreparationRequirementsHaveBeenSelected", "startAssetDownloads", "downloadRequirements", "", "Ltech/ula/library/model/repositories/DownloadMetadata;", "submitAppDisplayPreferences", "displayPreferences", "Ltech/ula/library/model/entities/DisplayPreferences;", "submitAppSelection", "app", "autoStart", "askConnectType", "askDisplayPreferences", "submitAppServiceTypePreferences", "serviceTypePreferences", "Ltech/ula/library/model/entities/ServiceTypePreferences;", "submitAppsStartupEvent", NotificationCompat.CATEGORY_EVENT, "Ltech/ula/library/model/state/AppsStartupEvent;", "submitCompletedDownloadId", "id", "", "submitCompletedExtraction", "submitExtractionResult", "passed", "submitFailedExtraction", "submitFilesystemCredentials", "username", Constants.testpassword, "vncPassword", "submitFilesystemFlavor", "flavor", "isPaid", "executionType", "Ltech/ula/library/model/entities/ExecutionType;", "submitSessionSelection", "session", "submitSessionStartupEvent", "Ltech/ula/library/model/state/SessionStartupEvent;", "submitUserPayment", "userContributionChecked", "userFeedbackChecked", "waitForPermissions", "appToContinue", "sessionToContinue", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MainActivityViewModel extends ViewModel implements CoroutineScope {
    private boolean appsAreWaitingForSelection;
    private final AppsStartupFsm appsStartupFsm;
    private final LiveData<AppsStartupState> appsState;
    private boolean avfSessionStartDispatched;
    private final String className;
    private final CompletableJob job;
    private boolean lastAskConnectType;
    private boolean lastAskDisplayPreferences;
    private App lastSelectedApp;
    private Filesystem lastSelectedFilesystem;
    private Session lastSelectedSession;
    private final Logger logger;
    private final SessionStartupFsm sessionStartupFsm;
    private final LiveData<SessionStartupState> sessionState;
    private boolean sessionsAreWaitingForSelection;
    private final MediatorLiveData<State> state;
    private final App unselectedApp;
    private final Filesystem unselectedFilesystem;
    private final Session unselectedSession;

    /* JADX INFO: renamed from: tech.ula.library.viewmodel.MainActivityViewModel$handleClearSupportFiles$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: MainActivityViewModel.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.viewmodel.MainActivityViewModel", f = "MainActivityViewModel.kt", i = {0}, l = {RfbProto.secTypeX509Ident}, m = "handleClearSupportFiles", n = {"this"}, s = {"L$0"})
    static final class C02971 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02971(Continuation<? super C02971> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MainActivityViewModel.this.handleClearSupportFiles(null, this);
        }
    }

    public /* synthetic */ MainActivityViewModel(AppsStartupFsm appsStartupFsm, SessionStartupFsm sessionStartupFsm, SentryLogger sentryLogger, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(appsStartupFsm, sessionStartupFsm, (i & 4) != 0 ? new SentryLogger() : sentryLogger);
    }

    public MainActivityViewModel(AppsStartupFsm appsStartupFsm, SessionStartupFsm sessionStartupFsm, Logger logger) {
        Intrinsics.checkNotNullParameter(appsStartupFsm, "appsStartupFsm");
        Intrinsics.checkNotNullParameter(sessionStartupFsm, "sessionStartupFsm");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.appsStartupFsm = appsStartupFsm;
        this.sessionStartupFsm = sessionStartupFsm;
        this.logger = logger;
        this.className = "MainVM";
        App app = new App("UNSELECTED", null, null, false, false, null, false, 0L, SecretKeyPacket.USAGE_SHA1, null);
        this.unselectedApp = app;
        this.lastSelectedApp = app;
        Session session = new Session(-1L, "UNSELECTED", -1L, null, false, null, null, null, null, 0L, 0L, null, false, false, 0, false, 0.0f, false, false, false, false, null, false, 0L, false, 33554424, null);
        this.unselectedSession = session;
        this.lastSelectedSession = session;
        Filesystem filesystem = new Filesystem(-1L, "UNSELECTED", null, null, null, null, null, null, false, null, false, false, false, false, null, 32764, null);
        this.unselectedFilesystem = filesystem;
        this.lastSelectedFilesystem = filesystem;
        LiveData<AppsStartupState> state = appsStartupFsm.getState();
        this.appsState = state;
        LiveData<SessionStartupState> state2 = sessionStartupFsm.getState();
        this.sessionState = state2;
        MediatorLiveData<State> mediatorLiveData = new MediatorLiveData<>();
        mediatorLiveData.postValue(WaitingForInput.INSTANCE);
        this.state = mediatorLiveData;
        this.job = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        final Function1<AppsStartupState, Unit> function1 = new Function1<AppsStartupState, Unit>() { // from class: tech.ula.library.viewmodel.MainActivityViewModel.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(AppsStartupState appsStartupState) {
                invoke2(appsStartupState);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(AppsStartupState appsStartupState) {
                if (appsStartupState != null) {
                    MainActivityViewModel mainActivityViewModel = MainActivityViewModel.this;
                    mainActivityViewModel.logger.addBreadcrumb(new UlaBreadcrumb(mainActivityViewModel.className, BreadcrumbType.ObservedState.INSTANCE, String.valueOf(appsStartupState)));
                    boolean z = appsStartupState instanceof WaitingForAppSelection;
                    if (!z) {
                        mainActivityViewModel.appsAreWaitingForSelection = false;
                    }
                    if (z) {
                        mainActivityViewModel.appsAreWaitingForSelection = true;
                    } else if (appsStartupState instanceof DatabaseEntriesFetched) {
                        DatabaseEntriesFetched databaseEntriesFetched = (DatabaseEntriesFetched) appsStartupState;
                        mainActivityViewModel.setLastSelectedSession(databaseEntriesFetched.getAppSession());
                        mainActivityViewModel.setLastSelectedFilesystem(databaseEntriesFetched.getAppsFilesystem());
                    } else if (appsStartupState instanceof AppDatabaseEntriesSynced) {
                        AppDatabaseEntriesSynced appDatabaseEntriesSynced = (AppDatabaseEntriesSynced) appsStartupState;
                        mainActivityViewModel.setLastSelectedApp(appDatabaseEntriesSynced.getApp());
                        mainActivityViewModel.setLastSelectedSession(appDatabaseEntriesSynced.getSession());
                        mainActivityViewModel.setLastSelectedFilesystem(appDatabaseEntriesSynced.getFilesystem());
                    }
                    mainActivityViewModel.handleAppsPreparationState(appsStartupState);
                }
            }
        };
        mediatorLiveData.addSource(state, new Observer() { // from class: tech.ula.library.viewmodel.MainActivityViewModel$$ExternalSyntheticLambda0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                MainActivityViewModel._init_$lambda$2(function1, obj);
            }
        });
        final Function1<SessionStartupState, Unit> function2 = new Function1<SessionStartupState, Unit>() { // from class: tech.ula.library.viewmodel.MainActivityViewModel.2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SessionStartupState sessionStartupState) {
                invoke2(sessionStartupState);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(SessionStartupState sessionStartupState) {
                if (sessionStartupState != null) {
                    MainActivityViewModel mainActivityViewModel = MainActivityViewModel.this;
                    mainActivityViewModel.logger.addBreadcrumb(new UlaBreadcrumb(mainActivityViewModel.className, BreadcrumbType.ObservedState.INSTANCE, String.valueOf(sessionStartupState)));
                    mainActivityViewModel.handleSessionPreparationState(sessionStartupState);
                }
            }
        };
        mediatorLiveData.addSource(state2, new Observer() { // from class: tech.ula.library.viewmodel.MainActivityViewModel$$ExternalSyntheticLambda1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                MainActivityViewModel._init_$lambda$3(function2, obj);
            }
        });
    }

    public final App getLastSelectedApp() {
        return this.lastSelectedApp;
    }

    public final void setLastSelectedApp(App app) {
        Intrinsics.checkNotNullParameter(app, "<set-?>");
        this.lastSelectedApp = app;
    }

    public final Session getLastSelectedSession() {
        return this.lastSelectedSession;
    }

    public final void setLastSelectedSession(Session session) {
        Intrinsics.checkNotNullParameter(session, "<set-?>");
        this.lastSelectedSession = session;
    }

    public final Filesystem getLastSelectedFilesystem() {
        return this.lastSelectedFilesystem;
    }

    public final void setLastSelectedFilesystem(Filesystem filesystem) {
        Intrinsics.checkNotNullParameter(filesystem, "<set-?>");
        this.lastSelectedFilesystem = filesystem;
    }

    private final void postIllegalStateWithLog(IllegalState newState) {
        this.logger.sendIllegalStateLog(newState);
        this.state.postValue(newState);
        new Timer().schedule(new TimerTask() { // from class: tech.ula.library.viewmodel.MainActivityViewModel$postIllegalStateWithLog$$inlined$timerTask$1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                this.this$0.resetStartupState();
            }
        }, 100L);
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return Dispatchers.getMain().plus(this.job);
    }

    @Override // androidx.lifecycle.ViewModel
    protected void onCleared() {
        super.onCleared();
        Job.DefaultImpls.cancel$default((Job) this.job, (CancellationException) null, 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$2(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$3(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public final LiveData<State> getState() {
        return this.state;
    }

    public final void handleOnResume() {
        submitSessionStartupEvent(SyncDownloadState.INSTANCE);
    }

    public static /* synthetic */ void waitForPermissions$default(MainActivityViewModel mainActivityViewModel, App app, Session session, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            app = mainActivityViewModel.unselectedApp;
        }
        if ((i & 2) != 0) {
            session = mainActivityViewModel.unselectedSession;
        }
        mainActivityViewModel.waitForPermissions(app, session, z, z2);
    }

    public final void waitForPermissions(App appToContinue, Session sessionToContinue, boolean askConnectType, boolean askDisplayPreferences) {
        Intrinsics.checkNotNullParameter(appToContinue, "appToContinue");
        Intrinsics.checkNotNullParameter(sessionToContinue, "sessionToContinue");
        resetStartupState();
        this.lastSelectedApp = appToContinue;
        this.lastSelectedSession = sessionToContinue;
        this.lastAskConnectType = askConnectType;
        this.lastAskDisplayPreferences = askDisplayPreferences;
    }

    public final void permissionsHaveBeenGranted() {
        if (!Intrinsics.areEqual(this.lastSelectedApp, this.unselectedApp) && !Intrinsics.areEqual(this.lastSelectedSession, this.unselectedSession)) {
            postIllegalStateWithLog(TooManySelectionsMadeWhenPermissionsGranted.INSTANCE);
            return;
        }
        if (Intrinsics.areEqual(this.lastSelectedApp, this.unselectedApp) && Intrinsics.areEqual(this.lastSelectedSession, this.unselectedSession)) {
            postIllegalStateWithLog(NoSelectionsMadeWhenPermissionsGranted.INSTANCE);
        } else if (!Intrinsics.areEqual(this.lastSelectedApp, this.unselectedApp)) {
            submitAppsStartupEvent(new AppSelected(this.lastSelectedApp, this.lastAskConnectType, this.lastAskDisplayPreferences));
        } else {
            if (Intrinsics.areEqual(this.lastSelectedSession, this.unselectedSession)) {
                return;
            }
            submitSessionStartupEvent(new SessionSelected(this.lastSelectedSession));
        }
    }

    public final void companionAppSetupComplete() {
        if (Intrinsics.areEqual(this.lastSelectedSession, this.unselectedSession)) {
            return;
        }
        submitSessionStartupEvent(new SessionSelected(this.lastSelectedSession));
    }

    public final void submitAppSelection(App app, boolean autoStart, boolean askConnectType, boolean askDisplayPreferences) {
        Intrinsics.checkNotNullParameter(app, "app");
        if (autoStart || selectionsCanBeMade()) {
            this.lastSelectedApp = app;
            submitAppsStartupEvent(new AppSelected(app, askConnectType, askDisplayPreferences));
        }
    }

    public final void submitSessionSelection(Session session) {
        Intrinsics.checkNotNullParameter(session, "session");
        if (selectionsCanBeMade()) {
            this.lastSelectedSession = session;
            submitSessionStartupEvent(new SessionSelected(session));
        }
    }

    public final void submitCompletedDownloadId(long id) {
        submitSessionStartupEvent(new AssetDownloadComplete(id));
    }

    public final void submitCompletedExtraction() {
        submitSessionStartupEvent(AssetExtractionComplete.INSTANCE);
    }

    public final void submitFailedExtraction() {
        submitSessionStartupEvent(AssetExtractionFailed.INSTANCE);
    }

    public final void userFeedbackChecked() {
        submitAppsStartupEvent(UserFeedbackChecked.INSTANCE);
    }

    public final void userContributionChecked() {
        submitAppsStartupEvent(UserContributionChecked.INSTANCE);
    }

    public static /* synthetic */ void submitFilesystemFlavor$default(MainActivityViewModel mainActivityViewModel, String str, boolean z, ExecutionType executionType, int i, Object obj) {
        if ((i & 4) != 0) {
            executionType = ExecutionType.PROOT;
        }
        mainActivityViewModel.submitFilesystemFlavor(str, z, executionType);
    }

    public final void submitFilesystemFlavor(String flavor, boolean isPaid, ExecutionType executionType) {
        Intrinsics.checkNotNullParameter(flavor, "flavor");
        Intrinsics.checkNotNullParameter(executionType, "executionType");
        if (Intrinsics.areEqual(this.lastSelectedFilesystem, this.unselectedFilesystem)) {
            postIllegalStateWithLog(NoFilesystemSelectedWhenFlavorSubmitted.INSTANCE);
        } else {
            submitAppsStartupEvent(new SubmitAppsFilesystemFlavor(this.lastSelectedFilesystem, flavor, isPaid, executionType));
        }
    }

    public final void submitUserPayment() {
        submitAppsStartupEvent(new SubmitPayment(this.lastSelectedFilesystem));
    }

    public final void submitFilesystemCredentials(String username, String password, String vncPassword) {
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(vncPassword, "vncPassword");
        if (Intrinsics.areEqual(this.lastSelectedFilesystem, this.unselectedFilesystem)) {
            postIllegalStateWithLog(NoFilesystemSelectedWhenCredentialsSubmitted.INSTANCE);
        } else {
            submitAppsStartupEvent(new SubmitAppsFilesystemCredentials(this.lastSelectedFilesystem, username, password, vncPassword));
        }
    }

    public final void lowAvailableStorageAcknowledged() {
        submitSessionStartupEvent(VerifyAvailableStorageComplete.INSTANCE);
    }

    public final void submitAppServiceTypePreferences(ServiceTypePreferences serviceTypePreferences) {
        Intrinsics.checkNotNullParameter(serviceTypePreferences, "serviceTypePreferences");
        if (Intrinsics.areEqual(this.lastSelectedSession, this.unselectedSession)) {
            postIllegalStateWithLog(NoAppSelectedWhenPreferenceSubmitted.INSTANCE);
        } else {
            submitAppsStartupEvent(new SubmitAppSessionServiceTypePreferences(this.lastSelectedSession, serviceTypePreferences));
        }
    }

    public final void submitAppDisplayPreferences(DisplayPreferences displayPreferences) {
        Intrinsics.checkNotNullParameter(displayPreferences, "displayPreferences");
        if (Intrinsics.areEqual(this.lastSelectedSession, this.unselectedSession)) {
            postIllegalStateWithLog(NoAppSelectedWhenPreferenceSubmitted.INSTANCE);
        } else {
            submitAppsStartupEvent(new SubmitAppSessionDisplayPreferences(this.lastSelectedSession, displayPreferences));
        }
    }

    public final void submitExtractionResult(boolean passed) {
        if (passed) {
            submitSessionStartupEvent(FilesystemExtractionComplete.INSTANCE);
        } else {
            submitSessionStartupEvent(FilesystemExtractionFailed.INSTANCE);
        }
    }

    public final void handleUserInputCancelled() {
        resetStartupState();
    }

    public final void startAssetDownloads(List<DownloadMetadata> downloadRequirements) {
        Intrinsics.checkNotNullParameter(downloadRequirements, "downloadRequirements");
        submitSessionStartupEvent(new DownloadAssets(downloadRequirements));
    }

    public final void handleSessionHasBeenActivated() {
        resetStartupState();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object handleClearSupportFiles(AssetFileClearer assetFileClearer, Continuation<? super Unit> continuation) throws Throwable {
        C02971 c02971;
        MainActivityViewModel mainActivityViewModel;
        if (continuation instanceof C02971) {
            c02971 = (C02971) continuation;
            if ((c02971.label & Integer.MIN_VALUE) != 0) {
                c02971.label -= Integer.MIN_VALUE;
            } else {
                c02971 = new C02971(continuation);
            }
        } else {
            c02971 = new C02971(continuation);
        }
        Object obj = c02971.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02971.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            if (this.sessionStartupFsm.sessionsAreActive()) {
                this.state.postValue(ActiveSessionsMustBeDeactivated.INSTANCE);
                return Unit.INSTANCE;
            }
            this.state.postValue(ClearingSupportFiles.INSTANCE);
            try {
                c02971.L$0 = this;
                c02971.label = 1;
                if (assetFileClearer.clearAllSupportAssets(c02971) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                mainActivityViewModel = this;
            } catch (FileNotFoundException unused) {
                mainActivityViewModel = this;
                mainActivityViewModel.postIllegalStateWithLog(FailedToClearSupportFiles.INSTANCE);
            } catch (IllegalStateException unused2) {
                mainActivityViewModel = this;
                mainActivityViewModel.postIllegalStateWithLog(BusyboxMissing.INSTANCE);
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mainActivityViewModel = (MainActivityViewModel) c02971.L$0;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (FileNotFoundException unused3) {
                mainActivityViewModel.postIllegalStateWithLog(FailedToClearSupportFiles.INSTANCE);
            } catch (IllegalStateException unused4) {
                mainActivityViewModel.postIllegalStateWithLog(BusyboxMissing.INSTANCE);
            }
        }
        mainActivityViewModel.state.postValue(ProgressBarOperationComplete.INSTANCE);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleAppsPreparationState(AppsStartupState newState) {
        boolean z;
        boolean z2 = newState instanceof WaitingForAppSelection;
        if (z2 || ((z = newState instanceof FetchingDatabaseEntries))) {
            return;
        }
        if (!appsPreparationRequirementsHaveBeenSelected()) {
            postIllegalStateWithLog(NoAppSelectedWhenTransitionNecessary.INSTANCE);
            return;
        }
        if (newState instanceof IncorrectAppTransition) {
            postIllegalStateWithLog(new IllegalStateTransition(String.valueOf(newState)));
            return;
        }
        if (z2 || z) {
            return;
        }
        if (newState instanceof DatabaseEntriesFetched) {
            this.state.postValue(UserFeedbackCheckRequired.INSTANCE);
            return;
        }
        if (newState instanceof DatabaseEntriesFetchFailed) {
            postIllegalStateWithLog(ErrorFetchingAppDatabaseEntries.INSTANCE);
            return;
        }
        if (newState instanceof UserFeedbackCheckComplete) {
            this.state.postValue(UserContributionCheckRequired.INSTANCE);
            return;
        }
        if (newState instanceof UserContributionCheckComplete) {
            submitAppsStartupEvent(new CheckAppsFilesystemFlavor(this.lastSelectedFilesystem));
            return;
        }
        if (newState instanceof AppsFilesystemHasFlavor) {
            submitAppsStartupEvent(new CheckPayment(this.lastSelectedSession, this.lastSelectedFilesystem));
            return;
        }
        if (newState instanceof AppsFilesystemRequiresFlavor) {
            this.state.postValue(FilesystemFlavorRequired.INSTANCE);
            return;
        }
        if (newState instanceof PaymentMade) {
            submitAppsStartupEvent(new CheckAppsFilesystemCredentials(this.lastSelectedFilesystem));
            return;
        }
        if (newState instanceof PaymentRequired) {
            this.state.postValue(UserPaymentRequired.INSTANCE);
            return;
        }
        if (newState instanceof AppsFilesystemHasCredentials) {
            submitAppsStartupEvent(new CheckAppSessionServiceTypePreferences(this.lastSelectedSession));
            return;
        }
        if (newState instanceof AppsFilesystemRequiresCredentials) {
            this.state.postValue(FilesystemCredentialsRequired.INSTANCE);
            return;
        }
        if (newState instanceof AppHasServiceTypePreferencesSet) {
            submitAppsStartupEvent(new CheckAppSessionDisplayPreferences(this.lastSelectedSession));
            return;
        }
        if (newState instanceof AppRequiresServiceTypePreferences) {
            this.state.postValue(new AppServiceTypePreferenceRequired(this.lastSelectedSession));
            return;
        }
        if (newState instanceof AppHasDisplayPreferencesSet) {
            submitAppsStartupEvent(new CopyAppScriptToFilesystem(this.lastSelectedApp, this.lastSelectedFilesystem));
            return;
        }
        if (newState instanceof AppRequiresDisplayPreferences) {
            this.state.postValue(new AppDisplayPreferencesRequired(this.lastSelectedSession));
            return;
        }
        if (newState instanceof CopyingAppScript) {
            return;
        }
        if (newState instanceof AppScriptCopySucceeded) {
            submitAppsStartupEvent(new SyncDatabaseEntries(this.lastSelectedApp, this.lastSelectedSession, this.lastSelectedFilesystem));
            return;
        }
        if (newState instanceof AppScriptCopyFailed) {
            postIllegalStateWithLog(ErrorCopyingAppScript.INSTANCE);
        } else {
            if (newState instanceof SyncingDatabaseEntries) {
                return;
            }
            if (!(newState instanceof AppDatabaseEntriesSynced)) {
                throw new NoWhenBranchMatchedException();
            }
            submitSessionStartupEvent(new SessionSelected(this.lastSelectedSession));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleSessionPreparationState(SessionStartupState newState) {
        boolean z = newState instanceof WaitingForSessionSelection;
        if (!z) {
            this.sessionsAreWaitingForSelection = false;
        }
        if (newState instanceof IncorrectSessionTransition) {
            postIllegalStateWithLog(new IllegalStateTransition(String.valueOf(newState)));
            return;
        }
        if (z) {
            this.sessionsAreWaitingForSelection = true;
            return;
        }
        if (newState instanceof SingleSessionSupported) {
            this.state.postValue(CanOnlyStartSingleSession.INSTANCE);
            return;
        }
        if (newState instanceof SessionIsRestartable) {
            this.state.postValue(new SessionCanBeRestarted(((SessionIsRestartable) newState).getSession()));
            return;
        }
        if (newState instanceof AvfSessionSelected) {
            AvfSessionSelected avfSessionSelected = (AvfSessionSelected) newState;
            this.lastSelectedSession = avfSessionSelected.getSession();
            this.lastSelectedFilesystem = avfSessionSelected.getFilesystem();
            if (this.avfSessionStartDispatched) {
                return;
            }
            this.avfSessionStartDispatched = true;
            this.state.postValue(new SessionCanBeStarted(this.lastSelectedSession));
            return;
        }
        if (newState instanceof SessionIsReadyForPreparation) {
            SessionIsReadyForPreparation sessionIsReadyForPreparation = (SessionIsReadyForPreparation) newState;
            this.lastSelectedSession = sessionIsReadyForPreparation.getSession();
            this.lastSelectedFilesystem = sessionIsReadyForPreparation.getFilesystem();
            this.state.postValue(StartingSetup.INSTANCE);
            doTransitionIfRequirementsAreSelected(new Function0<Unit>() { // from class: tech.ula.library.viewmodel.MainActivityViewModel.handleSessionPreparationState.1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    MainActivityViewModel.this.submitSessionStartupEvent(new RetrieveAssetLists(MainActivityViewModel.this.getLastSelectedFilesystem()));
                }
            });
            return;
        }
        if (newState instanceof AssetRetrievalState) {
            handleAssetRetrievalState((AssetRetrievalState) newState);
            return;
        }
        if (newState instanceof DownloadRequirementsGenerationState) {
            handleDownloadRequirementsGenerationState((DownloadRequirementsGenerationState) newState);
            return;
        }
        if (newState instanceof DownloadingAssetsState) {
            handleDownloadingAssetsState((DownloadingAssetsState) newState);
            return;
        }
        if (newState instanceof CopyingFilesLocallyState) {
            handleCopyingFilesLocallyState((CopyingFilesLocallyState) newState);
            return;
        }
        if (newState instanceof AssetVerificationState) {
            handleAssetVerificationState((AssetVerificationState) newState);
        } else if (newState instanceof ExtractionState) {
            handleExtractionState((ExtractionState) newState);
        } else {
            if (!(newState instanceof StorageVerificationState)) {
                throw new NoWhenBranchMatchedException();
            }
            handleStorageVerificationState((StorageVerificationState) newState);
        }
    }

    private final void handleAssetRetrievalState(final AssetRetrievalState newState) {
        if (newState instanceof RetrievingAssetLists) {
            this.state.postValue(FetchingAssetLists.INSTANCE);
        } else if (newState instanceof AssetListsRetrievalSucceeded) {
            doTransitionIfRequirementsAreSelected(new Function0<Unit>() { // from class: tech.ula.library.viewmodel.MainActivityViewModel.handleAssetRetrievalState.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    MainActivityViewModel.this.submitSessionStartupEvent(new GenerateDownloads(MainActivityViewModel.this.getLastSelectedFilesystem(), ((AssetListsRetrievalSucceeded) newState).getAssetList()));
                }
            });
        } else {
            if (!(newState instanceof AssetListsRetrievalFailed)) {
                throw new NoWhenBranchMatchedException();
            }
            postIllegalStateWithLog(ErrorFetchingAssetLists.INSTANCE);
        }
    }

    private final void handleDownloadRequirementsGenerationState(DownloadRequirementsGenerationState newState) {
        if (newState instanceof GeneratingDownloadRequirements) {
            this.state.postValue(CheckingForAssetsUpdates.INSTANCE);
            return;
        }
        if (newState instanceof RemoteUnreachableForGeneration) {
            postIllegalStateWithLog(new ErrorGeneratingDownloads(R.string.illegal_state_remote_unreachable_during_generation));
            return;
        }
        if (newState instanceof DownloadsRequired) {
            DownloadsRequired downloadsRequired = (DownloadsRequired) newState;
            if (downloadsRequired.getLargeDownloadRequired()) {
                this.state.postValue(new LargeDownloadRequired(downloadsRequired.getDownloadsRequired()));
                return;
            } else {
                startAssetDownloads(downloadsRequired.getDownloadsRequired());
                return;
            }
        }
        if (!(newState instanceof NoDownloadsRequired)) {
            throw new NoWhenBranchMatchedException();
        }
        doTransitionIfRequirementsAreSelected(new Function0<Unit>() { // from class: tech.ula.library.viewmodel.MainActivityViewModel.handleDownloadRequirementsGenerationState.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                MainActivityViewModel.this.submitSessionStartupEvent(new VerifyFilesystemAssets(MainActivityViewModel.this.getLastSelectedFilesystem()));
            }
        });
    }

    private final void handleDownloadingAssetsState(DownloadingAssetsState newState) {
        if (newState instanceof DownloadingAssets) {
            DownloadingAssets downloadingAssets = (DownloadingAssets) newState;
            this.state.postValue(new DownloadProgress(downloadingAssets.getNumCompleted(), downloadingAssets.getNumTotal()));
        } else if (newState instanceof DownloadsHaveSucceeded) {
            submitSessionStartupEvent(CopyDownloadsToLocalStorage.INSTANCE);
        } else if (newState instanceof DownloadsHaveFailed) {
            postIllegalStateWithLog(new DownloadsDidNotCompleteSuccessfully(((DownloadsHaveFailed) newState).getReason()));
        } else {
            if (!(newState instanceof AttemptedCacheAccessWhileEmpty)) {
                throw new NoWhenBranchMatchedException();
            }
            postIllegalStateWithLog(DownloadCacheAccessedWhileEmpty.INSTANCE);
        }
    }

    private final void handleCopyingFilesLocallyState(CopyingFilesLocallyState newState) {
        if (newState instanceof CopyingFilesToLocalDirectories) {
            this.state.postValue(CopyingDownloads.INSTANCE);
            return;
        }
        if (newState instanceof LocalDirectoryCopySucceeded) {
            if (sessionPreparationRequirementsHaveBeenSelected()) {
                submitSessionStartupEvent(new VerifyFilesystemAssets(this.lastSelectedFilesystem));
                return;
            } else {
                this.state.postValue(ProgressBarOperationComplete.INSTANCE);
                resetStartupState();
                return;
            }
        }
        if (!(newState instanceof LocalDirectoryCopyFailed)) {
            throw new NoWhenBranchMatchedException();
        }
        postIllegalStateWithLog(FailedToCopyAssetsToLocalStorage.INSTANCE);
    }

    private final void handleAssetVerificationState(AssetVerificationState newState) {
        if (newState instanceof VerifyingFilesystemAssets) {
            this.state.postValue(VerifyingFilesystem.INSTANCE);
            return;
        }
        if (newState instanceof FilesystemAssetVerificationSucceeded) {
            doTransitionIfRequirementsAreSelected(new Function0<Unit>() { // from class: tech.ula.library.viewmodel.MainActivityViewModel.handleAssetVerificationState.1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    MainActivityViewModel.this.submitSessionStartupEvent(VerifyAvailableStorage.INSTANCE);
                }
            });
        } else if (newState instanceof AssetsAreMissingFromSupportDirectories) {
            postIllegalStateWithLog(AssetsHaveNotBeenDownloaded.INSTANCE);
        } else {
            if (!(newState instanceof FilesystemAssetCopyFailed)) {
                throw new NoWhenBranchMatchedException();
            }
            postIllegalStateWithLog(FailedToCopyAssetsToFilesystem.INSTANCE);
        }
    }

    private final void handleStorageVerificationState(StorageVerificationState newState) {
        if (newState instanceof VerifyingSufficientStorage) {
            this.state.postValue(VerifyingAvailableStorage.INSTANCE);
            return;
        }
        if (newState instanceof VerifyingSufficientStorageFailed) {
            postIllegalStateWithLog(InsufficientAvailableStorage.INSTANCE);
        } else if (newState instanceof LowAvailableStorage) {
            this.state.postValue(LowStorageAcknowledgementRequired.INSTANCE);
        } else {
            if (!(newState instanceof StorageVerificationCompletedSuccessfully)) {
                throw new NoWhenBranchMatchedException();
            }
            doTransitionIfRequirementsAreSelected(new Function0<Unit>() { // from class: tech.ula.library.viewmodel.MainActivityViewModel.handleStorageVerificationState.1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    MainActivityViewModel.this.submitSessionStartupEvent(new ExtractFilesystem(MainActivityViewModel.this.getLastSelectedFilesystem()));
                }
            });
        }
    }

    public final void handleExtractionState(ExtractionState newState) {
        Intrinsics.checkNotNullParameter(newState, "newState");
        if (newState instanceof ExtractingFilesystem) {
            this.state.postValue(new SessionCanBePrepared(((ExtractingFilesystem) newState).getFilesystem()));
        } else if (newState instanceof ExtractionHasCompletedSuccessfully) {
            doTransitionIfRequirementsAreSelected(new Function0<Unit>() { // from class: tech.ula.library.viewmodel.MainActivityViewModel.handleExtractionState.1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    MainActivityViewModel.this.state.postValue(new SessionCanBeStarted(MainActivityViewModel.this.getLastSelectedSession()));
                }
            });
        } else {
            if (!(newState instanceof ExtractionFailed)) {
                throw new NoWhenBranchMatchedException();
            }
            postIllegalStateWithLog(new FailedToExtractFilesystem(((ExtractionFailed) newState).getReason()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void resetStartupState() {
        this.lastSelectedApp = this.unselectedApp;
        this.lastSelectedSession = this.unselectedSession;
        this.lastSelectedFilesystem = this.unselectedFilesystem;
        this.avfSessionStartDispatched = false;
        this.state.postValue(WaitingForInput.INSTANCE);
        submitAppsStartupEvent(ResetAppState.INSTANCE);
        submitSessionStartupEvent(ResetSessionState.INSTANCE);
    }

    private final boolean selectionsCanBeMade() {
        return this.appsAreWaitingForSelection && this.sessionsAreWaitingForSelection;
    }

    private final boolean appsPreparationRequirementsHaveBeenSelected() {
        return !Intrinsics.areEqual(this.lastSelectedApp, this.unselectedApp) && sessionPreparationRequirementsHaveBeenSelected();
    }

    private final void doTransitionIfRequirementsAreSelected(Function0<Unit> transition) {
        if (!sessionPreparationRequirementsHaveBeenSelected()) {
            postIllegalStateWithLog(NoSessionSelectedWhenTransitionNecessary.INSTANCE);
        } else {
            transition.invoke();
        }
    }

    private final boolean sessionPreparationRequirementsHaveBeenSelected() {
        return (Intrinsics.areEqual(this.lastSelectedSession, this.unselectedSession) || Intrinsics.areEqual(this.lastSelectedFilesystem, this.unselectedFilesystem)) ? false : true;
    }

    private final void submitAppsStartupEvent(AppsStartupEvent event) {
        this.logger.addBreadcrumb(new UlaBreadcrumb(this.className, BreadcrumbType.SubmittedEvent.INSTANCE, String.valueOf(event)));
        this.appsStartupFsm.submitEvent(event, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void submitSessionStartupEvent(SessionStartupEvent event) {
        this.logger.addBreadcrumb(new UlaBreadcrumb(this.className, BreadcrumbType.SubmittedEvent.INSTANCE, String.valueOf(event)));
        this.sessionStartupFsm.submitEvent(event, this);
    }
}
