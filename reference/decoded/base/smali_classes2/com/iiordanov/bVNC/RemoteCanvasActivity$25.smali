.class Lcom/iiordanov/bVNC/RemoteCanvasActivity$25;
.super Ljava/lang/Object;
.source "RemoteCanvasActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/RemoteCanvasActivity;->selectColorModel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1613
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$25;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    iput-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$25;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 1615
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$25;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1616
    invoke-static {}, Lcom/iiordanov/bVNC/COLORMODEL;->values()[Lcom/iiordanov/bVNC/COLORMODEL;

    move-result-object p1

    aget-object p1, p1, p3

    .line 1617
    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$25;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-static {p2}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->-$$Nest$fgetcanvas(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)Lcom/iiordanov/bVNC/RemoteCanvas;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->setColorModel(Lcom/iiordanov/bVNC/COLORMODEL;)V

    .line 1618
    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$25;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-static {p2}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->-$$Nest$fgetconnection(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)Lcom/undatech/opaque/Connection;

    move-result-object p2

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/COLORMODEL;->nameString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/undatech/opaque/Connection;->setColorModel(Ljava/lang/String;)V

    .line 1619
    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$25;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-static {p2}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->-$$Nest$fgetconnection(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)Lcom/undatech/opaque/Connection;

    move-result-object p2

    iget-object p3, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$25;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-interface {p2, p3}, Lcom/undatech/opaque/Connection;->save(Landroid/content/Context;)V

    .line 1620
    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$25;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$25;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    sget p5, Lcom/undatech/remoteClientUi/R$string;->info_update_color_model_to:I

    invoke-virtual {p4, p5}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/COLORMODEL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
