.class Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$5;
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

    .line 292
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$5;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 299
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$5;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    if-nez p1, :cond_0

    .line 300
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$5;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    new-instance p2, Lcom/iiordanov/bVNC/input/MetaKeyBean;

    sget-object p4, Lcom/iiordanov/bVNC/input/MetaKeyBean;->allKeys:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-wide/16 p4, 0x0

    const/4 v0, 0x0

    invoke-direct {p2, p4, p5, v0, p3}, Lcom/iiordanov/bVNC/input/MetaKeyBean;-><init>(JILcom/iiordanov/bVNC/input/MetaKeyBase;)V

    iput-object p2, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    goto :goto_0

    .line 303
    :cond_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$5;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    sget-object p2, Lcom/iiordanov/bVNC/input/MetaKeyBean;->allKeys:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    invoke-virtual {p1, p2}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->setKeyBase(Lcom/iiordanov/bVNC/input/MetaKeyBase;)V

    .line 305
    :goto_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$5;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

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
