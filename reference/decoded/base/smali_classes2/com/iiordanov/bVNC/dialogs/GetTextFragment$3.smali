.class Lcom/iiordanov/bVNC/dialogs/GetTextFragment$3;
.super Ljava/lang/Object;
.source "GetTextFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->ensureMatchingDismissOnConfirm(Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

.field final synthetic val$error:Landroid/widget/TextView;

.field final synthetic val$textBox1:Landroid/widget/EditText;

.field final synthetic val$textBox2:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/dialogs/GetTextFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 289
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$3;->this$0:Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$3;->val$textBox1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$3;->val$textBox2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$3;->val$error:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 292
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$3;->val$textBox1:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$3;->val$textBox2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 293
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$3;->this$0:Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 295
    :cond_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$3;->val$error:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$3;->this$0:Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

    invoke-static {v0}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->-$$Nest$fgeterrorNum(Lcom/iiordanov/bVNC/dialogs/GetTextFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 296
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$3;->val$error:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$3;->val$error:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    :goto_0
    return-void
.end method
