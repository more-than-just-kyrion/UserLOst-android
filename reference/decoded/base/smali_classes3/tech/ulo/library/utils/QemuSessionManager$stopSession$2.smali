.class final Ltech/ulo/library/utils/QemuSessionManager$stopSession$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "QemuSessionManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/utils/QemuSessionManager;->stopSession(Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
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
    c = "tech.ulo.library.utils.QemuSessionManager$stopSession$2"
    f = "QemuSessionManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $session:Ltech/ulo/library/model/entities/Session;

.field label:I

.field final synthetic this$0:Ltech/ulo/library/utils/QemuSessionManager;


# direct methods
.method constructor <init>(Ltech/ulo/library/utils/QemuSessionManager;Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/utils/QemuSessionManager;",
            "Ltech/ulo/library/model/entities/Session;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ulo/library/utils/QemuSessionManager$stopSession$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/ulo/library/utils/QemuSessionManager$stopSession$2;->this$0:Ltech/ulo/library/utils/QemuSessionManager;

    iput-object p2, p0, Ltech/ulo/library/utils/QemuSessionManager$stopSession$2;->$session:Ltech/ulo/library/model/entities/Session;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Ltech/ulo/library/utils/QemuSessionManager$stopSession$2;

    iget-object v0, p0, Ltech/ulo/library/utils/QemuSessionManager$stopSession$2;->this$0:Ltech/ulo/library/utils/QemuSessionManager;

    iget-object v1, p0, Ltech/ulo/library/utils/QemuSessionManager$stopSession$2;->$session:Ltech/ulo/library/model/entities/Session;

    invoke-direct {p1, v0, v1, p2}, Ltech/ulo/library/utils/QemuSessionManager$stopSession$2;-><init>(Ltech/ulo/library/utils/QemuSessionManager;Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/utils/QemuSessionManager$stopSession$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/utils/QemuSessionManager$stopSession$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Ltech/ulo/library/utils/QemuSessionManager$stopSession$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Ltech/ulo/library/utils/QemuSessionManager$stopSession$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 310
    iget v0, p0, Ltech/ulo/library/utils/QemuSessionManager$stopSession$2;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 311
    iget-object p1, p0, Ltech/ulo/library/utils/QemuSessionManager$stopSession$2;->this$0:Ltech/ulo/library/utils/QemuSessionManager;

    invoke-static {p1}, Ltech/ulo/library/utils/QemuSessionManager;->access$getSocket$p(Ltech/ulo/library/utils/QemuSessionManager;)Ltech/ulo/library/utils/CompanionControlSocketClient;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Ltech/ulo/library/utils/QemuSessionManager$stopSession$2;->$session:Ltech/ulo/library/model/entities/Session;

    invoke-virtual {v1}, Ltech/ulo/library/model/entities/Session;->getFilesystemId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fsId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "put(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "stop"

    invoke-virtual {p1, v1, v0}, Ltech/ulo/library/utils/CompanionControlSocketClient;->request(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 312
    const-string v1, "result"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 310
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
