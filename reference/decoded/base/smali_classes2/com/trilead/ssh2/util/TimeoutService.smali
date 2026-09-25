.class public Lcom/trilead/ssh2/util/TimeoutService;
.super Ljava/lang/Object;
.source "TimeoutService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/util/TimeoutService$TimeoutThread;,
        Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;
    }
.end annotation


# static fields
.field private static final log:Lcom/trilead/ssh2/log/Logger;

.field private static timeoutThread:Ljava/lang/Thread;

.field private static final todolist:Ljava/util/LinkedList;


# direct methods
.method static bridge synthetic -$$Nest$sfgetlog()Lcom/trilead/ssh2/log/Logger;
    .locals 1

    sget-object v0, Lcom/trilead/ssh2/util/TimeoutService;->log:Lcom/trilead/ssh2/log/Logger;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgettodolist()Ljava/util/LinkedList;
    .locals 1

    sget-object v0, Lcom/trilead/ssh2/util/TimeoutService;->todolist:Ljava/util/LinkedList;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputtimeoutThread(Ljava/lang/Thread;)V
    .locals 0

    sput-object p0, Lcom/trilead/ssh2/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/trilead/ssh2/util/TimeoutService;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/util/TimeoutService;->log:Lcom/trilead/ssh2/log/Logger;

    .line 105
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/trilead/ssh2/util/TimeoutService;->todolist:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 107
    sput-object v0, Lcom/trilead/ssh2/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addTimeoutHandler(JLjava/lang/Runnable;)Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;
    .locals 2

    .line 118
    new-instance v0, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;-><init>(JLjava/lang/Runnable;Lcom/trilead/ssh2/util/TimeoutService-IA;)V

    .line 120
    sget-object p0, Lcom/trilead/ssh2/util/TimeoutService;->todolist:Ljava/util/LinkedList;

    monitor-enter p0

    .line 122
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 125
    sget-object p1, Lcom/trilead/ssh2/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 129
    :cond_0
    new-instance p1, Lcom/trilead/ssh2/util/TimeoutService$TimeoutThread;

    invoke-direct {p1, v1}, Lcom/trilead/ssh2/util/TimeoutService$TimeoutThread;-><init>(Lcom/trilead/ssh2/util/TimeoutService-IA;)V

    sput-object p1, Lcom/trilead/ssh2/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    const/4 p2, 0x1

    .line 130
    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 131
    sget-object p1, Lcom/trilead/ssh2/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 133
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static final cancelTimeoutHandler(Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;)V
    .locals 1

    .line 140
    sget-object v0, Lcom/trilead/ssh2/util/TimeoutService;->todolist:Ljava/util/LinkedList;

    monitor-enter v0

    .line 142
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 144
    sget-object p0, Lcom/trilead/ssh2/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    if-eqz p0, :cond_0

    .line 145
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 146
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
