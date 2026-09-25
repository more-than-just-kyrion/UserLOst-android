.class public Lcom/undatech/opaque/RdpCommunicator;
.super Ljava/lang/Object;
.source "RdpCommunicator.java"

# interfaces
.implements Lcom/undatech/opaque/RfbConnectable;
.implements Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;
.implements Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;
.implements Lcom/freerdp/freerdpcore/services/LibFreeRDP$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/undatech/opaque/RdpCommunicator$DisconnectThread;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "RdpCommunicator"

.field private static final VK_CONTROL:I = 0x11

.field private static final VK_EXT_KEY:I = 0x100

.field private static final VK_LCONTROL:I = 0xa2

.field private static final VK_LMENU:I = 0xa4

.field private static final VK_LSHIFT:I = 0xa0

.field private static final VK_LWIN:I = 0x5b

.field private static final VK_RCONTROL:I = 0xa3

.field private static final VK_RMENU:I = 0xa5

.field private static final VK_RSHIFT:I = 0xa1

.field private static final VK_RWIN:I = 0x5c


# instance fields
.field private authenticationAttempted:Z

.field private bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

.field private certificateAccepted:Z

.field private context:Landroid/content/Context;

.field private debugLogging:Z

.field private disconnectRequested:Z

.field private domain:Ljava/lang/String;

.field private freeRdpApp:Lcom/freerdp/freerdpcore/application/GlobalApp;

.field private final handler:Landroid/os/Handler;

.field private isInNormalProtocol:Z

.field private metaState:I

.field private final myself:Lcom/undatech/opaque/RdpCommunicator;

.field private password:Ljava/lang/String;

.field private reattemptWithoutCredentials:Z

.field private session:Lcom/freerdp/freerdpcore/application/SessionState;

.field private username:Ljava/lang/String;

