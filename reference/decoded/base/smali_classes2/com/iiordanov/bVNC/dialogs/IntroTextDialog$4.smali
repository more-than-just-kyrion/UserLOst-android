.class Lcom/iiordanov/bVNC/dialogs/IntroTextDialog$4;
.super Ljava/lang/Object;
.source "IntroTextDialog.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->onCreateOptionsMenu(Landroid/view/Menu;)Z
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

    .line 219
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog$4;->this$0:Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 223
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog$4;->this$0:Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->-$$Nest$mshowAgain(Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;Z)V

    const/4 p1, 0x1

    return p1
.end method
