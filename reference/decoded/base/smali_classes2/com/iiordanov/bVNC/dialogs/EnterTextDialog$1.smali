.class Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$1;
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

    .line 113
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 120
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fget_history(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 121
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {v0}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fget_historyIndex(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)I

    move-result v0

    if-ge v0, p1, :cond_2

    .line 123
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$msaveText(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;Z)Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {v0}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fget_historyIndex(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fput_historyIndex(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;I)V

    .line 125
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {v0}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fget_history(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {v0}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fget_historyIndex(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fget_historyIndex(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fput_historyIndex(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;I)V

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fget_historyIndex(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)I

    move-result p1

    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {v0}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fget_history(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 129
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fget_textEnterText(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {v0}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fget_history(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {v1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fget_historyIndex(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iiordanov/bVNC/SentTextBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/SentTextBean;->getSentText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fget_textEnterText(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$mupdateButtons(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)V

    return-void
.end method
