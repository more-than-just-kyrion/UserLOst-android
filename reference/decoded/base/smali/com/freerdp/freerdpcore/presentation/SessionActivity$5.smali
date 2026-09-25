.class Lcom/freerdp/freerdpcore/presentation/SessionActivity$5;
.super Ljava/lang/Object;
.source "SessionActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

.field final synthetic val$activityRootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/freerdp/freerdpcore/presentation/SessionActivity;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 238
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$5;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    iput-object p2, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$5;->val$activityRootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$5;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$5;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$202(Lcom/freerdp/freerdpcore/presentation/SessionActivity;I)I

    .line 242
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$5;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$5;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$302(Lcom/freerdp/freerdpcore/presentation/SessionActivity;I)I

    .line 245
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$5;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$400(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$5;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$5;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$500(Lcom/freerdp/freerdpcore/presentation/SessionActivity;Landroid/content/Intent;)V

    .line 248
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$5;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$402(Lcom/freerdp/freerdpcore/presentation/SessionActivity;Z)Z

    :cond_0
    return-void
.end method
