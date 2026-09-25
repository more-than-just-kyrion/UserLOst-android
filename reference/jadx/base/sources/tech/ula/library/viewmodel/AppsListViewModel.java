package tech.ula.library.viewmodel;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.ViewModel;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import tech.ula.library.model.entities.App;
import tech.ula.library.model.repositories.AppRefreshStatus;
import tech.ula.library.model.repositories.AppsRepository;

/* JADX INFO: compiled from: AppsListViewModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0012\u0010\u0017\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007J\u0012\u0010\u0018\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007J\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0007J\u0006\u0010\u001b\u001a\u00020\u001cR'\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000bR'\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\r\u001a\u0004\b\u000f\u0010\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u00128VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Ltech/ula/library/viewmodel/AppsListViewModel;", "Landroidx/lifecycle/ViewModel;", "Lkotlinx/coroutines/CoroutineScope;", "appsRepository", "Ltech/ula/library/model/repositories/AppsRepository;", "(Ltech/ula/library/model/repositories/AppsRepository;)V", "activeAppsLiveData", "Landroidx/lifecycle/LiveData;", "", "Ltech/ula/library/model/entities/App;", "getActiveAppsLiveData", "()Landroidx/lifecycle/LiveData;", "activeAppsLiveData$delegate", "Lkotlin/Lazy;", "apps", "getApps", "apps$delegate", "coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "job", "Lkotlinx/coroutines/CompletableJob;", "getActiveApps", "getAppsList", "getRefreshStatus", "Ltech/ula/library/model/repositories/AppRefreshStatus;", "refreshAppsList", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AppsListViewModel extends ViewModel implements CoroutineScope {

    /* JADX INFO: renamed from: activeAppsLiveData$delegate, reason: from kotlin metadata */
    private final Lazy activeAppsLiveData;

    /* JADX INFO: renamed from: apps$delegate, reason: from kotlin metadata */
    private final Lazy apps;
    private final AppsRepository appsRepository;
    private final CompletableJob job;

    public AppsListViewModel(AppsRepository appsRepository) {
        Intrinsics.checkNotNullParameter(appsRepository, "appsRepository");
        this.appsRepository = appsRepository;
        this.job = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        this.apps = LazyKt.lazy(new Function0<LiveData<List<? extends App>>>() { // from class: tech.ula.library.viewmodel.AppsListViewModel$apps$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final LiveData<List<? extends App>> invoke() {
                return this.this$0.appsRepository.getAllApps();
            }
        });
        this.activeAppsLiveData = LazyKt.lazy(new Function0<LiveData<List<? extends App>>>() { // from class: tech.ula.library.viewmodel.AppsListViewModel$activeAppsLiveData$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final LiveData<List<? extends App>> invoke() {
                return this.this$0.appsRepository.getActiveApps();
            }
        });
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return Dispatchers.getDefault().plus(this.job);
    }

    private final LiveData<List<App>> getApps() {
        return (LiveData) this.apps.getValue();
    }

    private final LiveData<List<App>> getActiveAppsLiveData() {
        return (LiveData) this.activeAppsLiveData.getValue();
    }

    public final LiveData<List<App>> getAppsList() {
        return getApps();
    }

    public final LiveData<List<App>> getActiveApps() {
        return getActiveAppsLiveData();
    }

    /* JADX INFO: renamed from: tech.ula.library.viewmodel.AppsListViewModel$refreshAppsList$1, reason: invalid class name */
    /* JADX INFO: compiled from: AppsListViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.viewmodel.AppsListViewModel$refreshAppsList$1", f = "AppsListViewModel.kt", i = {}, l = {41}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = AppsListViewModel.this.new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                this.label = 1;
                if (AppsListViewModel.this.appsRepository.refreshData(coroutineScope, this) == coroutine_suspended) {
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

    public final void refreshAppsList() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new AnonymousClass1(null), 3, null);
    }

    public final LiveData<AppRefreshStatus> getRefreshStatus() {
        return this.appsRepository.getRefreshStatus();
    }
}
