.class public Lcom/iiordanov/bVNC/input/KeyRepeater;
.super Ljava/lang/Object;
.source "KeyRepeater.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private defaultDelay:I

.field private event:Landroid/view/KeyEvent;

.field private handler:Landroid/os/Handler;

.field private initialDelay:I

.field private keyCode:I

.field private keyboard:Lcom/undatech/opaque/input/RemoteKeyboard;

.field private starting:Z


# direct methods
.method public constructor <init>(Lcom/undatech/opaque/input/RemoteKeyboard;Landroid/os/Handler;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/iiordanov/bVNC/input/KeyRepeater;->keyCode:I

    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/iiordanov/bVNC/input/KeyRepeater;->event:Landroid/view/KeyEvent;

    const/16 v1, 0x190

    .line 13
    iput v1, p0, Lcom/iiordanov/bVNC/input/KeyRepeater;->initialDelay:I

    const/16 v1, 0x64

    .line 14
    iput v1, p0, Lcom/iiordanov/bVNC/input/KeyRepeater;->defaultDelay:I

    .line 15
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/KeyRepeater;->starting:Z

    .line 18
    iput-object p1, p0, Lcom/iiordanov/bVNC/input/KeyRepeater;->keyboard:Lcom/undatech/opaque/input/RemoteKeyboard;

    .line 19
    iput-object p2, p0, Lcom/iiordanov/bVNC/input/KeyRepeater;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 41
    iget v0, p0, Lcom/iiordanov/bVNC/input/KeyRepeater;->defaultDelay:I

    .line 42
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/input/KeyRepeater;->starting:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 43
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/input/KeyRepeater;->starting:Z

    .line 44
    iget v0, p0, Lcom/iiordanov/bVNC/input/KeyRepeater;->initialDelay:I

    goto :goto_0

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/KeyRepeater;->keyboard:Lcom/undatech/opaque/input/RemoteKeyboard;

    iget v3, p0, Lcom/iiordanov/bVNC/input/KeyRepeater;->keyCode:I

    iget-object v4, p0, Lcom/iiordanov/bVNC/input/KeyRepeater;->event:Landroid/view/KeyEvent;

    invoke-static {v4, v2}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/undatech/opaque/input/RemoteKeyboard;->keyEvent(ILandroid/view/KeyEvent;)Z

    .line 47
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/KeyRepeater;->keyboard:Lcom/undatech/opaque/input/RemoteKeyboard;

    iget v2, p0, Lcom/iiordanov/bVNC/input/KeyRepeater;->keyCode:I

    iget-object v3, p0, Lcom/iiordanov/bVNC/input/KeyRepeater;->event:Landroid/view/KeyEvent;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/undatech/opaque/input/RemoteKeyboard;->keyEvent(ILandroid/view/KeyEvent;)Z

    .line 50
    :goto_0
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/KeyRepeater;->handler:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public start(ILandroid/view/KeyEvent;)V
    .locals 2

    .line 23
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/input/KeyRepeater;->stop()V

    .line 24
    iput p1, p0, Lcom/iiordanov/bVNC/input/KeyRepeater;->keyCode:I

    .line 25
    iput-object p2, p0, Lcom/iiordanov/bVNC/input/KeyRepeater;->event:Landroid/view/KeyEvent;

    .line 29
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/KeyRepeater;->keyboard:Lcom/undatech/opaque/input/RemoteKeyboard;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/undatech/opaque/input/RemoteKeyboard;->keyEvent(ILandroid/view/KeyEvent;)Z

    .line 30
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/KeyRepeater;->keyboard:Lcom/undatech/opaque/input/RemoteKeyboard;

    const/4 v1, 0x1

    invoke-static {p2, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/undatech/opaque/input/RemoteKeyboard;->keyEvent(ILandroid/view/KeyEvent;)Z

    .line 31
    iput-boolean v1, p0, Lcom/iiordanov/bVNC/input/KeyRepeater;->starting:Z

    .line 32
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/KeyRepeater;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/KeyRepeater;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
