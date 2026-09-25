.class Lcom/undatech/opaque/SpiceCommunicator$SpiceThread;
.super Ljava/lang/Thread;
.source "SpiceCommunicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/undatech/opaque/SpiceCommunicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpiceThread"
.end annotation


# instance fields
.field private ca:Ljava/lang/String;

.field private cf:Ljava/lang/String;

.field private cs:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private port:Ljava/lang/String;

.field sound:Z

.field final synthetic this$0:Lcom/undatech/opaque/SpiceCommunicator;

.field private tport:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/undatech/opaque/SpiceCommunicator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/undatech/opaque/SpiceCommunicator$SpiceThread;->this$0:Lcom/undatech/opaque/SpiceCommunicator;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 218
    iput-object p2, p0, Lcom/undatech/opaque/SpiceCommunicator$SpiceThread;->ip:Ljava/lang/String;

    .line 219
    iput-object p3, p0, Lcom/undatech/opaque/SpiceCommunicator$SpiceThread;->port:Ljava/lang/String;

    .line 220
    iput-object p4, p0, Lcom/undatech/opaque/SpiceCommunicator$SpiceThread;->tport:Ljava/lang/String;

    .line 221
    iput-object p5, p0, Lcom/undatech/opaque/SpiceCommunicator$SpiceThread;->password:Ljava/lang/String;

    .line 222
    iput-object p6, p0, Lcom/undatech/opaque/SpiceCommunicator$SpiceThread;->cf:Ljava/lang/String;

    .line 223
    iput-object p7, p0, Lcom/undatech/opaque/SpiceCommunicator$SpiceThread;->ca:Ljava/lang/String;

    .line 224
    iput-object p8, p0, Lcom/undatech/opaque/SpiceCommunicator$SpiceThread;->cs:Ljava/lang/String;

    .line 225
    iput-boolean p9, p0, Lcom/undatech/opaque/SpiceCommunicator$SpiceThread;->sound:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 229
    iget-object v0, p0, Lcom/undatech/opaque/SpiceCommunicator$SpiceThread;->this$0:Lcom/undatech/opaque/SpiceCommunicator;

    iget-object v1, p0, Lcom/undatech/opaque/SpiceCommunicator$SpiceThread;->ip:Ljava/lang/String;

    iget-object v2, p0, Lcom/undatech/opaque/SpiceCommunicator$SpiceThread;->port:Ljava/lang/String;

    iget-object v3, p0, Lcom/undatech/opaque/SpiceCommunicator$SpiceThread;->tport:Ljava/lang/String;

    iget-object v4, p0, Lcom/undatech/opaque/SpiceCommunicator$SpiceThread;->password:Ljava/lang/String;

    iget-object v5, p0, Lcom/undatech/opaque/SpiceCommunicator$SpiceThread;->cf:Ljava/lang/String;

    iget-object v6, p0, Lcom/undatech/opaque/SpiceCommunicator$SpiceThread;->ca:Ljava/lang/String;

    iget-object v7, p0, Lcom/undatech/opaque/SpiceCommunicator$SpiceThread;->cs:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/undatech/opaque/SpiceCommunicator$SpiceThread;->sound:Z

    invoke-virtual/range {v0 .. v8}, Lcom/undatech/opaque/SpiceCommunicator;->SpiceClientConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 230
    const-string v0, "SpiceCommunicator"

    const-string v1, "SpiceClientConnect returned."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/undatech/opaque/SpiceCommunicator$SpiceThread;->this$0:Lcom/undatech/opaque/SpiceCommunicator;

    invoke-static {v0}, Lcom/undatech/opaque/SpiceCommunicator;->access$100(Lcom/undatech/opaque/SpiceCommunicator;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/undatech/opaque/SpiceCommunicator$SpiceThread;->this$0:Lcom/undatech/opaque/SpiceCommunicator;

    invoke-static {v0}, Lcom/undatech/opaque/SpiceCommunicator;->access$100(Lcom/undatech/opaque/SpiceCommunicator;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
