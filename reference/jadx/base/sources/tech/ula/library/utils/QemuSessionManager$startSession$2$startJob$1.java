package tech.ula.library.utils;

import com.iiordanov.bVNC.Constants;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;
import org.json.JSONObject;
import tech.ula.library.model.entities.Session;
import tech.ula.library.ui.CompanionNotificationActionReceiver;

/* JADX INFO: compiled from: QemuSessionManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.ula.library.utils.QemuSessionManager$startSession$2$startJob$1", f = "QemuSessionManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class QemuSessionManager$startSession$2$startJob$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $fsId;
    final /* synthetic */ String $serviceType;
    final /* synthetic */ Session $session;
    final /* synthetic */ Ref.ObjectRef<JSONObject> $started;
    int label;
    final /* synthetic */ QemuSessionManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    QemuSessionManager$startSession$2$startJob$1(String str, String str2, Session session, QemuSessionManager qemuSessionManager, Ref.ObjectRef<JSONObject> objectRef, Continuation<? super QemuSessionManager$startSession$2$startJob$1> continuation) {
        super(2, continuation);
        this.$fsId = str;
        this.$serviceType = str2;
        this.$session = session;
        this.this$0 = qemuSessionManager;
        this.$started = objectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new QemuSessionManager$startSession$2$startJob$1(this.$fsId, this.$serviceType, this.$session, this.this$0, this.$started, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((QemuSessionManager$startSession$2$startJob$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Type inference failed for: r4v13, types: [T, org.json.JSONObject] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        JSONObject jSONObjectPut = new JSONObject().put("fsId", this.$fsId).put("serviceType", this.$serviceType).put("username", this.$session.getUsername()).put(Constants.testpassword, this.$session.getPassword()).put("vncPassword", this.$session.getVncPassword()).put("geometry", this.$session.getGeometry()).put("appScript", this.this$0.appScriptContent(this.$session) + this.this$0.soundSupportScript(this.$session)).put(CompanionNotificationActionReceiver.EXTRA_SESSION_ID, this.$session.getId()).put("settingsEnabled", this.this$0.settingsEnabled()).put("sharedPath", this.this$0.sharedStoragePath(this.$session));
        Ref.ObjectRef<JSONObject> objectRef = this.$started;
        CompanionControlSocketClient companionControlSocketClient = this.this$0.socket;
        Intrinsics.checkNotNull(jSONObjectPut);
        objectRef.element = companionControlSocketClient.request("start", jSONObjectPut);
        return Unit.INSTANCE;
    }
}
