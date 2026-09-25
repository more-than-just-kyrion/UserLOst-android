package tech.ula.library.viewmodel;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.ViewModel;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.GlobalScope;
import tech.ula.library.model.entities.Filesystem;
import tech.ula.library.model.entities.Session;
import tech.ula.library.model.repositories.UlaDatabase;
import tech.ula.library.utils.ExtensionsKt;

/* JADX INFO: compiled from: SessionListViewModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J$\u0010\u0015\u001a \u0012\u001c\u0012\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u00160\u0006R'\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR'\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u00070\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\f\u001a\u0004\b\u000f\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Ltech/ula/library/viewmodel/SessionListViewModel;", "Landroidx/lifecycle/ViewModel;", "ulaDatabase", "Ltech/ula/library/model/repositories/UlaDatabase;", "(Ltech/ula/library/model/repositories/UlaDatabase;)V", "filesystems", "Landroidx/lifecycle/LiveData;", "", "Ltech/ula/library/model/entities/Filesystem;", "getFilesystems", "()Landroidx/lifecycle/LiveData;", "filesystems$delegate", "Lkotlin/Lazy;", "sessions", "Ltech/ula/library/model/entities/Session;", "getSessions", "sessions$delegate", "deleteSessionById", "", "id", "", "getSessionsAndFilesystems", "Lkotlin/Pair;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SessionListViewModel extends ViewModel {

    /* JADX INFO: renamed from: filesystems$delegate, reason: from kotlin metadata */
    private final Lazy filesystems;

    /* JADX INFO: renamed from: sessions$delegate, reason: from kotlin metadata */
    private final Lazy sessions;
    private final UlaDatabase ulaDatabase;

    public SessionListViewModel(UlaDatabase ulaDatabase) {
        Intrinsics.checkNotNullParameter(ulaDatabase, "ulaDatabase");
        this.ulaDatabase = ulaDatabase;
        this.sessions = LazyKt.lazy(new Function0<LiveData<List<? extends Session>>>() { // from class: tech.ula.library.viewmodel.SessionListViewModel$sessions$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final LiveData<List<? extends Session>> invoke() {
                return this.this$0.ulaDatabase.sessionDao().getAllSessions();
            }
        });
        this.filesystems = LazyKt.lazy(new Function0<LiveData<List<? extends Filesystem>>>() { // from class: tech.ula.library.viewmodel.SessionListViewModel$filesystems$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final LiveData<List<? extends Filesystem>> invoke() {
                return this.this$0.ulaDatabase.filesystemDao().getAllFilesystems();
            }
        });
    }

    private final LiveData<List<Session>> getSessions() {
        return (LiveData) this.sessions.getValue();
    }

    private final LiveData<List<Filesystem>> getFilesystems() {
        return (LiveData) this.filesystems.getValue();
    }

    public final LiveData<Pair<List<Session>, List<Filesystem>>> getSessionsAndFilesystems() {
        return ExtensionsKt.zipLiveData(getSessions(), getFilesystems());
    }

    /* JADX INFO: renamed from: tech.ula.library.viewmodel.SessionListViewModel$deleteSessionById$1, reason: invalid class name */
    /* JADX INFO: compiled from: SessionListViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.viewmodel.SessionListViewModel$deleteSessionById$1", f = "SessionListViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $id;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(long j, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$id = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SessionListViewModel.this.new AnonymousClass1(this.$id, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            SessionListViewModel.this.ulaDatabase.sessionDao().deleteSessionById(this.$id);
            return Unit.INSTANCE;
        }
    }

    public final void deleteSessionById(long id) {
        BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, null, null, new AnonymousClass1(id, null), 3, null);
    }
}
