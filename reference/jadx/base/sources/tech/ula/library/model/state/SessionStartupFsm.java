package tech.ula.library.model.state;

import androidx.core.app.NotificationCompat;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import com.undatech.opaque.input.RemoteKeyboard;
import io.sentry.marshaller.json.JsonMarshaller;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import org.spongycastle.crypto.tls.CipherSuite;
import tech.ula.library.model.daos.FilesystemDao;
import tech.ula.library.model.daos.SessionDao;
import tech.ula.library.model.entities.Asset;
import tech.ula.library.model.entities.ExecutionType;
import tech.ula.library.model.entities.Filesystem;
import tech.ula.library.model.entities.Session;
import tech.ula.library.model.repositories.AssetRepository;
import tech.ula.library.model.repositories.DownloadMetadata;
import tech.ula.library.model.repositories.UlaDatabase;
import tech.ula.library.utils.AllDownloadsCompletedSuccessfully;
import tech.ula.library.utils.AssetDownloadFailure;
import tech.ula.library.utils.AssetDownloadState;
import tech.ula.library.utils.AssetDownloader;
import tech.ula.library.utils.BreadcrumbType;
import tech.ula.library.utils.CacheSyncAttemptedWhileCacheIsEmpty;
import tech.ula.library.utils.CompletedDownloadsUpdate;
import tech.ula.library.utils.FilesystemManager;
import tech.ula.library.utils.Logger;
import tech.ula.library.utils.NonUserlandDownloadFound;
import tech.ula.library.utils.SentryLogger;
import tech.ula.library.utils.StorageCalculator;
import tech.ula.library.utils.UlaBreadcrumb;