.field private final viewable:Lcom/undatech/opaque/Viewable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/undatech/opaque/Viewable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/undatech/opaque/RdpCommunicator;->metaState:I

    .line 49
    iput-boolean v0, p0, Lcom/undatech/opaque/RdpCommunicator;->isInNormalProtocol:Z

    .line 58
    iput-boolean v0, p0, Lcom/undatech/opaque/RdpCommunicator;->certificateAccepted:Z

    const/4 v1, 0x1

    .line 59
    iput-boolean v1, p0, Lcom/undatech/opaque/RdpCommunicator;->reattemptWithoutCredentials:Z

    .line 60
    iput-boolean v0, p0, Lcom/undatech/opaque/RdpCommunicator;->authenticationAttempted:Z

    .line 61
    iput-boolean v0, p0, Lcom/undatech/opaque/RdpCommunicator;->disconnectRequested:Z

    .line 65
    iput-boolean v0, p0, Lcom/undatech/opaque/RdpCommunicator;->debugLogging:Z

    .line 70
    new-instance v0, Lcom/freerdp/freerdpcore/application/GlobalApp;

    invoke-direct {v0}, Lcom/freerdp/freerdpcore/application/GlobalApp;-><init>()V

    iput-object v0, p0, Lcom/undatech/opaque/RdpCommunicator;->freeRdpApp:Lcom/freerdp/freerdpcore/application/GlobalApp;

    .line 71
    invoke-direct {p0}, Lcom/undatech/opaque/RdpCommunicator;->patchFreeRdpCore()V

    .line 73
    new-instance v0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;

    invoke-direct {v0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;-><init>()V

    iput-object v0, p0, Lcom/undatech/opaque/RdpCommunicator;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    .line 74
    iput-object p1, p0, Lcom/undatech/opaque/RdpCommunicator;->context:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/undatech/opaque/RdpCommunicator;->handler:Landroid/os/Handler;

    .line 76
    iput-object p3, p0, Lcom/undatech/opaque/RdpCommunicator;->viewable:Lcom/undatech/opaque/Viewable;

    .line 77
    iput-object p0, p0, Lcom/undatech/opaque/RdpCommunicator;->myself:Lcom/undatech/opaque/RdpCommunicator;

    .line 78
    iput-object p4, p0, Lcom/undatech/opaque/RdpCommunicator;->username:Ljava/lang/String;

    .line 79
    iput-object p5, p0, Lcom/undatech/opaque/RdpCommunicator;->domain:Ljava/lang/String;

    .line 80
    iput-object p6, p0, Lcom/undatech/opaque/RdpCommunicator;->password:Ljava/lang/String;

    .line 81
    iput-boolean p7, p0, Lcom/undatech/opaque/RdpCommunicator;->debugLogging:Z

    .line 82
    invoke-direct {p0, p4, p5, p6}, Lcom/undatech/opaque/RdpCommunicator;->initSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/undatech/opaque/RdpCommunicator;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    invoke-virtual {v0, p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->setUsername(Ljava/lang/String;)V

    .line 294
    iget-object p1, p0, Lcom/undatech/opaque/RdpCommunicator;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    invoke-virtual {p1, p2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->setDomain(Ljava/lang/String;)V

    .line 295
    iget-object p1, p0, Lcom/undatech/opaque/RdpCommunicator;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    invoke-virtual {p1, p3}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->setPassword(Ljava/lang/String;)V

    .line 296
    iget-object p1, p0, Lcom/undatech/opaque/RdpCommunicator;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    iget-object p2, p0, Lcom/undatech/opaque/RdpCommunicator;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/freerdp/freerdpcore/application/GlobalApp;->createSession(Lcom/freerdp/freerdpcore/domain/BookmarkBase;Landroid/content/Context;)Lcom/freerdp/freerdpcore/application/SessionState;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/RdpCommunicator;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    .line 297
    invoke-virtual {p1, p0}, Lcom/freerdp/freerdpcore/application/SessionState;->setUIEventListener(Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;)V

    .line 298
    invoke-static {p0}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->setEventListener(Lcom/freerdp/freerdpcore/services/LibFreeRDP$EventListener;)V

    return-void
.end method

.method private patchFreeRdpCore()V
    .locals 4

    .line 86
    const-string v0, "RdpCommunicator"

    iget-object v1, p0, Lcom/undatech/opaque/RdpCommunicator;->freeRdpApp:Lcom/freerdp/freerdpcore/application/GlobalApp;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 88
    :try_start_0
    const-string v2, "Initializing sessionMap in GlobalApp"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v2, "sessionMap"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 91
    iget-object v2, p0, Lcom/undatech/opaque/RdpCommunicator;->freeRdpApp:Lcom/freerdp/freerdpcore/application/GlobalApp;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    const-string v1, "The field sessionMap in GlobalApp was not accessible despite our attempts"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    :catch_1
    const-string v1, "There is no longer a sessionMap field in GlobalApp"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private sendModifierKeys(Z)V
    .locals 5

    .line 208
    iget v0, p0, Lcom/undatech/opaque/RdpCommunicator;->metaState:I

    and-int/lit16 v0, v0, 0x1000

    const-wide/16 v1, 0x5

    if-eqz v0, :cond_0

    .line 210
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :catch_0
    iget-object v0, p0, Lcom/undatech/opaque/RdpCommunicator;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v3

    const/16 v0, 0xa2

    invoke-static {v3, v4, v0, p1}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->sendKeyEvent(JIZ)Z

    .line 213
    :cond_0
    iget v0, p0, Lcom/undatech/opaque/RdpCommunicator;->metaState:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_1

    .line 215
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    :catch_1
    iget-object v0, p0, Lcom/undatech/opaque/RdpCommunicator;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v3

    const/16 v0, 0xa3

    invoke-static {v3, v4, v0, p1}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->sendKeyEvent(JIZ)Z

    .line 218
    :cond_1
    iget v0, p0, Lcom/undatech/opaque/RdpCommunicator;->metaState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 220
    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 221
    :catch_2
    iget-object v0, p0, Lcom/undatech/opaque/RdpCommunicator;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v3

    const/16 v0, 0xa4

    invoke-static {v3, v4, v0, p1}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->sendKeyEvent(JIZ)Z

    .line 223
    :cond_2
    iget v0, p0, Lcom/undatech/opaque/RdpCommunicator;->metaState:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_3

    .line 225
    :try_start_3
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 226
    :catch_3
    iget-object v0, p0, Lcom/undatech/opaque/RdpCommunicator;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v3

    const/16 v0, 0xa5

    invoke-static {v3, v4, v0, p1}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->sendKeyEvent(JIZ)Z

    .line 228
    :cond_3
    iget v0, p0, Lcom/undatech/opaque/RdpCommunicator;->metaState:I

    const/high16 v3, 0x20000

    and-int/2addr v0, v3

    if-eqz v0, :cond_4

    .line 230
    :try_start_4
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    .line 231
    :catch_4
    iget-object v0, p0, Lcom/undatech/opaque/RdpCommunicator;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v3

    const/16 v0, 0x15b

    invoke-static {v3, v4, v0, p1}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->sendKeyEvent(JIZ)Z

    .line 233
    :cond_4
    iget v0, p0, Lcom/undatech/opaque/RdpCommunicator;->metaState:I

    const/high16 v3, 0x40000

    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    .line 235
    :try_start_5
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5

    .line 236
    :catch_5
    iget-object v0, p0, Lcom/undatech/opaque/RdpCommunicator;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v3

    const/16 v0, 0x15c

    invoke-static {v3, v4, v0, p1}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->sendKeyEvent(JIZ)Z

    .line 238
    :cond_5
    iget v0, p0, Lcom/undatech/opaque/RdpCommunicator;->metaState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 240
    :try_start_6
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_6

    .line 241
    :catch_6
    iget-object v0, p0, Lcom/undatech/opaque/RdpCommunicator;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v3

    const/16 v0, 0xa0

    invoke-static {v3, v4, v0, p1}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->sendKeyEvent(JIZ)Z

    .line 243
    :cond_6
    iget v0, p0, Lcom/undatech/opaque/RdpCommunicator;->metaState:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 245
    :try_start_7
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_7

    .line 246
    :catch_7
    iget-object v0, p0, Lcom/undatech/opaque/RdpCommunicator;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v0

    const/16 v2, 0xa1

    invoke-static {v0, v1, v2, p1}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->sendKeyEvent(JIZ)Z

    :cond_7
    return-void
.end method


# virtual methods
.method public OnAuthenticate(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z
    .locals 2

    .line 424
    const-string v0, "RdpCommunicator"

    const-string v1, "OnAuthenticate called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 425
    iput-boolean v0, p0, Lcom/undatech/opaque/RdpCommunicator;->authenticationAttempted:Z

    const/4 v1, 0x0

    .line 427
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 428
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 429
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 431
    iget-object v1, p0, Lcom/undatech/opaque/RdpCommunicator;->username:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    iget-object p1, p0, Lcom/undatech/opaque/RdpCommunicator;->domain:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    iget-object p1, p0, Lcom/undatech/opaque/RdpCommunicator;->password:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v0
.end method

.method public OnConnectionFailure(J)V
    .locals 0

    .line 370
    const-string p1, "RdpCommunicator"

    const-string p2, "OnConnectionFailure"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object p1, p0, Lcom/undatech/opaque/RdpCommunicator;->myself:Lcom/undatech/opaque/RdpCommunicator;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/undatech/opaque/RdpCommunicator;->setIsInNormalProtocol(Z)V

    return-void
.end method

.method public OnConnectionSuccess(J)V
    .locals 0

    .line 362
    const-string p1, "RdpCommunicator"

    const-string p2, "OnConnectionSuccess"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 363
    iput-boolean p1, p0, Lcom/undatech/opaque/RdpCommunicator;->reattemptWithoutCredentials:Z

    .line 364
    iput-boolean p1, p0, Lcom/undatech/opaque/RdpCommunicator;->authenticationAttempted:Z

    .line 365
    iget-object p1, p0, Lcom/undatech/opaque/RdpCommunicator;->myself:Lcom/undatech/opaque/RdpCommunicator;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/undatech/opaque/RdpCommunicator;->setIsInNormalProtocol(Z)V

    return-void
.end method

.method public OnDisconnected(J)V
    .locals 0

    .line 401
    const-string p1, "OnDisconnected"

    const-string p2, "RdpCommunicator"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object p1, p0, Lcom/undatech/opaque/RdpCommunicator;->myself:Lcom/undatech/opaque/RdpCommunicator;

    invoke-virtual {p1}, Lcom/undatech/opaque/RdpCommunicator;->isInNormalProtocol()Z

    move-result p1

    if-nez p1, :cond_0

    .line 403
    const-string p1, "Sending message: RDP_UNABLE_TO_CONNECT"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object p1, p0, Lcom/undatech/opaque/RdpCommunicator;->handler:Landroid/os/Handler;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 406
    :cond_0
    const-string p1, "Sending message: RDP_CONNECT_FAILURE"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object p1, p0, Lcom/undatech/opaque/RdpCommunicator;->handler:Landroid/os/Handler;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public OnDisconnecting(J)V
    .locals 1

    .line 376
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "OnDisconnecting, reattemptWithoutCredentials: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/undatech/opaque/RdpCommunicator;->reattemptWithoutCredentials:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", authenticationAttempted: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/undatech/opaque/RdpCommunicator;->authenticationAttempted:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", disconnectRequested: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/undatech/opaque/RdpCommunicator;->disconnectRequested:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", isInNormalProtocol: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/undatech/opaque/RdpCommunicator;->myself:Lcom/undatech/opaque/RdpCommunicator;

    .line 379
    invoke-virtual {p2}, Lcom/undatech/opaque/RdpCommunicator;->isInNormalProtocol()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 376
    const-string p2, "RdpCommunicator"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-boolean p1, p0, Lcom/undatech/opaque/RdpCommunicator;->reattemptWithoutCredentials:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/undatech/opaque/RdpCommunicator;->myself:Lcom/undatech/opaque/RdpCommunicator;

    invoke-virtual {p1}, Lcom/undatech/opaque/RdpCommunicator;->isInNormalProtocol()Z

    move-result p1

    if-nez p1, :cond_0

    .line 381
    iput-boolean v0, p0, Lcom/undatech/opaque/RdpCommunicator;->reattemptWithoutCredentials:Z

    .line 384
    const-string p1, ""

    invoke-direct {p0, p1, p1, p1}, Lcom/undatech/opaque/RdpCommunicator;->initSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/undatech/opaque/RdpCommunicator;->connect()V

    goto :goto_0

    .line 386
    :cond_0
    iget-boolean p1, p0, Lcom/undatech/opaque/RdpCommunicator;->authenticationAttempted:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/undatech/opaque/RdpCommunicator;->myself:Lcom/undatech/opaque/RdpCommunicator;

    invoke-virtual {p1}, Lcom/undatech/opaque/RdpCommunicator;->isInNormalProtocol()Z

    move-result p1

    if-nez p1, :cond_1

    .line 387
    const-string p1, "Sending message: RDP_AUTH_FAILED"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object p1, p0, Lcom/undatech/opaque/RdpCommunicator;->handler:Landroid/os/Handler;

    const/16 p2, 0x13

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 389
    :cond_1
    iget-boolean p1, p0, Lcom/undatech/opaque/RdpCommunicator;->disconnectRequested:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/undatech/opaque/RdpCommunicator;->myself:Lcom/undatech/opaque/RdpCommunicator;

    invoke-virtual {p1}, Lcom/undatech/opaque/RdpCommunicator;->isInNormalProtocol()Z

    move-result p1

    if-nez p1, :cond_2

    .line 390
    const-string p1, "Sending message: RDP_UNABLE_TO_CONNECT"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object p1, p0, Lcom/undatech/opaque/RdpCommunicator;->handler:Landroid/os/Handler;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 392
    :cond_2
    iget-boolean p1, p0, Lcom/undatech/opaque/RdpCommunicator;->disconnectRequested:Z

    if-nez p1, :cond_3

    .line 393
    iget-object p1, p0, Lcom/undatech/opaque/RdpCommunicator;->myself:Lcom/undatech/opaque/RdpCommunicator;

    invoke-virtual {p1, v0}, Lcom/undatech/opaque/RdpCommunicator;->setIsInNormalProtocol(Z)V

    .line 394
    const-string p1, "Sending message: RDP_CONNECT_FAILURE"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object p1, p0, Lcom/undatech/opaque/RdpCommunicator;->handler:Landroid/os/Handler;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public OnGatewayAuthenticate(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z
    .locals 2

    .line 472
    const-string v0, "RdpCommunicator"

    const-string v1, "OnGatewayAuthenticate called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {p0, p1, p2, p3}, Lcom/undatech/opaque/RdpCommunicator;->OnAuthenticate(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z

    move-result p1

    return p1
.end method

.method public OnGraphicsResize(III)V
    .locals 2

    .line 498
    const-string v0, "RdpCommunicator"

    const-string v1, "OnGraphicsResize called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual {p0, p1, p2, p3}, Lcom/undatech/opaque/RdpCommunicator;->OnSettingsChanged(III)V

    return-void
.end method

.method public OnGraphicsUpdate(IIII)V
    .locals 9

    .line 487
    iget-object v0, p0, Lcom/undatech/opaque/RdpCommunicator;->viewable:Lcom/undatech/opaque/Viewable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/undatech/opaque/RdpCommunicator;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    if-eqz v1, :cond_0

    .line 488
    invoke-interface {v0}, Lcom/undatech/opaque/Viewable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 490
    iget-object v0, p0, Lcom/undatech/opaque/RdpCommunicator;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v2

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v2 .. v8}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->updateGraphics(JLandroid/graphics/Bitmap;IIII)Z

    .line 491
    iget-object v0, p0, Lcom/undatech/opaque/RdpCommunicator;->viewable:Lcom/undatech/opaque/Viewable;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/undatech/opaque/Viewable;->reDraw(IIII)V

    :cond_0
    return-void
.end method

.method public OnPreConnect(J)V
    .locals 0

    .line 357
    const-string p1, "RdpCommunicator"

    const-string p2, "OnPreConnect"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public OnRemoteClipboardChanged(Ljava/lang/String;)V
    .locals 3

    .line 504
    const-string v0, "RdpCommunicator"

    const-string v1, "OnRemoteClipboardChanged called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 508
    iget-object v1, p0, Lcom/undatech/opaque/RdpCommunicator;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    const/16 v1, 0x2b

    .line 509
    iput v1, v0, Landroid/os/Message;->what:I

    .line 510
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 511
    const-string v2, "text"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 513
    iget-object p1, p0, Lcom/undatech/opaque/RdpCommunicator;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public OnSettingsChanged(III)V
    .locals 1

    .line 418
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "OnSettingsChanged called, wxh: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "x"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "RdpCommunicator"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object p3, p0, Lcom/undatech/opaque/RdpCommunicator;->viewable:Lcom/undatech/opaque/Viewable;

    invoke-interface {p3, p1, p2}, Lcom/undatech/opaque/Viewable;->reallocateDrawable(II)V

    return-void
.end method

.method public OnVerifiyCertificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1

    .line 441
    const-string p1, "RdpCommunicator"

    const-string p5, "OnVerifiyCertificate called."

    invoke-static {p1, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 445
    iget-object p5, p0, Lcom/undatech/opaque/RdpCommunicator;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p5}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    const/4 p5, 0x3

    .line 446
    iput p5, p1, Landroid/os/Message;->what:I

    .line 447
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    .line 448
    const-string v0, "subject"

    invoke-virtual {p5, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string p2, "issuer"

    invoke-virtual {p5, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string p2, "fingerprint"

    invoke-virtual {p5, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iput-object p5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 452
    iget-object p2, p0, Lcom/undatech/opaque/RdpCommunicator;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 456
    monitor-enter p0

    .line 457
    :goto_0
    :try_start_0
    iget-boolean p1, p0, Lcom/undatech/opaque/RdpCommunicator;->certificateAccepted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 459
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 461
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 464
    :cond_0
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public OnVerifyChangedCertificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .line 480
    const-string p5, "RdpCommunicator"

    const-string p6, "OnVerifyChangedCertificate called."

    invoke-static {p5, p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 481
    invoke-virtual/range {v0 .. v5}, Lcom/undatech/opaque/RdpCommunicator;->OnVerifiyCertificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public close()V
    .locals 3

    const/4 v0, 0x0

    .line 190
    invoke-virtual {p0, v0}, Lcom/undatech/opaque/RdpCommunicator;->setIsInNormalProtocol(Z)V

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcom/undatech/opaque/RdpCommunicator;->disconnectRequested:Z

    .line 192
    iget-object v0, p0, Lcom/undatech/opaque/RdpCommunicator;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v0

    .line 193
    new-instance v2, Lcom/undatech/opaque/RdpCommunicator$DisconnectThread;

    invoke-direct {v2, p0, v0, v1}, Lcom/undatech/opaque/RdpCommunicator$DisconnectThread;-><init>(Lcom/undatech/opaque/RdpCommunicator;J)V

    .line 194
    invoke-virtual {v2}, Lcom/undatech/opaque/RdpCommunicator$DisconnectThread;->start()V

    return-void
.end method

.method public connect()V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/undatech/opaque/RdpCommunicator;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    iget-object v1, p0, Lcom/undatech/opaque/RdpCommunicator;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/application/SessionState;->connect(Landroid/content/Context;)V

    return-void
.end method

.method public desktopName()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/undatech/opaque/RdpCommunicator;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getBookmark()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object v0

    check-cast v0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->getHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public framebufferHeight()I
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/undatech/opaque/RdpCommunicator;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getBookmark()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getActiveScreenSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->getHeight()I

    move-result v0

    return v0
.end method

.method public framebufferWidth()I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/undatech/opaque/RdpCommunicator;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getBookmark()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getActiveScreenSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->getWidth()I

    move-result v0

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 137
    const-string v0, "RDP"

    return-object v0
.end method

.method public isCertificateAccepted()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/undatech/opaque/RdpCommunicator;->certificateAccepted:Z

    return v0
.end method

.method public isInNormalProtocol()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/undatech/opaque/RdpCommunicator;->isInNormalProtocol:Z

    return v0
.end method

.method public modifiersChanged()V
    .locals 0

    return-void
.end method

.method public processUnicodeKey(I)V
    .locals 3

    const/4 v0, 0x1

    .line 270
    invoke-direct {p0, v0}, Lcom/undatech/opaque/RdpCommunicator;->sendModifierKeys(Z)V

    const-wide/16 v1, 0x5

    .line 271
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :catch_0
    iget-object v1, p0, Lcom/undatech/opaque/RdpCommunicator;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v1

    invoke-static {v1, v2, p1, v0}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->sendUnicodeKeyEvent(JIZ)Z

    .line 273
    iget-object v0, p0, Lcom/undatech/opaque/RdpCommunicator;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->sendUnicodeKeyEvent(JIZ)Z

    .line 274
    invoke-direct {p0, v2}, Lcom/undatech/opaque/RdpCommunicator;->sendModifierKeys(Z)V

    return-void
.end method

.method public processVirtualKey(IZ)V
    .locals 3

    .line 254
    iget-boolean v0, p0, Lcom/undatech/opaque/RdpCommunicator;->debugLogging:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processVirtualKey: Sending VK key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Is it down: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RdpCommunicator"

    invoke-static {v0, v2, v1}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 258
    invoke-direct {p0, v0}, Lcom/undatech/opaque/RdpCommunicator;->sendModifierKeys(Z)V

    :cond_0
    const-wide/16 v0, 0x5

    .line 260
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :catch_0
    iget-object v0, p0, Lcom/undatech/opaque/RdpCommunicator;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->sendKeyEvent(JIZ)Z

    if-nez p2, :cond_1

    const/4 p1, 0x0

    .line 263
    invoke-direct {p0, p1}, Lcom/undatech/opaque/RdpCommunicator;->sendModifierKeys(Z)V

    :cond_1
    return-void
.end method

.method public requestResolution(II)V
    .locals 0

    return-void
.end method

.method public requestUpdate(Z)V
    .locals 0

    return-void
.end method

.method public setCertificateAccepted(Z)V
    .locals 0

    .line 204
    iput-boolean p1, p0, Lcom/undatech/opaque/RdpCommunicator;->certificateAccepted:Z

    return-void
.end method

.method public setConnectionParameters(Ljava/lang/String;ILjava/lang/String;IIZZZZZZZZIZZZZ)V
    .locals 3

    move-object v0, p0

    .line 310
    iget-object v1, v0, Lcom/undatech/opaque/RdpCommunicator;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->get()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object v1

    check-cast v1, Lcom/freerdp/freerdpcore/domain/ManualBookmark;

    move-object v2, p3

    invoke-virtual {v1, p3}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->setLabel(Ljava/lang/String;)V

    .line 311
    iget-object v1, v0, Lcom/undatech/opaque/RdpCommunicator;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->get()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object v1

    check-cast v1, Lcom/freerdp/freerdpcore/domain/ManualBookmark;

    move-object v2, p1

    invoke-virtual {v1, p1}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->setHostname(Ljava/lang/String;)V

    .line 312
    iget-object v1, v0, Lcom/undatech/opaque/RdpCommunicator;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->get()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object v1

    check-cast v1, Lcom/freerdp/freerdpcore/domain/ManualBookmark;

    move v2, p2

    invoke-virtual {v1, p2}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->setPort(I)V

    .line 314
    iget-object v1, v0, Lcom/undatech/opaque/RdpCommunicator;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getDebugSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    move-result-object v1

    .line 315
    const-string v2, "INFO"

    invoke-virtual {v1, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->setDebugLevel(Ljava/lang/String;)V

    .line 321
    iget-object v1, v0, Lcom/undatech/opaque/RdpCommunicator;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getActiveScreenSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    move-result-object v1

    move v2, p4

    .line 322
    invoke-virtual {v1, p4}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->setWidth(I)V

    move v2, p5

    .line 323
    invoke-virtual {v1, p5}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->setHeight(I)V

    const/16 v2, 0x10

    .line 324
    invoke-virtual {v1, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->setColors(I)V

    .line 327
    iget-object v1, v0, Lcom/undatech/opaque/RdpCommunicator;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getPerformanceFlags()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    move-result-object v1

    move/from16 v2, p16

    .line 328
    invoke-virtual {v1, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setRemoteFX(Z)V

    move v2, p6

    .line 329
    invoke-virtual {v1, p6}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setWallpaper(Z)V

    move v2, p7

    .line 330
    invoke-virtual {v1, p7}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setFontSmoothing(Z)V

    move v2, p8

    .line 331
    invoke-virtual {v1, p8}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setDesktopComposition(Z)V

    move v2, p9

    .line 332
    invoke-virtual {v1, p9}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setFullWindowDrag(Z)V

    move v2, p10

    .line 333
    invoke-virtual {v1, p10}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setMenuAnimations(Z)V

    move v2, p11

    .line 334
    invoke-virtual {v1, p11}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setTheming(Z)V

    move/from16 v2, p17

    .line 335
    invoke-virtual {v1, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setGfx(Z)V

    move/from16 v2, p18

    .line 336
    invoke-virtual {v1, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setH264(Z)V

    .line 338
    iget-object v1, v0, Lcom/undatech/opaque/RdpCommunicator;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v1

    move v2, p12

    .line 339
    invoke-virtual {v1, p12}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->setRedirectSDCard(Z)V

    move/from16 v2, p13

    .line 340
    invoke-virtual {v1, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->setConsoleMode(Z)V

    move/from16 v2, p14

    .line 341
    invoke-virtual {v1, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->setRedirectSound(I)V

    move/from16 v2, p15

    .line 342
    invoke-virtual {v1, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->setRedirectMicrophone(Z)V

    const/4 v2, 0x0

    .line 343
    invoke-virtual {v1, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->setSecurity(I)V

    return-void
.end method

.method public setIsInNormalProtocol(Z)V
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setIsInNormalProtocol: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RdpCommunicator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iput-boolean p1, p0, Lcom/undatech/opaque/RdpCommunicator;->isInNormalProtocol:Z

    return-void
.end method

.method public switchKeyboard(I)V
    .locals 0

    return-void
.end method

.method public writeClientCutText(Ljava/lang/String;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/undatech/opaque/RdpCommunicator;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->sendClipboardData(JLjava/lang/String;)Z

    return-void
.end method

.method public writeFramebufferUpdateRequest(IIIIZ)V
    .locals 0

    return-void
.end method

.method public writeKeyEvent(IIZ)V
    .locals 0

    .line 159
    iput p2, p0, Lcom/undatech/opaque/RdpCommunicator;->metaState:I

    return-void
.end method

.method public writePointerEvent(IIIIZ)V
    .locals 2

    .line 142
    iput p3, p0, Lcom/undatech/opaque/RdpCommunicator;->metaState:I

    const p3, 0x8000

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    const/4 p5, 0x1

    .line 144
    invoke-direct {p0, p5}, Lcom/undatech/opaque/RdpCommunicator;->sendModifierKeys(Z)V

    :cond_0
    const-wide/16 v0, 0x5

    .line 146
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :catch_0
    iget-object p5, p0, Lcom/undatech/opaque/RdpCommunicator;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {p5}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p4}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->sendCursorEvent(JIII)Z

    if-nez p3, :cond_1

    const/4 p1, 0x0

    .line 149
    invoke-direct {p0, p1}, Lcom/undatech/opaque/RdpCommunicator;->sendModifierKeys(Z)V

    :cond_1
    return-void
.end method

.method public writeSetPixelFormat(IIZZIIIIIIZ)V
    .locals 0

    return-void
.end method
