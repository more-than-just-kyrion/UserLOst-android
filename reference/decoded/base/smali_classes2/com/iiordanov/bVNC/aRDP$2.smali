.class Lcom/iiordanov/bVNC/aRDP$2;
.super Ljava/lang/Object;
.source "aRDP.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/aRDP;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/aRDP;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/aRDP;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP$2;->this$0:Lcom/iiordanov/bVNC/aRDP;

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

    .line 133
    iget-object p1, p0, Lcom/iiordanov/bVNC/aRDP$2;->this$0:Lcom/iiordanov/bVNC/aRDP;

    iget-object p1, p1, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {p1, p3}, Lcom/iiordanov/bVNC/ConnectionBean;->setRdpResType(I)V

    .line 134
    iget-object p1, p0, Lcom/iiordanov/bVNC/aRDP$2;->this$0:Lcom/iiordanov/bVNC/aRDP;

    invoke-static {p1}, Lcom/iiordanov/bVNC/aRDP;->-$$Nest$msetRemoteWidthAndHeight(Lcom/iiordanov/bVNC/aRDP;)V

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
