.class Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$5;
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

    .line 118
    iput-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$5;->this$0:Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 121
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$5;->this$0:Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;

    invoke-static {p1}, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->-$$Nest$mstartNewSingleHandedGesture(Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;)V

    .line 122
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$5;->this$0:Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->inScaling:Z

    .line 123
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$5;->this$0:Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;

    iget-object p1, p1, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->single_zoom:I

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->displayShortToastMessage(I)V

    return-void
.end method
