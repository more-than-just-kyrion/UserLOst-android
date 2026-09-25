.class Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog$2;
.super Ljava/lang/Object;
.source "ImportTlsCaDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 175
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->-$$Nest$fgetmainConfigPage(Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;)Lcom/iiordanov/bVNC/aSPICE;

    move-result-object p1

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->showDocumentation(Landroid/content/Context;)V

    return-void
.end method
