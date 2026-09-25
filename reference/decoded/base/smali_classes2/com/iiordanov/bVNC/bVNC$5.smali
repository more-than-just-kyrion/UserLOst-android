.class Lcom/iiordanov/bVNC/bVNC$5;
.super Ljava/lang/Object;
.source "bVNC.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/bVNC;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/bVNC;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/bVNC;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC$5;->this$0:Lcom/iiordanov/bVNC/bVNC;

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

    .line 208
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$5;->this$0:Lcom/iiordanov/bVNC/bVNC;

    iget-object p1, p1, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    if-eqz p1, :cond_0

    .line 209
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$5;->this$0:Lcom/iiordanov/bVNC/bVNC;

    iget-object p1, p1, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {p1, p3}, Lcom/iiordanov/bVNC/ConnectionBean;->setRdpResType(I)V

    .line 210
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$5;->this$0:Lcom/iiordanov/bVNC/bVNC;

    invoke-static {p1}, Lcom/iiordanov/bVNC/bVNC;->-$$Nest$msetRemoteWidthAndHeight(Lcom/iiordanov/bVNC/bVNC;)V

    :cond_0
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
