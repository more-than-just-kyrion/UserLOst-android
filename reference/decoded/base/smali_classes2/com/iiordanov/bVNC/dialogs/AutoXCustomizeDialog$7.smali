.class Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog$7;
.super Ljava/lang/Object;
.source "AutoXCustomizeDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 339
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog$7;->this$0:Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 343
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog$7;->this$0:Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->-$$Nest$fgetselected(Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;)Lcom/iiordanov/bVNC/ConnectionBean;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/iiordanov/bVNC/ConnectionBean;->setAutoXUnixAuth(Z)V

    return-void
.end method
