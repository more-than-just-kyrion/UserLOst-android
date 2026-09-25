package tech.ula.library.model.state;

import androidx.core.app.NotificationCompat;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.iiordanov.bVNC.Constants;
import com.trilead.ssh2.packets.Packets;
import io.sentry.marshaller.json.JsonMarshaller;
import java.util.List;
import java.util.NoSuchElementException;
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
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import org.spongycastle.crypto.tls.CipherSuite;
import tech.ula.library.model.daos.FilesystemDao;
import tech.ula.library.model.daos.SessionDao;
import tech.ula.library.model.entities.App;
import tech.ula.library.model.entities.DisplayPreferences;
import tech.ula.library.model.entities.ExecutionType;
import tech.ula.library.model.entities.Filesystem;
import tech.ula.library.model.entities.ServiceType;
import tech.ula.library.model.entities.ServiceTypePreferences;
import tech.ula.library.model.entities.Session;
import tech.ula.library.model.repositories.UlaDatabase;
import tech.ula.library.utils.BreadcrumbType;
import tech.ula.library.utils.FilesystemManager;
import tech.ula.library.utils.Logger;
import tech.ula.library.utils.SentryLogger;
import tech.ula.library.utils.UlaBreadcrumb;
import tech.ula.library.utils.UlaFiles;

