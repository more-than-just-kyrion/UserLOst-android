.class Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;
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

    .line 152
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    .line 159
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_spinnerKeysInList:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object v0, v0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_keysInList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iiordanov/bVNC/input/MetaKeyBean;

    .line 163
    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object v1, v1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_canvasActivity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    iget-object v2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/undatech/remoteClientUi/R$string;->delete_key:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    .line 164
    invoke-virtual {v4}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/undatech/remoteClientUi/R$string;->delete_key:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getKeyDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2$1;

    invoke-direct {v4, p0, v0, p1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2$1;-><init>(Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;Lcom/iiordanov/bVNC/input/MetaKeyBean;I)V

    const/4 p1, 0x0

    .line 163
    invoke-static {v1, v2, v3, v4, p1}, Lcom/iiordanov/bVNC/Utils;->showYesNoPrompt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
