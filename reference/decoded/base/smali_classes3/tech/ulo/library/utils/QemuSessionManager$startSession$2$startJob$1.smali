.class final Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "QemuSessionManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/utils/QemuSessionManager$startSession$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "tech.ulo.library.utils.QemuSessionManager$startSession$2$startJob$1"
    f = "QemuSessionManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $fsId:Ljava/lang/String;

.field final synthetic $serviceType:Ljava/lang/String;

.field final synthetic $session:Ltech/ulo/library/model/entities/Session;

.field final synthetic $started:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Ltech/ulo/library/utils/QemuSessionManager;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/utils/QemuSessionManager;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ltech/ulo/library/model/entities/Session;",
            "Ltech/ulo/library/utils/QemuSessionManager;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->$fsId:Ljava/lang/String;

    iput-object p2, p0, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->$serviceType:Ljava/lang/String;

    iput-object p3, p0, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->$session:Ltech/ulo/library/model/entities/Session;

    iput-object p4, p0, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->this$0:Ltech/ulo/library/utils/QemuSessionManager;

    iput-object p5, p0, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->$started:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;

    iget-object v1, p0, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->$fsId:Ljava/lang/String;

    iget-object v2, p0, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->$serviceType:Ljava/lang/String;

    iget-object v3, p0, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->$session:Ltech/ulo/library/model/entities/Session;

    iget-object v4, p0, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->this$0:Ltech/ulo/library/utils/QemuSessionManager;

    iget-object v5, p0, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->$started:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/utils/QemuSessionManager;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 164
    iget v0, p0, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 165
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 166
    const-string v0, "fsId"

    iget-object v1, p0, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->$fsId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 167
    const-string v0, "serviceType"

    iget-object v1, p0, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->$serviceType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 168
    iget-object v0, p0, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->$session:Ltech/ulo/library/model/entities/Session;

    invoke-virtual {v0}, Ltech/ulo/library/model/entities/Session;->getUsername()Ljava/lang/String;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 169
    iget-object v0, p0, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->$session:Ltech/ulo/library/model/entities/Session;

    invoke-virtual {v0}, Ltech/ulo/library/model/entities/Session;->getPassword()Ljava/lang/String;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 170
    iget-object v0, p0, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->$session:Ltech/ulo/library/model/entities/Session;

    invoke-virtual {v0}, Ltech/ulo/library/model/entities/Session;->getVncPassword()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vncPassword"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 171
    iget-object v0, p0, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->$session:Ltech/ulo/library/model/entities/Session;

    invoke-virtual {v0}, Ltech/ulo/library/model/entities/Session;->getGeometry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "geometry"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 172
    iget-object v0, p0, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->this$0:Ltech/ulo/library/utils/QemuSessionManager;

    iget-object v1, p0, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->$session:Ltech/ulo/library/model/entities/Session;

    invoke-static {v0, v1}, Ltech/ulo/library/utils/QemuSessionManager;->access$appScriptContent(Ltech/ulo/library/utils/QemuSessionManager;Ltech/ulo/library/model/entities/Session;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->this$0:Ltech/ulo/library/utils/QemuSessionManager;

    iget-object v2, p0, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->$session:Ltech/ulo/library/model/entities/Session;

    invoke-static {v1, v2}, Ltech/ulo/library/utils/QemuSessionManager;->access$soundSupportScript(Ltech/ulo/library/utils/QemuSessionManager;Ltech/ulo/library/model/entities/Session;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appScript"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 173
    iget-object v0, p0, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->$session:Ltech/ulo/library/model/entities/Session;

    invoke-virtual {v0}, Ltech/ulo/library/model/entities/Session;->getId()J

    move-result-wide v0

    const-string v2, "sessionId"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    .line 174
    iget-object v0, p0, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->this$0:Ltech/ulo/library/utils/QemuSessionManager;

    invoke-static {v0}, Ltech/ulo/library/utils/QemuSessionManager;->access$settingsEnabled(Ltech/ulo/library/utils/QemuSessionManager;)Z

    move-result v0

    const-string v1, "settingsEnabled"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 175
    iget-object v0, p0, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->this$0:Ltech/ulo/library/utils/QemuSessionManager;

    iget-object v1, p0, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->$session:Ltech/ulo/library/model/entities/Session;

    invoke-static {v0, v1}, Ltech/ulo/library/utils/QemuSessionManager;->access$sharedStoragePath(Ltech/ulo/library/utils/QemuSessionManager;Ltech/ulo/library/model/entities/Session;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sharedPath"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 176
    iget-object v0, p0, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->$started:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Ltech/ulo/library/utils/QemuSessionManager$startSession$2$startJob$1;->this$0:Ltech/ulo/library/utils/QemuSessionManager;

    invoke-static {v1}, Ltech/ulo/library/utils/QemuSessionManager;->access$getSocket$p(Ltech/ulo/library/utils/QemuSessionManager;)Ltech/ulo/library/utils/CompanionControlSocketClient;

    move-result-object v1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "start"

    invoke-virtual {v1, v2, p1}, Ltech/ulo/library/utils/CompanionControlSocketClient;->request(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 177
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 164
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
