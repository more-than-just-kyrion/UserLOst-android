.class public Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;
.super Landroid/os/Handler;
.source "RemoteCanvasHandler.java"


# static fields
.field private static TAG:Ljava/lang/String; = "RemoteCanvasHandler"


# instance fields
.field private c:Lcom/iiordanov/bVNC/RemoteCanvas;

.field private context:Landroid/content/Context;

.field private fm:Landroidx/fragment/app/FragmentManager;

.field private settings:Lcom/undatech/opaque/Connection;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->context:Landroid/content/Context;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iiordanov/bVNC/RemoteCanvas;Lcom/undatech/opaque/Connection;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    .line 33
    iput-object p3, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->settings:Lcom/undatech/opaque/Connection;

    .line 34
    invoke-static {p1}, Lcom/iiordanov/bVNC/Utils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p2

    .line 35
    instance-of p2, p2, Landroidx/fragment/app/FragmentActivity;

    if-eqz p2, :cond_0

    .line 36
    invoke-static {p1}, Lcom/iiordanov/bVNC/Utils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->fm:Landroidx/fragment/app/FragmentManager;

    :cond_0
    return-void
.end method

.method private showGetTextFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iiordanov/bVNC/dialogs/GetTextFragment$OnFragmentDismissedListener;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 60
    :cond_0
    invoke-static/range {p2 .. p11}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/iiordanov/bVNC/dialogs/GetTextFragment$OnFragmentDismissedListener;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

    move-result-object p2

    const/4 p3, 0x0

    .line 62
    invoke-virtual {p2, p3}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->setCancelable(Z)V

    .line 63
    iget-object p3, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->fm:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p2, p3, p1}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getConnection()Lcom/undatech/opaque/Connection;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->settings:Lcom/undatech/opaque/Connection;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 69
    sget-object v0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Handling message, msg.what: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v0, "message"

    invoke-static {p1, v0}, Lcom/iiordanov/bVNC/Utils;->getStringFromMessage(Landroid/os/Message;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    const/4 v3, 0x2

    if-eq v1, v3, :cond_b

    const/4 v3, 0x3

    if-eq v1, v3, :cond_a

    const/4 v3, 0x4

    if-eq v1, v3, :cond_9

    const/4 v3, 0x5

    if-eq v1, v3, :cond_6

    const/4 v3, 0x7

    if-eq v1, v3, :cond_5

    const/16 v3, 0x8

    if-eq v1, v3, :cond_4

    const/16 v3, 0x9

    if-eq v1, v3, :cond_3

    const/16 v3, 0x2b

    if-eq v1, v3, :cond_2

    const/16 v2, 0x63

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 228
    sget-object v0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not handling unknown messageId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 154
    :pswitch_0
    new-instance p1, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler$1;

    invoke-direct {p1, p0, v0}, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler$1;-><init>(Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 162
    :pswitch_1
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-boolean p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->maintainConnection:Z

    if-eqz p1, :cond_d

    .line 163
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->showFatalMessageAndQuit(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 189
    :pswitch_2
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->context:Landroid/content/Context;

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_ovirt_ssl_handshake_failure:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->showFatalMessageAndQuit(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 215
    :pswitch_3
    sget-object v0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->TAG:Ljava/lang/String;

    const-string v1, "Handling message, REPORT_TOOLBAR_POSITION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->settings:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getUseLastPositionToolbar()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 217
    const-string v0, "useLastPositionToolbarX"

    invoke-static {p1, v0}, Lcom/iiordanov/bVNC/Utils;->getIntFromMessage(Landroid/os/Message;Ljava/lang/String;)I

    move-result v0

    .line 218
    const-string v1, "useLastPositionToolbarY"

    invoke-static {p1, v1}, Lcom/iiordanov/bVNC/Utils;->getIntFromMessage(Landroid/os/Message;Ljava/lang/String;)I

    move-result v1

    .line 219
    const-string v2, "useLastPositionToolbarMoved"

    invoke-static {p1, v2}, Lcom/iiordanov/bVNC/Utils;->getBooleanFromMessage(Landroid/os/Message;Ljava/lang/String;)Z

    move-result p1

    .line 220
    sget-object v2, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Handling message, REPORT_TOOLBAR_POSITION, X Coordinate"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget-object v2, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Handling message, REPORT_TOOLBAR_POSITION, Y Coordinate"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v2, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->settings:Lcom/undatech/opaque/Connection;

    invoke-interface {v2, v0}, Lcom/undatech/opaque/Connection;->setUseLastPositionToolbarX(I)V

    .line 223
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->settings:Lcom/undatech/opaque/Connection;

    invoke-interface {v0, v1}, Lcom/undatech/opaque/Connection;->setUseLastPositionToolbarY(I)V

    .line 224
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->settings:Lcom/undatech/opaque/Connection;

    invoke-interface {v0, p1}, Lcom/undatech/opaque/Connection;->setUseLastPositionToolbarMoved(Z)V

    goto/16 :goto_0

    .line 130
    :pswitch_4
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->enter_spice_password:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->enter_spice_password:I

    .line 132
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    sget v7, Lcom/undatech/remoteClientUi/R$string;->enter_spice_password:I

    sget v8, Lcom/undatech/remoteClientUi/R$string;->enter_spice_password:I

    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->settings:Lcom/undatech/opaque/Connection;

    .line 135
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getPassword()Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->settings:Lcom/undatech/opaque/Connection;

    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getKeepPassword()Z

    move-result v12

    .line 130
    const-string v3, "DIALOG_ID_GET_SPICE_PASSWORD"

    const/4 v6, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->showGetTextFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iiordanov/bVNC/dialogs/GetTextFragment$OnFragmentDismissedListener;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 121
    :pswitch_5
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->enter_rdp_credentials:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->enter_rdp_credentials:I

    .line 123
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    sget v7, Lcom/undatech/remoteClientUi/R$string;->enter_rdp_credentials:I

    sget v8, Lcom/undatech/remoteClientUi/R$string;->enter_rdp_credentials:I

    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->settings:Lcom/undatech/opaque/Connection;

    .line 126
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getUserName()Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->settings:Lcom/undatech/opaque/Connection;

    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getRdpDomain()Ljava/lang/String;

    move-result-object v10

    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->settings:Lcom/undatech/opaque/Connection;

    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getPassword()Ljava/lang/String;

    move-result-object v11

    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->settings:Lcom/undatech/opaque/Connection;

    .line 127
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getKeepPassword()Z

    move-result v12

    .line 121
    const-string v3, "DIALOG_ID_GET_RDP_CREDENTIALS"

    const/4 v6, 0x5

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->showGetTextFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iiordanov/bVNC/dialogs/GetTextFragment$OnFragmentDismissedListener;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 151
    :pswitch_6
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->showFatalMessageAndQuit(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    :pswitch_7
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->closeConnection()V

    .line 168
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/undatech/opaque/MessageDialogs;->justFinish(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 212
    :pswitch_8
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->reinitializeCanvas()V

    goto/16 :goto_0

    .line 104
    :pswitch_9
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->enter_vnc_password:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->enter_vnc_password:I

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    sget v7, Lcom/undatech/remoteClientUi/R$string;->enter_vnc_password:I

    sget v8, Lcom/undatech/remoteClientUi/R$string;->enter_vnc_password:I

    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->settings:Lcom/undatech/opaque/Connection;

    .line 109
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getPassword()Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->settings:Lcom/undatech/opaque/Connection;

    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getKeepPassword()Z

    move-result v12

    .line 104
    const-string v3, "DIALOG_ID_GET_VNC_PASSWORD"

    const/4 v6, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->showGetTextFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iiordanov/bVNC/dialogs/GetTextFragment$OnFragmentDismissedListener;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 112
    :pswitch_a
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->enter_vnc_credentials:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->enter_vnc_credentials:I

    .line 114
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    sget v7, Lcom/undatech/remoteClientUi/R$string;->enter_vnc_credentials:I

    sget v8, Lcom/undatech/remoteClientUi/R$string;->enter_vnc_credentials:I

    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->settings:Lcom/undatech/opaque/Connection;

    .line 117
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getUserName()Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->settings:Lcom/undatech/opaque/Connection;

    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getPassword()Ljava/lang/String;

    move-result-object v10

    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->settings:Lcom/undatech/opaque/Connection;

    .line 118
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getKeepPassword()Z

    move-result v12

    .line 112
    const-string v3, "DIALOG_ID_GET_VNC_CREDENTIALS"

    const/4 v6, 0x4

    const/4 v11, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->showGetTextFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iiordanov/bVNC/dialogs/GetTextFragment$OnFragmentDismissedListener;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 96
    :pswitch_b
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->ssh_passphrase_hint:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->enter_passphrase_title:I

    .line 98
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v5, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->sshConnection:Lcom/iiordanov/bVNC/SSHConnection;

    sget v7, Lcom/undatech/remoteClientUi/R$string;->enter_passphrase:I

    sget v8, Lcom/undatech/remoteClientUi/R$string;->ssh_passphrase_hint:I

    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->settings:Lcom/undatech/opaque/Connection;

    .line 101
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getKeepSshPassword()Z

    move-result v12

    .line 96
    const-string v3, "DIALOG_ID_GET_SSH_PASSPHRASE"

    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->showGetTextFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iiordanov/bVNC/dialogs/GetTextFragment$OnFragmentDismissedListener;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 87
    :pswitch_c
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->enter_ssh_credentials:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->enter_ssh_credentials:I

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v5, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->sshConnection:Lcom/iiordanov/bVNC/SSHConnection;

    sget v7, Lcom/undatech/remoteClientUi/R$string;->enter_ssh_credentials:I

    sget v8, Lcom/undatech/remoteClientUi/R$string;->enter_ssh_credentials:I

    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->settings:Lcom/undatech/opaque/Connection;

    .line 92
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getSshUser()Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->settings:Lcom/undatech/opaque/Connection;

    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getSshPassword()Ljava/lang/String;

    move-result-object v10

    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->settings:Lcom/undatech/opaque/Connection;

    .line 93
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getKeepSshPassword()Z

    move-result v12

    .line 87
    const-string v3, "DIALOG_ID_GET_SSH_CREDENTIALS"

    const/4 v6, 0x6

    const/4 v11, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->showGetTextFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iiordanov/bVNC/dialogs/GetTextFragment$OnFragmentDismissedListener;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 79
    :pswitch_d
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->verification_code:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->verification_code:I

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v5, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->sshConnection:Lcom/iiordanov/bVNC/SSHConnection;

    sget v7, Lcom/undatech/remoteClientUi/R$string;->verification_code_message:I

    sget v8, Lcom/undatech/remoteClientUi/R$string;->verification_code:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 79
    const-string v3, "DIALOG_ID_GET_VERIFICATIONCODE"

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->showGetTextFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iiordanov/bVNC/dialogs/GetTextFragment$OnFragmentDismissedListener;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 74
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->context:Landroid/content/Context;

    sget v1, Lcom/undatech/remoteClientUi/R$string;->pro_feature_mfa:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->showFatalMessageAndQuit(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 207
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 208
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iput-boolean v2, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->serverJustCutText:Z

    .line 209
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    const-string v1, "text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->setClipboardText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    :cond_3
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-boolean p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->maintainConnection:Z

    if-eqz p1, :cond_d

    .line 203
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->context:Landroid/content/Context;

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_rdp_authentication_failed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->showFatalMessageAndQuit(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    :cond_4
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-boolean p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->maintainConnection:Z

    if-eqz p1, :cond_d

    .line 198
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->context:Landroid/content/Context;

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_rdp_unable_to_connect:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->showFatalMessageAndQuit(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 192
    :cond_5
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-boolean p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->maintainConnection:Z

    if-eqz p1, :cond_d

    .line 193
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->context:Landroid/content/Context;

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_rdp_connection_failed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->showFatalMessageAndQuit(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    :cond_6
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-boolean p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->maintainConnection:Z

    if-eqz p1, :cond_d

    .line 177
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->maintainConnection:Z

    .line 178
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 179
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 181
    :cond_7
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-boolean p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->spiceUpdateReceived:Z

    if-nez p1, :cond_8

    .line 182
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->context:Landroid/content/Context;

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_spice_unable_to_connect:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->showFatalMessageAndQuit(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_8
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->context:Landroid/content/Context;

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_connection_interrupted:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->showFatalMessageAndQuit(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_9
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 172
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 146
    :cond_a
    sget-object v0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->TAG:Ljava/lang/String;

    const-string v1, "DIALOG_RDP_CERT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 148
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    const-string v1, "subject"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "issuer"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fingerprint"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->validateRdpCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_b
    sget-object p1, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->TAG:Ljava/lang/String;

    const-string v0, "DIALOG_SSH_CERT"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->initializeSshHostKey()V

    goto :goto_0

    .line 138
    :cond_c
    sget-object v0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->TAG:Ljava/lang/String;

    const-string v1, "DIALOG_X509_CERT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->validateX509Cert(Ljava/security/cert/X509Certificate;)V

    :cond_d
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setConnection(Lcom/undatech/opaque/Connection;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->settings:Lcom/undatech/opaque/Connection;

    return-void
.end method
