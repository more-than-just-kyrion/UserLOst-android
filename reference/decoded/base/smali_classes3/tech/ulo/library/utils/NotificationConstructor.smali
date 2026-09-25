.class public final Ltech/ulo/library/utils/NotificationConstructor;
.super Ljava/lang/Object;
.source "NotificationConstructor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/ulo/library/utils/NotificationConstructor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationConstructor.kt\ntech/ulo/library/utils/NotificationConstructor\n+ 2 Extensions.kt\ntech/ulo/library/utils/ExtensionsKt\n*L\n1#1,76:1\n49#2:77\n*S KotlinDebug\n*F\n+ 1 NotificationConstructor.kt\ntech/ulo/library/utils/NotificationConstructor\n*L\n69#1:77\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0013R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Ltech/ulo/library/utils/NotificationConstructor;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "notificationManager",
        "Landroid/app/NotificationManager;",
        "getNotificationManager",
        "()Landroid/app/NotificationManager;",
        "notificationManager$delegate",
        "Lkotlin/Lazy;",
        "serviceNotificationDescription",
        "",
        "serviceNotificationTitle",
        "buildPersistentServiceNotification",
        "Landroid/app/Notification;",
        "createServiceNotificationChannel",
        "",
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
.field public static final Companion:Ltech/ulo/library/utils/NotificationConstructor$Companion;

.field public static final GROUP_KEY_USERLAND:Ljava/lang/String; = "tech.ulo.userland"

.field public static final serviceNotificationChannelId:Ljava/lang/String; = "UserLOst"

.field public static final serviceNotificationId:I = 0x3e8


# instance fields
.field private final context:Landroid/content/Context;

.field private final notificationManager$delegate:Lkotlin/Lazy;

.field private final serviceNotificationDescription:Ljava/lang/String;

.field private final serviceNotificationTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltech/ulo/library/utils/NotificationConstructor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/ulo/library/utils/NotificationConstructor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/ulo/library/utils/NotificationConstructor;->Companion:Ltech/ulo/library/utils/NotificationConstructor$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/utils/NotificationConstructor;->context:Landroid/content/Context;

    .line 24
    sget v0, Ltech/ulo/customlibrary/R$string;->app_name:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ltech/ulo/library/utils/NotificationConstructor;->serviceNotificationTitle:Ljava/lang/String;

    .line 25
    sget v0, Ltech/ulo/library/R$string;->service_notification_description:I

    sget v2, Ltech/ulo/customlibrary/R$string;->app_name:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/ulo/library/utils/NotificationConstructor;->serviceNotificationDescription:Ljava/lang/String;

    .line 27
    new-instance p1, Ltech/ulo/library/utils/NotificationConstructor$notificationManager$2;

    invoke-direct {p1, p0}, Ltech/ulo/library/utils/NotificationConstructor$notificationManager$2;-><init>(Ltech/ulo/library/utils/NotificationConstructor;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Ltech/ulo/library/utils/NotificationConstructor;->notificationManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getNotificationManager()Landroid/app/NotificationManager;
    .locals 1

    .line 27
    iget-object v0, p0, Ltech/ulo/library/utils/NotificationConstructor;->notificationManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method


# virtual methods
.method public final buildPersistentServiceNotification()Landroid/app/Notification;
    .locals 7

    .line 44
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ltech/ulo/library/utils/NotificationConstructor;->context:Landroid/content/Context;

    const-class v2, Ltech/ulo/library/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    const-string v1, "sessionList"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    iget-object v1, p0, Ltech/ulo/library/utils/NotificationConstructor;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x2000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 49
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Ltech/ulo/library/utils/NotificationConstructor;->context:Landroid/content/Context;

    const-class v5, Ltech/ulo/library/ServerService;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "type"

    const-string v5, "stopAll"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v4, "putExtra(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v4, p0, Ltech/ulo/library/utils/NotificationConstructor;->context:Landroid/content/Context;

    const/high16 v5, 0xa000000

    invoke-static {v4, v2, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 53
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Ltech/ulo/library/utils/NotificationConstructor;->context:Landroid/content/Context;

    const-class v6, Ltech/ulo/library/MainActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    const-string v5, "settings"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    iget-object v5, p0, Ltech/ulo/library/utils/NotificationConstructor;->context:Landroid/content/Context;

    invoke-static {v5, v2, v4, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 58
    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v5, p0, Ltech/ulo/library/utils/NotificationConstructor;->context:Landroid/content/Context;

    const-string v6, "UserLOst"

    invoke-direct {v4, v5, v6}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    sget v5, Ltech/ulo/library/R$drawable;->ic_stat_icon:I

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 60
    iget-object v5, p0, Ltech/ulo/library/utils/NotificationConstructor;->serviceNotificationTitle:Ljava/lang/String;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 61
    iget-object v5, p0, Ltech/ulo/library/utils/NotificationConstructor;->serviceNotificationDescription:Ljava/lang/String;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    const/4 v5, 0x2

    .line 62
    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 63
    const-string v5, "tech.ulo.userland"

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 64
    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 65
    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 66
    invoke-virtual {v4, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 67
    iget-object v4, p0, Ltech/ulo/library/utils/NotificationConstructor;->context:Landroid/content/Context;

    sget v5, Ltech/ulo/library/R$string;->notif_action_stop_sessions:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "addAction(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Ltech/ulo/library/utils/NotificationConstructor;->context:Landroid/content/Context;

    .line 77
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_preferences"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "getSharedPreferences(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    const-string v4, "pref_hide_settings"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    iget-object v1, p0, Ltech/ulo/library/utils/NotificationConstructor;->context:Landroid/content/Context;

    sget v4, Ltech/ulo/library/R$string;->settings:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 73
    :cond_0
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final createServiceNotificationChannel()V
    .locals 5

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 33
    iget-object v0, p0, Ltech/ulo/library/utils/NotificationConstructor;->context:Landroid/content/Context;

    sget v1, Ltech/ulo/library/R$string;->services_notification_channel_name:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v2, p0, Ltech/ulo/library/utils/NotificationConstructor;->context:Landroid/content/Context;

    sget v3, Ltech/ulo/library/R$string;->services_notification_channel_description:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v3, "UserLOst"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v4, 0x2

    invoke-direct {v1, v3, v0, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 38
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ltech/ulo/library/utils/NotificationConstructor;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 16
    iget-object v0, p0, Ltech/ulo/library/utils/NotificationConstructor;->context:Landroid/content/Context;

    return-object v0
.end method
