.class Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$3;
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

    .line 92
    iput-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$3;->this$0:Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 95
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$3;->this$0:Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;

    invoke-static {p1}, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->-$$Nest$mstartNewSingleHandedGesture(Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;)V

    .line 96
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$3;->this$0:Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->middleDragMode:Z

    .line 97
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$3;->this$0:Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;

    iget-object p1, p1, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getPointer()Lcom/iiordanov/bVNC/input/RemotePointer;

    move-result-object p1

    .line 98
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$3;->this$0:Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;

    invoke-static {v0}, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->-$$Nest$fgeteventStartX(Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;)I

    move-result v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$3;->this$0:Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;

    invoke-static {v1}, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->-$$Nest$fgeteventStartY(Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;)I

    move-result v1

    iget-object v2, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$3;->this$0:Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;

    invoke-static {v2}, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->-$$Nest$fgeteventMeta(Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/iiordanov/bVNC/input/RemotePointer;->middleButtonDown(III)V

    .line 99
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$3;->this$0:Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;

    iget-object p1, p1, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->single_middle:I

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->displayShortToastMessage(I)V

    return-void
.end method
