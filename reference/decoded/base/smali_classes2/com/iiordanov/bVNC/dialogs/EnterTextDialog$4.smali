.class Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$4;
.super Ljava/lang/Object;
.source "EnterTextDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$4;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 179
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$4;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fget_textEnterText(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 180
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$4;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {v0, p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$msendText(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$4;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fget_textEnterText(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$4;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fget_history(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fput_historyIndex(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;I)V

    .line 183
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$4;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$mupdateButtons(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)V

    .line 184
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$4;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->dismiss()V

    return-void
.end method
