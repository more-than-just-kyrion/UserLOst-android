.class Lcom/trilead/ssh2/Connection$1;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/trilead/ssh2/Connection;->connect(Lcom/trilead/ssh2/ServerHostKeyVerifier;II)Lcom/trilead/ssh2/ConnectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/trilead/ssh2/Connection;

.field final synthetic val$state:Lcom/trilead/ssh2/Connection$1TimeoutState;


# direct methods
.method constructor <init>(Lcom/trilead/ssh2/Connection;Lcom/trilead/ssh2/Connection$1TimeoutState;)V
    .locals 0

    .line 730
    iput-object p1, p0, Lcom/trilead/ssh2/Connection$1;->this$0:Lcom/trilead/ssh2/Connection;

    iput-object p2, p0, Lcom/trilead/ssh2/Connection$1;->val$state:Lcom/trilead/ssh2/Connection$1TimeoutState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 733
    iget-object v0, p0, Lcom/trilead/ssh2/Connection$1;->val$state:Lcom/trilead/ssh2/Connection$1TimeoutState;

    monitor-enter v0

    .line 735
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/Connection$1;->val$state:Lcom/trilead/ssh2/Connection$1TimeoutState;

    iget-boolean v1, v1, Lcom/trilead/ssh2/Connection$1TimeoutState;->isCancelled:Z

    if-eqz v1, :cond_0

    .line 736
    monitor-exit v0

    return-void

    .line 737
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/Connection$1;->val$state:Lcom/trilead/ssh2/Connection$1TimeoutState;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/trilead/ssh2/Connection$1TimeoutState;->timeoutSocketClosed:Z

    .line 738
    iget-object v1, p0, Lcom/trilead/ssh2/Connection$1;->this$0:Lcom/trilead/ssh2/Connection;

    invoke-static {v1}, Lcom/trilead/ssh2/Connection;->-$$Nest$fgettm(Lcom/trilead/ssh2/Connection;)Lcom/trilead/ssh2/transport/TransportManager;

    move-result-object v1

    new-instance v2, Ljava/net/SocketTimeoutException;

    const-string v3, "The connect timeout expired"

    invoke-direct {v2, v3}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 739
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
