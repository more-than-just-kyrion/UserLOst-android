.class Lcom/undatech/opaque/SpiceCommunicator$OvirtThread;
.super Ljava/lang/Thread;
.source "SpiceCommunicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/undatech/opaque/SpiceCommunicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OvirtThread"
.end annotation


# instance fields
.field private ip:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field sound:Z

.field private sslCaFile:Ljava/lang/String;

.field sslStrict:Z

.field final synthetic this$0:Lcom/undatech/opaque/SpiceCommunicator;

.field private user:Ljava/lang/String;

.field private vmname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/undatech/opaque/SpiceCommunicator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/undatech/opaque/SpiceCommunicator$OvirtThread;->this$0:Lcom/undatech/opaque/SpiceCommunicator;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 248
    iput-object p2, p0, Lcom/undatech/opaque/SpiceCommunicator$OvirtThread;->ip:Ljava/lang/String;

    .line 249
    iput-object p3, p0, Lcom/undatech/opaque/SpiceCommunicator$OvirtThread;->vmname:Ljava/lang/String;

    .line 250
    iput-object p4, p0, Lcom/undatech/opaque/SpiceCommunicator$OvirtThread;->user:Ljava/lang/String;

    .line 251
    iput-object p5, p0, Lcom/undatech/opaque/SpiceCommunicator$OvirtThread;->password:Ljava/lang/String;

    .line 252
    iput-object p6, p0, Lcom/undatech/opaque/SpiceCommunicator$OvirtThread;->sslCaFile:Ljava/lang/String;

    .line 253
    iput-boolean p7, p0, Lcom/undatech/opaque/SpiceCommunicator$OvirtThread;->sound:Z

    .line 254
    iput-boolean p8, p0, Lcom/undatech/opaque/SpiceCommunicator$OvirtThread;->sslStrict:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 258
    iget-object v0, p0, Lcom/undatech/opaque/SpiceCommunicator$OvirtThread;->this$0:Lcom/undatech/opaque/SpiceCommunicator;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ovirt://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/undatech/opaque/SpiceCommunicator$OvirtThread;->ip:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/undatech/opaque/SpiceCommunicator$OvirtThread;->vmname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/undatech/opaque/SpiceCommunicator$OvirtThread;->user:Ljava/lang/String;

    iget-object v3, p0, Lcom/undatech/opaque/SpiceCommunicator$OvirtThread;->password:Ljava/lang/String;

    iget-object v4, p0, Lcom/undatech/opaque/SpiceCommunicator$OvirtThread;->sslCaFile:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/undatech/opaque/SpiceCommunicator$OvirtThread;->sound:Z

    iget-boolean v6, p0, Lcom/undatech/opaque/SpiceCommunicator$OvirtThread;->sslStrict:Z

    invoke-virtual/range {v0 .. v6}, Lcom/undatech/opaque/SpiceCommunicator;->CreateOvirtSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    .line 259
    const-string v0, "SpiceCommunicator"

    const-string v1, "CreateOvirtSession returned."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/undatech/opaque/SpiceCommunicator$OvirtThread;->this$0:Lcom/undatech/opaque/SpiceCommunicator;

    invoke-static {v0}, Lcom/undatech/opaque/SpiceCommunicator;->access$100(Lcom/undatech/opaque/SpiceCommunicator;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/undatech/opaque/SpiceCommunicator$OvirtThread;->this$0:Lcom/undatech/opaque/SpiceCommunicator;

    invoke-static {v0}, Lcom/undatech/opaque/SpiceCommunicator;->access$100(Lcom/undatech/opaque/SpiceCommunicator;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
