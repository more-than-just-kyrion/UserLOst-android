.class Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$5;
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

    .line 188
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$5;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 192
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$5;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fget_historyIndex(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)I

    move-result p1

    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$5;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {v0}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fget_history(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 194
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$5;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fget_textEnterText(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 195
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$5;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {v0}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fget_history(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$5;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {v1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fget_historyIndex(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iiordanov/bVNC/SentTextBean;

    .line 196
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/SentTextBean;->getSentText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 199
    new-instance p1, Lcom/iiordanov/bVNC/Database;

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$5;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/iiordanov/bVNC/Database;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/Database;->getWritableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/iiordanov/bVNC/SentTextBean;->Gen_delete(Lnet/sqlcipher/database/SQLiteDatabase;)I

    .line 200
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$5;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fget_history(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$5;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {v0}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fget_historyIndex(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 201
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$5;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fget_historyIndex(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)I

    move-result p1

    if-lez p1, :cond_0

    .line 203
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$5;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fget_historyIndex(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fput_historyIndex(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;I)V

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$5;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fget_historyIndex(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)I

    move-result p1

    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$5;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {v0}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fget_history(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 210
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$5;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fget_history(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$5;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {v0}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fget_historyIndex(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iiordanov/bVNC/SentTextBean;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/SentTextBean;->getSentText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 208
    :cond_1
    const-string p1, ""

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$5;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {v0}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$fget_textEnterText(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$5;->this$0:Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->-$$Nest$mupdateButtons(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)V

    return-void
.end method
