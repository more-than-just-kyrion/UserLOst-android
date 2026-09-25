.class public final Lcom/termux/app/TermuxService;
.super Landroid/app/Service;
.source "TermuxService.java"

# interfaces
.implements Lcom/termux/terminal/TerminalSession$SessionChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/app/TermuxService$LocalBinder;
    }
.end annotation


# static fields
.field public static final ACTION_EXECUTE:Ljava/lang/String; = "android.intent.action.EXECUTE"

.field private static final ACTION_LOCK_WAKE:Ljava/lang/String; = "com.termux.service_wake_lock"

.field private static final ACTION_STOP_SERVICE:Ljava/lang/String; = "com.termux.service_stop"

.field private static final ACTION_UNLOCK_WAKE:Ljava/lang/String; = "com.termux.service_wake_unlock"

.field public static final EXTRA_ARGUMENTS:Ljava/lang/String; = "com.termux.execute.arguments"

.field public static final EXTRA_CURRENT_WORKING_DIRECTORY:Ljava/lang/String; = "com.termux.execute.cwd"

.field public static final EXTRA_EXECUTE_IN_BACKGROUND:Ljava/lang/String; = "com.termux.execute.background"

.field private static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "UserLOst"

.field private static final NOTIFICATION_ID:I = 0x7d0

.field public static filesPath:Ljava/lang/String;

.field public static homePath:Ljava/lang/String;

.field public static prefixPath:Ljava/lang/String;

.field public static supportPath:Ljava/lang/String;


# instance fields
.field GROUP_KEY_USERLAND:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field hostname:Ljava/lang/String;

.field final mBackgroundTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/termux/app/BackgroundJob;",
            ">;"
        }
    .end annotation
.end field

.field private final mBinder:Landroid/os/IBinder;

.field private final mHandler:Landroid/os/Handler;

.field mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

.field final mTerminalSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/termux/terminal/TerminalSession;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWantsToStop:Z

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field password:Ljava/lang/String;

.field port:Ljava/lang/String;

.field sessionName:Ljava/lang/String;

