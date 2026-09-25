.class public Lcom/freerdp/freerdpcore/application/GlobalApp;
.super Landroid/app/Application;
.source "GlobalApp.java"

# interfaces
.implements Lcom/freerdp/freerdpcore/services/LibFreeRDP$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freerdp/freerdpcore/application/GlobalApp$DisconnectTask;
    }
.end annotation


# static fields
.field public static final ACTION_EVENT_FREERDP:Ljava/lang/String; = "com.freerdp.freerdp.event.freerdp"

.field public static ConnectedTo3G:Z = false

.field public static final EVENT_ERROR:Ljava/lang/String; = "EVENT_ERROR"

.field public static final EVENT_PARAM:Ljava/lang/String; = "EVENT_PARAM"

.field public static final EVENT_STATUS:Ljava/lang/String; = "EVENT_STATUS"

.field public static final EVENT_TYPE:Ljava/lang/String; = "EVENT_TYPE"

.field public static final FREERDP_EVENT_CONNECTION_FAILURE:I = 0x2

.field public static final FREERDP_EVENT_CONNECTION_SUCCESS:I = 0x1

.field public static final FREERDP_EVENT_DISCONNECTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GlobalApp"

.field private static bookmarkDB:Lcom/freerdp/freerdpcore/services/BookmarkDB;

.field private static disconnectTimer:Ljava/util/Timer;

.field private static historyDB:Lcom/freerdp/freerdpcore/services/HistoryDB;

.field private static manualBookmarkGateway:Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;

.field private static quickConnectHistoryGateway:Lcom/freerdp/freerdpcore/services/QuickConnectHistoryGateway;

.field private static sessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/freerdp/freerdpcore/application/SessionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static cancelDisconnectTimer()V
    .locals 1

    .line 84
    sget-object v0, Lcom/freerdp/freerdpcore/application/GlobalApp;->disconnectTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 87
    sget-object v0, Lcom/freerdp/freerdpcore/application/GlobalApp;->disconnectTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    .line 88
    sput-object v0, Lcom/freerdp/freerdpcore/application/GlobalApp;->disconnectTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public static createSession(Landroid/net/Uri;Landroid/content/Context;)Lcom/freerdp/freerdpcore/application/SessionState;
    .locals 3

    .line 102
    new-instance v0, Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->newInstance(Landroid/content/Context;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p0}, Lcom/freerdp/freerdpcore/application/SessionState;-><init>(JLandroid/net/Uri;)V

    .line 103
    sget-object p0, Lcom/freerdp/freerdpcore/application/GlobalApp;->sessionMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static createSession(Lcom/freerdp/freerdpcore/domain/BookmarkBase;Landroid/content/Context;)Lcom/freerdp/freerdpcore/application/SessionState;
    .locals 3

    .line 95
    new-instance v0, Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->newInstance(Landroid/content/Context;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p0}, Lcom/freerdp/freerdpcore/application/SessionState;-><init>(JLcom/freerdp/freerdpcore/domain/BookmarkBase;)V

    .line 96
    sget-object p0, Lcom/freerdp/freerdpcore/application/GlobalApp;->sessionMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static freeSession(J)V
    .locals 2

    .line 120
    sget-object v0, Lcom/freerdp/freerdpcore/application/GlobalApp;->sessionMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/freerdp/freerdpcore/application/GlobalApp;->sessionMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-static {p0, p1}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->freeInstance(J)V

    :cond_0
    return-void
.end method

.method public static getManualBookmarkGateway()Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;
    .locals 1

    .line 61
    sget-object v0, Lcom/freerdp/freerdpcore/application/GlobalApp;->manualBookmarkGateway:Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;

    return-object v0
.end method

.method public static getQuickConnectHistoryGateway()Lcom/freerdp/freerdpcore/services/QuickConnectHistoryGateway;
    .locals 1

    .line 66
    sget-object v0, Lcom/freerdp/freerdpcore/application/GlobalApp;->quickConnectHistoryGateway:Lcom/freerdp/freerdpcore/services/QuickConnectHistoryGateway;

    return-object v0
.end method

.method public static getSession(J)Lcom/freerdp/freerdpcore/application/SessionState;
    .locals 1

    .line 109
    sget-object v0, Lcom/freerdp/freerdpcore/application/GlobalApp;->sessionMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/freerdp/freerdpcore/application/SessionState;

    return-object p0
.end method

