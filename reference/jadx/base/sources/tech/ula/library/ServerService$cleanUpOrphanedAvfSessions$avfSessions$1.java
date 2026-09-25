package tech.ula.library;

import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import tech.ula.library.model.entities.Session;
import tech.ula.library.model.repositories.UlaDatabase;

/* JADX INFO: compiled from: ServerService.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "Ltech/ula/library/model/entities/Session;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.ula.library.ServerService$cleanUpOrphanedAvfSessions$avfSessions$1", f = "ServerService.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class ServerService$cleanUpOrphanedAvfSessions$avfSessions$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends Session>>, Object> {
    int label;
    final /* synthetic */ ServerService this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ServerService$cleanUpOrphanedAvfSessions$avfSessions$1(ServerService serverService, Continuation<? super ServerService$cleanUpOrphanedAvfSessions$avfSessions$1> continuation) {
        super(2, continuation);
        this.this$0 = serverService;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ServerService$cleanUpOrphanedAvfSessions$avfSessions$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super List<? extends Session>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super List<Session>>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super List<Session>> continuation) {
        return ((ServerService$cleanUpOrphanedAvfSessions$avfSessions$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        return UlaDatabase.INSTANCE.getInstance(this.this$0).sessionDao().getAllSessionsOnce();
    }
}
