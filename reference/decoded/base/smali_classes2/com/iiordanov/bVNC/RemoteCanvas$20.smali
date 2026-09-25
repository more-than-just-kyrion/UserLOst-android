.class Lcom/iiordanov/bVNC/RemoteCanvas$20;
.super Ljava/lang/Object;
.source "RemoteCanvas.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/RemoteCanvas;->validateRdpCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/RemoteCanvas;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/RemoteCanvas;)V
    .locals 0

    .line 2090
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$20;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2094
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$20;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/undatech/opaque/RfbConnectable;->setCertificateAccepted(Z)V

    .line 2095
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$20;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    monitor-enter p1

    .line 2096
    :try_start_0
    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$20;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object p2, p2, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 2097
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