/* JADX INFO: compiled from: AppsStartupFsm.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0010\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0010\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0018\u0010\u001f\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u001aH\u0002J\u0010\u0010!\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u001e\u0010\"\u001a\u00020\u00182\u0006\u0010#\u001a\u00020$2\u0006\u0010 \u001a\u00020\u001aH\u0082@¢\u0006\u0002\u0010%J&\u0010&\u001a\u00020\u00182\u0006\u0010#\u001a\u00020$2\u0006\u0010'\u001a\u00020\u00102\u0006\u0010(\u001a\u00020\u0010H\u0082@¢\u0006\u0002\u0010)J\u001e\u0010*\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020$2\u0006\u0010+\u001a\u00020,H\u0082@¢\u0006\u0002\u0010-J\u0016\u0010.\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020$H\u0082@¢\u0006\u0002\u0010/J\f\u00100\u001a\b\u0012\u0004\u0012\u00020\u001601J.\u00102\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u001a2\u0006\u00103\u001a\u00020\f2\u0006\u00104\u001a\u00020\f2\u0006\u00105\u001a\u00020\fH\u0082@¢\u0006\u0002\u00106J.\u00107\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u001a2\u0006\u00108\u001a\u00020\f2\u0006\u00109\u001a\u00020\u00102\u0006\u0010:\u001a\u00020;H\u0082@¢\u0006\u0002\u0010<J\u001e\u0010=\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010>\u001a\u00020?H\u0082@¢\u0006\u0002\u0010@J\u001e\u0010A\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010B\u001a\u00020CH\u0082@¢\u0006\u0002\u0010DJ\u0015\u0010E\u001a\u00020\u00182\u0006\u0010F\u001a\u00020\u0016H\u0000¢\u0006\u0002\bGJ\u0016\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020MJ\u0010\u0010N\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u001aH\u0002J\u000e\u0010O\u001a\u00020\u00102\u0006\u0010J\u001a\u00020KJ&\u0010P\u001a\u00020\u00182\u0006\u0010#\u001a\u00020$2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u001aH\u0082@¢\u0006\u0002\u0010QR\u000e\u0010\u000b\u001a\u00020\fX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006R"}, d2 = {"Ltech/ula/library/model/state/AppsStartupFsm;", "", "ulaDatabase", "Ltech/ula/library/model/repositories/UlaDatabase;", "filesystemManager", "Ltech/ula/library/utils/FilesystemManager;", "ulaFiles", "Ltech/ula/library/utils/UlaFiles;", JsonMarshaller.LOGGER, "Ltech/ula/library/utils/Logger;", "(Ltech/ula/library/model/repositories/UlaDatabase;Ltech/ula/library/utils/FilesystemManager;Ltech/ula/library/utils/UlaFiles;Ltech/ula/library/utils/Logger;)V", "className", "", "filesystemDao", "Ltech/ula/library/model/daos/FilesystemDao;", "lastAskConnectType", "", "lastAskDisplayPreferences", "sessionDao", "Ltech/ula/library/model/daos/SessionDao;", "state", "Landroidx/lifecycle/MutableLiveData;", "Ltech/ula/library/model/state/AppsStartupState;", "checkAppsFilesystemCredentials", "", "appsFilesystem", "Ltech/ula/library/model/entities/Filesystem;", "checkAppsFilesystemFlavor", "checkDisplayPreferences", "appSession", "Ltech/ula/library/model/entities/Session;", "checkPayment", "filesystem", "checkServiceType", "copyAppScriptToFilesystem", "app", "Ltech/ula/library/model/entities/App;", "(Ltech/ula/library/model/entities/App;Ltech/ula/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "fetchDatabaseEntries", "askConnectType", "askDisplayPreferences", "(Ltech/ula/library/model/entities/App;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "findAppSession", "filesystemId", "", "(Ltech/ula/library/model/entities/App;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "findAppsFilesystem", "(Ltech/ula/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getState", "Landroidx/lifecycle/LiveData;", "setAppsFilesystemCredentials", "username", Constants.testpassword, "vncPassword", "(Ltech/ula/library/model/entities/Filesystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setAppsFilesystemFlavor", "flavor", "isPaid", "executionType", "Ltech/ula/library/model/entities/ExecutionType;", "(Ltech/ula/library/model/entities/Filesystem;Ljava/lang/String;ZLtech/ula/library/model/entities/ExecutionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setDisplayPreferences", "displayPreferences", "Ltech/ula/library/model/entities/DisplayPreferences;", "(Ltech/ula/library/model/entities/Session;Ltech/ula/library/model/entities/DisplayPreferences;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setServiceTypePreferences", "serviceTypePreferences", "Ltech/ula/library/model/entities/ServiceTypePreferences;", "(Ltech/ula/library/model/entities/Session;Ltech/ula/library/model/entities/ServiceTypePreferences;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setState", "newState", "setState$UserLOstLibrary_UserLOstRelease", "submitEvent", "Lkotlinx/coroutines/Job;", NotificationCompat.CATEGORY_EVENT, "Ltech/ula/library/model/state/AppsStartupEvent;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "submitPayment", "transitionIsAcceptable", "updateAppSession", "(Ltech/ula/library/model/entities/App;Ltech/ula/library/model/entities/Session;Ltech/ula/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AppsStartupFsm {
    private final String className;
    private final FilesystemDao filesystemDao;
    private final FilesystemManager filesystemManager;
    private boolean lastAskConnectType;
    private boolean lastAskDisplayPreferences;
    private final Logger logger;
    private final SessionDao sessionDao;
    private final MutableLiveData<AppsStartupState> state;
    private final UlaFiles ulaFiles;

    /* JADX INFO: renamed from: tech.ula.library.model.state.AppsStartupFsm$copyAppScriptToFilesystem$1, reason: invalid class name */
    /* JADX INFO: compiled from: AppsStartupFsm.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.state.AppsStartupFsm", f = "AppsStartupFsm.kt", i = {0}, l = {CipherSuite.TLS_DHE_RSA_WITH_AES_256_GCM_SHA384}, m = "copyAppScriptToFilesystem", n = {"this"}, s = {"L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AppsStartupFsm.this.copyAppScriptToFilesystem(null, null, this);
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.model.state.AppsStartupFsm$fetchDatabaseEntries$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AppsStartupFsm.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.state.AppsStartupFsm", f = "AppsStartupFsm.kt", i = {0, 0, 0, 0, 1, 1, 1, 1}, l = {97, Packets.SSH_MSG_CHANNEL_REQUEST}, m = "fetchDatabaseEntries", n = {"this", "app", "askConnectType", "askDisplayPreferences", "this", "appsFilesystem", "askConnectType", "askDisplayPreferences"}, s = {"L$0", "L$1", "Z$0", "Z$1", "L$0", "L$1", "Z$0", "Z$1"})
    static final class C02501 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        boolean Z$0;
        boolean Z$1;
        int label;
        /* synthetic */ Object result;

        C02501(Continuation<? super C02501> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AppsStartupFsm.this.fetchDatabaseEntries(null, false, false, this);
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.model.state.AppsStartupFsm$setAppsFilesystemCredentials$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AppsStartupFsm.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.state.AppsStartupFsm", f = "AppsStartupFsm.kt", i = {0}, l = {228}, m = "setAppsFilesystemCredentials", n = {"this"}, s = {"L$0"})
    static final class C02531 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02531(Continuation<? super C02531> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AppsStartupFsm.this.setAppsFilesystemCredentials(null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.model.state.AppsStartupFsm$setAppsFilesystemFlavor$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AppsStartupFsm.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.state.AppsStartupFsm", f = "AppsStartupFsm.kt", i = {0}, l = {220}, m = "setAppsFilesystemFlavor", n = {"this"}, s = {"L$0"})
    static final class C02551 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02551(Continuation<? super C02551> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AppsStartupFsm.this.setAppsFilesystemFlavor(null, null, false, null, this);
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.model.state.AppsStartupFsm$updateAppSession$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AppsStartupFsm.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.state.AppsStartupFsm", f = "AppsStartupFsm.kt", i = {0, 0, 0, 0}, l = {240}, m = "updateAppSession", n = {"this", "app", "appSession", "appsFilesystem"}, s = {"L$0", "L$1", "L$2", "L$3"})
    static final class C02601 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        C02601(Continuation<? super C02601> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AppsStartupFsm.this.updateAppSession(null, null, null, this);
        }
    }

    public AppsStartupFsm(UlaDatabase ulaDatabase, FilesystemManager filesystemManager, UlaFiles ulaFiles, Logger logger) {
        Intrinsics.checkNotNullParameter(ulaDatabase, "ulaDatabase");
        Intrinsics.checkNotNullParameter(filesystemManager, "filesystemManager");
        Intrinsics.checkNotNullParameter(ulaFiles, "ulaFiles");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.filesystemManager = filesystemManager;
        this.ulaFiles = ulaFiles;
        this.logger = logger;
        this.className = "AppsFSM";
        this.sessionDao = ulaDatabase.sessionDao();
        this.filesystemDao = ulaDatabase.filesystemDao();
        MutableLiveData<AppsStartupState> mutableLiveData = new MutableLiveData<>();
        mutableLiveData.postValue(WaitingForAppSelection.INSTANCE);
        this.state = mutableLiveData;
    }

    public /* synthetic */ AppsStartupFsm(UlaDatabase ulaDatabase, FilesystemManager filesystemManager, UlaFiles ulaFiles, SentryLogger sentryLogger, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(ulaDatabase, filesystemManager, ulaFiles, (i & 8) != 0 ? new SentryLogger() : sentryLogger);
    }

    public final LiveData<AppsStartupState> getState() {
        return this.state;
    }

    public final void setState$UserLOstLibrary_UserLOstRelease(AppsStartupState newState) {
        Intrinsics.checkNotNullParameter(newState, "newState");
        this.state.postValue(newState);
    }

    public final boolean transitionIsAcceptable(AppsStartupEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        AppsStartupState value = this.state.getValue();
        Intrinsics.checkNotNull(value);
        AppsStartupState appsStartupState = value;
        if (event instanceof AppSelected) {
            return appsStartupState instanceof WaitingForAppSelection;
        }
        if (event instanceof UserFeedbackChecked) {
            return appsStartupState instanceof DatabaseEntriesFetched;
        }
        if (event instanceof UserContributionChecked) {
            return appsStartupState instanceof UserFeedbackCheckComplete;
        }
        if (event instanceof CheckAppsFilesystemFlavor) {
            return appsStartupState instanceof UserContributionCheckComplete;
        }
        if (event instanceof SubmitAppsFilesystemFlavor) {
            return appsStartupState instanceof AppsFilesystemRequiresFlavor;
        }
        if (event instanceof CheckPayment) {
            return appsStartupState instanceof AppsFilesystemHasFlavor;
        }
        if (event instanceof SubmitPayment) {
            return appsStartupState instanceof PaymentRequired;
        }
        if (event instanceof CheckAppsFilesystemCredentials) {
            return appsStartupState instanceof PaymentMade;
        }
        if (event instanceof SubmitAppsFilesystemCredentials) {
            return appsStartupState instanceof AppsFilesystemRequiresCredentials;
        }
        if (event instanceof CheckAppSessionServiceTypePreferences) {
            return appsStartupState instanceof AppsFilesystemHasCredentials;
        }
        if (event instanceof SubmitAppSessionServiceTypePreferences) {
            return appsStartupState instanceof AppRequiresServiceTypePreferences;
        }
        if (event instanceof CheckAppSessionDisplayPreferences) {
            return appsStartupState instanceof AppHasServiceTypePreferencesSet;
        }
        if (event instanceof SubmitAppSessionDisplayPreferences) {
            return appsStartupState instanceof AppRequiresDisplayPreferences;
        }
        if (event instanceof CopyAppScriptToFilesystem) {
            return appsStartupState instanceof AppHasDisplayPreferencesSet;
        }
        if (event instanceof SyncDatabaseEntries) {
            return appsStartupState instanceof AppScriptCopySucceeded;
        }
        if (event instanceof ResetAppState) {
            return true;
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX INFO: renamed from: tech.ula.library.model.state.AppsStartupFsm$submitEvent$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AppsStartupFsm.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.state.AppsStartupFsm$submitEvent$1", f = "AppsStartupFsm.kt", i = {}, l = {71, 76, 82, 85, 87, 88, 89}, m = "invokeSuspend", n = {}, s = {})
    static final class C02591 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ AppsStartupEvent $event;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02591(AppsStartupEvent appsStartupEvent, Continuation<? super C02591> continuation) {
            super(2, continuation);
            this.$event = appsStartupEvent;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AppsStartupFsm.this.new C02591(this.$event, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02591) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    AppsStartupFsm.this.logger.addBreadcrumb(new UlaBreadcrumb(AppsStartupFsm.this.className, BreadcrumbType.ReceivedEvent.INSTANCE, "Event: " + this.$event + " State: " + AppsStartupFsm.this.state.getValue()));
                    if (!AppsStartupFsm.this.transitionIsAcceptable(this.$event)) {
                        MutableLiveData mutableLiveData = AppsStartupFsm.this.state;
                        AppsStartupEvent appsStartupEvent = this.$event;
                        T value = AppsStartupFsm.this.state.getValue();
                        Intrinsics.checkNotNull(value);
                        mutableLiveData.postValue(new IncorrectAppTransition(appsStartupEvent, (AppsStartupState) value));
                        return Unit.INSTANCE;
                    }
                    AppsStartupEvent appsStartupEvent2 = this.$event;
                    if (appsStartupEvent2 instanceof AppSelected) {
                        this.label = 1;
                        if (AppsStartupFsm.this.fetchDatabaseEntries(((AppSelected) appsStartupEvent2).getApp(), ((AppSelected) this.$event).getAskConnectType(), ((AppSelected) this.$event).getAskDisplayPreferences(), this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else if (appsStartupEvent2 instanceof UserFeedbackChecked) {
                        AppsStartupFsm.this.state.postValue(UserFeedbackCheckComplete.INSTANCE);
                    } else if (appsStartupEvent2 instanceof UserContributionChecked) {
                        AppsStartupFsm.this.state.postValue(UserContributionCheckComplete.INSTANCE);
                    } else if (appsStartupEvent2 instanceof CheckAppsFilesystemFlavor) {
                        AppsStartupFsm.this.checkAppsFilesystemFlavor(((CheckAppsFilesystemFlavor) appsStartupEvent2).getAppsFilesystem());
                    } else if (appsStartupEvent2 instanceof SubmitAppsFilesystemFlavor) {
                        this.label = 2;
                        if (AppsStartupFsm.this.setAppsFilesystemFlavor(((SubmitAppsFilesystemFlavor) appsStartupEvent2).getFilesystem(), ((SubmitAppsFilesystemFlavor) this.$event).getFlavor(), ((SubmitAppsFilesystemFlavor) this.$event).isPaid(), ((SubmitAppsFilesystemFlavor) this.$event).getExecutionType(), this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else if (appsStartupEvent2 instanceof CheckPayment) {
                        AppsStartupFsm.this.checkPayment(((CheckPayment) appsStartupEvent2).getAppSession(), ((CheckPayment) this.$event).getFilesystem());
                    } else if (appsStartupEvent2 instanceof SubmitPayment) {
                        AppsStartupFsm.this.submitPayment(((SubmitPayment) appsStartupEvent2).getFilesystem());
                    } else if (appsStartupEvent2 instanceof CheckAppsFilesystemCredentials) {
                        AppsStartupFsm.this.checkAppsFilesystemCredentials(((CheckAppsFilesystemCredentials) appsStartupEvent2).getAppsFilesystem());
                    } else if (appsStartupEvent2 instanceof SubmitAppsFilesystemCredentials) {
                        this.label = 3;
                        if (AppsStartupFsm.this.setAppsFilesystemCredentials(((SubmitAppsFilesystemCredentials) appsStartupEvent2).getFilesystem(), ((SubmitAppsFilesystemCredentials) this.$event).getUsername(), ((SubmitAppsFilesystemCredentials) this.$event).getPassword(), ((SubmitAppsFilesystemCredentials) this.$event).getVncPassword(), this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else if (appsStartupEvent2 instanceof CheckAppSessionServiceTypePreferences) {
                        AppsStartupFsm.this.checkServiceType(((CheckAppSessionServiceTypePreferences) appsStartupEvent2).getAppSession());
                    } else if (appsStartupEvent2 instanceof SubmitAppSessionServiceTypePreferences) {
                        this.label = 4;
                        if (AppsStartupFsm.this.setServiceTypePreferences(((SubmitAppSessionServiceTypePreferences) appsStartupEvent2).getAppSession(), ((SubmitAppSessionServiceTypePreferences) this.$event).getServiceTypePreferences(), this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else if (appsStartupEvent2 instanceof CheckAppSessionDisplayPreferences) {
                        AppsStartupFsm.this.checkDisplayPreferences(((CheckAppSessionDisplayPreferences) appsStartupEvent2).getAppSession());
                    } else if (appsStartupEvent2 instanceof SubmitAppSessionDisplayPreferences) {
                        this.label = 5;
                        if (AppsStartupFsm.this.setDisplayPreferences(((SubmitAppSessionDisplayPreferences) appsStartupEvent2).getAppSession(), ((SubmitAppSessionDisplayPreferences) this.$event).getDisplayPreferences(), this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else if (appsStartupEvent2 instanceof CopyAppScriptToFilesystem) {
                        this.label = 6;
                        if (AppsStartupFsm.this.copyAppScriptToFilesystem(((CopyAppScriptToFilesystem) appsStartupEvent2).getApp(), ((CopyAppScriptToFilesystem) this.$event).getFilesystem(), this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else if (appsStartupEvent2 instanceof SyncDatabaseEntries) {
                        this.label = 7;
                        if (AppsStartupFsm.this.updateAppSession(((SyncDatabaseEntries) appsStartupEvent2).getApp(), ((SyncDatabaseEntries) this.$event).getSession(), ((SyncDatabaseEntries) this.$event).getFilesystem(), this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        if (!(appsStartupEvent2 instanceof ResetAppState)) {
                            throw new NoWhenBranchMatchedException();
                        }
                        AppsStartupFsm.this.state.postValue(WaitingForAppSelection.INSTANCE);
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
                    ResultKt.throwOnFailure(obj);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Unit.INSTANCE;
        }
    }

    public final Job submitEvent(AppsStartupEvent event, CoroutineScope coroutineScope) {
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        return BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new C02591(event, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object fetchDatabaseEntries(App app, boolean z, boolean z2, Continuation<? super Unit> continuation) throws Throwable {
        C02501 c02501;
        AppsStartupFsm appsStartupFsm;
        AppsStartupFsm appsStartupFsm2;
        boolean z3;
        Filesystem filesystem;
        if (continuation instanceof C02501) {
            c02501 = (C02501) continuation;
            if ((c02501.label & Integer.MIN_VALUE) != 0) {
                c02501.label -= Integer.MIN_VALUE;
            } else {
                c02501 = new C02501(continuation);
            }
        } else {
            c02501 = new C02501(continuation);
        }
        Object objFindAppsFilesystem = c02501.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02501.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objFindAppsFilesystem);
            this.state.postValue(FetchingDatabaseEntries.INSTANCE);
            try {
                c02501.L$0 = this;
                c02501.L$1 = app;
                c02501.Z$0 = z;
                c02501.Z$1 = z2;
                c02501.label = 1;
                objFindAppsFilesystem = findAppsFilesystem(app, c02501);
                if (objFindAppsFilesystem == coroutine_suspended) {
                    return coroutine_suspended;
                }
                appsStartupFsm2 = this;
            } catch (Exception unused) {
                appsStartupFsm = this;
                appsStartupFsm.state.postValue(DatabaseEntriesFetchFailed.INSTANCE);
            }
        } else {
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                z3 = c02501.Z$1;
                z = c02501.Z$0;
                filesystem = (Filesystem) c02501.L$1;
                appsStartupFsm = (AppsStartupFsm) c02501.L$0;
                try {
                    ResultKt.throwOnFailure(objFindAppsFilesystem);
                    appsStartupFsm.lastAskConnectType = z;
                    appsStartupFsm.lastAskDisplayPreferences = z3;
                    appsStartupFsm.state.postValue(new DatabaseEntriesFetched(filesystem, (Session) objFindAppsFilesystem));
                } catch (Exception unused2) {
                    appsStartupFsm.state.postValue(DatabaseEntriesFetchFailed.INSTANCE);
                }
                return Unit.INSTANCE;
            }
            z2 = c02501.Z$1;
            z = c02501.Z$0;
            app = (App) c02501.L$1;
            appsStartupFsm2 = (AppsStartupFsm) c02501.L$0;
            try {
                ResultKt.throwOnFailure(objFindAppsFilesystem);
            } catch (Exception unused3) {
                appsStartupFsm = appsStartupFsm2;
                appsStartupFsm.state.postValue(DatabaseEntriesFetchFailed.INSTANCE);
            }
        }
        Filesystem filesystem2 = (Filesystem) objFindAppsFilesystem;
        long id = filesystem2.getId();
        c02501.L$0 = appsStartupFsm2;
        c02501.L$1 = filesystem2;
        c02501.Z$0 = z;
        c02501.Z$1 = z2;
        c02501.label = 2;
        Object objFindAppSession = appsStartupFsm2.findAppSession(app, id, c02501);
        if (objFindAppSession == coroutine_suspended) {
            return coroutine_suspended;
        }
        appsStartupFsm = appsStartupFsm2;
        objFindAppsFilesystem = objFindAppSession;
        z3 = z2;
        filesystem = filesystem2;
        appsStartupFsm.lastAskConnectType = z;
        appsStartupFsm.lastAskDisplayPreferences = z3;
        appsStartupFsm.state.postValue(new DatabaseEntriesFetched(filesystem, (Session) objFindAppsFilesystem));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkAppsFilesystemFlavor(Filesystem appsFilesystem) {
        if (appsFilesystem.getFlavor().length() > 0 && (!appsFilesystem.isPaid() || appsFilesystem.getHasPaidUp())) {
            this.state.postValue(AppsFilesystemHasFlavor.INSTANCE);
        } else {
            this.state.postValue(new AppsFilesystemRequiresFlavor(appsFilesystem));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkPayment(Session appSession, Filesystem filesystem) {
        if (filesystem.isPaid() || appSession.getSoundSupport() || appSession.getMicSupport()) {
            this.state.postValue(PaymentRequired.INSTANCE);
        } else {
            this.state.postValue(PaymentMade.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void submitPayment(Filesystem filesystem) {
        filesystem.setHasPaidUp(true);
        this.state.postValue(PaymentMade.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkAppsFilesystemCredentials(Filesystem appsFilesystem) {
        if (appsFilesystem.getDefaultUsername().length() > 0 && appsFilesystem.getDefaultPassword().length() > 0 && appsFilesystem.getDefaultVncPassword().length() > 0) {
            this.state.postValue(AppsFilesystemHasCredentials.INSTANCE);
        } else {
            this.state.postValue(new AppsFilesystemRequiresCredentials(appsFilesystem));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkServiceType(Session appSession) {
        if ((this.lastAskConnectType || Intrinsics.areEqual(appSession.getServiceType(), ServiceType.Unselected.INSTANCE) || !appSession.getServiceTypeRemember()) && !appSession.getActive()) {
            this.state.postValue(AppRequiresServiceTypePreferences.INSTANCE);
        } else {
            this.state.postValue(AppHasServiceTypePreferencesSet.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkDisplayPreferences(Session appSession) {
        if ((this.lastAskDisplayPreferences || !appSession.getDisplayRemember()) && Intrinsics.areEqual(appSession.getServiceType(), ServiceType.Vnc.INSTANCE) && !appSession.getActive()) {
            this.state.postValue(AppRequiresDisplayPreferences.INSTANCE);
        } else {
            this.state.postValue(AppHasDisplayPreferencesSet.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object copyAppScriptToFilesystem(App app, Filesystem filesystem, Continuation<? super Unit> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        AppsStartupFsm appsStartupFsm;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object obj = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.state.postValue(CopyingAppScript.INSTANCE);
            try {
                CoroutineDispatcher io2 = Dispatchers.getIO();
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(app, filesystem, null);
                anonymousClass1.L$0 = this;
                anonymousClass1.label = 1;
                if (BuildersKt.withContext(io2, anonymousClass2, anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                appsStartupFsm = this;
            } catch (Exception unused) {
                appsStartupFsm = this;
                appsStartupFsm.state.postValue(AppScriptCopyFailed.INSTANCE);
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            appsStartupFsm = (AppsStartupFsm) anonymousClass1.L$0;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (Exception unused2) {
                appsStartupFsm.state.postValue(AppScriptCopyFailed.INSTANCE);
            }
        }
        appsStartupFsm.state.postValue(AppScriptCopySucceeded.INSTANCE);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: tech.ula.library.model.state.AppsStartupFsm$copyAppScriptToFilesystem$2, reason: invalid class name */
    /* JADX INFO: compiled from: AppsStartupFsm.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.state.AppsStartupFsm$copyAppScriptToFilesystem$2", f = "AppsStartupFsm.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ App $app;
        final /* synthetic */ Filesystem $filesystem;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(App app, Filesystem filesystem, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$app = app;
            this.$filesystem = filesystem;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AppsStartupFsm.this.new AnonymousClass2(this.$app, this.$filesystem, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                AppsStartupFsm.this.filesystemManager.moveAppScriptToRequiredLocation(this.$app.getName(), this.$filesystem);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.model.state.AppsStartupFsm$setServiceTypePreferences$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AppsStartupFsm.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.state.AppsStartupFsm$setServiceTypePreferences$2", f = "AppsStartupFsm.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02582 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Session $appSession;
        final /* synthetic */ ServiceTypePreferences $serviceTypePreferences;
        int label;
        final /* synthetic */ AppsStartupFsm this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02582(Session session, ServiceTypePreferences serviceTypePreferences, AppsStartupFsm appsStartupFsm, Continuation<? super C02582> continuation) {
            super(2, continuation);
            this.$appSession = session;
            this.$serviceTypePreferences = serviceTypePreferences;
            this.this$0 = appsStartupFsm;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02582(this.$appSession, this.$serviceTypePreferences, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02582) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.$appSession.setServiceType(this.$serviceTypePreferences.getServiceType());
            this.$appSession.setServiceTypeRemember(this.$serviceTypePreferences.getRemember());
            this.$appSession.setSoundSupport(this.$serviceTypePreferences.getSoundSupport());
            this.$appSession.setMicSupport(this.$serviceTypePreferences.getMicSupport());
            this.$appSession.setShareStorage(this.$serviceTypePreferences.getShareStorage());
            this.$appSession.setMemoryMb(this.$serviceTypePreferences.getMemoryMb());
            this.$appSession.setCpuAllCores(this.$serviceTypePreferences.getCpuAllCores());
            this.this$0.sessionDao.updateSession(this.$appSession);
            this.this$0.state.postValue(AppHasServiceTypePreferencesSet.INSTANCE);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object setServiceTypePreferences(Session session, ServiceTypePreferences serviceTypePreferences, Continuation<? super Unit> continuation) throws Throwable {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new C02582(session, serviceTypePreferences, this, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: tech.ula.library.model.state.AppsStartupFsm$setDisplayPreferences$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AppsStartupFsm.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.state.AppsStartupFsm$setDisplayPreferences$2", f = "AppsStartupFsm.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02572 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Session $appSession;
        final /* synthetic */ DisplayPreferences $displayPreferences;
        int label;
        final /* synthetic */ AppsStartupFsm this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02572(Session session, DisplayPreferences displayPreferences, AppsStartupFsm appsStartupFsm, Continuation<? super C02572> continuation) {
            super(2, continuation);
            this.$appSession = session;
            this.$displayPreferences = displayPreferences;
            this.this$0 = appsStartupFsm;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02572(this.$appSession, this.$displayPreferences, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02572) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.$appSession.setDisplayOrientation(this.$displayPreferences.getOrientation());
            this.$appSession.setDisplayScaling(this.$displayPreferences.getScaling());
            this.$appSession.setDisplayLocked(this.$displayPreferences.getLocked());
            this.$appSession.setDisplayRemember(this.$displayPreferences.getRemember());
            this.$appSession.setGeometry(this.$displayPreferences.getGeometry());
            this.this$0.sessionDao.updateSession(this.$appSession);
            this.this$0.state.postValue(AppHasDisplayPreferencesSet.INSTANCE);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object setDisplayPreferences(Session session, DisplayPreferences displayPreferences, Continuation<? super Unit> continuation) throws Throwable {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new C02572(session, displayPreferences, this, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: tech.ula.library.model.state.AppsStartupFsm$findAppsFilesystem$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AppsStartupFsm.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Ltech/ula/library/model/entities/Filesystem;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.state.AppsStartupFsm$findAppsFilesystem$2", f = "AppsStartupFsm.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02522 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Filesystem>, Object> {
        final /* synthetic */ App $app;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02522(App app, Continuation<? super C02522> continuation) {
            super(2, continuation);
            this.$app = app;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AppsStartupFsm.this.new C02522(this.$app, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Filesystem> continuation) {
            return ((C02522) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (AppsStartupFsm.this.filesystemDao.findAppsFilesystemByType(this.$app.getFilesystemRequired()).isEmpty()) {
                AppsStartupFsm.this.filesystemDao.insertFilesystem(new Filesystem(0L, "apps", this.$app.getFilesystemRequired(), AppsStartupFsm.this.ulaFiles.getArchType(), null, null, null, null, true, null, false, false, false, false, null, 30448, null));
            }
            return CollectionsKt.first((List) AppsStartupFsm.this.filesystemDao.findAppsFilesystemByType(this.$app.getFilesystemRequired()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object findAppsFilesystem(App app, Continuation<? super Filesystem> continuation) throws NoSuchElementException {
        return BuildersKt.withContext(Dispatchers.getIO(), new C02522(app, null), continuation);
    }

    /* JADX INFO: renamed from: tech.ula.library.model.state.AppsStartupFsm$findAppSession$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AppsStartupFsm.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Ltech/ula/library/model/entities/Session;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.state.AppsStartupFsm$findAppSession$2", f = "AppsStartupFsm.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02512 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Session>, Object> {
        final /* synthetic */ App $app;
        final /* synthetic */ long $filesystemId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02512(App app, long j, Continuation<? super C02512> continuation) {
            super(2, continuation);
            this.$app = app;
            this.$filesystemId = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AppsStartupFsm.this.new C02512(this.$app, this.$filesystemId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Session> continuation) {
            return ((C02512) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (AppsStartupFsm.this.sessionDao.findAppsSession(this.$app.getName()).isEmpty()) {
                AppsStartupFsm.this.sessionDao.insertSession(new Session(0L, this.$app.getName(), this.$filesystemId, null, false, null, null, null, null, 0L, 0L, null, true, false, 0, false, 0.0f, false, false, false, false, null, false, 0L, false, 33550328, null));
            }
            return CollectionsKt.first((List) AppsStartupFsm.this.sessionDao.findAppsSession(this.$app.getName()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object findAppSession(App app, long j, Continuation<? super Session> continuation) throws NoSuchElementException {
        return BuildersKt.withContext(Dispatchers.getIO(), new C02512(app, j, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object setAppsFilesystemFlavor(Filesystem filesystem, String str, boolean z, ExecutionType executionType, Continuation<? super Unit> continuation) throws Throwable {
        C02551 c02551;
        AppsStartupFsm appsStartupFsm;
        if (continuation instanceof C02551) {
            c02551 = (C02551) continuation;
            if ((c02551.label & Integer.MIN_VALUE) != 0) {
                c02551.label -= Integer.MIN_VALUE;
            } else {
                c02551 = new C02551(continuation);
            }
        } else {
            c02551 = new C02551(continuation);
        }
        Object obj = c02551.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02551.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            filesystem.setFlavor(str);
            filesystem.setPaid(z);
            filesystem.setExecutionType(executionType);
            CoroutineDispatcher io2 = Dispatchers.getIO();
            C02562 c02562 = new C02562(filesystem, null);
            c02551.L$0 = this;
            c02551.label = 1;
            if (BuildersKt.withContext(io2, c02562, c02551) == coroutine_suspended) {
                return coroutine_suspended;
            }
            appsStartupFsm = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            appsStartupFsm = (AppsStartupFsm) c02551.L$0;
            ResultKt.throwOnFailure(obj);
        }
        appsStartupFsm.state.postValue(AppsFilesystemHasFlavor.INSTANCE);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: tech.ula.library.model.state.AppsStartupFsm$setAppsFilesystemFlavor$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AppsStartupFsm.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.state.AppsStartupFsm$setAppsFilesystemFlavor$2", f = "AppsStartupFsm.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02562 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Filesystem $filesystem;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02562(Filesystem filesystem, Continuation<? super C02562> continuation) {
            super(2, continuation);
            this.$filesystem = filesystem;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AppsStartupFsm.this.new C02562(this.$filesystem, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02562) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            AppsStartupFsm.this.filesystemDao.updateFilesystem(this.$filesystem);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object setAppsFilesystemCredentials(Filesystem filesystem, String str, String str2, String str3, Continuation<? super Unit> continuation) throws Throwable {
        C02531 c02531;
        AppsStartupFsm appsStartupFsm;
        if (continuation instanceof C02531) {
            c02531 = (C02531) continuation;
            if ((c02531.label & Integer.MIN_VALUE) != 0) {
                c02531.label -= Integer.MIN_VALUE;
            } else {
                c02531 = new C02531(continuation);
            }
        } else {
            c02531 = new C02531(continuation);
        }
        Object obj = c02531.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02531.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            filesystem.setDefaultUsername(str);
            filesystem.setDefaultPassword(str2);
            filesystem.setDefaultVncPassword(str3);
            CoroutineDispatcher io2 = Dispatchers.getIO();
            C02542 c02542 = new C02542(filesystem, null);
            c02531.L$0 = this;
            c02531.label = 1;
            if (BuildersKt.withContext(io2, c02542, c02531) == coroutine_suspended) {
                return coroutine_suspended;
            }
            appsStartupFsm = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            appsStartupFsm = (AppsStartupFsm) c02531.L$0;
            ResultKt.throwOnFailure(obj);
        }
        appsStartupFsm.state.postValue(AppsFilesystemHasCredentials.INSTANCE);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: tech.ula.library.model.state.AppsStartupFsm$setAppsFilesystemCredentials$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AppsStartupFsm.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.state.AppsStartupFsm$setAppsFilesystemCredentials$2", f = "AppsStartupFsm.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02542 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Filesystem $filesystem;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02542(Filesystem filesystem, Continuation<? super C02542> continuation) {
            super(2, continuation);
            this.$filesystem = filesystem;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AppsStartupFsm.this.new C02542(this.$filesystem, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02542) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            AppsStartupFsm.this.filesystemDao.updateFilesystem(this.$filesystem);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object updateAppSession(App app, Session session, Filesystem filesystem, Continuation<? super Unit> continuation) throws Throwable {
        C02601 c02601;
        AppsStartupFsm appsStartupFsm;
        if (continuation instanceof C02601) {
            c02601 = (C02601) continuation;
            if ((c02601.label & Integer.MIN_VALUE) != 0) {
                c02601.label -= Integer.MIN_VALUE;
            } else {
                c02601 = new C02601(continuation);
            }
        } else {
            c02601 = new C02601(continuation);
        }
        Object obj = c02601.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02601.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.state.postValue(SyncingDatabaseEntries.INSTANCE);
            session.setFilesystemId(filesystem.getId());
            session.setFilesystemName(filesystem.getName());
            session.setUsername(filesystem.getDefaultUsername());
            session.setPassword(filesystem.getDefaultPassword());
            session.setVncPassword(filesystem.getDefaultVncPassword());
            session.setExecutionType(filesystem.getExecutionType());
            CoroutineDispatcher io2 = Dispatchers.getIO();
            C02612 c02612 = new C02612(session, null);
            c02601.L$0 = this;
            c02601.L$1 = app;
            c02601.L$2 = session;
            c02601.L$3 = filesystem;
            c02601.label = 1;
            if (BuildersKt.withContext(io2, c02612, c02601) == coroutine_suspended) {
                return coroutine_suspended;
            }
            appsStartupFsm = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            filesystem = (Filesystem) c02601.L$3;
            session = (Session) c02601.L$2;
            app = (App) c02601.L$1;
            appsStartupFsm = (AppsStartupFsm) c02601.L$0;
            ResultKt.throwOnFailure(obj);
        }
        appsStartupFsm.state.postValue(new AppDatabaseEntriesSynced(app, session, filesystem));
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: tech.ula.library.model.state.AppsStartupFsm$updateAppSession$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AppsStartupFsm.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.state.AppsStartupFsm$updateAppSession$2", f = "AppsStartupFsm.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02612 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Session $appSession;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02612(Session session, Continuation<? super C02612> continuation) {
            super(2, continuation);
            this.$appSession = session;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AppsStartupFsm.this.new C02612(this.$appSession, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02612) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            AppsStartupFsm.this.sessionDao.updateSession(this.$appSession);
            return Unit.INSTANCE;
        }
    }
}
