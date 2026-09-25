.class Lcom/iiordanov/bVNC/input/RemoteCanvasHandler$1;
.super Ljava/lang/Object;
.source "RemoteCanvasHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;

.field final synthetic val$messageText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler$1;->this$0:Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;

    iput-object p2, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler$1;->val$messageText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler$1;->this$0:Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;

    invoke-static {v0}, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->-$$Nest$fgetcontext(Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler$1;->this$0:Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;

    invoke-static {v1}, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->-$$Nest$fgetcontext(Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler$1;->val$messageText:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/iiordanov/bVNC/Utils;->getStringResourceByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
