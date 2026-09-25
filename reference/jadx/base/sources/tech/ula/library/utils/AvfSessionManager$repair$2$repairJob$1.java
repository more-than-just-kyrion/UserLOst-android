package tech.ula.library.utils;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.json.JSONObject;

/* JADX INFO: compiled from: AvfSessionManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.ula.library.utils.AvfSessionManager$repair$2$repairJob$1", f = "AvfSessionManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class AvfSessionManager$repair$2$repairJob$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $fsId;
    final /* synthetic */ String $imageRef;
    int label;
    final /* synthetic */ AvfSessionManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AvfSessionManager$repair$2$repairJob$1(AvfSessionManager avfSessionManager, String str, String str2, Continuation<? super AvfSessionManager$repair$2$repairJob$1> continuation) {
        super(2, continuation);
        this.this$0 = avfSessionManager;
        this.$fsId = str;
        this.$imageRef = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AvfSessionManager$repair$2$repairJob$1(this.this$0, this.$fsId, this.$imageRef, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((AvfSessionManager$repair$2$repairJob$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            CompanionControlSocketClient companionControlSocketClient = this.this$0.socket;
            JSONObject jSONObjectPut = new JSONObject().put("fsId", this.$fsId).put("imageRef", this.$imageRef);
            Intrinsics.checkNotNullExpressionValue(jSONObjectPut, "put(...)");
            companionControlSocketClient.request("repair", jSONObjectPut);
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
