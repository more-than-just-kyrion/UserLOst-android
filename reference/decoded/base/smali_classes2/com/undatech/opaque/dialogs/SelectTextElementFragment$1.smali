.class Lcom/undatech/opaque/dialogs/SelectTextElementFragment$1;
.super Ljava/lang/Object;
.source "SelectTextElementFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/undatech/opaque/dialogs/SelectTextElementFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/undatech/opaque/dialogs/SelectTextElementFragment;


# direct methods
.method constructor <init>(Lcom/undatech/opaque/dialogs/SelectTextElementFragment;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/undatech/opaque/dialogs/SelectTextElementFragment$1;->this$0:Lcom/undatech/opaque/dialogs/SelectTextElementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/undatech/opaque/dialogs/SelectTextElementFragment$1;->this$0:Lcom/undatech/opaque/dialogs/SelectTextElementFragment;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/undatech/opaque/dialogs/SelectTextElementFragment;->selected:Ljava/lang/String;

    .line 110
    iget-object p1, p0, Lcom/undatech/opaque/dialogs/SelectTextElementFragment$1;->this$0:Lcom/undatech/opaque/dialogs/SelectTextElementFragment;

    invoke-virtual {p1}, Lcom/undatech/opaque/dialogs/SelectTextElementFragment;->dismiss()V

    return-void
.end method
