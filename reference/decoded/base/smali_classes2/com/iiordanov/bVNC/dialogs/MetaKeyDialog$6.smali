.class Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$6;
.super Ljava/lang/Object;
.source "MetaKeyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 315
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$6;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 321
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$6;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->sendCurrentKey()V

    .line 322
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$6;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->dismiss()V

    return-void
.end method
