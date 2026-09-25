package tech.ula.library;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import tech.ula.library.utils.UlaFiles;

/* JADX INFO: compiled from: ServerService.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.ula.library.ServerService$prepareSession$tailProcess$1", f = "ServerService.kt", i = {}, l = {798}, m = "invokeSuspend", n = {}, s = {})
final class ServerService$prepareSession$tailProcess$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ UlaFiles $ulaFiles;
    int label;
    final /* synthetic */ ServerService this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ServerService$prepareSession$tailProcess$1(ServerService serverService, UlaFiles ulaFiles, Continuation<? super ServerService$prepareSession$tailProcess$1> continuation) {
        super(2, continuation);
        this.this$0 = serverService;
        this.$ulaFiles = ulaFiles;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ServerService$prepareSession$tailProcess$1(this.this$0, this.$ulaFiles, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((ServerService$prepareSession$tailProcess$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            ServerService serverService = this.this$0;
            String absolutePath = this.$ulaFiles.getFilesDir().getAbsolutePath();
            this.label = 1;
            if (serverService.tailFile(absolutePath + "/support/toyboxout", this) == coroutine_suspended) {
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
