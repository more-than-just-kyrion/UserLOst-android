.class Lcom/iiordanov/bVNC/aSPICE$3;
.super Ljava/lang/Object;
.source "aSPICE.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/aSPICE;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/aSPICE;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/aSPICE;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/iiordanov/bVNC/aSPICE$3;->this$0:Lcom/iiordanov/bVNC/aSPICE;

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

    .line 148
    iget-object p1, p0, Lcom/iiordanov/bVNC/aSPICE$3;->this$0:Lcom/iiordanov/bVNC/aSPICE;

    iget-object p1, p1, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {p1, p3}, Lcom/iiordanov/bVNC/ConnectionBean;->setRdpResType(I)V

    .line 149
    iget-object p1, p0, Lcom/iiordanov/bVNC/aSPICE$3;->this$0:Lcom/iiordanov/bVNC/aSPICE;

    invoke-static {p1}, Lcom/iiordanov/bVNC/aSPICE;->-$$Nest$msetRemoteWidthAndHeight(Lcom/iiordanov/bVNC/aSPICE;)V

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
