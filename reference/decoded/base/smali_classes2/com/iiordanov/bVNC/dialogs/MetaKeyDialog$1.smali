.class Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;
.super Ljava/lang/Object;
.source "MetaKeyDialog.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 114
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_canvasActivity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$string;->delete_key_list:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    .line 115
    invoke-virtual {v2}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/undatech/remoteClientUi/R$string;->delete_key_list:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object v2, v2, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_textListName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1$1;

    invoke-direct {v2, p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1$1;-><init>(Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;)V

    const/4 v3, 0x0

    .line 114
    invoke-static {p1, v0, v1, v2, v3}, Lcom/iiordanov/bVNC/Utils;->showYesNoPrompt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p1, 0x1

    return p1
.end method
