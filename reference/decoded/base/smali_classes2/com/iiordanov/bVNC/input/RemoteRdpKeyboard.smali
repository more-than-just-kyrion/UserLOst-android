.class public Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;
.super Lcom/iiordanov/bVNC/input/RemoteKeyboard;
.source "RemoteRdpKeyboard.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteRdpKeyboard"


# instance fields
.field protected canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

.field protected keyboardMapper:Lcom/undatech/opaque/input/RdpKeyboardMapper;


# direct methods
.method public constructor <init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;Landroid/os/Handler;Z)V
    .locals 1

    .line 19
    invoke-virtual {p2}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/iiordanov/bVNC/input/RemoteKeyboard;-><init>(Lcom/undatech/opaque/RfbConnectable;Landroid/content/Context;Landroid/os/Handler;Z)V

    .line 20
    iput-object p2, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    .line 21
    new-instance p2, Lcom/undatech/opaque/input/RdpKeyboardMapper;

    invoke-direct {p2}, Lcom/undatech/opaque/input/RdpKeyboardMapper;-><init>()V

    iput-object p2, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->keyboardMapper:Lcom/undatech/opaque/input/RdpKeyboardMapper;

    .line 22
    iget-object p3, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->context:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/undatech/opaque/input/RdpKeyboardMapper;->init(Landroid/content/Context;)V

    .line 23
    iget-object p2, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->keyboardMapper:Lcom/undatech/opaque/input/RdpKeyboardMapper;

    check-cast p1, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    invoke-virtual {p2, p1}, Lcom/undatech/opaque/input/RdpKeyboardMapper;->reset(Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;)V

    return-void
.end method


# virtual methods
.method public processLocalKeyEvent(ILandroid/view/KeyEvent;I)Z
    .locals 11

    .line 27
    sget-boolean v0, Lcom/iiordanov/bVNC/App;->debugLog:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processLocalKeyEvent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteRdpKeyboard"

    invoke-static {v0, v2, v1}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->rfb:Lcom/undatech/opaque/RfbConnectable;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->rfb:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v0}, Lcom/undatech/opaque/RfbConnectable;->isInNormalProtocol()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 30
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getPointer()Lcom/iiordanov/bVNC/input/RemotePointer;

    move-result-object v0

    .line 31
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 32
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    .line 33
    :goto_1
    invoke-virtual {p0, p2}, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->convertEventMetaState(Landroid/view/KeyEvent;)I

    move-result v5

    or-int/2addr p3, v5

    const/16 v5, 0x52

    if-ne p1, v5, :cond_2

    return v4

    .line 38
    :cond_2
    iget v5, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->onScreenMetaState:I

    or-int/2addr v5, p3

    iget v6, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->hardwareMetaState:I

    or-int/2addr v5, v6

    invoke-virtual {v0, p1, p2, v5}, Lcom/iiordanov/bVNC/input/RemotePointer;->hardwareButtonsAsMouseEvents(ILandroid/view/KeyEvent;I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v4

    .line 42
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    const/16 v0, 0x17

    const/16 v5, 0x61

    const/16 v6, 0x1d

    if-nez v3, :cond_6

    .line 44
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v7

    if-eq v7, v6, :cond_4

    if-eq v7, v5, :cond_4

    goto :goto_2

    .line 47
    :cond_4
    iget v5, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->hardwareMetaState:I

    and-int/lit16 v5, v5, -0x1001

    iput v5, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->hardwareMetaState:I

    :goto_2
    if-eq p1, v0, :cond_5

    goto :goto_4

    .line 53
    :cond_5
    iget v0, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->hardwareMetaState:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->hardwareMetaState:I

    goto :goto_4

    .line 58
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v7

    if-eq v7, v6, :cond_7

    if-eq v7, v5, :cond_7

    goto :goto_3

    .line 61
    :cond_7
    iget v5, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->hardwareMetaState:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->hardwareMetaState:I

    :goto_3
    if-eq p1, v0, :cond_8

    goto :goto_4

    .line 67
    :cond_8
    iget v0, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->hardwareMetaState:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->hardwareMetaState:I

    .line 73
    :goto_4
    iget v0, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->onScreenMetaState:I

    iget v5, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->hardwareMetaState:I

    or-int/2addr v0, v5

    or-int/2addr p3, v0

    .line 74
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->rfb:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v0, p1, p3, v3}, Lcom/undatech/opaque/RfbConnectable;->writeKeyEvent(IIZ)V

    if-eqz v3, :cond_9

    .line 76
    iput p3, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->lastDownMetaState:I

    goto :goto_5

    .line 78
    :cond_9
    iput v1, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->lastDownMetaState:I

    :goto_5
    if-nez p1, :cond_b

    .line 82
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object p1

    .line 83
    sget-boolean p3, Lcom/iiordanov/bVNC/App;->debugLog:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "processLocalKeyEvent: getCharacters: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v2, v0}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_a

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    :goto_6
    if-ge v1, p3, :cond_a

    .line 88
    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Landroid/view/KeyEvent;-><init>(JLjava/lang/String;II)V

    .line 89
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->keyboardMapper:Lcom/undatech/opaque/input/RdpKeyboardMapper;

    invoke-virtual {v1, v0}, Lcom/undatech/opaque/input/RdpKeyboardMapper;->processAndroidKeyEvent(Landroid/view/KeyEvent;)Z

    move v1, v2

    goto :goto_6

    :cond_a
    return v4

    .line 95
    :cond_b
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->keyboardMapper:Lcom/undatech/opaque/input/RdpKeyboardMapper;

    invoke-virtual {p1, p2}, Lcom/undatech/opaque/input/RdpKeyboardMapper;->processAndroidKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_c
    return v1
