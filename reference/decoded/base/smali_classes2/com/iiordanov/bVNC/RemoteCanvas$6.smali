.class Lcom/iiordanov/bVNC/RemoteCanvas$6;
.super Ljava/lang/Object;
.source "RemoteCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/RemoteCanvas;->startVncConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/RemoteCanvas;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/RemoteCanvas;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$6;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 643
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$6;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$6;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/undatech/remoteClientUi/R$string;->info_progress_dialog_downloading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method
