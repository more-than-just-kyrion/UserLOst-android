.class Lcom/iiordanov/bVNC/dialogs/GetTextFragment$2;
.super Ljava/lang/Object;
.source "GetTextFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->dismissOnConfirm(Landroid/widget/Button;)V
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

    .line 280
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$2;->this$0:Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 283
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$2;->this$0:Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
