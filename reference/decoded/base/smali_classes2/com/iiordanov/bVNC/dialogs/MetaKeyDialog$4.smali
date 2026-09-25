.class Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$4;
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

    .line 274
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$4;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

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

    .line 281
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$4;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    new-instance p2, Lcom/iiordanov/bVNC/input/MetaKeyBean;

    iget-object p4, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$4;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object p4, p4, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_keysInList:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-direct {p2, p3}, Lcom/iiordanov/bVNC/input/MetaKeyBean;-><init>(Lcom/iiordanov/bVNC/input/MetaKeyBean;)V

    iput-object p2, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    .line 282
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$4;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->-$$Nest$mupdateDialogForCurrentKey(Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;)V

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
