package tech.ula.library.viewmodel;

import android.content.SharedPreferences;
import android.net.Uri;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.google.gson.Gson;
import com.iiordanov.pubkeygenerator.PreferenceConstants;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import tech.ula.library.R;
import tech.ula.library.model.daos.SessionDao;
import tech.ula.library.model.entities.App;
import tech.ula.library.model.entities.ServiceType;
import tech.ula.library.model.entities.Session;
import tech.ula.library.utils.AppDetails;

/* JADX INFO: compiled from: AppDetailsViewModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\u001a\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0002J\u0016\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u0019H\u0082@¢\u0006\u0002\u0010\u001eJ\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0018\u001a\u00020\u0019H\u0082@¢\u0006\u0002\u0010\u001eJ\u0019\u0010 \u001a\u0004\u0018\u00010\b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0003¢\u0006\u0002\u0010!J\u0012\u0010\"\u001a\u00020#2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0002J\u0010\u0010$\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020&H\u0002J\u0010\u0010'\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020(H\u0002J\u0012\u0010)\u001a\u00020#2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0002J\u0018\u0010*\u001a\u00020+2\u0006\u0010%\u001a\u00020,2\b\b\u0002\u0010-\u001a\u00020\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006."}, d2 = {"Ltech/ula/library/viewmodel/AppDetailsViewModel;", "Landroidx/lifecycle/ViewModel;", "Lkotlinx/coroutines/CoroutineScope;", "sessionDao", "Ltech/ula/library/model/daos/SessionDao;", "appDetails", "Ltech/ula/library/utils/AppDetails;", "buildVersion", "", PreferenceConstants.BACKUP_PREF_KEY, "Landroid/content/SharedPreferences;", "(Ltech/ula/library/model/daos/SessionDao;Ltech/ula/library/utils/AppDetails;ILandroid/content/SharedPreferences;)V", "coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "job", "Lkotlinx/coroutines/CompletableJob;", "viewState", "Landroidx/lifecycle/MutableLiveData;", "Ltech/ula/library/viewmodel/AppDetailsViewState;", "getViewState", "()Landroidx/lifecycle/MutableLiveData;", "buildViewState", "app", "Ltech/ula/library/model/entities/App;", "appSession", "Ltech/ula/library/model/entities/Session;", "constructView", "", "(Ltech/ula/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAppSession", "getStateDescription", "(Ltech/ula/library/model/entities/Session;)Ljava/lang/Integer;", "getStateHintEnabled", "", "handleAutoStartChanged", NotificationCompat.CATEGORY_EVENT, "Ltech/ula/library/viewmodel/AppDetailsEvent$AutoStartChanged;", "handleServiceTypeChanged", "Ltech/ula/library/viewmodel/AppDetailsEvent$ServiceTypeChanged;", "radioButtonsShouldBeEnabled", "submitEvent", "Lkotlinx/coroutines/Job;", "Ltech/ula/library/viewmodel/AppDetailsEvent;", "coroutineScope", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AppDetailsViewModel extends ViewModel implements CoroutineScope {
    private final AppDetails appDetails;
    private final int buildVersion;
    private final CompletableJob job;
    private final SharedPreferences prefs;
    private final SessionDao sessionDao;
    private final MutableLiveData<AppDetailsViewState> viewState;

    /* JADX INFO: renamed from: tech.ula.library.viewmodel.AppDetailsViewModel$constructView$1, reason: invalid class name */
    /* JADX INFO: compiled from: AppDetailsViewModel.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.viewmodel.AppDetailsViewModel", f = "AppDetailsViewModel.kt", i = {0, 0}, l = {58}, m = "constructView", n = {"this", "app"}, s = {"L$0", "L$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AppDetailsViewModel.this.constructView(null, this);
        }
    }

    public AppDetailsViewModel(SessionDao sessionDao, AppDetails appDetails, int i, SharedPreferences prefs) {
        Intrinsics.checkNotNullParameter(sessionDao, "sessionDao");
        Intrinsics.checkNotNullParameter(appDetails, "appDetails");
        Intrinsics.checkNotNullParameter(prefs, "prefs");
        this.sessionDao = sessionDao;
        this.appDetails = appDetails;
        this.buildVersion = i;
        this.prefs = prefs;
        this.job = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        this.viewState = new MutableLiveData<>();
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return Dispatchers.getMain().plus(this.job);
    }

    public final MutableLiveData<AppDetailsViewState> getViewState() {
        return this.viewState;
    }

    /* JADX INFO: renamed from: tech.ula.library.viewmodel.AppDetailsViewModel$submitEvent$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AppDetailsViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.viewmodel.AppDetailsViewModel$submitEvent$1", f = "AppDetailsViewModel.kt", i = {}, l = {51}, m = "invokeSuspend", n = {}, s = {})
    static final class C02911 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ AppDetailsEvent $event;
        int label;
        final /* synthetic */ AppDetailsViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02911(AppDetailsEvent appDetailsEvent, AppDetailsViewModel appDetailsViewModel, Continuation<? super C02911> continuation) {
            super(2, continuation);
            this.$event = appDetailsEvent;
            this.this$0 = appDetailsViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02911(this.$event, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02911) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                AppDetailsEvent appDetailsEvent = this.$event;
                if (appDetailsEvent instanceof AppDetailsEvent.SubmitApp) {
                    this.label = 1;
                    if (this.this$0.constructView(((AppDetailsEvent.SubmitApp) appDetailsEvent).getApp(), this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (appDetailsEvent instanceof AppDetailsEvent.ServiceTypeChanged) {
                    this.this$0.handleServiceTypeChanged((AppDetailsEvent.ServiceTypeChanged) appDetailsEvent);
                } else {
                    if (!(appDetailsEvent instanceof AppDetailsEvent.AutoStartChanged)) {
                        throw new NoWhenBranchMatchedException();
                    }
                    this.this$0.handleAutoStartChanged((AppDetailsEvent.AutoStartChanged) appDetailsEvent);
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public static /* synthetic */ Job submitEvent$default(AppDetailsViewModel appDetailsViewModel, AppDetailsEvent appDetailsEvent, CoroutineScope coroutineScope, int i, Object obj) {
        if ((i & 2) != 0) {
            coroutineScope = appDetailsViewModel;
        }
        return appDetailsViewModel.submitEvent(appDetailsEvent, coroutineScope);
    }

    public final Job submitEvent(AppDetailsEvent event, CoroutineScope coroutineScope) {
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        return BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new C02911(event, this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object constructView(App app, Continuation<? super Unit> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        AppDetailsViewModel appDetailsViewModel;
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
        Object appSession = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(appSession);
            anonymousClass1.L$0 = this;
            anonymousClass1.L$1 = app;
            anonymousClass1.label = 1;
            appSession = getAppSession(app, anonymousClass1);
            if (appSession == coroutine_suspended) {
                return coroutine_suspended;
            }
            appDetailsViewModel = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            app = (App) anonymousClass1.L$1;
            appDetailsViewModel = (AppDetailsViewModel) anonymousClass1.L$0;
            ResultKt.throwOnFailure(appSession);
        }
        appDetailsViewModel.viewState.postValue(appDetailsViewModel.buildViewState(app, (Session) appSession));
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: tech.ula.library.viewmodel.AppDetailsViewModel$getAppSession$2, reason: invalid class name */
    /* JADX INFO: compiled from: AppDetailsViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Ltech/ula/library/model/entities/Session;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.viewmodel.AppDetailsViewModel$getAppSession$2", f = "AppDetailsViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Session>, Object> {
        final /* synthetic */ App $app;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(App app, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$app = app;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AppDetailsViewModel.this.new AnonymousClass2(this.$app, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Session> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                List<Session> listFindAppsSession = AppDetailsViewModel.this.sessionDao.findAppsSession(this.$app.getName());
                if (listFindAppsSession.isEmpty()) {
                    return null;
                }
                return (Session) CollectionsKt.first((List) listFindAppsSession);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object getAppSession(App app, Continuation<? super Session> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass2(app, null), continuation);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00b4  */
    private final AppDetailsViewState buildViewState(App app, Session appSession) {
        Integer num;
        Integer numValueOf;
        String string;
        boolean z;
        boolean zRadioButtonsShouldBeEnabled = radioButtonsShouldBeEnabled(appSession);
        Uri uriFindIconUri = this.appDetails.findIconUri(app.getName());
        String name = app.getName();
        String strFindAppDescription = this.appDetails.findAppDescription(app.getName());
        boolean z2 = app.getSupportsCli() && zRadioButtonsShouldBeEnabled;
        boolean z3 = app.getSupportsGui() && zRadioButtonsShouldBeEnabled;
        boolean z4 = app.getSupportsGui() && this.buildVersion <= 27 && zRadioButtonsShouldBeEnabled;
        boolean stateHintEnabled = getStateHintEnabled(appSession);
        Integer stateDescription = getStateDescription(appSession);
        ServiceType serviceType = appSession != null ? appSession.getServiceType() : null;
        if (Intrinsics.areEqual(serviceType, ServiceType.Ssh.INSTANCE)) {
            numValueOf = Integer.valueOf(R.id.apps_ssh_preference);
        } else {
            if (!Intrinsics.areEqual(serviceType, ServiceType.Vnc.INSTANCE)) {
                if (Intrinsics.areEqual(serviceType, ServiceType.Xsdl.INSTANCE)) {
                    numValueOf = Integer.valueOf(R.id.apps_xsdl_preference);
                } else {
                    num = null;
                }
                Gson gson = new Gson();
                string = this.prefs.getString("AutoApp", " ");
                if (string == null && string.compareTo(" ") != 0 && ((App) gson.fromJson(string, App.class)).getName().compareTo(name) == 0) {
                    z = true;
                } else {
                    z = false;
                }
                return new AppDetailsViewState(uriFindIconUri, name, strFindAppDescription, z2, z3, z4, stateHintEnabled, stateDescription, num, z);
            }
            numValueOf = Integer.valueOf(R.id.apps_vnc_preference);
        }
        num = numValueOf;
        Gson gson2 = new Gson();
        string = this.prefs.getString("AutoApp", " ");
        if (string == null) {
            z = false;
        } else {
            z = false;
        }
        return new AppDetailsViewState(uriFindIconUri, name, strFindAppDescription, z2, z3, z4, stateHintEnabled, stateDescription, num, z);
    }

    /* JADX INFO: renamed from: tech.ula.library.viewmodel.AppDetailsViewModel$handleServiceTypeChanged$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AppDetailsViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.viewmodel.AppDetailsViewModel$handleServiceTypeChanged$1", f = "AppDetailsViewModel.kt", i = {0}, l = {115}, m = "invokeSuspend", n = {"$this$launch"}, s = {"L$0"})
    static final class C02901 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ AppDetailsEvent.ServiceTypeChanged $event;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02901(AppDetailsEvent.ServiceTypeChanged serviceTypeChanged, Continuation<? super C02901> continuation) {
            super(2, continuation);
            this.$event = serviceTypeChanged;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C02901 c02901 = AppDetailsViewModel.this.new C02901(this.$event, continuation);
            c02901.L$0 = obj;
            return c02901;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02901) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            CoroutineScope coroutineScope;
            ServiceType.Unselected unselected;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope2 = (CoroutineScope) this.L$0;
                this.L$0 = coroutineScope2;
                this.label = 1;
                Object appSession = AppDetailsViewModel.this.getAppSession(this.$event.getApp(), this);
                if (appSession == coroutine_suspended) {
                    return coroutine_suspended;
                }
                coroutineScope = coroutineScope2;
                obj = appSession;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                coroutineScope = (CoroutineScope) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            Session session = (Session) obj;
            int selectedButton = this.$event.getSelectedButton();
            if (selectedButton == R.id.apps_ssh_preference) {
                unselected = ServiceType.Ssh.INSTANCE;
            } else if (selectedButton == R.id.apps_vnc_preference) {
                unselected = ServiceType.Vnc.INSTANCE;
            } else {
                unselected = selectedButton == R.id.apps_xsdl_preference ? ServiceType.Xsdl.INSTANCE : ServiceType.Unselected.INSTANCE;
            }
            if (session == null) {
                return Unit.INSTANCE;
            }
            session.setServiceType(unselected);
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new C00541(AppDetailsViewModel.this, session, null), 3, null);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: tech.ula.library.viewmodel.AppDetailsViewModel$handleServiceTypeChanged$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: AppDetailsViewModel.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "tech.ula.library.viewmodel.AppDetailsViewModel$handleServiceTypeChanged$1$1", f = "AppDetailsViewModel.kt", i = {}, l = {127}, m = "invokeSuspend", n = {}, s = {})
        static final class C00541 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ Session $appSession;
            int label;
            final /* synthetic */ AppDetailsViewModel this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00541(AppDetailsViewModel appDetailsViewModel, Session session, Continuation<? super C00541> continuation) {
                super(2, continuation);
                this.this$0 = appDetailsViewModel;
                this.$appSession = session;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C00541(this.this$0, this.$appSession, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C00541) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX INFO: renamed from: tech.ula.library.viewmodel.AppDetailsViewModel$handleServiceTypeChanged$1$1$1, reason: invalid class name and collision with other inner class name */
            /* JADX INFO: compiled from: AppDetailsViewModel.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
            @DebugMetadata(c = "tech.ula.library.viewmodel.AppDetailsViewModel$handleServiceTypeChanged$1$1$1", f = "AppDetailsViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            static final class C00551 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                final /* synthetic */ Session $appSession;
                int label;
                final /* synthetic */ AppDetailsViewModel this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C00551(AppDetailsViewModel appDetailsViewModel, Session session, Continuation<? super C00551> continuation) {
                    super(2, continuation);
                    this.this$0 = appDetailsViewModel;
                    this.$appSession = session;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new C00551(this.this$0, this.$appSession, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                    return ((C00551) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) throws Throwable {
                    IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.label == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.this$0.sessionDao.updateSession(this.$appSession);
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (BuildersKt.withContext(Dispatchers.getIO(), new C00551(this.this$0, this.$appSession, null), this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleServiceTypeChanged(AppDetailsEvent.ServiceTypeChanged event) {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new C02901(event, null), 3, null);
    }

    /* JADX INFO: renamed from: tech.ula.library.viewmodel.AppDetailsViewModel$handleAutoStartChanged$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AppDetailsViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.viewmodel.AppDetailsViewModel$handleAutoStartChanged$1", f = "AppDetailsViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02891 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ AppDetailsEvent.AutoStartChanged $event;
        int label;
        final /* synthetic */ AppDetailsViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02891(AppDetailsEvent.AutoStartChanged autoStartChanged, AppDetailsViewModel appDetailsViewModel, Continuation<? super C02891> continuation) {
            super(2, continuation);
            this.$event = autoStartChanged;
            this.this$0 = appDetailsViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02891(this.$event, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02891) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (this.$event.getAutoStartEnabled()) {
                SharedPreferences.Editor editorEdit = this.this$0.prefs.edit();
                editorEdit.putString("AutoApp", new Gson().toJson(this.$event.getApp()));
                editorEdit.apply();
            } else {
                SharedPreferences.Editor editorEdit2 = this.this$0.prefs.edit();
                editorEdit2.remove("AutoApp");
                editorEdit2.apply();
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleAutoStartChanged(AppDetailsEvent.AutoStartChanged event) {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new C02891(event, this, null), 3, null);
    }

    private final boolean getStateHintEnabled(Session appSession) {
        return !radioButtonsShouldBeEnabled(appSession);
    }

    private final Integer getStateDescription(Session appSession) {
        if (appSession == null || Intrinsics.areEqual(appSession.getServiceType(), ServiceType.Unselected.INSTANCE)) {
            return Integer.valueOf(R.string.info_finish_app_setup);
        }
        if (appSession.getActive()) {
            return Integer.valueOf(R.string.info_stop_app);
        }
        return null;
    }

    private final boolean radioButtonsShouldBeEnabled(Session appSession) {
        ServiceType.Unselected serviceType;
        if (appSession == null || (serviceType = appSession.getServiceType()) == null) {
            serviceType = ServiceType.Unselected.INSTANCE;
        }
        return (appSession == null || !(appSession != null && !appSession.getActive()) || Intrinsics.areEqual(serviceType, ServiceType.Unselected.INSTANCE)) ? false : true;
    }
}
