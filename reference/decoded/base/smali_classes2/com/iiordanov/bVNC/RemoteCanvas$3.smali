.class Lcom/iiordanov/bVNC/RemoteCanvas$3;
.super Ljava/lang/Object;
.source "RemoteCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/RemoteCanvas;->disconnectAndShowMessage(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

.field final synthetic val$messageId:I

.field final synthetic val$textToAppend:Ljava/lang/String;

.field final synthetic val$titleId:I


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/RemoteCanvas;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 321
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$3;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iput p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$3;->val$messageId:I

    iput p3, p0, Lcom/iiordanov/bVNC/RemoteCanvas$3;->val$titleId:I

    iput-object p4, p0, Lcom/iiordanov/bVNC/RemoteCanvas$3;->val$textToAppend:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 323
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$3;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$3;->val$messageId:I

    iget v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$3;->val$titleId:I

    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas$3;->val$textToAppend:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/undatech/opaque/MessageDialogs;->displayMessageAndFinish(Landroid/content/Context;IILjava/lang/String;)V

    return-void
.end method
