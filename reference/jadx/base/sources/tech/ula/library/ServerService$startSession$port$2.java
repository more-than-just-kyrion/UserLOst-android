package tech.ula.library;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import tech.ula.library.model.entities.Session;
import tech.ula.library.utils.AvfSessionManager;

/* JADX INFO: compiled from: ServerService.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.ula.library.ServerService$startSession$port$2", f = "ServerService.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class ServerService$startSession$port$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Integer>, Object> {
    final /* synthetic */ AvfSessionManager $avfMgr;
    final /* synthetic */ Session $session;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ServerService$startSession$port$2(AvfSessionManager avfSessionManager, Session session, Continuation<? super ServerService$startSession$port$2> continuation) {
        super(2, continuation);
        this.$avfMgr = avfSessionManager;
        this.$session = session;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ServerService$startSession$port$2(this.$avfMgr, this.$session, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Integer> continuation) {
        return ((ServerService$startSession$port$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        return Boxing.boxInt(this.$avfMgr.startSession(this.$session));
    }
}
