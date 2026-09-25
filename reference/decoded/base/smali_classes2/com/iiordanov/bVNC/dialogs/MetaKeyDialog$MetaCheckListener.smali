.class Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$MetaCheckListener;
.super Ljava/lang/Object;
.source "MetaKeyDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MetaCheckListener"
.end annotation


# instance fields
.field private _mask:I

.field final synthetic this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;I)V
    .locals 0

    .line 642
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$MetaCheckListener;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    iput p2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$MetaCheckListener;->_mask:I

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 653
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$MetaCheckListener;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$MetaCheckListener;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object p2, p2, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-virtual {p2}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMetaFlags()I

    move-result p2

    iget v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$MetaCheckListener;->_mask:I

    or-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->setMetaFlags(I)V

    goto :goto_0

    .line 657
    :cond_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$MetaCheckListener;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$MetaCheckListener;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object p2, p2, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-virtual {p2}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMetaFlags()I

    move-result p2

    iget v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$MetaCheckListener;->_mask:I

    not-int v0, v0

    and-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->setMetaFlags(I)V

    .line 659
    :goto_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$MetaCheckListener;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_textKeyDesc:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$MetaCheckListener;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object p2, p2, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-virtual {p2}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getKeyDesc()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
