.class public Lcom/undatech/opaque/OpaqueHandler;
.super Landroid/os/Handler;
.source "OpaqueHandler.java"


# static fields
.field private static TAG:Ljava/lang/String; = "OpaqueHandler"


# instance fields
.field private c:Lcom/iiordanov/bVNC/RemoteCanvas;

.field private context:Landroid/content/Context;

.field private fm:Landroidx/fragment/app/FragmentManager;

.field private settings:Lcom/undatech/opaque/Connection;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/undatech/opaque/OpaqueHandler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsettings(Lcom/undatech/opaque/OpaqueHandler;)Lcom/undatech/opaque/Connection;
    .locals 0

    iget-object p0, p0, Lcom/undatech/opaque/OpaqueHandler;->settings:Lcom/undatech/opaque/Connection;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/undatech/opaque/OpaqueHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iiordanov/bVNC/RemoteCanvas;Lcom/undatech/opaque/Connection;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    .line 42
    iput-object p3, p0, Lcom/undatech/opaque/OpaqueHandler;->settings:Lcom/undatech/opaque/Connection;

    .line 43
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->fm:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method private displayMessageAndFinish(III)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    .line 61
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    .line 62
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    .line 63
    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/undatech/opaque/OpaqueHandler$1;

    invoke-direct {v0, p0}, Lcom/undatech/opaque/OpaqueHandler$1;-><init>(Lcom/undatech/opaque/OpaqueHandler;)V

    .line 60
    invoke-static {p1, p2, p3, v0}, Lcom/undatech/opaque/dialogs/MessageFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/undatech/opaque/dialogs/MessageFragment$OnFragmentDismissedListener;)Lcom/undatech/opaque/dialogs/MessageFragment;

    move-result-object p1

    .line 70
    iget-object p2, p0, Lcom/undatech/opaque/OpaqueHandler;->fm:Landroidx/fragment/app/FragmentManager;

    const-string p3, "endingDialog"

    invoke-virtual {p1, p2, p3}, Lcom/undatech/opaque/dialogs/MessageFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->closeConnection()V

    return-void
.end method

