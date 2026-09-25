.class Lcom/freerdp/freerdpcore/application/GlobalApp$DisconnectTask;
.super Ljava/util/TimerTask;
.source "GlobalApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freerdp/freerdpcore/application/GlobalApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisconnectTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 197
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freerdp/freerdpcore/application/GlobalApp$1;)V
    .locals 0

    .line 197
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/application/GlobalApp$DisconnectTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 201
    const-string v0, "DisconnectTask"

    const-string v1, "Doing action"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static {}, Lcom/freerdp/freerdpcore/application/GlobalApp;->getSessions()Ljava/util/Collection;

    move-result-object v0

    .line 205
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freerdp/freerdpcore/application/SessionState;

    .line 207
    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->disconnect(J)Z

    goto :goto_0

    :cond_0
    return-void
.end method
