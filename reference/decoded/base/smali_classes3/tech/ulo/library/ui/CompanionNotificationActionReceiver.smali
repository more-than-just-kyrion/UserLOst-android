.class public final Ltech/ulo/library/ui/CompanionNotificationActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CompanionNotificationActionReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/ulo/library/ui/CompanionNotificationActionReceiver$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Ltech/ulo/library/ui/CompanionNotificationActionReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "()V",
        "onReceive",
        "",
        "ctx",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "Companion",
        "UserLOstLibrary_UserLOstRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ACTION_OPEN_SETTINGS:Ljava/lang/String; = "tech.ulo.OPEN_SETTINGS"

.field public static final ACTION_STOP_SESSION:Ljava/lang/String; = "tech.ulo.STOP_SESSION"

.field public static final Companion:Ltech/ulo/library/ui/CompanionNotificationActionReceiver$Companion;

.field public static final EXTRA_SESSION_ID:Ljava/lang/String; = "sessionId"


# direct methods
.method public static synthetic $r8$lambda$w8ALFo-hRk-QrmA_SzjV5grFTTs(Landroid/content/Context;JLandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ltech/ulo/library/ui/CompanionNotificationActionReceiver;->onReceive$lambda$0(Landroid/content/Context;JLandroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltech/ulo/library/ui/CompanionNotificationActionReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/ulo/library/ui/CompanionNotificationActionReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/ulo/library/ui/CompanionNotificationActionReceiver;->Companion:Ltech/ulo/library/ui/CompanionNotificationActionReceiver$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static final onReceive$lambda$0(Landroid/content/Context;JLandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 2

    const-string v0, "$ctx"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    :try_start_0
    sget-object v0, Ltech/ulo/library/model/repositories/UlaDatabase;->Companion:Ltech/ulo/library/model/repositories/UlaDatabase$Companion;

    invoke-virtual {v0, p0}, Ltech/ulo/library/model/repositories/UlaDatabase$Companion;->getInstance(Landroid/content/Context;)Ltech/ulo/library/model/repositories/UlaDatabase;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/model/repositories/UlaDatabase;->sessionDao()Ltech/ulo/library/model/daos/SessionDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ltech/ulo/library/model/daos/SessionDao;->getSessionById(J)Ltech/ulo/library/model/entities/Session;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 41
    new-instance p2, Landroid/content/Intent;

    const-class v0, Ltech/ula/library/ServerService;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    const-string v0, "type"

    const-string v1, "kill"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 43
    const-string v0, "session"

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    invoke-virtual {p3}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p3}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    throw p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x54fe41ab

    if-eq v1, v2, :cond_2

    const p2, 0x24a46adc

    if-eq v1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "tech.ulo.OPEN_SETTINGS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    new-instance p2, Landroid/content/Intent;

    const-class v0, Ltech/ulo/library/MainActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    const-string v0, "settings"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 53
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 32
    :cond_2
    const-string v1, "tech.ulo.STOP_SESSION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 34
    :cond_3
    const-string v0, "sessionId"

    const-wide/16 v1, -0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gez p2, :cond_4

    return-void

    .line 36
    :cond_4
    invoke-virtual {p0}, Ltech/ulo/library/ui/CompanionNotificationActionReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p2

    .line 37
    new-instance v2, Ljava/lang/Thread;

    .line 48
    new-instance v3, Ltech/ulo/library/ui/CompanionNotificationActionReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v0, v1, p2}, Ltech/ulo/library/ui/CompanionNotificationActionReceiver$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;JLandroid/content/BroadcastReceiver$PendingResult;)V

    .line 37
    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 48
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_5
    :goto_0
    return-void
.end method