.method public static getMessageString(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Message;
    .locals 1

    .line 354
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 355
    iput p0, v0, Landroid/os/Message;->what:I

    .line 356
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 357
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0, p0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static getMessageStringList(ILjava/lang/String;Ljava/util/ArrayList;)Landroid/os/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 370
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 371
    iput p0, v0, Landroid/os/Message;->what:I

    .line 372
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 373
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 374
    invoke-virtual {v0, p0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private showGetTextFragmentRemoteCanvas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iiordanov/bVNC/dialogs/GetTextFragment$OnFragmentDismissedListener;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 53
    :cond_0
    invoke-static/range {p2 .. p11}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/iiordanov/bVNC/dialogs/GetTextFragment$OnFragmentDismissedListener;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

    move-result-object p2

    const/4 p3, 0x0

    .line 55
    invoke-virtual {p2, p3}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->setCancelable(Z)V

    .line 56
    iget-object p3, p0, Lcom/undatech/opaque/OpaqueHandler;->fm:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p2, p3, p1}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private validateX509Cert(Ljava/security/cert/X509Certificate;)V
    .locals 12

    .line 287
    const-string v0, ""

    .line 289
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 300
    :try_start_1
    const-string v2, "MD5"

    invoke-static {v2, v1}, Lcom/undatech/opaque/util/SslUtils;->signature(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    .line 301
    :try_start_2
    const-string v3, "SHA-1"

    invoke-static {v3, v1}, Lcom/undatech/opaque/util/SslUtils;->signature(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    .line 302
    :try_start_3
    const-string v4, "SHA-256"

    invoke-static {v4, v1}, Lcom/undatech/opaque/util/SslUtils;->signature(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v3, v0

    goto :goto_0

    :catch_2
    move-exception v4

    move-object v2, v0

    move-object v3, v2

    .line 305
    :goto_0
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_1
    move-object v7, v0

    move-object v5, v2

    move-object v6, v3

    .line 309
    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    sget v2, Lcom/undatech/remoteClientUi/R$string;->info_cert:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v8

    .line 311
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v9

    .line 312
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v10

    .line 313
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v11

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object p1

    .line 309
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 317
    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    sget v2, Lcom/undatech/remoteClientUi/R$string;->ca_new_or_changed:I

    .line 318
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/undatech/opaque/OpaqueHandler$3;

    invoke-direct {v2, p0, v1}, Lcom/undatech/opaque/OpaqueHandler$3;-><init>(Lcom/undatech/opaque/OpaqueHandler;[B)V

    .line 317
    const-string v1, "Accept"

    const-string v3, "Reject"

    invoke-static {v0, p1, v1, v3, v2}, Lcom/undatech/opaque/dialogs/ChoiceFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/undatech/opaque/dialogs/ChoiceFragment$OnFragmentDismissedListener;)Lcom/undatech/opaque/dialogs/ChoiceFragment;

    move-result-object p1

    .line 340
    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 341
    invoke-virtual {p1, v1}, Lcom/undatech/opaque/dialogs/ChoiceFragment;->setCancelable(Z)V

    .line 342
    const-string v1, "certDialog"

    invoke-virtual {p1, v0, v1}, Lcom/undatech/opaque/dialogs/ChoiceFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :catch_3
    move-exception p1

    .line 291
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 76
    sget-object v0, Lcom/undatech/opaque/OpaqueHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 78
    sget-object p1, Lcom/undatech/opaque/OpaqueHandler;->TAG:Ljava/lang/String;

    const-string v0, "Ignoring message with ID 0"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 81
    :cond_0
    const-string v0, "message"

    invoke-static {p1, v0}, Lcom/iiordanov/bVNC/Utils;->getStringFromMessage(Landroid/os/Message;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_d

    const/16 v3, 0xa

    if-eq v1, v3, :cond_c

    const/16 v3, 0x15

    if-eq v1, v3, :cond_b

    const/16 v3, 0x2c

    const/4 v4, 0x0

    if-eq v1, v3, :cond_a

    const/16 v3, 0x2f

    if-eq v1, v3, :cond_9

    const/4 v0, 0x4

    if-eq v1, v0, :cond_8

    const/4 v0, 0x5

    if-eq v1, v0, :cond_6

    const/16 v0, 0x10

    if-eq v1, v0, :cond_5

    const/16 v0, 0x11

    if-eq v1, v0, :cond_4

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 271
    sget-object v0, Lcom/undatech/opaque/OpaqueHandler;->TAG:Ljava/lang/String;

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

    .line 160
    :pswitch_0
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 161
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->enter_otp_code:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DIALOG_ID_GET_OPAQUE_OTP_CODE"

    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->enter_otp_code:I

    .line 163
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    sget v7, Lcom/undatech/remoteClientUi/R$string;->enter_otp_code:I

    sget v8, Lcom/undatech/remoteClientUi/R$string;->enter_otp_code:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    .line 161
    invoke-direct/range {v1 .. v12}, Lcom/undatech/opaque/OpaqueHandler;->showGetTextFragmentRemoteCanvas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iiordanov/bVNC/dialogs/GetTextFragment$OnFragmentDismissedListener;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 115
    :pswitch_1
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->error_pve_null_data:I

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_dialog_title:I

    invoke-static {p1, v0, v1}, Lcom/undatech/opaque/MessageDialogs;->displayMessageAndFinish(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 111
    :pswitch_2
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->error_pve_timeout_communicating:I

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_dialog_title:I

    invoke-static {p1, v0, v1}, Lcom/undatech/opaque/MessageDialogs;->displayMessageAndFinish(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 107
    :pswitch_3
    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_pve_api_io_error:I

    sget v2, Lcom/undatech/remoteClientUi/R$string;->error_dialog_title:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "error"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {v0, v1, v2, p1}, Lcom/undatech/opaque/MessageDialogs;->displayMessageAndFinish(Landroid/content/Context;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 103
    :pswitch_4
    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_pve_api_unexpected_code:I

    sget v2, Lcom/undatech/remoteClientUi/R$string;->error_dialog_title:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "error"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-static {v0, v1, v2, p1}, Lcom/undatech/opaque/MessageDialogs;->displayMessageAndFinish(Landroid/content/Context;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 99
    :pswitch_5
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->error_pve_vmid_not_numeric:I

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_dialog_title:I

    invoke-static {p1, v0, v1}, Lcom/undatech/opaque/MessageDialogs;->displayMessageAndFinish(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 170
    :pswitch_6
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->retrievevvFileName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 171
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->error_pve_failed_to_authenticate:I

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_dialog_title:I

    invoke-static {p1, v0, v1}, Lcom/undatech/opaque/MessageDialogs;->displayMessageAndFinish(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 176
    :cond_1
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iput-boolean v4, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->maintainConnection:Z

    .line 177
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->enter_password_auth_failed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DIALOG_ID_GET_OPAQUE_CREDENTIALS"

    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->enter_password_auth_failed:I

    .line 179
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    sget v7, Lcom/undatech/remoteClientUi/R$string;->enter_password_auth_failed:I

    sget v8, Lcom/undatech/remoteClientUi/R$string;->enter_password_auth_failed:I

    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->settings:Lcom/undatech/opaque/Connection;

    .line 182
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getUserName()Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->settings:Lcom/undatech/opaque/Connection;

    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getPassword()Ljava/lang/String;

    move-result-object v10

    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->settings:Lcom/undatech/opaque/Connection;

    .line 183
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getKeepPassword()Z

    move-result v12

    const/4 v6, 0x4

    const/4 v11, 0x0

    move-object v1, p0

    .line 177
    invoke-direct/range {v1 .. v12}, Lcom/undatech/opaque/OpaqueHandler;->showGetTextFragmentRemoteCanvas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iiordanov/bVNC/dialogs/GetTextFragment$OnFragmentDismissedListener;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 89
    :pswitch_7
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->error_failed_to_download_vv_https:I

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_dialog_title:I

    invoke-static {p1, v0, v1}, Lcom/undatech/opaque/MessageDialogs;->displayMessageAndFinish(Landroid/content/Context;II)V

    .line 92
    :pswitch_8
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->error_vv_download_timeout:I

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_dialog_title:I

    invoke-static {p1, v0, v1}, Lcom/undatech/opaque/MessageDialogs;->displayMessageAndFinish(Landroid/content/Context;II)V

    .line 95
    :pswitch_9
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->error_pve_failed_to_parse_json:I

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_dialog_title:I

    invoke-static {p1, v0, v1}, Lcom/undatech/opaque/MessageDialogs;->displayMessageAndFinish(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 85
    :pswitch_a
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->error_failed_to_download_vv_http:I

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_dialog_title:I

    invoke-static {p1, v0, v1}, Lcom/undatech/opaque/MessageDialogs;->displayMessageAndFinish(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 235
    :pswitch_b
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 236
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->error_ovirt_timeout:I

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_dialog_title:I

    invoke-virtual {p1, v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->disconnectAndShowMessage(II)V

    goto/16 :goto_0

    .line 119
    :pswitch_c
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->vv_file_error:I

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_dialog_title:I

    invoke-virtual {p1, v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->disconnectAndShowMessage(II)V

    goto/16 :goto_0

    .line 122
    :pswitch_d
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->error_no_vm_found_for_user:I

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_dialog_title:I

    invoke-virtual {p1, v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->disconnectAndShowMessage(II)V

    goto/16 :goto_0

    .line 128
    :pswitch_e
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->error_vm_lookup_failed:I

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_dialog_title:I

    invoke-virtual {p1, v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->disconnectAndShowMessage(II)V

    goto/16 :goto_0

    .line 125
    :pswitch_f
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->error_ovirt_ssl_handshake_failure:I

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_dialog_title:I

    invoke-virtual {p1, v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->disconnectAndShowMessage(II)V

    goto/16 :goto_0

    .line 187
    :pswitch_10
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->retrievevvFileName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 188
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->error_ovirt_auth_failure:I

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_dialog_title:I

    invoke-virtual {p1, v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->disconnectAndShowMessage(II)V

    goto/16 :goto_0

    .line 192
    :cond_2
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iput-boolean v4, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->maintainConnection:Z

    .line 193
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->enter_password_auth_failed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DIALOG_ID_GET_OPAQUE_CREDENTIALS"

    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->enter_password_auth_failed:I

    .line 195
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    sget v7, Lcom/undatech/remoteClientUi/R$string;->enter_password_auth_failed:I

    sget v8, Lcom/undatech/remoteClientUi/R$string;->enter_password_auth_failed:I

    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->settings:Lcom/undatech/opaque/Connection;

    .line 198
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getUserName()Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->settings:Lcom/undatech/opaque/Connection;

    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getPassword()Ljava/lang/String;

    move-result-object v10

    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->settings:Lcom/undatech/opaque/Connection;

    .line 199
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getKeepPassword()Z

    move-result v12

    const/4 v6, 0x4

    const/4 v11, 0x0

    move-object v1, p0

    .line 193
    invoke-direct/range {v1 .. v12}, Lcom/undatech/opaque/OpaqueHandler;->showGetTextFragmentRemoteCanvas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iiordanov/bVNC/dialogs/GetTextFragment$OnFragmentDismissedListener;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 131
    :pswitch_11
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->info_vm_launched_on_stand_by:I

    sget v1, Lcom/undatech/remoteClientUi/R$string;->info_dialog_title:I

    invoke-virtual {p1, v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->disconnectAndShowMessage(II)V

    goto/16 :goto_0

    .line 134
    :pswitch_12
    sget-object v0, Lcom/undatech/opaque/OpaqueHandler;->TAG:Ljava/lang/String;

    const-string v1, "Trying to launch VNC viewer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    const-string v1, "com.iiordanov.bVNC"

    invoke-static {v0, v1}, Lcom/undatech/opaque/util/GooglePlayUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    const-string v1, "com.iiordanov.freebVNC"

    .line 137
    invoke-static {v0, v1}, Lcom/undatech/opaque/util/GooglePlayUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 138
    sget p1, Lcom/undatech/remoteClientUi/R$string;->info_dialog_title:I

    sget v0, Lcom/undatech/remoteClientUi/R$string;->message_please_install_bvnc:I

    sget v1, Lcom/undatech/remoteClientUi/R$string;->ok:I

    invoke-direct {p0, p1, v0, v1}, Lcom/undatech/opaque/OpaqueHandler;->displayMessageAndFinish(III)V

    return-void

    .line 142
    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "port"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "password"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "vnc://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?VncPassword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/vnd.vnc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 147
    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 148
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/undatech/opaque/MessageDialogs;->justFinish(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 243
    :cond_4
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->closeConnection()V

    .line 244
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/undatech/opaque/MessageDialogs;->justFinish(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 255
    :cond_5
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->reinitializeOpaque()V

    goto/16 :goto_0

    .line 223
    :cond_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 224
    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 226
    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-boolean v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->maintainConnection:Z

    if-eqz v0, :cond_e

    .line 227
    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-boolean v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->spiceUpdateReceived:Z

    if-nez v0, :cond_7

    .line 228
    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_ovirt_unable_to_connect:I

    sget v2, Lcom/undatech/remoteClientUi/R$string;->error_dialog_title:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->disconnectAndShowMessage(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 230
    :cond_7
    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_connection_interrupted:I

    sget v2, Lcom/undatech/remoteClientUi/R$string;->error_dialog_title:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->disconnectAndShowMessage(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 216
    :cond_8
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 217
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    monitor-enter p1

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iput-boolean v2, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->spiceUpdateReceived:Z

    .line 219
    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 220
    monitor-exit p1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 247
    :cond_9
    new-instance p1, Lcom/undatech/opaque/OpaqueHandler$2;

    invoke-direct {p1, p0, v0}, Lcom/undatech/opaque/OpaqueHandler$2;-><init>(Lcom/undatech/opaque/OpaqueHandler;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/OpaqueHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 203
    :cond_a
    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 204
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "vms"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 206
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 207
    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/undatech/opaque/OpaqueHandler;->fm:Landroidx/fragment/app/FragmentManager;

    .line 208
    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    sget v1, Lcom/undatech/remoteClientUi/R$string;->select_vm_title:I

    .line 209
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    check-cast v1, Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    .line 208
    invoke-static {v0, p1, v1}, Lcom/undatech/opaque/dialogs/SelectTextElementFragment;->newInstance(Ljava/lang/String;Ljava/util/ArrayList;Lcom/undatech/opaque/dialogs/SelectTextElementFragment$OnFragmentDismissedListener;)Lcom/undatech/opaque/dialogs/SelectTextElementFragment;

    move-result-object p1

    .line 211
    invoke-virtual {p1, v4}, Lcom/undatech/opaque/dialogs/SelectTextElementFragment;->setCancelable(Z)V

    .line 212
    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler;->fm:Landroidx/fragment/app/FragmentManager;

    const-string v1, "selectVm"

    invoke-virtual {p1, v0, v1}, Lcom/undatech/opaque/dialogs/SelectTextElementFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 258
    :cond_b
    sget-object v0, Lcom/undatech/opaque/OpaqueHandler;->TAG:Ljava/lang/String;

    const-string v1, "Handling message, REPORT_TOOLBAR_POSITION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler;->settings:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getUseLastPositionToolbar()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 260
    const-string v0, "useLastPositionToolbarX"

    invoke-static {p1, v0}, Lcom/iiordanov/bVNC/Utils;->getIntFromMessage(Landroid/os/Message;Ljava/lang/String;)I

    move-result v0

    .line 261
    const-string v1, "useLastPositionToolbarY"

    invoke-static {p1, v1}, Lcom/iiordanov/bVNC/Utils;->getIntFromMessage(Landroid/os/Message;Ljava/lang/String;)I

    move-result v1

    .line 262
    const-string v2, "useLastPositionToolbarMoved"

    invoke-static {p1, v2}, Lcom/iiordanov/bVNC/Utils;->getBooleanFromMessage(Landroid/os/Message;Ljava/lang/String;)Z

    move-result p1

    .line 263
    sget-object v2, Lcom/undatech/opaque/OpaqueHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Handling message, REPORT_TOOLBAR_POSITION, X Coordinate"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    sget-object v2, Lcom/undatech/opaque/OpaqueHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Handling message, REPORT_TOOLBAR_POSITION, Y Coordinate"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v2, p0, Lcom/undatech/opaque/OpaqueHandler;->settings:Lcom/undatech/opaque/Connection;

    invoke-interface {v2, v0}, Lcom/undatech/opaque/Connection;->setUseLastPositionToolbarX(I)V

    .line 266
    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler;->settings:Lcom/undatech/opaque/Connection;

    invoke-interface {v0, v1}, Lcom/undatech/opaque/Connection;->setUseLastPositionToolbarY(I)V

    .line 267
    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler;->settings:Lcom/undatech/opaque/Connection;

    invoke-interface {v0, p1}, Lcom/undatech/opaque/Connection;->setUseLastPositionToolbarMoved(Z)V

    goto :goto_0

    .line 151
    :cond_c
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->enter_password:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DIALOG_ID_GET_OPAQUE_PASSWORD"

    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->context:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->enter_password:I

    .line 153
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/undatech/opaque/OpaqueHandler;->c:Lcom/iiordanov/bVNC/RemoteCanvas;

    sget v7, Lcom/undatech/remoteClientUi/R$string;->enter_password:I

    sget v8, Lcom/undatech/remoteClientUi/R$string;->enter_password:I

    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->settings:Lcom/undatech/opaque/Connection;

    .line 156
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getPassword()Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler;->settings:Lcom/undatech/opaque/Connection;

    .line 157
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getKeepPassword()Z

    move-result v12

    const/4 v6, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    .line 151
    invoke-direct/range {v1 .. v12}, Lcom/undatech/opaque/OpaqueHandler;->showGetTextFragmentRemoteCanvas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iiordanov/bVNC/dialogs/GetTextFragment$OnFragmentDismissedListener;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 239
    :cond_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 240
    invoke-direct {p0, p1}, Lcom/undatech/opaque/OpaqueHandler;->validateX509Cert(Ljava/security/cert/X509Certificate;)V

    :cond_e
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x23
        :pswitch_9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method
