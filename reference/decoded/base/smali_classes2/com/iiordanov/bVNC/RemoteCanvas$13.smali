.class Lcom/iiordanov/bVNC/RemoteCanvas$13;
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

    .line 1627
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$13;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1629
    const-string v0, "drawableSetter.run"

    const-string v1, "RemoteCanvas"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$13;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    if-eqz v0, :cond_0

    .line 1631
    const-string v0, "drawableSetter myDrawable not null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas$13;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$13;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0, v2}, Lcom/iiordanov/bVNC/AbstractBitmapData;->setImageDrawable(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1636
    :catch_0
    const-string v0, "drawableSetter myDrawable or this is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1639
    :cond_0
    const-string v0, "drawableSetter myDrawable is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
