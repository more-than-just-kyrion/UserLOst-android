.class Lcom/iiordanov/bVNC/RemoteCanvas$1$1;
.super Ljava/lang/Object;
.source "RemoteCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/RemoteCanvas$1;->onCancel(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/iiordanov/bVNC/RemoteCanvas$1;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/RemoteCanvas$1;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$1$1;->this$1:Lcom/iiordanov/bVNC/RemoteCanvas$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$1$1;->this$1:Lcom/iiordanov/bVNC/RemoteCanvas$1;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas$1;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$1$1;->this$1:Lcom/iiordanov/bVNC/RemoteCanvas$1;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas$1;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/undatech/remoteClientUi/R$string;->info_progress_dialog_aborted:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iiordanov/bVNC/Utils;->showFatalErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
