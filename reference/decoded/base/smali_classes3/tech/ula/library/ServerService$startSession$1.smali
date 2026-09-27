.class final Ltech/ula/library/ServerService$startSession$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ServerService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ula/library/ServerService;->startSession(Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "tech.ula.library.ServerService"
    f = "ServerService.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x4,
        0x4,
        0x4,
        0x5,
        0x5,
        0x5,
        0x6,
        0x6,
        0x7,
        0x7,
        0x7,
        0x8,
        0x8,
        0x8,
        0x9,
        0x9,
        0x9,
        0xa,
        0xa,
        0xa,
        0xb,
        0xb,
        0xb,
        0xc,
        0xc,
        0xc,
        0xd,
        0xd
    }
    l = {
        0x34c,
        0x35f,
        0x364,
        0x368,
        0x36c,
        0x379,
        0x389,
        0x390,
        0x395,
        0x39c,
        0x3a0,
        0x3af,
        0x3bc,
        0x3d2
    }
    m = "startSession"
    n = {
        "this",
        "session",
        "this",
        "session",
        "qemuMgr",
        "this",
        "session",
        "qemuMgr",
        "this",
        "session",
        "qemuMgr",
        "this",
        "session",
        "qemuMgr",
        "this",
        "session",
        "qemuMgr",
        "this",
        "session",
        "this",
        "session",
        "avfMgr",
        "this",
        "session",
        "avfMgr",
        "this",
        "session",
        "avfMgr",
        "this",
        "session",
        "avfMgr",
        "this",
        "session",
        "avfMgr",
        "this",
        "session",
        "avfMgr",
        "this",
        "session"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Ltech/ula/library/ServerService;


# direct methods
.method constructor <init>(Ltech/ula/library/ServerService;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ula/library/ServerService;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ula/library/ServerService$startSession$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/ula/library/ServerService$startSession$1;->this$0:Ltech/ula/library/ServerService;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Ltech/ula/library/ServerService$startSession$1;->result:Ljava/lang/Object;

    iget p1, p0, Ltech/ula/library/ServerService$startSession$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ltech/ula/library/ServerService$startSession$1;->label:I

    iget-object p1, p0, Ltech/ula/library/ServerService$startSession$1;->this$0:Ltech/ula/library/ServerService;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {p1, v0, v1}, Ltech/ula/library/ServerService;->access$startSession(Ltech/ula/library/ServerService;Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
