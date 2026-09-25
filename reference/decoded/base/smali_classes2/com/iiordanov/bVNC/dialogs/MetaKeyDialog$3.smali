.class Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$3;
.super Ljava/lang/Object;
.source "MetaKeyDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->onCreate(Landroid/os/Bundle;)V
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

    .line 254
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$3;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 261
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$3;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_connection:Lcom/undatech/opaque/Connection;

    sget-object p2, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_lists:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iiordanov/bVNC/MetaList;

    invoke-virtual {p2}, Lcom/iiordanov/bVNC/MetaList;->get_Id()J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lcom/undatech/opaque/Connection;->setMetaListId(J)V

    .line 262
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$3;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_connection:Lcom/undatech/opaque/Connection;

    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$3;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    invoke-virtual {p2}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/undatech/opaque/Connection;->save(Landroid/content/Context;)V

    .line 263
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$3;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->setMetaKeyList()V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
