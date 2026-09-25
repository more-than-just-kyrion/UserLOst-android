.class public Lcom/undatech/opaque/dialogs/ChoiceFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "ChoiceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/undatech/opaque/dialogs/ChoiceFragment$OnFragmentDismissedListener;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "ChoiceFragment"


# instance fields
.field private dismissalListener:Lcom/undatech/opaque/dialogs/ChoiceFragment$OnFragmentDismissedListener;

.field private message:Landroid/widget/TextView;

.field private messageText:Ljava/lang/String;

.field private negativeButtonText:Ljava/lang/String;

.field private noButton:Landroid/widget/Button;

.field private positiveButtonText:Ljava/lang/String;

.field private result:Z

.field private title:Ljava/lang/String;

.field private yesButton:Landroid/widget/Button;


# direct methods
.method static bridge synthetic -$$Nest$fputresult(Lcom/undatech/opaque/dialogs/ChoiceFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/undatech/opaque/dialogs/ChoiceFragment;->result:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/undatech/opaque/dialogs/ChoiceFragment$OnFragmentDismissedListener;)Lcom/undatech/opaque/dialogs/ChoiceFragment;
    .locals 2

    .line 72
    sget-object v0, Lcom/undatech/opaque/dialogs/ChoiceFragment;->TAG:Ljava/lang/String;

    const-string v1, "newInstance called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v0, Lcom/undatech/opaque/dialogs/ChoiceFragment;

    invoke-direct {v0}, Lcom/undatech/opaque/dialogs/ChoiceFragment;-><init>()V

    .line 74
    invoke-virtual {v0, p4}, Lcom/undatech/opaque/dialogs/ChoiceFragment;->setOnFragmentDismissedListener(Lcom/undatech/opaque/dialogs/ChoiceFragment$OnFragmentDismissedListener;)V

    .line 76
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 77
    const-string v1, "title"

    invoke-virtual {p4, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string p0, "messageText"

    invoke-virtual {p4, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string p0, "positiveButtonText"

    invoke-virtual {p4, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string p0, "negativeButtonText"

    invoke-virtual {p4, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, p4}, Lcom/undatech/opaque/dialogs/ChoiceFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p0, 0x1

    .line 82
    invoke-virtual {v0, p0}, Lcom/undatech/opaque/dialogs/ChoiceFragment;->setRetainInstance(Z)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 61
    iget-object p1, p0, Lcom/undatech/opaque/dialogs/ChoiceFragment;->dismissalListener:Lcom/undatech/opaque/dialogs/ChoiceFragment$OnFragmentDismissedListener;

    if-nez p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/undatech/opaque/dialogs/ChoiceFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 89
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    sget-object p1, Lcom/undatech/opaque/dialogs/ChoiceFragment;->TAG:Ljava/lang/String;

    const-string v0, "onCreate called"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lcom/undatech/opaque/dialogs/ChoiceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/dialogs/ChoiceFragment;->title:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/undatech/opaque/dialogs/ChoiceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "messageText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/dialogs/ChoiceFragment;->messageText:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/undatech/opaque/dialogs/ChoiceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "positiveButtonText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/dialogs/ChoiceFragment;->positiveButtonText:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/undatech/opaque/dialogs/ChoiceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "negativeButtonText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/dialogs/ChoiceFragment;->negativeButtonText:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 99
    sget-object p3, Lcom/undatech/opaque/dialogs/ChoiceFragment;->TAG:Ljava/lang/String;

    const-string v0, "onCreateView called"

    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/undatech/opaque/dialogs/ChoiceFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    iget-object v0, p0, Lcom/undatech/opaque/dialogs/ChoiceFragment;->title:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    sget p3, Lcom/undatech/remoteClientUi/R$layout;->choice:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 105
    sget p2, Lcom/undatech/remoteClientUi/R$id;->message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/undatech/opaque/dialogs/ChoiceFragment;->message:Landroid/widget/TextView;

    .line 106
    iget-object p3, p0, Lcom/undatech/opaque/dialogs/ChoiceFragment;->messageText:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    sget p2, Lcom/undatech/remoteClientUi/R$id;->yesButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/undatech/opaque/dialogs/ChoiceFragment;->yesButton:Landroid/widget/Button;

    .line 109
    iget-object p3, p0, Lcom/undatech/opaque/dialogs/ChoiceFragment;->positiveButtonText:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object p2, p0, Lcom/undatech/opaque/dialogs/ChoiceFragment;->yesButton:Landroid/widget/Button;

    new-instance p3, Lcom/undatech/opaque/dialogs/ChoiceFragment$1;

    invoke-direct {p3, p0}, Lcom/undatech/opaque/dialogs/ChoiceFragment$1;-><init>(Lcom/undatech/opaque/dialogs/ChoiceFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    sget p2, Lcom/undatech/remoteClientUi/R$id;->noButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/undatech/opaque/dialogs/ChoiceFragment;->noButton:Landroid/widget/Button;

    .line 119
    iget-object p3, p0, Lcom/undatech/opaque/dialogs/ChoiceFragment;->negativeButtonText:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object p2, p0, Lcom/undatech/opaque/dialogs/ChoiceFragment;->noButton:Landroid/widget/Button;

    new-instance p3, Lcom/undatech/opaque/dialogs/ChoiceFragment$2;

    invoke-direct {p3, p0}, Lcom/undatech/opaque/dialogs/ChoiceFragment$2;-><init>(Lcom/undatech/opaque/dialogs/ChoiceFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 140
    invoke-virtual {p0}, Lcom/undatech/opaque/dialogs/ChoiceFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/undatech/opaque/dialogs/ChoiceFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/undatech/opaque/dialogs/ChoiceFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 142
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 132
    sget-object p1, Lcom/undatech/opaque/dialogs/ChoiceFragment;->TAG:Ljava/lang/String;

    const-string v0, "dismiss: sending back data to Activity"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object p1, p0, Lcom/undatech/opaque/dialogs/ChoiceFragment;->dismissalListener:Lcom/undatech/opaque/dialogs/ChoiceFragment$OnFragmentDismissedListener;

    if-eqz p1, :cond_0

    .line 134
    iget-boolean v0, p0, Lcom/undatech/opaque/dialogs/ChoiceFragment;->result:Z

    invoke-interface {p1, v0}, Lcom/undatech/opaque/dialogs/ChoiceFragment$OnFragmentDismissedListener;->onResponseObtained(Z)V

    :cond_0
    return-void
.end method

.method public setOnFragmentDismissedListener(Lcom/undatech/opaque/dialogs/ChoiceFragment$OnFragmentDismissedListener;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/undatech/opaque/dialogs/ChoiceFragment;->dismissalListener:Lcom/undatech/opaque/dialogs/ChoiceFragment$OnFragmentDismissedListener;

    return-void
.end method
