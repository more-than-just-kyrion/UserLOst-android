.class Lcom/iiordanov/bVNC/dialogs/RepeaterDialog$1;
.super Ljava/lang/Object;
.source "RepeaterDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/dialogs/RepeaterDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/dialogs/RepeaterDialog;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/dialogs/RepeaterDialog;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/RepeaterDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/RepeaterDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 63
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/RepeaterDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/RepeaterDialog;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/RepeaterDialog;->_configurationDialog:Lcom/iiordanov/bVNC/bVNC;

    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/RepeaterDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/RepeaterDialog;

    invoke-static {v0}, Lcom/iiordanov/bVNC/dialogs/RepeaterDialog;->-$$Nest$fget_repeaterId(Lcom/iiordanov/bVNC/dialogs/RepeaterDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/iiordanov/bVNC/bVNC;->updateRepeaterInfo(ZLjava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/RepeaterDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/RepeaterDialog;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/dialogs/RepeaterDialog;->dismiss()V

    return-void
.end method
