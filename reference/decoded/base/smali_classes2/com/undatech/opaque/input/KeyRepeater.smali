.class public Lcom/undatech/opaque/input/KeyRepeater;
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

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/undatech/opaque/input/KeyRepeater;->keyCode:I

    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/undatech/opaque/input/KeyRepeater;->event:Landroid/view/KeyEvent;

    const/16 v1, 0x190

    .line 30
    iput v1, p0, Lcom/undatech/opaque/input/KeyRepeater;->initialDelay:I

    const/16 v1, 0x64

    .line 31
    iput v1, p0, Lcom/undatech/opaque/input/KeyRepeater;->defaultDelay:I

    .line 32
    iput-boolean v0, p0, Lcom/undatech/opaque/input/KeyRepeater;->starting:Z

    .line 35
    iput-object p1, p0, Lcom/undatech/opaque/input/KeyRepeater;->keyboard:Lcom/undatech/opaque/input/RemoteKeyboard;

    .line 36
    iput-object p2, p0, Lcom/undatech/opaque/input/KeyRepeater;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 58
    iget v0, p0, Lcom/undatech/opaque/input/KeyRepeater;->defaultDelay:I

    .line 59
    iget-boolean v1, p0, Lcom/undatech/opaque/input/KeyRepeater;->starting:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 60
    iput-boolean v2, p0, Lcom/undatech/opaque/input/KeyRepeater;->starting:Z

    .line 61
    iget v0, p0, Lcom/undatech/opaque/input/KeyRepeater;->initialDelay:I

    goto :goto_0

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/undatech/opaque/input/KeyRepeater;->keyboard:Lcom/undatech/opaque/input/RemoteKeyboard;

    iget v3, p0, Lcom/undatech/opaque/input/KeyRepeater;->keyCode:I

    iget-object v4, p0, Lcom/undatech/opaque/input/KeyRepeater;->event:Landroid/view/KeyEvent;

    invoke-static {v4, v2}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/undatech/opaque/input/RemoteKeyboard;->keyEvent(ILandroid/view/KeyEvent;)Z

    .line 64
    iget-object v1, p0, Lcom/undatech/opaque/input/KeyRepeater;->keyboard:Lcom/undatech/opaque/input/RemoteKeyboard;

    iget v2, p0, Lcom/undatech/opaque/input/KeyRepeater;->keyCode:I

    iget-object v3, p0, Lcom/undatech/opaque/input/KeyRepeater;->event:Landroid/view/KeyEvent;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/undatech/opaque/input/RemoteKeyboard;->keyEvent(ILandroid/view/KeyEvent;)Z

    .line 67
    :goto_0
    iget-object v1, p0, Lcom/undatech/opaque/input/KeyRepeater;->handler:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public start(ILandroid/view/KeyEvent;)V
    .locals 2

    .line 40
    invoke-virtual {p0}, Lcom/undatech/opaque/input/KeyRepeater;->stop()V

    .line 41
    iput p1, p0, Lcom/undatech/opaque/input/KeyRepeater;->keyCode:I

    .line 42
    iput-object p2, p0, Lcom/undatech/opaque/input/KeyRepeater;->event:Landroid/view/KeyEvent;

    .line 46
    iget-object v0, p0, Lcom/undatech/opaque/input/KeyRepeater;->keyboard:Lcom/undatech/opaque/input/RemoteKeyboard;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/undatech/opaque/input/RemoteKeyboard;->keyEvent(ILandroid/view/KeyEvent;)Z

    .line 47
    iget-object v0, p0, Lcom/undatech/opaque/input/KeyRepeater;->keyboard:Lcom/undatech/opaque/input/RemoteKeyboard;

    const/4 v1, 0x1

    invoke-static {p2, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/undatech/opaque/input/RemoteKeyboard;->keyEvent(ILandroid/view/KeyEvent;)Z

    .line 48
    iput-boolean v1, p0, Lcom/undatech/opaque/input/KeyRepeater;->starting:Z

    .line 49
    iget-object p1, p0, Lcom/undatech/opaque/input/KeyRepeater;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/undatech/opaque/input/KeyRepeater;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
