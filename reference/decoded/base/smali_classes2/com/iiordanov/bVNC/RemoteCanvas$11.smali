.class Lcom/iiordanov/bVNC/RemoteCanvas$11;
.super Ljava/lang/Object;
.source "RemoteCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iiordanov/bVNC/RemoteCanvas;
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

    .line 1092
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$11;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1094
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$11;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$11;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->screenMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iiordanov/bVNC/Utils;->showErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
