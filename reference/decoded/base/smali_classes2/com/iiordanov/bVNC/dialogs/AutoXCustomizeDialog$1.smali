.class Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog$1;
.super Ljava/lang/Object;
.source "AutoXCustomizeDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

    .line 253
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;

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

    .line 257
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;

    invoke-static {p1, p3}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->-$$Nest$msetCommandIndexAndCommand(Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;I)V

    .line 259
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->-$$Nest$msetAdvancedToggleState(Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;)V

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
