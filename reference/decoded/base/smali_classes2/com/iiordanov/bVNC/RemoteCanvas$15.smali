.class Lcom/iiordanov/bVNC/RemoteCanvas$15;
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

    .line 1659
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$15;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1661
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$15;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->showConnectionInfo()V

    return-void
.end method
