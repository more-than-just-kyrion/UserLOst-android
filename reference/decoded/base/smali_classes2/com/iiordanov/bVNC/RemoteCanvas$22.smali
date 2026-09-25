.class Lcom/iiordanov/bVNC/RemoteCanvas$22;
.super Ljava/lang/Object;
.source "RemoteCanvas.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/RemoteCanvas;->initializeSshHostKey()V
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

    .line 2139
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$22;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2143
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$22;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$22;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object p2, p2, Lcom/iiordanov/bVNC/RemoteCanvas;->sshConnection:Lcom/iiordanov/bVNC/SSHConnection;

    invoke-virtual {p2}, Lcom/iiordanov/bVNC/SSHConnection;->getIdHash()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/undatech/opaque/Connection;->setIdHash(Ljava/lang/String;)V

    .line 2144
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$22;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$22;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object p2, p2, Lcom/iiordanov/bVNC/RemoteCanvas;->sshConnection:Lcom/iiordanov/bVNC/SSHConnection;

    invoke-virtual {p2}, Lcom/iiordanov/bVNC/SSHConnection;->getServerHostKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/undatech/opaque/Connection;->setSshHostKey(Ljava/lang/String;)V

    .line 2145
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$22;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$22;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p2}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/undatech/opaque/Connection;->save(Landroid/content/Context;)V

    .line 2146
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$22;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->sshConnection:Lcom/iiordanov/bVNC/SSHConnection;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/SSHConnection;->terminateSSHTunnel()V

    .line 2147
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$22;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->sshConnection:Lcom/iiordanov/bVNC/SSHConnection;

    .line 2148
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$22;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    monitor-enter p1

    .line 2149
    :try_start_0
    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$22;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 2150
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
