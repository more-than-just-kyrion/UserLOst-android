.class Lcom/iiordanov/bVNC/RemoteCanvas$1;
.super Ljava/lang/Object;
.source "RemoteCanvas.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/RemoteCanvas;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 250
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$1;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 253
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$1;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->closeConnection()V

    .line 254
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$1;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/iiordanov/bVNC/RemoteCanvas$1$1;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/RemoteCanvas$1$1;-><init>(Lcom/iiordanov/bVNC/RemoteCanvas$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
