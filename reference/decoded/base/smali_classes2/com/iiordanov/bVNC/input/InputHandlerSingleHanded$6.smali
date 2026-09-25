.class Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$6;
.super Ljava/lang/Object;
.source "InputHandlerSingleHanded.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->initializeButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$6;->this$0:Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 131
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$6;->this$0:Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;

    invoke-static {p1}, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->-$$Nest$fgetsingleHandOpts(Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 132
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$6;->this$0:Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;

    iget-object p1, p1, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->single_cancel:I

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->displayShortToastMessage(I)V

    return-void
.end method
