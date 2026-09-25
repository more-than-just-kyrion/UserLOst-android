.class Lcom/freerdp/freerdpcore/presentation/SessionActivity$6;
.super Ljava/lang/Object;
.source "SessionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freerdp/freerdpcore/presentation/SessionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;


# direct methods
.method constructor <init>(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$6;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 290
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$6;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$800(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)V

    .line 291
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$6;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1000(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Landroid/widget/ZoomControls;

    move-result-object p1

    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$6;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$900(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/SessionView;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->zoomIn(F)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ZoomControls;->setIsZoomInEnabled(Z)V

    .line 292
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$6;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1000(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Landroid/widget/ZoomControls;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ZoomControls;->setIsZoomOutEnabled(Z)V

    return-void
.end method