.method public static getSessions()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/freerdp/freerdpcore/application/SessionState;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/freerdp/freerdpcore/application/GlobalApp;->sessionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private sendRDPNotification(IJ)V
    .locals 2

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.freerdp.freerdp.event.freerdp"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    const-string v1, "EVENT_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    const-string p1, "EVENT_PARAM"

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/application/GlobalApp;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public OnConnectionFailure(J)V
    .locals 2

    .line 179
    const-string v0, "GlobalApp"

    const-string v1, "OnConnectionFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 182
    invoke-direct {p0, v0, p1, p2}, Lcom/freerdp/freerdpcore/application/GlobalApp;->sendRDPNotification(IJ)V

    return-void
.end method

.method public OnConnectionSuccess(J)V
    .locals 2

    .line 173
    const-string v0, "GlobalApp"

    const-string v1, "OnConnectionSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 174
    invoke-direct {p0, v0, p1, p2}, Lcom/freerdp/freerdpcore/application/GlobalApp;->sendRDPNotification(IJ)V

    return-void
.end method

.method public OnDisconnected(J)V
    .locals 2

    .line 192
    const-string v0, "GlobalApp"

    const-string v1, "OnDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 193
    invoke-direct {p0, v0, p1, p2}, Lcom/freerdp/freerdpcore/application/GlobalApp;->sendRDPNotification(IJ)V

    return-void
.end method

.method public OnDisconnecting(J)V
    .locals 0

    .line 187
    const-string p1, "GlobalApp"

    const-string p2, "OnDisconnecting"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public OnPreConnect(J)V
    .locals 0

    .line 166
    const-string p1, "GlobalApp"

    const-string p2, "OnPreConnect"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 129
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 132
    invoke-static {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/freerdp/freerdpcore/application/GlobalApp;->sessionMap:Ljava/util/Map;

    .line 136
    invoke-static {p0}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->setEventListener(Lcom/freerdp/freerdpcore/services/LibFreeRDP$EventListener;)V

    .line 138
    new-instance v0, Lcom/freerdp/freerdpcore/services/BookmarkDB;

    invoke-direct {v0, p0}, Lcom/freerdp/freerdpcore/services/BookmarkDB;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/freerdp/freerdpcore/application/GlobalApp;->bookmarkDB:Lcom/freerdp/freerdpcore/services/BookmarkDB;

    .line 140
    new-instance v0, Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;

    sget-object v1, Lcom/freerdp/freerdpcore/application/GlobalApp;->bookmarkDB:Lcom/freerdp/freerdpcore/services/BookmarkDB;

    invoke-direct {v0, v1}, Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    sput-object v0, Lcom/freerdp/freerdpcore/application/GlobalApp;->manualBookmarkGateway:Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;

    .line 142
    new-instance v0, Lcom/freerdp/freerdpcore/services/HistoryDB;

    invoke-direct {v0, p0}, Lcom/freerdp/freerdpcore/services/HistoryDB;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/freerdp/freerdpcore/application/GlobalApp;->historyDB:Lcom/freerdp/freerdpcore/services/HistoryDB;

    .line 143
    new-instance v0, Lcom/freerdp/freerdpcore/services/QuickConnectHistoryGateway;

    sget-object v1, Lcom/freerdp/freerdpcore/application/GlobalApp;->historyDB:Lcom/freerdp/freerdpcore/services/HistoryDB;

    invoke-direct {v0, v1}, Lcom/freerdp/freerdpcore/services/QuickConnectHistoryGateway;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    sput-object v0, Lcom/freerdp/freerdpcore/application/GlobalApp;->quickConnectHistoryGateway:Lcom/freerdp/freerdpcore/services/QuickConnectHistoryGateway;

    .line 145
    invoke-static {p0}, Lcom/freerdp/freerdpcore/application/NetworkStateReceiver;->isConnectedTo3G(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/freerdp/freerdpcore/application/GlobalApp;->ConnectedTo3G:Z

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 150
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    new-instance v1, Lcom/freerdp/freerdpcore/application/ScreenReceiver;

    invoke-direct {v1}, Lcom/freerdp/freerdpcore/application/ScreenReceiver;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/freerdp/freerdpcore/application/GlobalApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public startDisconnectTimer()V
    .locals 5

    .line 72
    invoke-static {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->getDisconnectTimeout(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    .line 76
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    sput-object v1, Lcom/freerdp/freerdpcore/application/GlobalApp;->disconnectTimer:Ljava/util/Timer;

    .line 77
    new-instance v2, Lcom/freerdp/freerdpcore/application/GlobalApp$DisconnectTask;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/freerdp/freerdpcore/application/GlobalApp$DisconnectTask;-><init>(Lcom/freerdp/freerdpcore/application/GlobalApp$1;)V

    const v3, 0xea60

    mul-int/2addr v0, v3

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method