.end method

.method public sendMetaKey(Lcom/iiordanov/bVNC/input/MetaKeyBean;)V
    .locals 5

    .line 103
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getPointer()Lcom/iiordanov/bVNC/input/RemotePointer;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/input/RemotePointer;->getX()I

    move-result v1

    .line 105
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/input/RemotePointer;->getY()I

    move-result v2

    .line 107
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->isMouseClick()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    .line 109
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMouseButtons()I

    move-result v3

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    const/16 v4, 0x10

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMetaFlags()I

    move-result v3

    iget v4, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->onScreenMetaState:I

    or-int/2addr v3, v4

    iget v4, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->hardwareMetaState:I

    or-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/iiordanov/bVNC/input/RemotePointer;->scrollDown(III)V

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMetaFlags()I

    move-result v3

    iget v4, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->onScreenMetaState:I

    or-int/2addr v3, v4

    iget v4, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->hardwareMetaState:I

    or-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/iiordanov/bVNC/input/RemotePointer;->scrollUp(III)V

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMetaFlags()I

    move-result v3

    iget v4, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->onScreenMetaState:I

    or-int/2addr v3, v4

    iget v4, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->hardwareMetaState:I

    or-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/iiordanov/bVNC/input/RemotePointer;->rightButtonDown(III)V

    goto :goto_0

    .line 118
    :cond_3
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMetaFlags()I

    move-result v3

    iget v4, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->onScreenMetaState:I

    or-int/2addr v3, v4

    iget v4, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->hardwareMetaState:I

    or-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/iiordanov/bVNC/input/RemotePointer;->middleButtonDown(III)V

    goto :goto_0

    .line 112
    :cond_4
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMetaFlags()I

    move-result v3

    iget v4, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->onScreenMetaState:I

    or-int/2addr v3, v4

    iget v4, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->hardwareMetaState:I

    or-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/iiordanov/bVNC/input/RemotePointer;->leftButtonDown(III)V

    :goto_0
    const-wide/16 v3, 0x32

    .line 127
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :catch_0
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMetaFlags()I

    move-result p1

    iget v3, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->onScreenMetaState:I

    or-int/2addr p1, v3

    iget v3, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->hardwareMetaState:I

    or-int/2addr p1, v3

    invoke-virtual {v0, v1, v2, p1}, Lcom/iiordanov/bVNC/input/RemotePointer;->releaseButton(III)V

    goto :goto_1

    .line 132
    :cond_5
    sget-object v0, Lcom/iiordanov/bVNC/input/MetaKeyBean;->keyCtrlAltDel:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 134
    iget p1, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->onScreenMetaState:I

    iget v0, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->hardwareMetaState:I

    or-int/2addr p1, v0

    .line 136
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->rfb:Lcom/undatech/opaque/RfbConnectable;

    const/16 v1, 0x1002

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, v2}, Lcom/undatech/opaque/RfbConnectable;->writeKeyEvent(IIZ)V

    .line 137
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->keyboardMapper:Lcom/undatech/opaque/input/RdpKeyboardMapper;

    new-instance v1, Landroid/view/KeyEvent;

    const/16 v3, 0x70

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/undatech/opaque/input/RdpKeyboardMapper;->processAndroidKeyEvent(Landroid/view/KeyEvent;)Z

    .line 138
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->keyboardMapper:Lcom/undatech/opaque/input/RdpKeyboardMapper;

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v4, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/undatech/opaque/input/RdpKeyboardMapper;->processAndroidKeyEvent(Landroid/view/KeyEvent;)Z

    .line 139
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->rfb:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v0, v2, p1, v2}, Lcom/undatech/opaque/RfbConnectable;->writeKeyEvent(IIZ)V

    goto :goto_1

    .line 141
    :cond_6
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getKeySym()I

    move-result v0

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMetaFlags()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;->sendKeySym(II)V

    :goto_1
    return-void
.end method
