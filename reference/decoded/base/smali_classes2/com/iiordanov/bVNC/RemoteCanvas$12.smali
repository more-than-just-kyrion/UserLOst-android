.class Lcom/iiordanov/bVNC/RemoteCanvas$12;
.super Ljava/lang/Object;
.source "RemoteCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/RemoteCanvas;->showFatalMessageAndQuit(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

.field final synthetic val$error:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/RemoteCanvas;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1111
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$12;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iput-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$12;->val$error:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1113
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$12;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$12;->val$error:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iiordanov/bVNC/Utils;->showFatalErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
