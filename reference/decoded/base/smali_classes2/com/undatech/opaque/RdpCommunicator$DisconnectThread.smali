.class public Lcom/undatech/opaque/RdpCommunicator$DisconnectThread;
.super Ljava/lang/Thread;
.source "RdpCommunicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/undatech/opaque/RdpCommunicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisconnectThread"
.end annotation


# instance fields
.field instance:J

.field final synthetic this$0:Lcom/undatech/opaque/RdpCommunicator;


# direct methods
.method public constructor <init>(Lcom/undatech/opaque/RdpCommunicator;J)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/undatech/opaque/RdpCommunicator$DisconnectThread;->this$0:Lcom/undatech/opaque/RdpCommunicator;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 180
    iput-wide p2, p0, Lcom/undatech/opaque/RdpCommunicator$DisconnectThread;->instance:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 183
    iget-wide v0, p0, Lcom/undatech/opaque/RdpCommunicator$DisconnectThread;->instance:J

    invoke-static {v0, v1}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->disconnect(J)Z

    return-void
.end method
