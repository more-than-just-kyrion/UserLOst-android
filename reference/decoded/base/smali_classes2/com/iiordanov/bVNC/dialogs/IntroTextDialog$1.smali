.class Lcom/iiordanov/bVNC/dialogs/IntroTextDialog$1;
.super Ljava/lang/Object;
.source "IntroTextDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 169
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->-$$Nest$mshowAgain(Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;Z)V

    return-void
.end method
