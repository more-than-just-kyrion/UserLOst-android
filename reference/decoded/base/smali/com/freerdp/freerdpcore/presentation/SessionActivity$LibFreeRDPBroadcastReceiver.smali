.class Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SessionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freerdp/freerdpcore/presentation/SessionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LibFreeRDPBroadcastReceiver"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1334
    const-class v0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    return-void
.end method

.method private constructor <init>(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)V
    .locals 0

    .line 1334
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freerdp/freerdpcore/presentation/SessionActivity;Lcom/freerdp/freerdpcore/presentation/SessionActivity$1;)V
    .locals 0

    .line 1334
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;-><init>(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)V

    return-void
.end method

.method private OnConnectionFailure(Landroid/content/Context;)V
    .locals 3

    .line 1397
    const-string p1, "FreeRDP.SessionActivity"

    const-string v0, "OnConnectionFailure"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1400(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->removeMessages(I)V

    .line 1402
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1600(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1404
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1600(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1405
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1, v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1602(Lcom/freerdp/freerdpcore/presentation/SessionActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1409
    :cond_0
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$100(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1410
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1400(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;

    move-result-object p1

    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    .line 1412
    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/freerdp/freerdpcore/R$string;->error_connection_failure:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x2

    .line 1411
    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1410
    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method private OnConnectionSuccess(Landroid/content/Context;)V
    .locals 2

    .line 1363
    const-string p1, "FreeRDP.SessionActivity"

    const-string v0, "OnConnectionSuccess"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1500(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)V

    .line 1368
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1600(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1370
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1600(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1371
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1602(Lcom/freerdp/freerdpcore/presentation/SessionActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1374
    :cond_0
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1100(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/application/SessionState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/application/SessionState;->getBookmark()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 1381
    :cond_1
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1382
    const-string v0, "conRef"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1385
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1384
    invoke-static {p1}, Lcom/freerdp/freerdpcore/domain/ConnectionReference;->isHostnameReference(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1388
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1100(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/application/SessionState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/application/SessionState;->getBookmark()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->get()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object p1

    check-cast p1, Lcom/freerdp/freerdpcore/domain/ManualBookmark;

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->getHostname()Ljava/lang/String;

    move-result-object p1

    .line 1389
    invoke-static {}, Lcom/freerdp/freerdpcore/application/GlobalApp;->getQuickConnectHistoryGateway()Lcom/freerdp/freerdpcore/services/QuickConnectHistoryGateway;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freerdp/freerdpcore/services/QuickConnectHistoryGateway;->historyItemExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1390
    invoke-static {}, Lcom/freerdp/freerdpcore/application/GlobalApp;->getQuickConnectHistoryGateway()Lcom/freerdp/freerdpcore/services/QuickConnectHistoryGateway;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freerdp/freerdpcore/services/QuickConnectHistoryGateway;->addHistoryItem(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private OnDisconnected(Landroid/content/Context;)V
    .locals 1

    .line 1419
    const-string p1, "FreeRDP.SessionActivity"

    const-string v0, "OnDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1400(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->removeMessages(I)V

    .line 1424
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1600(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1426
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1600(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1427
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1, v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1602(Lcom/freerdp/freerdpcore/presentation/SessionActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1430
    :cond_0
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1100(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/application/SessionState;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/application/SessionState;->setUIEventListener(Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1339
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1100(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/application/SessionState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1343
    :cond_0
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1100(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/application/SessionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EVENT_PARAM"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    return-void

    .line 1346
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "EVENT_TYPE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    goto :goto_0

    .line 1356
    :cond_2
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;->OnDisconnected(Landroid/content/Context;)V

    goto :goto_0

    .line 1353
    :cond_3
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;->OnConnectionFailure(Landroid/content/Context;)V

    goto :goto_0

    .line 1349
    :cond_4
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;->OnConnectionSuccess(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
