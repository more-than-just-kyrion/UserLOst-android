.class public Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SelectTextElementFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment$OnFragmentDismissedListener;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "SelectVmFragment"


# instance fields
.field private dismissalListener:Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment$OnFragmentDismissedListener;

.field selected:Ljava/lang/String;

.field private strings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field verticalLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;->selected:Ljava/lang/String;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/util/ArrayList;Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment$OnFragmentDismissedListener;)Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment$OnFragmentDismissedListener;",
            ")",
            "Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;"
        }
    .end annotation

    .line 63
    sget-object v0, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;->TAG:Ljava/lang/String;

    const-string v1, "newInstance called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v0, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;

    invoke-direct {v0}, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;-><init>()V

    .line 65
    invoke-virtual {v0, p2}, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;->setOnFragmentDismissedListener(Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment$OnFragmentDismissedListener;)V

    .line 67
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 68
    const-string v1, "strings"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 69
    const-string p1, "title"

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, p2}, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p0, 0x1

    .line 71
    invoke-virtual {v0, p0}, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;->setRetainInstance(Z)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    sget-object p1, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;->TAG:Ljava/lang/String;

    const-string v0, "onCreate called"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "strings"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;->strings:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;->title:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 87
    sget-object p3, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;->TAG:Ljava/lang/String;

    const-string v0, "onCreateView called"

    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/undatech/remoteClientUi/R$layout;->textelement:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object p3

    .line 90
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p3

    .line 93
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    sget v0, Lcom/undatech/remoteClientUi/R$layout;->select_text:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 97
    sget p2, Lcom/undatech/remoteClientUi/R$id;->verticalLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;->verticalLayout:Landroid/widget/LinearLayout;

    .line 98
    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;->strings:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p2

    .line 99
    :goto_0
    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;->TAG:Ljava/lang/String;

    const-string v1, "Adding element to dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    const/high16 v2, 0x41c80000    # 25.0f

    .line 104
    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v0, 0x28

    const/16 v2, 0x14

    .line 105
    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 106
    new-instance v0, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment$1;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment$1;-><init>(Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;->verticalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 129
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 121
    sget-object p1, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;->TAG:Ljava/lang/String;

    const-string v0, "dismiss: sending back data to Activity"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;->dismissalListener:Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment$OnFragmentDismissedListener;

    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;->selected:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment$OnFragmentDismissedListener;->onTextSelected(Ljava/lang/String;)V

    return-void
.end method

.method public setOnFragmentDismissedListener(Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment$OnFragmentDismissedListener;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment;->dismissalListener:Lcom/iiordanov/bVNC/dialogs/SelectTextElementFragment$OnFragmentDismissedListener;

    return-void
.end method
