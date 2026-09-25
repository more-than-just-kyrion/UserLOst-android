.class Lcom/iiordanov/bVNC/RemoteCanvas$19;
.super Ljava/lang/Object;
.source "RemoteCanvas.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/RemoteCanvas;->validateRdpCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 2082
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$19;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2086
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$19;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->closeConnection()V

    .line 2087
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$19;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/undatech/opaque/MessageDialogs;->justFinish(Landroid/content/Context;)V

    return-void
.end method