.field username:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$rzOcPBgQ0AqZlyNhMk0QW9TaCS8(Lcom/termux/app/TermuxService;Lcom/termux/app/BackgroundJob;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/termux/app/TermuxService;->lambda$onBackgroundJobExited$0(Lcom/termux/app/BackgroundJob;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    const-string v0, "TermuxService"

    iput-object v0, p0, Lcom/termux/app/TermuxService;->TAG:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/termux/app/TermuxService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxService$LocalBinder;-><init>(Lcom/termux/app/TermuxService;)V

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mBinder:Landroid/os/IBinder;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mHandler:Landroid/os/Handler;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/termux/app/TermuxService;->username:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/termux/app/TermuxService;->hostname:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/termux/app/TermuxService;->port:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/termux/app/TermuxService;->sessionName:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/termux/app/TermuxService;->password:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mBackgroundTasks:Ljava/util/List;

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/termux/app/TermuxService;->mWantsToStop:Z

    .line 182
    const-string v0, "tech.ulo.userland"

    iput-object v0, p0, Lcom/termux/app/TermuxService;->GROUP_KEY_USERLAND:Ljava/lang/String;

    return-void
.end method

.method private buildNotification()Landroid/app/Notification;
    .locals 9

    .line 185
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/termux/app/TermuxActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x2000000

    .line 189
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 191
    iget-object v3, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 192
    iget-object v4, p0, Lcom/termux/app/TermuxService;->mBackgroundTasks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 193
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " session"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    const-string v7, "s"

    const/4 v8, 0x1

    if-ne v3, v8, :cond_0

    move-object v3, v6

    goto :goto_0

    :cond_0
    move-object v3, v7

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-lez v4, :cond_2

    .line 195
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " task"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne v4, v8, :cond_1

    goto :goto_1

    :cond_1
    move-object v6, v7

    :goto_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 198
    :cond_2
    iget-object v4, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_3

    move v4, v8

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    if-eqz v4, :cond_4

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (wake lock held)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 201
    :cond_4
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 202
    sget v6, Ltech/ulo/customlibrary/R$string;->app_name:I

    invoke-virtual {p0, v6}, Lcom/termux/app/TermuxService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 203
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 204
    sget v3, Ltech/ulo/customlibrary/R$drawable;->ic_stat_icon:I

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 205
    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 206
    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 207
    iget-object v0, p0, Lcom/termux/app/TermuxService;->GROUP_KEY_USERLAND:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v8, -0x1

    .line 211
    :goto_3
    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 214
    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    const v0, -0x9f8275

    .line 217
    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 219
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_6

    .line 220
    const-string v0, "UserLOst"

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 223
    :cond_6
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 224
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/termux/app/TermuxService;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "com.termux.service_stop"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 225
    sget v7, Lcom/termux/R$string;->notification_action_exit:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v1, v3, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const v8, 0x108001d

    invoke-virtual {v5, v8, v7, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    if-eqz v4, :cond_7

    .line 227
    const-string v3, "com.termux.service_wake_unlock"

    goto :goto_4

    :cond_7
    const-string v3, "com.termux.service_wake_lock"

    .line 228
    :goto_4
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v4, :cond_8

    .line 230
    sget v6, Lcom/termux/R$string;->notification_action_wake_unlock:I

    goto :goto_5

    .line 231
    :cond_8
    sget v6, Lcom/termux/R$string;->notification_action_wake_lock:I

    .line 229
    :goto_5
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_9

    const v4, 0x108001f

    goto :goto_6

    :cond_9
    const v4, 0x108002f

    .line 233
    :goto_6
    invoke-static {p0, v1, v3, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v5, v4, v0, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 235
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$onBackgroundJobExited$0(Lcom/termux/app/BackgroundJob;)V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mBackgroundTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 341
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    return-void
.end method


# virtual methods
.method createTermSession(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/terminal/TerminalSession;
    .locals 6

    .line 254
    new-instance p1, Ljava/io/File;

    sget-object p2, Lcom/termux/app/TermuxService;->homePath:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    if-nez p3, :cond_0

    .line 256
    sget-object p3, Lcom/termux/app/TermuxService;->homePath:Ljava/lang/String;

    .line 258
    :cond_0
    sget-object v2, Lcom/termux/app/TermuxService;->filesPath:Ljava/lang/String;

    sget-object v3, Lcom/termux/app/TermuxService;->homePath:Ljava/lang/String;

    sget-object v4, Lcom/termux/app/TermuxService;->prefixPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/termux/app/TermuxService;->password:Ljava/lang/String;

    move v0, p4

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/termux/app/BackgroundJob;->buildEnvironment(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 p1, 0x1

    .line 261
    new-array p2, p1, [Ljava/lang/String;

    .line 262
    new-instance p2, Ljava/io/File;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/termux/app/TermuxService;->supportPath:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, "busybox"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x3

    .line 270
    new-array p4, p4, [Ljava/lang/String;

    const-string v0, "sh"

    const/4 v1, 0x0

    aput-object v0, p4, v1

    const-string v0, "-c"

    aput-object v0, p4, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/termux/app/TermuxService;->supportPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "dbclient -y -y "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/termux/app/TermuxService;->username:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/termux/app/TermuxService;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/termux/app/TermuxService;->port:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, p4, v2

    .line 271
    sget-object v0, Lcom/termux/app/TermuxService;->prefixPath:Ljava/lang/String;

    invoke-static {p2, p4, v0}, Lcom/termux/app/BackgroundJob;->setupProcessArgs(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 272
    aget-object p4, p2, v1

    const/16 v0, 0x2f

    .line 273
    invoke-virtual {p4, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    move-object v0, p4

    goto :goto_0

    :cond_1
    add-int/2addr v0, p1

    .line 275
    invoke-virtual {p4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    array-length v2, p2

    new-array v3, v2, [Ljava/lang/String;

    .line 278
    aput-object v0, v3, v1

    .line 279
    array-length v0, p2

    if-le v0, p1, :cond_2

    array-length v0, p2

    sub-int/2addr v0, p1

    invoke-static {p2, p1, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    :cond_2
    new-instance p1, Lcom/termux/terminal/TerminalSession;

    move-object v0, p1

    move-object v1, p4

    move-object v2, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/termux/terminal/TerminalSession;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/termux/terminal/TerminalSession$SessionChangedCallback;)V

    .line 282
    iget-object p2, p0, Lcom/termux/app/TermuxService;->sessionName:Ljava/lang/String;

    iput-object p2, p1, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    .line 283
    iget-object p2, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    .line 287
    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.termux.app.reload_style"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    const-string p4, "styling"

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    invoke-virtual {p0, p2}, Lcom/termux/app/TermuxService;->sendBroadcast(Landroid/content/Intent;)V

    return-object p1
.end method

.method public getSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/termux/terminal/TerminalSession;",
            ">;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    return-object v0
.end method

.method public onBackgroundJobExited(Lcom/termux/app/BackgroundJob;)V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/termux/app/TermuxService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/termux/app/TermuxService$$ExternalSyntheticLambda0;-><init>(Lcom/termux/app/TermuxService;Lcom/termux/app/BackgroundJob;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBell(Lcom/termux/terminal/TerminalSession;)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onBell(Lcom/termux/terminal/TerminalSession;)V

    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 160
    iget-object p1, p0, Lcom/termux/app/TermuxService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onClipboardText(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onClipboardText(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onColorsChanged(Lcom/termux/terminal/TerminalSession;)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onColorsChanged(Lcom/termux/terminal/TerminalSession;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 165
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxService;->filesPath:Ljava/lang/String;

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxService;->filesPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/support/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxService;->supportPath:Ljava/lang/String;

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxService;->filesPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/usr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxService;->prefixPath:Ljava/lang/String;

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxService;->filesPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/home"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxService;->homePath:Ljava/lang/String;

    const/16 v0, 0x7d0

    .line 169
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->buildNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/TermuxService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_1
    const/4 v0, 0x1

    .line 243
    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxService;->stopForeground(Z)V

    const/4 v0, 0x0

    .line 245
    :goto_0
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 246
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalSession;->finishIfRunning()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onSessionFinished(Lcom/termux/terminal/TerminalSession;)V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    if-eqz v0, :cond_0

    .line 315
    invoke-interface {v0, p1}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onSessionFinished(Lcom/termux/terminal/TerminalSession;)V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 107
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 108
    const-string p3, "com.termux.service_stop"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 109
    iput-boolean v0, p0, Lcom/termux/app/TermuxService;->mWantsToStop:Z

    const/4 p1, 0x0

    .line 110
    :goto_0
    iget-object p2, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 111
    iget-object p2, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p2}, Lcom/termux/terminal/TerminalSession;->finishIfRunning()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->stopSelf()V

    goto/16 :goto_2

    .line 113
    :cond_1
    const-string p3, "com.termux.service_wake_lock"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 114
    iget-object p1, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez p1, :cond_7

    .line 115
    const-string p1, "power"

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/termux/app/TermuxService;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ":termux"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 117
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 120
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 121
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/termux/app/TermuxService;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p1, p3, p2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object p1

    iput-object p1, p0, Lcom/termux/app/TermuxService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 122
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 124
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    goto/16 :goto_2

    .line 126
    :cond_2
    const-string p3, "com.termux.service_wake_unlock"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 127
    iget-object p1, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_7

    .line 128
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 p1, 0x0

    .line 129
    iput-object p1, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 131
    iget-object p2, p0, Lcom/termux/app/TermuxService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 132
    iput-object p1, p0, Lcom/termux/app/TermuxService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 134
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    goto/16 :goto_2

    .line 136
    :cond_3
    const-string p3, "android.intent.action.EXECUTE"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v0, "termux"

    if-eqz p3, :cond_6

    .line 137
    const-string p2, "username"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/termux/app/TermuxService;->username:Ljava/lang/String;

    .line 138
    const-string p2, "password"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/termux/app/TermuxService;->password:Ljava/lang/String;

    .line 139
    const-string p2, "hostname"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/termux/app/TermuxService;->hostname:Ljava/lang/String;

    .line 140
    const-string p2, "port"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/termux/app/TermuxService;->port:Ljava/lang/String;

    .line 141
    const-string p2, "sessionName"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/termux/app/TermuxService;->sessionName:Ljava/lang/String;

    .line 143
    iget-object p1, p0, Lcom/termux/app/TermuxService;->username:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/termux/app/TermuxService;->password:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/termux/app/TermuxService;->hostname:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/termux/app/TermuxService;->port:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/termux/app/TermuxService;->sessionName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 147
    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/termux/app/TermuxActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxService;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 144
    :cond_5
    :goto_1
    const-string p1, "Currently only intents from UserLOst are supported"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_7

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Unknown TermuxService action: \'"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    const/4 p1, 0x2

    return p1
.end method

.method public onTextChanged(Lcom/termux/terminal/TerminalSession;)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onTextChanged(Lcom/termux/terminal/TerminalSession;)V

    :cond_0
    return-void
.end method

.method public onTitleChanged(Lcom/termux/terminal/TerminalSession;)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onTitleChanged(Lcom/termux/terminal/TerminalSession;)V

    :cond_0
    return-void
.end method

.method public removeTermSession(Lcom/termux/terminal/TerminalSession;)I
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 296
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 297
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->stopSelf()V

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    :goto_0
    return p1
.end method

.method updateNotification()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxService;->mBackgroundTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->stopSelf()V

    goto :goto_0

    .line 178
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x7d0

    invoke-direct {p0}, Lcom/termux/app/TermuxService;->buildNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_0
    return-void
.end method
