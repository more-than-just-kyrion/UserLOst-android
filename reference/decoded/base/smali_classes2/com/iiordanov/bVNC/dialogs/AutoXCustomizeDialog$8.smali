.class Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog$8;
.super Ljava/lang/Object;
.source "AutoXCustomizeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog$8;->this$0:Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 354
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog$8;->this$0:Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->updateAutoXInfo()V

    .line 355
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog$8;->this$0:Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->dismiss()V

    return-void
.end method