/* JADX INFO: compiled from: SessionStartupFsm.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000¬\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\u0010\u0010!\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020\u0011H\u0002J\f\u0010#\u001a\b\u0012\u0004\u0012\u00020 0\u0013J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'H\u0002J\u0010\u0010(\u001a\u00020%2\u0006\u0010)\u001a\u00020*H\u0002J\u000e\u0010+\u001a\u00020%H\u0082@¢\u0006\u0002\u0010,J\u0016\u0010-\u001a\u00020%2\f\u0010.\u001a\b\u0012\u0004\u0012\u00020/0\u0014H\u0002J\u0016\u00100\u001a\u00020%2\u0006\u00101\u001a\u00020\u001aH\u0082@¢\u0006\u0002\u00102J\u000e\u00103\u001a\u00020%H\u0082@¢\u0006\u0002\u0010,J\u000e\u00104\u001a\u00020%H\u0082@¢\u0006\u0002\u0010,J\u000e\u00105\u001a\u00020%H\u0082@¢\u0006\u0002\u0010,J\u000e\u00106\u001a\u00020%H\u0082@¢\u0006\u0002\u0010,J$\u00107\u001a\u00020%2\u0006\u00101\u001a\u00020\u001a2\f\u00108\u001a\b\u0012\u0004\u0012\u0002090\u0014H\u0082@¢\u0006\u0002\u0010:J\u0016\u0010;\u001a\u00020%2\u0006\u00101\u001a\u00020\u001aH\u0082@¢\u0006\u0002\u00102J\u0010\u0010<\u001a\u00020%2\u0006\u0010\"\u001a\u00020\u0011H\u0002J\b\u0010=\u001a\u00020%H\u0002J\b\u0010>\u001a\u00020%H\u0002J\b\u0010?\u001a\u00020%H\u0002J\u0016\u0010@\u001a\u00020%2\u0006\u00101\u001a\u00020\u001aH\u0082@¢\u0006\u0002\u00102J\u0006\u0010A\u001a\u00020BJ\u0015\u0010C\u001a\u00020%2\u0006\u0010D\u001a\u00020 H\u0000¢\u0006\u0002\bEJ\u0016\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020KJ\u000e\u0010L\u001a\u00020B2\u0006\u0010H\u001a\u00020IR\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u00140\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u001b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001a0\u00140\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020 0\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006M"}, d2 = {"Ltech/ula/library/model/state/SessionStartupFsm;", "", "ulaDatabase", "Ltech/ula/library/model/repositories/UlaDatabase;", "assetRepository", "Ltech/ula/library/model/repositories/AssetRepository;", "filesystemManager", "Ltech/ula/library/utils/FilesystemManager;", "assetDownloader", "Ltech/ula/library/utils/AssetDownloader;", "storageCalculator", "Ltech/ula/library/utils/StorageCalculator;", JsonMarshaller.LOGGER, "Ltech/ula/library/utils/Logger;", "(Ltech/ula/library/model/repositories/UlaDatabase;Ltech/ula/library/model/repositories/AssetRepository;Ltech/ula/library/utils/FilesystemManager;Ltech/ula/library/utils/AssetDownloader;Ltech/ula/library/utils/StorageCalculator;Ltech/ula/library/utils/Logger;)V", "activeSessions", "", "Ltech/ula/library/model/entities/Session;", "activeSessionsLiveData", "Landroidx/lifecycle/LiveData;", "", "className", "", "filesystemDao", "Ltech/ula/library/model/daos/FilesystemDao;", "filesystems", "Ltech/ula/library/model/entities/Filesystem;", "filesystemsLiveData", "sessionDao", "Ltech/ula/library/model/daos/SessionDao;", "state", "Landroidx/lifecycle/MutableLiveData;", "Ltech/ula/library/model/state/SessionStartupState;", "findFilesystemForSession", "session", "getState", "handleAssetDownloadState", "", "assetDownloadState", "Ltech/ula/library/utils/AssetDownloadState;", "handleAssetsDownloadComplete", "downloadId", "", "handleCopyDownloadsToLocalDirectories", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "handleDownloadAssets", "downloadRequirements", "Ltech/ula/library/model/repositories/DownloadMetadata;", "handleExtractFilesystem", "filesystem", "(Ltech/ula/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "handleExtractionComplete", "handleExtractionFailed", "handleFilesystemExtractionComplete", "handleFilesystemExtractionFailed", "handleGenerateDownloads", "assetList", "Ltech/ula/library/model/entities/Asset;", "(Ltech/ula/library/model/entities/Filesystem;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "handleRetrieveAssetLists", "handleSessionSelected", "handleSyncDownloadState", "handleVerifyAvailableStorage", "handleVerifyAvailableStorageComplete", "handleVerifyFilesystemAssets", "sessionsAreActive", "", "setState", "newState", "setState$UserLOstLibrary_UserLOstRelease", "submitEvent", "Lkotlinx/coroutines/Job;", NotificationCompat.CATEGORY_EVENT, "Ltech/ula/library/model/state/SessionStartupEvent;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "transitionIsAcceptable", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SessionStartupFsm {
    private final List<Session> activeSessions;
    private final LiveData<List<Session>> activeSessionsLiveData;
    private final AssetDownloader assetDownloader;
    private final AssetRepository assetRepository;
    private final String className;
    private final FilesystemDao filesystemDao;
    private final FilesystemManager filesystemManager;
    private final List<Filesystem> filesystems;
    private final LiveData<List<Filesystem>> filesystemsLiveData;
    private final Logger logger;
    private final SessionDao sessionDao;
    private final MutableLiveData<SessionStartupState> state;
    private final StorageCalculator storageCalculator;

    /* JADX INFO: renamed from: tech.ula.library.model.state.SessionStartupFsm$handleCopyDownloadsToLocalDirectories$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SessionStartupFsm.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.state.SessionStartupFsm", f = "SessionStartupFsm.kt", i = {0}, l = {239}, m = "handleCopyDownloadsToLocalDirectories", n = {"this"}, s = {"L$0"})
    static final class C02621 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02621(Continuation<? super C02621> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SessionStartupFsm.this.handleCopyDownloadsToLocalDirectories(this);
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.model.state.SessionStartupFsm$handleGenerateDownloads$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SessionStartupFsm.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.state.SessionStartupFsm", f = "SessionStartupFsm.kt", i = {0}, l = {188}, m = "handleGenerateDownloads", n = {"this"}, s = {"L$0"})
    static final class C02631 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02631(Continuation<? super C02631> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SessionStartupFsm.this.handleGenerateDownloads(null, null, this);
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.model.state.SessionStartupFsm$handleRetrieveAssetLists$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SessionStartupFsm.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.state.SessionStartupFsm", f = "SessionStartupFsm.kt", i = {0}, l = {CipherSuite.TLS_DH_anon_WITH_AES_128_GCM_SHA256}, m = "handleRetrieveAssetLists", n = {"this"}, s = {"L$0"})
    static final class C02641 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02641(Continuation<? super C02641> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SessionStartupFsm.this.handleRetrieveAssetLists(null, this);
        }
    }

    public SessionStartupFsm(UlaDatabase ulaDatabase, AssetRepository assetRepository, FilesystemManager filesystemManager, AssetDownloader assetDownloader, StorageCalculator storageCalculator, Logger logger) {
        Intrinsics.checkNotNullParameter(ulaDatabase, "ulaDatabase");
        Intrinsics.checkNotNullParameter(assetRepository, "assetRepository");
        Intrinsics.checkNotNullParameter(filesystemManager, "filesystemManager");
        Intrinsics.checkNotNullParameter(assetDownloader, "assetDownloader");
        Intrinsics.checkNotNullParameter(storageCalculator, "storageCalculator");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.assetRepository = assetRepository;
        this.filesystemManager = filesystemManager;
        this.assetDownloader = assetDownloader;
        this.storageCalculator = storageCalculator;
        this.logger = logger;
        this.className = "SessionFSM";
        MutableLiveData<SessionStartupState> mutableLiveData = new MutableLiveData<>();
        mutableLiveData.postValue(WaitingForSessionSelection.INSTANCE);
        this.state = mutableLiveData;
        SessionDao sessionDao = ulaDatabase.sessionDao();
        this.sessionDao = sessionDao;
        LiveData<List<Session>> liveDataFindActiveSessions = sessionDao.findActiveSessions();
        this.activeSessionsLiveData = liveDataFindActiveSessions;
        this.activeSessions = new ArrayList();
        FilesystemDao filesystemDao = ulaDatabase.filesystemDao();
        this.filesystemDao = filesystemDao;
        LiveData<List<Filesystem>> allFilesystems = filesystemDao.getAllFilesystems();
        this.filesystemsLiveData = allFilesystems;
        this.filesystems = new ArrayList();
        final Function1<List<? extends Session>, Unit> function1 = new Function1<List<? extends Session>, Unit>() { // from class: tech.ula.library.model.state.SessionStartupFsm.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends Session> list) {
                invoke2((List<Session>) list);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<Session> list) {
                if (list != null) {
                    SessionStartupFsm sessionStartupFsm = SessionStartupFsm.this;
                    sessionStartupFsm.activeSessions.clear();
                    sessionStartupFsm.activeSessions.addAll(list);
                }
            }
        };
        liveDataFindActiveSessions.observeForever(new Observer() { // from class: tech.ula.library.model.state.SessionStartupFsm$$ExternalSyntheticLambda0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                SessionStartupFsm._init_$lambda$1(function1, obj);
            }
        });
        final Function1<List<? extends Filesystem>, Unit> function2 = new Function1<List<? extends Filesystem>, Unit>() { // from class: tech.ula.library.model.state.SessionStartupFsm.2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends Filesystem> list) {
                invoke2((List<Filesystem>) list);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<Filesystem> list) {
                if (list != null) {
                    SessionStartupFsm sessionStartupFsm = SessionStartupFsm.this;
                    sessionStartupFsm.filesystems.clear();
                    sessionStartupFsm.filesystems.addAll(list);
                }
            }
        };
        allFilesystems.observeForever(new Observer() { // from class: tech.ula.library.model.state.SessionStartupFsm$$ExternalSyntheticLambda1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                SessionStartupFsm._init_$lambda$2(function2, obj);
            }
        });
    }

    public /* synthetic */ SessionStartupFsm(UlaDatabase ulaDatabase, AssetRepository assetRepository, FilesystemManager filesystemManager, AssetDownloader assetDownloader, StorageCalculator storageCalculator, SentryLogger sentryLogger, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(ulaDatabase, assetRepository, filesystemManager, assetDownloader, storageCalculator, (i & 32) != 0 ? new SentryLogger() : sentryLogger);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$2(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public final LiveData<SessionStartupState> getState() {
        return this.state;
    }

    public final void setState$UserLOstLibrary_UserLOstRelease(SessionStartupState newState) {
        Intrinsics.checkNotNullParameter(newState, "newState");
        this.state.postValue(newState);
    }

    public final boolean sessionsAreActive() {
        return this.activeSessions.size() > 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0046, code lost:
    
        if (r6.assetDownloader.downloadIsForUserland(((tech.ula.library.model.state.AssetDownloadComplete) r7).getDownloadAssetId()) != false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0063, code lost:
    
        if ((r0 instanceof tech.ula.library.model.state.LocalDirectoryCopySucceeded) == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0077, code lost:
    
        if ((r0 instanceof tech.ula.library.model.state.LowAvailableStorage) == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:?, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean transitionIsAcceptable(SessionStartupEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        SessionStartupState value = this.state.getValue();
        Intrinsics.checkNotNull(value);
        SessionStartupState sessionStartupState = value;
        if (event instanceof SessionSelected) {
            return sessionStartupState instanceof WaitingForSessionSelection;
        }
        if (event instanceof RetrieveAssetLists) {
            return sessionStartupState instanceof SessionIsReadyForPreparation;
        }
        if (event instanceof GenerateDownloads) {
            return sessionStartupState instanceof AssetListsRetrievalSucceeded;
        }
        if (event instanceof DownloadAssets) {
            return sessionStartupState instanceof DownloadsRequired;
        }
        if (event instanceof AssetDownloadComplete) {
            if (!(sessionStartupState instanceof DownloadingAssets)) {
            }
            return true;
        }
        if (!(event instanceof SyncDownloadState)) {
            if (event instanceof CopyDownloadsToLocalStorage) {
                return sessionStartupState instanceof DownloadsHaveSucceeded;
            }
            if (event instanceof VerifyFilesystemAssets) {
                if (!(sessionStartupState instanceof NoDownloadsRequired)) {
                }
            } else {
                if (event instanceof VerifyAvailableStorage) {
                    return sessionStartupState instanceof FilesystemAssetVerificationSucceeded;
                }
                if (!(event instanceof VerifyAvailableStorageComplete)) {
                    if (event instanceof ExtractFilesystem) {
                        return sessionStartupState instanceof StorageVerificationCompletedSuccessfully;
                    }
                    if (!(event instanceof FilesystemExtractionComplete) && !(event instanceof FilesystemExtractionFailed)) {
                        if (!(event instanceof AssetExtractionComplete) && !(event instanceof AssetExtractionFailed)) {
                            if (!(event instanceof ResetSessionState)) {
                                throw new NoWhenBranchMatchedException();
                            }
                        }
                        return sessionStartupState instanceof ExtractionHasCompletedSuccessfully;
                    }
                    return sessionStartupState instanceof ExtractingFilesystem;
                }
                if (!(sessionStartupState instanceof VerifyingSufficientStorage)) {
                }
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: tech.ula.library.model.state.SessionStartupFsm$submitEvent$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SessionStartupFsm.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.state.SessionStartupFsm$submitEvent$1", f = "SessionStartupFsm.kt", i = {}, l = {110, RemoteKeyboard.SCAN_DELETE, 115, 116, 119, 120, 121, 122, 123}, m = "invokeSuspend", n = {}, s = {})
    static final class C02661 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ SessionStartupEvent $event;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02661(SessionStartupEvent sessionStartupEvent, Continuation<? super C02661> continuation) {
            super(2, continuation);
            this.$event = sessionStartupEvent;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SessionStartupFsm.this.new C02661(this.$event, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02661) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    SessionStartupFsm.this.logger.addBreadcrumb(new UlaBreadcrumb(SessionStartupFsm.this.className, BreadcrumbType.ReceivedEvent.INSTANCE, "Event: " + this.$event + " State: " + SessionStartupFsm.this.state.getValue()));
                    if (!SessionStartupFsm.this.transitionIsAcceptable(this.$event)) {
                        MutableLiveData mutableLiveData = SessionStartupFsm.this.state;
                        SessionStartupEvent sessionStartupEvent = this.$event;
                        T value = SessionStartupFsm.this.state.getValue();
                        Intrinsics.checkNotNull(value);
                        mutableLiveData.postValue(new IncorrectSessionTransition(sessionStartupEvent, (SessionStartupState) value));
                        return Unit.INSTANCE;
                    }
                    SessionStartupEvent sessionStartupEvent2 = this.$event;
                    if (sessionStartupEvent2 instanceof SessionSelected) {
                        SessionStartupFsm.this.handleSessionSelected(((SessionSelected) sessionStartupEvent2).getSession());
                    } else if (sessionStartupEvent2 instanceof RetrieveAssetLists) {
                        this.label = 1;
                        if (SessionStartupFsm.this.handleRetrieveAssetLists(((RetrieveAssetLists) sessionStartupEvent2).getFilesystem(), this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else if (sessionStartupEvent2 instanceof GenerateDownloads) {
                        this.label = 2;
                        if (SessionStartupFsm.this.handleGenerateDownloads(((GenerateDownloads) sessionStartupEvent2).getFilesystem(), ((GenerateDownloads) this.$event).getAssetList(), this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else if (sessionStartupEvent2 instanceof DownloadAssets) {
                        SessionStartupFsm.this.handleDownloadAssets(((DownloadAssets) sessionStartupEvent2).getDownloadRequirements());
                    } else if (sessionStartupEvent2 instanceof AssetDownloadComplete) {
                        SessionStartupFsm.this.handleAssetsDownloadComplete(((AssetDownloadComplete) sessionStartupEvent2).getDownloadAssetId());
                    } else if (sessionStartupEvent2 instanceof SyncDownloadState) {
                        SessionStartupFsm.this.handleSyncDownloadState();
                    } else if (sessionStartupEvent2 instanceof CopyDownloadsToLocalStorage) {
                        this.label = 3;
                        if (SessionStartupFsm.this.handleCopyDownloadsToLocalDirectories(this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else if (sessionStartupEvent2 instanceof VerifyFilesystemAssets) {
                        this.label = 4;
                        if (SessionStartupFsm.this.handleVerifyFilesystemAssets(((VerifyFilesystemAssets) sessionStartupEvent2).getFilesystem(), this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else if (sessionStartupEvent2 instanceof VerifyAvailableStorage) {
                        SessionStartupFsm.this.handleVerifyAvailableStorage();
                    } else if (sessionStartupEvent2 instanceof VerifyAvailableStorageComplete) {
                        SessionStartupFsm.this.handleVerifyAvailableStorageComplete();
                    } else if (sessionStartupEvent2 instanceof ExtractFilesystem) {
                        this.label = 5;
                        if (SessionStartupFsm.this.handleExtractFilesystem(((ExtractFilesystem) sessionStartupEvent2).getFilesystem(), this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else if (sessionStartupEvent2 instanceof FilesystemExtractionComplete) {
                        this.label = 6;
                        if (SessionStartupFsm.this.handleFilesystemExtractionComplete(this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else if (sessionStartupEvent2 instanceof FilesystemExtractionFailed) {
                        this.label = 7;
                        if (SessionStartupFsm.this.handleFilesystemExtractionFailed(this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else if (sessionStartupEvent2 instanceof AssetExtractionComplete) {
                        this.label = 8;
                        if (SessionStartupFsm.this.handleExtractionComplete(this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else if (sessionStartupEvent2 instanceof AssetExtractionFailed) {
                        this.label = 9;
                        if (SessionStartupFsm.this.handleExtractionFailed(this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else if (sessionStartupEvent2 instanceof ResetSessionState) {
                        SessionStartupFsm.this.state.postValue(WaitingForSessionSelection.INSTANCE);
                    }
                    break;
                    break;
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                    ResultKt.throwOnFailure(obj);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Unit.INSTANCE;
        }
    }

    public final Job submitEvent(SessionStartupEvent event, CoroutineScope coroutineScope) {
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        return BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new C02661(event, null), 3, null);
    }

    private final Filesystem findFilesystemForSession(Session session) {
        for (Object obj : this.filesystems) {
            if (((Filesystem) obj).getId() == session.getFilesystemId()) {
                Intrinsics.checkNotNull(obj);
                return (Filesystem) obj;
            }
        }
        obj = null;
        Intrinsics.checkNotNull(obj);
        return (Filesystem) obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleSessionSelected(Session session) {
        Filesystem filesystemFindFilesystemForSession = findFilesystemForSession(session);
        boolean z = filesystemFindFilesystemForSession.getExecutionType() == ExecutionType.AVF || filesystemFindFilesystemForSession.getExecutionType() == ExecutionType.QEMU;
        if (!this.activeSessions.isEmpty()) {
            if (!this.activeSessions.contains(session)) {
                this.state.postValue(SingleSessionSupported.INSTANCE);
                return;
            } else if (!z) {
                this.state.postValue(new SessionIsRestartable(session));
                return;
            }
        }
        if (z) {
            this.state.postValue(new AvfSessionSelected(session, filesystemFindFilesystemForSession));
        } else {
            this.state.postValue(new SessionIsReadyForPreparation(session, filesystemFindFilesystemForSession));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object handleRetrieveAssetLists(Filesystem filesystem, Continuation<? super Unit> continuation) throws Throwable {
        C02641 c02641;
        SessionStartupFsm sessionStartupFsm;
        List listEmptyList;
        if (continuation instanceof C02641) {
            c02641 = (C02641) continuation;
            if ((c02641.label & Integer.MIN_VALUE) != 0) {
                c02641.label -= Integer.MIN_VALUE;
            } else {
                c02641 = new C02641(continuation);
            }
        } else {
            c02641 = new C02641(continuation);
        }
        Object assetList = c02641.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02641.label;
        if (i == 0) {
            ResultKt.throwOnFailure(assetList);
            this.state.postValue(RetrievingAssetLists.INSTANCE);
            CollectionsKt.emptyList();
            try {
                AssetRepository assetRepository = this.assetRepository;
                c02641.L$0 = this;
                c02641.label = 1;
                assetList = assetRepository.getAssetList(filesystem, c02641);
                if (assetList == coroutine_suspended) {
                    return coroutine_suspended;
                }
                sessionStartupFsm = this;
            } catch (Exception unused) {
                sessionStartupFsm = this;
                listEmptyList = CollectionsKt.emptyList();
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            sessionStartupFsm = (SessionStartupFsm) c02641.L$0;
            try {
                ResultKt.throwOnFailure(assetList);
            } catch (Exception unused2) {
                listEmptyList = CollectionsKt.emptyList();
            }
        }
        listEmptyList = (List) assetList;
        if (listEmptyList.isEmpty()) {
            sessionStartupFsm.state.postValue(AssetListsRetrievalFailed.INSTANCE);
            return Unit.INSTANCE;
        }
        sessionStartupFsm.state.postValue(new AssetListsRetrievalSucceeded(listEmptyList));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object handleGenerateDownloads(Filesystem filesystem, List<Asset> list, Continuation<? super Unit> continuation) throws Throwable {
        C02631 c02631;
        SessionStartupFsm sessionStartupFsm;
        if (continuation instanceof C02631) {
            c02631 = (C02631) continuation;
            if ((c02631.label & Integer.MIN_VALUE) != 0) {
                c02631.label -= Integer.MIN_VALUE;
            } else {
                c02631 = new C02631(continuation);
            }
        } else {
            c02631 = new C02631(continuation);
        }
        Object objGenerateDownloadRequirements = c02631.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02631.label;
        boolean z = false;
        if (i == 0) {
            ResultKt.throwOnFailure(objGenerateDownloadRequirements);
            this.state.postValue(GeneratingDownloadRequirements.INSTANCE);
            boolean z2 = (this.filesystemManager.hasFilesystemBeenSuccessfullyExtracted(String.valueOf(filesystem.getId())) || filesystem.isCreatedFromBackup()) ? false : true;
            try {
                AssetRepository assetRepository = this.assetRepository;
                c02631.L$0 = this;
                c02631.label = 1;
                objGenerateDownloadRequirements = assetRepository.generateDownloadRequirements(filesystem, list, z2, c02631);
                if (objGenerateDownloadRequirements == coroutine_suspended) {
                    return coroutine_suspended;
                }
                sessionStartupFsm = this;
            } catch (Exception unused) {
                sessionStartupFsm = this;
                sessionStartupFsm.state.postValue(RemoteUnreachableForGeneration.INSTANCE);
                return Unit.INSTANCE;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            sessionStartupFsm = (SessionStartupFsm) c02631.L$0;
            try {
                ResultKt.throwOnFailure(objGenerateDownloadRequirements);
            } catch (Exception unused2) {
                sessionStartupFsm.state.postValue(RemoteUnreachableForGeneration.INSTANCE);
                return Unit.INSTANCE;
            }
        }
        List list2 = (List) objGenerateDownloadRequirements;
        if (list2.isEmpty()) {
            sessionStartupFsm.state.postValue(NoDownloadsRequired.INSTANCE);
            return Unit.INSTANCE;
        }
        List list3 = list2;
        if (!(list3 instanceof Collection) || !list3.isEmpty()) {
            Iterator it = list3.iterator();
            while (it.hasNext()) {
                if (Intrinsics.areEqual(((DownloadMetadata) it.next()).getFilename(), "rootfs.tar.gz")) {
                    z = true;
                    break;
                }
            }
        }
        sessionStartupFsm.state.postValue(new DownloadsRequired(list2, z));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleDownloadAssets(List<DownloadMetadata> downloadRequirements) {
        this.state.postValue(new DownloadingAssets(0, downloadRequirements.size()));
        this.assetDownloader.downloadRequirements(downloadRequirements);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleAssetsDownloadComplete(long downloadId) {
        handleAssetDownloadState(this.assetDownloader.handleDownloadComplete(downloadId));
    }

    private final void handleAssetDownloadState(AssetDownloadState assetDownloadState) {
        if (assetDownloadState instanceof NonUserlandDownloadFound) {
            return;
        }
        if (assetDownloadState instanceof CacheSyncAttemptedWhileCacheIsEmpty) {
            this.state.postValue(AttemptedCacheAccessWhileEmpty.INSTANCE);
            return;
        }
        if (assetDownloadState instanceof AllDownloadsCompletedSuccessfully) {
            this.state.postValue(DownloadsHaveSucceeded.INSTANCE);
            return;
        }
        if (assetDownloadState instanceof CompletedDownloadsUpdate) {
            CompletedDownloadsUpdate completedDownloadsUpdate = (CompletedDownloadsUpdate) assetDownloadState;
            this.state.postValue(new DownloadingAssets(completedDownloadsUpdate.getNumCompleted(), completedDownloadsUpdate.getNumTotal()));
        } else {
            if (!(assetDownloadState instanceof AssetDownloadFailure)) {
                throw new NoWhenBranchMatchedException();
            }
            this.state.postValue(new DownloadsHaveFailed(((AssetDownloadFailure) assetDownloadState).getReason()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleSyncDownloadState() {
        if (this.assetDownloader.downloadStateHasBeenCached()) {
            this.state.postValue(new DownloadingAssets(0, 0));
            handleAssetDownloadState(this.assetDownloader.syncStateWithCache());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object handleCopyDownloadsToLocalDirectories(Continuation<? super Unit> continuation) throws Throwable {
        C02621 c02621;
        SessionStartupFsm sessionStartupFsm;
        if (continuation instanceof C02621) {
            c02621 = (C02621) continuation;
            if ((c02621.label & Integer.MIN_VALUE) != 0) {
                c02621.label -= Integer.MIN_VALUE;
            } else {
                c02621 = new C02621(continuation);
            }
        } else {
            c02621 = new C02621(continuation);
        }
        Object obj = c02621.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02621.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            sessionStartupFsm = (SessionStartupFsm) c02621.L$0;
            try {
                ResultKt.throwOnFailure(obj);
                sessionStartupFsm.state.postValue(LocalDirectoryCopySucceeded.INSTANCE);
                return Unit.INSTANCE;
            } catch (Exception unused) {
                sessionStartupFsm.state.postValue(LocalDirectoryCopyFailed.INSTANCE);
                return Unit.INSTANCE;
            }
        }
        ResultKt.throwOnFailure(obj);
        this.state.postValue(CopyingFilesToLocalDirectories.INSTANCE);
        try {
            AssetDownloader assetDownloader = this.assetDownloader;
            c02621.L$0 = this;
            c02621.label = 1;
            if (AssetDownloader.prepareDownloadsForUse$default(assetDownloader, null, c02621, 1, null) == coroutine_suspended) {
                return coroutine_suspended;
            }
            sessionStartupFsm = this;
            sessionStartupFsm.state.postValue(LocalDirectoryCopySucceeded.INSTANCE);
            return Unit.INSTANCE;
        } catch (Exception unused2) {
            sessionStartupFsm = this;
            sessionStartupFsm.state.postValue(LocalDirectoryCopyFailed.INSTANCE);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.model.state.SessionStartupFsm$handleVerifyFilesystemAssets$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SessionStartupFsm.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.state.SessionStartupFsm$handleVerifyFilesystemAssets$2", f = "SessionStartupFsm.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02652 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Filesystem $filesystem;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02652(Filesystem filesystem, Continuation<? super C02652> continuation) {
            super(2, continuation);
            this.$filesystem = filesystem;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SessionStartupFsm.this.new C02652(this.$filesystem, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02652) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                SessionStartupFsm.this.state.postValue(VerifyingFilesystemAssets.INSTANCE);
                String strValueOf = String.valueOf(this.$filesystem.getId());
                List<Asset> distributionAssetsForExistingFilesystem = SessionStartupFsm.this.assetRepository.getDistributionAssetsForExistingFilesystem(this.$filesystem);
                boolean zAreAllRequiredAssetsPresent = SessionStartupFsm.this.filesystemManager.areAllRequiredAssetsPresent(strValueOf, distributionAssetsForExistingFilesystem);
                String latestDistributionVersion = SessionStartupFsm.this.assetRepository.getLatestDistributionVersion(this.$filesystem);
                boolean z = this.$filesystem.getVersionCodeUsed().compareTo(latestDistributionVersion) < 0;
                if (!zAreAllRequiredAssetsPresent || z) {
                    if (!SessionStartupFsm.this.assetRepository.assetsArePresentInSupportDirectories(distributionAssetsForExistingFilesystem)) {
                        SessionStartupFsm.this.state.postValue(AssetsAreMissingFromSupportDirectories.INSTANCE);
                        return Unit.INSTANCE;
                    }
                    try {
                        SessionStartupFsm.this.filesystemManager.copyAssetsToFilesystem(this.$filesystem);
                        this.$filesystem.setVersionCodeUsed(latestDistributionVersion);
                        SessionStartupFsm.this.filesystemDao.updateFilesystem(this.$filesystem);
                        if (SessionStartupFsm.this.filesystemManager.hasFilesystemBeenSuccessfullyExtracted(strValueOf)) {
                            SessionStartupFsm.this.filesystemManager.removeRootfsFilesFromFilesystem(strValueOf);
                        }
                    } catch (Exception unused) {
                        SessionStartupFsm.this.state.postValue(FilesystemAssetCopyFailed.INSTANCE);
                        return Unit.INSTANCE;
                    }
                }
                SessionStartupFsm.this.state.postValue(FilesystemAssetVerificationSucceeded.INSTANCE);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object handleVerifyFilesystemAssets(Filesystem filesystem, Continuation<? super Unit> continuation) throws Throwable {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new C02652(filesystem, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleVerifyAvailableStorage() {
        this.state.postValue(VerifyingSufficientStorage.INSTANCE);
        long availableStorageInMB = this.storageCalculator.getAvailableStorageInMB();
        if (0 <= availableStorageInMB && availableStorageInMB < 251) {
            this.state.postValue(VerifyingSufficientStorageFailed.INSTANCE);
        } else if (251 <= availableStorageInMB && availableStorageInMB < 1001) {
            this.state.postValue(LowAvailableStorage.INSTANCE);
        } else {
            this.state.postValue(StorageVerificationCompletedSuccessfully.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleVerifyAvailableStorageComplete() {
        this.state.postValue(StorageVerificationCompletedSuccessfully.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object handleExtractFilesystem(Filesystem filesystem, Continuation<? super Unit> continuation) {
        this.state.postValue(new ExtractingFilesystem(filesystem));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object handleFilesystemExtractionComplete(Continuation<? super Unit> continuation) {
        this.state.postValue(ExtractionHasCompletedSuccessfully.INSTANCE);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object handleFilesystemExtractionFailed(Continuation<? super Unit> continuation) {
        this.state.postValue(new ExtractionFailed("Extraction Failed"));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object handleExtractionComplete(Continuation<? super Unit> continuation) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object handleExtractionFailed(Continuation<? super Unit> continuation) {
        return Unit.INSTANCE;
    }
}
