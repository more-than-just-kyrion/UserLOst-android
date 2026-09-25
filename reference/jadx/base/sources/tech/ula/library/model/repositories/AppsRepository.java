package tech.ula.library.model.repositories;

import android.content.SharedPreferences;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import io.sentry.marshaller.json.JsonMarshaller;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import tech.ula.customlibrary.BuildConfig;
import tech.ula.library.model.daos.AppsDao;
import tech.ula.library.model.entities.App;
import tech.ula.library.model.remote.GithubAppsFetcher;
import tech.ula.library.utils.BreadcrumbType;
import tech.ula.library.utils.Logger;
import tech.ula.library.utils.SentryLogger;
import tech.ula.library.utils.UlaBreadcrumb;
import tech.ula.library.utils.preferences.AppsPreferences;

/* JADX INFO: compiled from: AppsRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u0012\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00140\u0013J\u0012\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00140\u0013J\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00110\u0013J\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0086@¢\u0006\u0002\u0010\u001cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Ltech/ula/library/model/repositories/AppsRepository;", "", "appsDao", "Ltech/ula/library/model/daos/AppsDao;", "remoteAppsSource", "Ltech/ula/library/model/remote/GithubAppsFetcher;", "appsPreferences", "Ltech/ula/library/utils/preferences/AppsPreferences;", "sharedPreferences", "Landroid/content/SharedPreferences;", JsonMarshaller.LOGGER, "Ltech/ula/library/utils/Logger;", "(Ltech/ula/library/model/daos/AppsDao;Ltech/ula/library/model/remote/GithubAppsFetcher;Ltech/ula/library/utils/preferences/AppsPreferences;Landroid/content/SharedPreferences;Ltech/ula/library/utils/Logger;)V", "className", "", "refreshStatus", "Landroidx/lifecycle/MutableLiveData;", "Ltech/ula/library/model/repositories/AppRefreshStatus;", "getActiveApps", "Landroidx/lifecycle/LiveData;", "", "Ltech/ula/library/model/entities/App;", "getAllApps", "getRefreshStatus", "refreshData", "", "scope", "Lkotlinx/coroutines/CoroutineScope;", "(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AppsRepository {
    private final AppsDao appsDao;
    private final AppsPreferences appsPreferences;
    private final String className;
    private final Logger logger;
    private final MutableLiveData<AppRefreshStatus> refreshStatus;
    private final GithubAppsFetcher remoteAppsSource;
    private final SharedPreferences sharedPreferences;

    /* JADX INFO: renamed from: tech.ula.library.model.repositories.AppsRepository$refreshData$1, reason: invalid class name */
    /* JADX INFO: compiled from: AppsRepository.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.repositories.AppsRepository", f = "AppsRepository.kt", i = {0, 0, 0, 0, 0, 0, 1, 1, 1, 1}, l = {69, 91}, m = "refreshData", n = {"this", "scope", "distributionsList", "jobs", "failed", "failMessage", "this", "distributionsList", "failed", "failMessage"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$0", "L$1", "L$2", "L$3"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AppsRepository.this.refreshData(null, this);
        }
    }

    public AppsRepository(AppsDao appsDao, GithubAppsFetcher remoteAppsSource, AppsPreferences appsPreferences, SharedPreferences sharedPreferences, Logger logger) {
        Intrinsics.checkNotNullParameter(appsDao, "appsDao");
        Intrinsics.checkNotNullParameter(remoteAppsSource, "remoteAppsSource");
        Intrinsics.checkNotNullParameter(appsPreferences, "appsPreferences");
        Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.appsDao = appsDao;
        this.remoteAppsSource = remoteAppsSource;
        this.appsPreferences = appsPreferences;
        this.sharedPreferences = sharedPreferences;
        this.logger = logger;
        this.className = "AppsRepository";
        this.refreshStatus = new MutableLiveData<>();
    }

    public /* synthetic */ AppsRepository(AppsDao appsDao, GithubAppsFetcher githubAppsFetcher, AppsPreferences appsPreferences, SharedPreferences sharedPreferences, SentryLogger sentryLogger, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(appsDao, githubAppsFetcher, appsPreferences, sharedPreferences, (i & 16) != 0 ? new SentryLogger() : sentryLogger);
    }

    public final LiveData<List<App>> getAllApps() {
        return this.appsDao.getAllApps();
    }

    public final LiveData<List<App>> getActiveApps() {
        return this.appsDao.getActiveApps();
    }

    public final LiveData<AppRefreshStatus> getRefreshStatus() {
        return this.refreshStatus;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0118 A[Catch: Exception -> 0x0150, TRY_LEAVE, TryCatch #0 {Exception -> 0x0150, blocks: (B:38:0x010c, B:39:0x0112, B:41:0x0118), top: B:64:0x010c }] */
    /* JADX WARN: Code duplicated, block: B:56:0x0180 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:57:0x0181  */
    /* JADX WARN: Code duplicated, block: B:60:0x0189  */
    /* JADX WARN: Code duplicated, block: B:62:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object refreshData(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        LinkedHashSet linkedHashSet;
        ArrayList arrayList;
        String string;
        Ref.BooleanRef booleanRef;
        Ref.ObjectRef objectRef;
        AppsRepository appsRepository;
        CoroutineScope coroutineScope2;
        AppsRepository appsRepository2;
        Ref.ObjectRef objectRef2;
        Ref.BooleanRef booleanRef2;
        List list;
        Set<String> set;
        Ref.ObjectRef objectRef3;
        Ref.BooleanRef booleanRef3;
        Set<String> set2;
        AppsRepository appsRepository3;
        CoroutineScope coroutineScope3;
        Iterator it;
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
        Object objFetchAppsList = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objFetchAppsList);
            linkedHashSet = new LinkedHashSet();
            this.refreshStatus.postValue(new AppRefreshStatus(RefreshStatus.ACTIVE, ""));
            arrayList = new ArrayList();
            boolean z = false;
            if (this.sharedPreferences.getBoolean("pref_custom_apps_enabled", false)) {
                string = this.sharedPreferences.getString("pref_apps", BuildConfig.DEFAULT_APPS_URL);
                Intrinsics.checkNotNull(string);
            } else {
                string = BuildConfig.DEFAULT_APPS_URL;
            }
            if (this.sharedPreferences.contains("prev_pref_apps_repo") && !string.equals(this.sharedPreferences.getString("prev_pref_apps_repo", BuildConfig.DEFAULT_APPS_URL))) {
                z = true;
            }
            SharedPreferences.Editor editorEdit = this.sharedPreferences.edit();
            editorEdit.putString("prev_pref_apps_repo", string);
            editorEdit.apply();
            if (z) {
                this.appsDao.deleteAllApps();
            }
            booleanRef = new Ref.BooleanRef();
            objectRef = new Ref.ObjectRef();
            objectRef.element = "Not Found";
            try {
                GithubAppsFetcher githubAppsFetcher = this.remoteAppsSource;
                anonymousClass1.L$0 = this;
                coroutineScope2 = coroutineScope;
                anonymousClass1.L$1 = coroutineScope2;
                anonymousClass1.L$2 = linkedHashSet;
                anonymousClass1.L$3 = arrayList;
                anonymousClass1.L$4 = booleanRef;
                anonymousClass1.L$5 = objectRef;
                anonymousClass1.label = 1;
                objFetchAppsList = githubAppsFetcher.fetchAppsList(anonymousClass1);
                if (objFetchAppsList == coroutine_suspended) {
                    return coroutine_suspended;
                }
                appsRepository2 = this;
                objectRef2 = objectRef;
                booleanRef2 = booleanRef;
                list = arrayList;
                set = linkedHashSet;
                Object obj = objFetchAppsList;
                coroutineScope3 = coroutineScope2;
                it = ((Iterable) obj).iterator();
                while (it.hasNext()) {
                    arrayList = list;
                    arrayList.add(BuildersKt__Builders_commonKt.launch$default(coroutineScope3, null, null, new AppsRepository$refreshData$3$1((App) it.next(), set, appsRepository2, booleanRef2, objectRef2, null), 3, null));
                    list = arrayList;
                }
                objectRef = objectRef2;
                booleanRef = booleanRef2;
                linkedHashSet = set;
                appsRepository = appsRepository2;
                anonymousClass1.L$0 = appsRepository;
                anonymousClass1.L$1 = linkedHashSet;
                anonymousClass1.L$2 = booleanRef;
                anonymousClass1.L$3 = objectRef;
                anonymousClass1.L$4 = null;
                anonymousClass1.L$5 = null;
                anonymousClass1.label = 2;
                if (AwaitKt.joinAll(list, anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                objectRef3 = objectRef;
                booleanRef3 = booleanRef;
                set2 = linkedHashSet;
                appsRepository3 = appsRepository;
            } catch (Exception e) {
                e = e;
                appsRepository = this;
                appsRepository.logger.addExceptionBreadcrumb(e);
                booleanRef.element = true;
                objectRef.element = "App list";
                list = arrayList;
                anonymousClass1.L$0 = appsRepository;
                anonymousClass1.L$1 = linkedHashSet;
                anonymousClass1.L$2 = booleanRef;
                anonymousClass1.L$3 = objectRef;
                anonymousClass1.L$4 = null;
                anonymousClass1.L$5 = null;
                anonymousClass1.label = 2;
                if (AwaitKt.joinAll(list, anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                objectRef3 = objectRef;
                booleanRef3 = booleanRef;
                set2 = linkedHashSet;
                appsRepository3 = appsRepository;
                if (booleanRef3.element) {
                    appsRepository3.refreshStatus.postValue(new AppRefreshStatus(RefreshStatus.FAILED, (String) objectRef3.element));
                    appsRepository3.logger.addBreadcrumb(new UlaBreadcrumb(appsRepository3.className, BreadcrumbType.RuntimeError.INSTANCE, (String) objectRef3.element));
                    appsRepository3.logger.sendEvent("App Refresh Failed");
                    return Unit.INSTANCE;
                }
                appsRepository3.refreshStatus.postValue(new AppRefreshStatus(RefreshStatus.FINISHED, ""));
                appsRepository3.appsPreferences.setDistributionsList(set2);
                return Unit.INSTANCE;
            }
        } else if (i == 1) {
            objectRef = (Ref.ObjectRef) anonymousClass1.L$5;
            booleanRef = (Ref.BooleanRef) anonymousClass1.L$4;
            arrayList = (List) anonymousClass1.L$3;
            linkedHashSet = (Set) anonymousClass1.L$2;
            coroutineScope2 = (CoroutineScope) anonymousClass1.L$1;
            appsRepository = (AppsRepository) anonymousClass1.L$0;
            try {
                ResultKt.throwOnFailure(objFetchAppsList);
                objectRef2 = objectRef;
                booleanRef2 = booleanRef;
                list = arrayList;
                set = linkedHashSet;
                appsRepository2 = appsRepository;
                Object obj2 = objFetchAppsList;
                coroutineScope3 = coroutineScope2;
                try {
                    it = ((Iterable) obj2).iterator();
                    while (it.hasNext()) {
                        arrayList = list;
                        try {
                            arrayList.add(BuildersKt__Builders_commonKt.launch$default(coroutineScope3, null, null, new AppsRepository$refreshData$3$1((App) it.next(), set, appsRepository2, booleanRef2, objectRef2, null), 3, null));
                            list = arrayList;
                        } catch (Exception e2) {
                            e = e2;
                            objectRef = objectRef2;
                            booleanRef = booleanRef2;
                            linkedHashSet = set;
                            appsRepository = appsRepository2;
                            appsRepository.logger.addExceptionBreadcrumb(e);
                            booleanRef.element = true;
                            objectRef.element = "App list";
                            list = arrayList;
                            anonymousClass1.L$0 = appsRepository;
                            anonymousClass1.L$1 = linkedHashSet;
                            anonymousClass1.L$2 = booleanRef;
                            anonymousClass1.L$3 = objectRef;
                            anonymousClass1.L$4 = null;
                            anonymousClass1.L$5 = null;
                            anonymousClass1.label = 2;
                            if (AwaitKt.joinAll(list, anonymousClass1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            objectRef3 = objectRef;
                            booleanRef3 = booleanRef;
                            set2 = linkedHashSet;
                            appsRepository3 = appsRepository;
                            if (booleanRef3.element) {
                                appsRepository3.refreshStatus.postValue(new AppRefreshStatus(RefreshStatus.FAILED, (String) objectRef3.element));
                                appsRepository3.logger.addBreadcrumb(new UlaBreadcrumb(appsRepository3.className, BreadcrumbType.RuntimeError.INSTANCE, (String) objectRef3.element));
                                appsRepository3.logger.sendEvent("App Refresh Failed");
                                return Unit.INSTANCE;
                            }
                            appsRepository3.refreshStatus.postValue(new AppRefreshStatus(RefreshStatus.FINISHED, ""));
                            appsRepository3.appsPreferences.setDistributionsList(set2);
                            return Unit.INSTANCE;
                        }
                    }
                    objectRef = objectRef2;
                    booleanRef = booleanRef2;
                    linkedHashSet = set;
                    appsRepository = appsRepository2;
                } catch (Exception e3) {
                    e = e3;
                    arrayList = list;
                }
            } catch (Exception e4) {
                e = e4;
                appsRepository.logger.addExceptionBreadcrumb(e);
                booleanRef.element = true;
                objectRef.element = "App list";
                list = arrayList;
                anonymousClass1.L$0 = appsRepository;
                anonymousClass1.L$1 = linkedHashSet;
                anonymousClass1.L$2 = booleanRef;
                anonymousClass1.L$3 = objectRef;
                anonymousClass1.L$4 = null;
                anonymousClass1.L$5 = null;
                anonymousClass1.label = 2;
                if (AwaitKt.joinAll(list, anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                objectRef3 = objectRef;
                booleanRef3 = booleanRef;
                set2 = linkedHashSet;
                appsRepository3 = appsRepository;
                if (booleanRef3.element) {
                    appsRepository3.refreshStatus.postValue(new AppRefreshStatus(RefreshStatus.FAILED, (String) objectRef3.element));
                    appsRepository3.logger.addBreadcrumb(new UlaBreadcrumb(appsRepository3.className, BreadcrumbType.RuntimeError.INSTANCE, (String) objectRef3.element));
                    appsRepository3.logger.sendEvent("App Refresh Failed");
                    return Unit.INSTANCE;
                }
                appsRepository3.refreshStatus.postValue(new AppRefreshStatus(RefreshStatus.FINISHED, ""));
                appsRepository3.appsPreferences.setDistributionsList(set2);
                return Unit.INSTANCE;
            }
            anonymousClass1.L$0 = appsRepository;
            anonymousClass1.L$1 = linkedHashSet;
            anonymousClass1.L$2 = booleanRef;
            anonymousClass1.L$3 = objectRef;
            anonymousClass1.L$4 = null;
            anonymousClass1.L$5 = null;
            anonymousClass1.label = 2;
            if (AwaitKt.joinAll(list, anonymousClass1) == coroutine_suspended) {
                return coroutine_suspended;
            }
            objectRef3 = objectRef;
            booleanRef3 = booleanRef;
            set2 = linkedHashSet;
            appsRepository3 = appsRepository;
        } else {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef3 = (Ref.ObjectRef) anonymousClass1.L$3;
            booleanRef3 = (Ref.BooleanRef) anonymousClass1.L$2;
            set2 = (Set) anonymousClass1.L$1;
            appsRepository3 = (AppsRepository) anonymousClass1.L$0;
            ResultKt.throwOnFailure(objFetchAppsList);
        }
        if (booleanRef3.element) {
            appsRepository3.refreshStatus.postValue(new AppRefreshStatus(RefreshStatus.FAILED, (String) objectRef3.element));
            appsRepository3.logger.addBreadcrumb(new UlaBreadcrumb(appsRepository3.className, BreadcrumbType.RuntimeError.INSTANCE, (String) objectRef3.element));
            appsRepository3.logger.sendEvent("App Refresh Failed");
            return Unit.INSTANCE;
        }
        appsRepository3.refreshStatus.postValue(new AppRefreshStatus(RefreshStatus.FINISHED, ""));
        appsRepository3.appsPreferences.setDistributionsList(set2);
        return Unit.INSTANCE;
    }
}
