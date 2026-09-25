.class Lcom/undatech/opaque/dialogs/ChoiceFragment$2;
.super Ljava/lang/Object;
.source "ChoiceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/undatech/opaque/dialogs/ChoiceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/undatech/opaque/dialogs/ChoiceFragment;


# direct methods
.method constructor <init>(Lcom/undatech/opaque/dialogs/ChoiceFragment;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/undatech/opaque/dialogs/ChoiceFragment$2;->this$0:Lcom/undatech/opaque/dialogs/ChoiceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 123
    iget-object p1, p0, Lcom/undatech/opaque/dialogs/ChoiceFragment$2;->this$0:Lcom/undatech/opaque/dialogs/ChoiceFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/undatech/opaque/dialogs/ChoiceFragment;->-$$Nest$fputresult(Lcom/undatech/opaque/dialogs/ChoiceFragment;Z)V

    .line 124
    iget-object p1, p0, Lcom/undatech/opaque/dialogs/ChoiceFragment$2;->this$0:Lcom/undatech/opaque/dialogs/ChoiceFragment;

    invoke-virtual {p1}, Lcom/undatech/opaque/dialogs/ChoiceFragment;->dismiss()V

    return-void
.end method
