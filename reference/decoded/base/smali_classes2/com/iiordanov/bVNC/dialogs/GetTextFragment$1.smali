.class Lcom/iiordanov/bVNC/dialogs/GetTextFragment$1;
.super Ljava/lang/Object;
.source "GetTextFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->dismissOnCancel(Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/dialogs/GetTextFragment;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/dialogs/GetTextFragment;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$1;->this$0:Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 273
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$1;->this$0:Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->-$$Nest$fputwasCancelled(Lcom/iiordanov/bVNC/dialogs/GetTextFragment;Z)V

    .line 274
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$1;->this$0:Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
