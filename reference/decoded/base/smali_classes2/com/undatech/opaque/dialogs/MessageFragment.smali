.class public Lcom/undatech/opaque/dialogs/MessageFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "MessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/undatech/opaque/dialogs/MessageFragment$OnFragmentDismissedListener;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "MessageFragment"


# instance fields
.field private dismissalListener:Lcom/undatech/opaque/dialogs/MessageFragment$OnFragmentDismissedListener;

.field private message:Landroid/widget/TextView;

.field private messageText:Ljava/lang/String;

.field private okButton:Landroid/widget/Button;

.field private okButtonText:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/undatech/opaque/dialogs/MessageFragment$OnFragmentDismissedListener;)Lcom/undatech/opaque/dialogs/MessageFragment;
    .locals 2

    .line 79
    sget-object v0, Lcom/undatech/opaque/dialogs/MessageFragment;->TAG:Ljava/lang/String;

    const-string v1, "newInstance called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v0, Lcom/undatech/opaque/dialogs/MessageFragment;

    invoke-direct {v0}, Lcom/undatech/opaque/dialogs/MessageFragment;-><init>()V

    .line 81
    invoke-virtual {v0, p3}, Lcom/undatech/opaque/dialogs/MessageFragment;->setOnFragmentDismissedListener(Lcom/undatech/opaque/dialogs/MessageFragment$OnFragmentDismissedListener;)V

    .line 83
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 84
    const-string v1, "title"

    invoke-virtual {p3, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string p0, "messageText"

    invoke-virtual {p3, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string p0, "okButtonText"

    invoke-virtual {p3, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, p3}, Lcom/undatech/opaque/dialogs/MessageFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p0, 0x1

    .line 88
    invoke-virtual {v0, p0}, Lcom/undatech/opaque/dialogs/MessageFragment;->setRetainInstance(Z)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 70
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 94
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    sget-object p1, Lcom/undatech/opaque/dialogs/MessageFragment;->TAG:Ljava/lang/String;

    const-string v0, "onCreate called"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/undatech/opaque/dialogs/MessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/dialogs/MessageFragment;->title:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lcom/undatech/opaque/dialogs/MessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "messageText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/dialogs/MessageFragment;->messageText:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/undatech/opaque/dialogs/MessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "okButtonText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/dialogs/MessageFragment;->okButtonText:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 103
    sget-object p3, Lcom/undatech/opaque/dialogs/MessageFragment;->TAG:Ljava/lang/String;

    const-string v0, "onCreateView called"

    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/undatech/opaque/dialogs/MessageFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    iget-object v0, p0, Lcom/undatech/opaque/dialogs/MessageFragment;->title:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    sget p3, Lcom/undatech/remoteClientUi/R$layout;->message:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 109
    sget p2, Lcom/undatech/remoteClientUi/R$id;->message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/undatech/opaque/dialogs/MessageFragment;->message:Landroid/widget/TextView;

    .line 110
    iget-object p2, p0, Lcom/undatech/opaque/dialogs/MessageFragment;->messageText:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    .line 111
    iget-object p3, p0, Lcom/undatech/opaque/dialogs/MessageFragment;->message:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object p2, p0, Lcom/undatech/opaque/dialogs/MessageFragment;->message:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 114
    sget p2, Lcom/undatech/remoteClientUi/R$id;->okButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/undatech/opaque/dialogs/MessageFragment;->okButton:Landroid/widget/Button;

    .line 115
    iget-object p3, p0, Lcom/undatech/opaque/dialogs/MessageFragment;->okButtonText:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object p2, p0, Lcom/undatech/opaque/dialogs/MessageFragment;->okButton:Landroid/widget/Button;

    new-instance p3, Lcom/undatech/opaque/dialogs/MessageFragment$1;

    invoke-direct {p3, p0}, Lcom/undatech/opaque/dialogs/MessageFragment$1;-><init>(Lcom/undatech/opaque/dialogs/MessageFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/undatech/opaque/dialogs/MessageFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/undatech/opaque/dialogs/MessageFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/undatech/opaque/dialogs/MessageFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 137
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 127
    sget-object p1, Lcom/undatech/opaque/dialogs/MessageFragment;->TAG:Ljava/lang/String;

    const-string v0, "dismiss: sending back data to listener"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p1, p0, Lcom/undatech/opaque/dialogs/MessageFragment;->dismissalListener:Lcom/undatech/opaque/dialogs/MessageFragment$OnFragmentDismissedListener;

    if-eqz p1, :cond_0

    .line 129
    invoke-interface {p1}, Lcom/undatech/opaque/dialogs/MessageFragment$OnFragmentDismissedListener;->onDialogDismissed()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 57
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 58
    invoke-virtual {p0}, Lcom/undatech/opaque/dialogs/MessageFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x102000b

    .line 59
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    return-void
.end method

.method public setOnFragmentDismissedListener(Lcom/undatech/opaque/dialogs/MessageFragment$OnFragmentDismissedListener;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/undatech/opaque/dialogs/MessageFragment;->dismissalListener:Lcom/undatech/opaque/dialogs/MessageFragment$OnFragmentDismissedListener;

    return-void
.end method
