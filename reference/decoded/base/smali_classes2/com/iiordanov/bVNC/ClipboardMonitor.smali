.class public Lcom/iiordanov/bVNC/ClipboardMonitor;
.super Ljava/util/TimerTask;
.source "ClipboardMonitor.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field clipboard:Landroid/text/ClipboardManager;

.field private context:Landroid/content/Context;

.field private knownClipboardContents:Ljava/lang/String;

.field vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iiordanov/bVNC/RemoteCanvas;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 32
    const-string v0, "ClipboardMonitor"

    iput-object v0, p0, Lcom/iiordanov/bVNC/ClipboardMonitor;->TAG:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/iiordanov/bVNC/ClipboardMonitor;->context:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/iiordanov/bVNC/ClipboardMonitor;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    .line 41
    const-string p2, "clipboard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/ClipboardManager;

    iput-object p1, p0, Lcom/iiordanov/bVNC/ClipboardMonitor;->clipboard:Landroid/text/ClipboardManager;

    .line 42
    new-instance p1, Ljava/lang/String;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iiordanov/bVNC/ClipboardMonitor;->knownClipboardContents:Ljava/lang/String;

    return-void
.end method

.method private getClipboardContents()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/iiordanov/bVNC/ClipboardMonitor;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v1}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 64
    invoke-direct {p0}, Lcom/iiordanov/bVNC/ClipboardMonitor;->getClipboardContents()Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/iiordanov/bVNC/ClipboardMonitor;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-boolean v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->serverJustCutText:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iiordanov/bVNC/ClipboardMonitor;->knownClipboardContents:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/iiordanov/bVNC/ClipboardMonitor;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iiordanov/bVNC/ClipboardMonitor;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v1}, Lcom/undatech/opaque/RfbConnectable;->isInNormalProtocol()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/iiordanov/bVNC/ClipboardMonitor;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v1, v0}, Lcom/undatech/opaque/RfbConnectable;->writeClientCutText(Ljava/lang/String;)V

    .line 71
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iiordanov/bVNC/ClipboardMonitor;->knownClipboardContents:Ljava/lang/String;

    goto :goto_0

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/iiordanov/bVNC/ClipboardMonitor;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-boolean v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->serverJustCutText:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 75
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iiordanov/bVNC/ClipboardMonitor;->knownClipboardContents:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/iiordanov/bVNC/ClipboardMonitor;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->serverJustCutText:Z

    :cond_1
    :goto_0
    return-void
.end method
