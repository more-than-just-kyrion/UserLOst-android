.class Lcom/trilead/ssh2/util/TimeoutService$TimeoutThread;
.super Ljava/lang/Thread;
.source "TimeoutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/util/TimeoutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeoutThread"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/trilead/ssh2/util/TimeoutService-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/trilead/ssh2/util/TimeoutService$TimeoutThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 53
    invoke-static {}, Lcom/trilead/ssh2/util/TimeoutService;->-$$Nest$sfgettodolist()Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    .line 57
    :catch_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/trilead/ssh2/util/TimeoutService;->-$$Nest$sfgettodolist()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 59
    invoke-static {v1}, Lcom/trilead/ssh2/util/TimeoutService;->-$$Nest$sfputtimeoutThread(Ljava/lang/Thread;)V

    .line 60
    monitor-exit v0

    return-void

    .line 63
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 65
    invoke-static {}, Lcom/trilead/ssh2/util/TimeoutService;->-$$Nest$sfgettodolist()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;

    .line 67
    invoke-static {v3}, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;->-$$Nest$fgetrunTime(Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;)J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v4, v1

    if-lez v4, :cond_1

    .line 73
    :try_start_1
    invoke-static {}, Lcom/trilead/ssh2/util/TimeoutService;->-$$Nest$sfgettodolist()Ljava/util/LinkedList;

    move-result-object v4

    invoke-static {v3}, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;->-$$Nest$fgetrunTime(Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;)J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 87
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/trilead/ssh2/util/TimeoutService;->-$$Nest$sfgettodolist()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    :try_start_3
    invoke-static {v3}, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;->-$$Nest$fgethandler(Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v1

    .line 95
    :try_start_4
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 96
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 97
    invoke-static {}, Lcom/trilead/ssh2/util/TimeoutService;->-$$Nest$sfgetlog()Lcom/trilead/ssh2/log/Logger;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exeception in Timeout handler:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v3, v2, v1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    .line 100
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
