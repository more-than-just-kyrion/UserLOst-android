.class public Lcom/iiordanov/bVNC/dialogs/RepeaterDialog;
.super Landroid/app/Dialog;
.source "RepeaterDialog.java"


# instance fields
.field _configurationDialog:Lcom/iiordanov/bVNC/bVNC;

.field private _repeaterId:Landroid/widget/EditText;


# direct methods
.method static bridge synthetic -$$Nest$fget_repeaterId(Lcom/iiordanov/bVNC/dialogs/RepeaterDialog;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/bVNC/dialogs/RepeaterDialog;->_repeaterId:Landroid/widget/EditText;

    return-object p0
.end method

.method public constructor <init>(Lcom/iiordanov/bVNC/bVNC;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/RepeaterDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 45
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/RepeaterDialog;->_configurationDialog:Lcom/iiordanov/bVNC/bVNC;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 53
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget p1, Lcom/undatech/remoteClientUi/R$string;->repeater_dialog_title:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/RepeaterDialog;->setTitle(I)V

    .line 56
    sget p1, Lcom/undatech/remoteClientUi/R$layout;->repeater_dialog:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/RepeaterDialog;->setContentView(I)V

    .line 57
    sget p1, Lcom/undatech/remoteClientUi/R$id;->textRepeaterInfo:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/RepeaterDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/RepeaterDialog;->_repeaterId:Landroid/widget/EditText;

    .line 58
    sget p1, Lcom/undatech/remoteClientUi/R$id;->textRepeaterCaption:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/RepeaterDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/RepeaterDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$string;->repeater_caption:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    sget p1, Lcom/undatech/remoteClientUi/R$id;->buttonSaveRepeater:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/RepeaterDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/iiordanov/bVNC/dialogs/RepeaterDialog$1;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/RepeaterDialog$1;-><init>(Lcom/iiordanov/bVNC/dialogs/RepeaterDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    sget p1, Lcom/undatech/remoteClientUi/R$id;->buttonClearRepeater:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/RepeaterDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/iiordanov/bVNC/dialogs/RepeaterDialog$2;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/RepeaterDialog$2;-><init>(Lcom/iiordanov/bVNC/dialogs/RepeaterDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
