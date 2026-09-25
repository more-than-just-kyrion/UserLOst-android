.class Lcom/iiordanov/bVNC/RemoteCanvas$2;
.super Ljava/lang/Object;
.source "RemoteCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/RemoteCanvas;->disconnectAndShowMessage(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

.field final synthetic val$messageId:I

.field final synthetic val$titleId:I


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/RemoteCanvas;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 312
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$2;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iput p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$2;->val$messageId:I

    iput p3, p0, Lcom/iiordanov/bVNC/RemoteCanvas$2;->val$titleId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$2;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$2;->val$messageId:I

    iget v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$2;->val$titleId:I

    invoke-static {v0, v1, v2}, Lcom/undatech/opaque/MessageDialogs;->displayMessageAndFinish(Landroid/content/Context;II)V

    return-void
.end method
