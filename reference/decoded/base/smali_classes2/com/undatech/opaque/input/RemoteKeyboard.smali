.class public abstract Lcom/undatech/opaque/input/RemoteKeyboard;
.super Ljava/lang/Object;
.source "RemoteKeyboard.java"


# static fields
.field public static final ALT_MASK:I = 0x2

.field public static final CTRL_MASK:I = 0x1000

.field public static final RALT_MASK:I = 0x20

.field public static final RCTRL_MASK:I = 0x4000

.field public static final RSHIFT_MASK:I = 0x80

.field public static final RSUPER_MASK:I = 0x40000

.field public static final SCAN_DELETE:I = 0x6f

.field public static final SCAN_ESC:I = 0x1

.field public static final SCAN_F1:I = 0x3b

.field public static final SCAN_F10:I = 0x44

.field public static final SCAN_F2:I = 0x3c

.field public static final SCAN_F3:I = 0x3d

.field public static final SCAN_F4:I = 0x3e

.field public static final SCAN_F5:I = 0x3f

.field public static final SCAN_F6:I = 0x40

.field public static final SCAN_F7:I = 0x41

.field public static final SCAN_F8:I = 0x42

.field public static final SCAN_F9:I = 0x43

.field public static final SCAN_LEFTALT:I = 0x38

.field public static final SCAN_LEFTCTRL:I = 0x1d

.field public static final SCAN_LEFTSHIFT:I = 0x2a

.field public static final SCAN_LEFTSUPER:I = 0x7d

.field public static final SCAN_RIGHTALT:I = 0x64

.field public static final SCAN_RIGHTCTRL:I = 0x61

.field public static final SCAN_RIGHTSHIFT:I = 0x36

.field public static final SCAN_RIGHTSUPER:I = 0x7e

.field public static final SHIFT_MASK:I = 0x1

.field public static final SUPER_MASK:I = 0x20000

.field private static final TAG:Ljava/lang/String; = "RemoteKeyboard"


# instance fields
.field protected afterMenu:Z

.field cameraButtonDown:Z

.field protected context:Landroid/content/Context;

.field protected debugLog:Z

.field protected handler:Landroid/os/Handler;

.field protected hardwareMetaState:I

.field protected keyRepeater:Lcom/undatech/opaque/input/KeyRepeater;

.field protected lastDownMetaState:I

.field protected lastKeyDown:I

.field protected onScreenMetaState:I

.field protected rfb:Lcom/undatech/opaque/RfbConnectable;


# direct methods
.method public constructor <init>(Lcom/undatech/opaque/RfbConnectable;Landroid/content/Context;Landroid/os/Handler;Z)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x0

    .line 74
    iput p4, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->hardwareMetaState:I

    .line 77
    iput-boolean p4, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->cameraButtonDown:Z

    .line 84
    iput p4, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->onScreenMetaState:I

    .line 87
    iput p4, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->lastDownMetaState:I

    .line 89
    iput-boolean p4, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->debugLog:Z

    .line 92
    iput-object p1, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->rfb:Lcom/undatech/opaque/RfbConnectable;

    .line 93
    iput-object p2, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->context:Landroid/content/Context;

    .line 94
    iput-object p3, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->handler:Landroid/os/Handler;

    .line 96
    new-instance p1, Lcom/undatech/opaque/input/KeyRepeater;

    invoke-direct {p1, p0, p3}, Lcom/undatech/opaque/input/KeyRepeater;-><init>(Lcom/undatech/opaque/input/RemoteKeyboard;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->keyRepeater:Lcom/undatech/opaque/input/KeyRepeater;

    return-void
.end method


# virtual methods
.method public clearMetaState()V
    .locals 1

    const/4 v0, 0x0

    .line 214
    iput v0, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->onScreenMetaState:I

    return-void
.end method

.method protected convertEventMetaState(Landroid/view/KeyEvent;)I
    .locals 1

    .line 278
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/undatech/opaque/input/RemoteKeyboard;->convertEventMetaState(Landroid/view/KeyEvent;I)I

    move-result p1

    return p1
.end method

.method protected convertEventMetaState(Landroid/view/KeyEvent;I)I
    .locals 4

    .line 291
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v0

    const-string v1, "RemoteKeyboard"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p1

    if-nez p1, :cond_0

    .line 295
    iget-boolean p1, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->debugLog:Z

    const-string v0, "convertEventMetaState: Ignoring KeyEvent.META_ALT_LEFT_ON to allow for symbol input."

    invoke-static {p1, v1, v0}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    move p1, v2

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    :goto_0
    and-int/lit8 v0, p2, 0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 300
    iget-boolean v0, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->debugLog:Z

    const-string v2, "convertEventMetaState: KeyEvent.META_SHIFT_ON"

    invoke-static {v0, v1, v2}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    move v2, v3

    :cond_1
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_2

    .line 304
    iget-boolean v0, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->debugLog:Z

    const-string v2, "convertEventMetaState: KeyEvent.META_SHIFT_LEFT_ON"

    invoke-static {v0, v1, v2}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    and-int/lit16 v0, p2, 0x80

    if-eqz v0, :cond_3

    .line 308
    iget-boolean v0, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->debugLog:Z

    const-string v2, "convertEventMetaState: KeyEvent.META_SHIFT_RIGHT_ON"

    invoke-static {v0, v1, v2}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    or-int/lit16 v3, v3, 0x80

    :cond_3
    and-int/lit16 v0, p2, 0x1000

    if-eqz v0, :cond_4

    .line 312
    iget-boolean v0, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->debugLog:Z

    const-string v2, "convertEventMetaState: KeyEvent.META_CTRL_ON"

    invoke-static {v0, v1, v2}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    or-int/lit16 v3, v3, 0x1000

    :cond_4
    and-int/lit16 v0, p2, 0x2000

    if-eqz v0, :cond_5

    .line 316
    iget-boolean v0, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->debugLog:Z

    const-string v2, "convertEventMetaState: KeyEvent.META_CTRL_LEFT_ON"

    invoke-static {v0, v1, v2}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    or-int/lit16 v3, v3, 0x1000

    :cond_5
    and-int/lit16 v0, p2, 0x4000

    if-eqz v0, :cond_6

    .line 320
    iget-boolean v0, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->debugLog:Z

    const-string v2, "convertEventMetaState: KeyEvent.META_CTRL_RIGHT_ON"

    invoke-static {v0, v1, v2}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    or-int/lit16 v3, v3, 0x4000

    :cond_6
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_7

    .line 324
    iget-boolean v0, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->debugLog:Z

    const-string v2, "convertEventMetaState: KeyEvent.META_ALT_ON"

    invoke-static {v0, v1, v2}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    or-int/lit8 v3, v3, 0x2

    :cond_7
    and-int/2addr p1, p2

    if-eqz p1, :cond_8

    .line 328
    iget-boolean p1, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->debugLog:Z

    const-string v0, "convertEventMetaState: KeyEvent.META_ALT_LEFT_ON"

    invoke-static {p1, v1, v0}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    or-int/lit8 v3, v3, 0x2

    :cond_8
    and-int/lit8 p1, p2, 0x20

    if-eqz p1, :cond_9

    .line 332
    iget-boolean p1, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->debugLog:Z

    const-string v0, "convertEventMetaState: KeyEvent.META_ALT_RIGHT_ON"

    invoke-static {p1, v1, v0}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    or-int/lit8 v3, v3, 0x20

    :cond_9
    const/high16 p1, 0x10000

    and-int/2addr p1, p2

    const/high16 v0, 0x20000

    if-eqz p1, :cond_a

    .line 336
    iget-boolean p1, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->debugLog:Z

    const-string v2, "convertEventMetaState: KeyEvent.META_META_ON"

    invoke-static {p1, v1, v2}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    or-int/2addr v3, v0

    :cond_a
    and-int p1, p2, v0

    if-eqz p1, :cond_b

    .line 340
    iget-boolean p1, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->debugLog:Z

    const-string v2, "convertEventMetaState: KeyEvent.META_META_LEFT_ON"

    invoke-static {p1, v1, v2}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    or-int/2addr v3, v0

    :cond_b
    const/high16 p1, 0x40000

    and-int/2addr p2, p1

    if-eqz p2, :cond_c

    .line 344
    iget-boolean p2, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->debugLog:Z

    const-string v0, "convertEventMetaState: KeyEvent.META_META_RIGHT_ON"

    invoke-static {p2, v1, v0}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    or-int/2addr v3, p1

    :cond_c
    return v3
.end method

.method public getCameraButtonDown()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->cameraButtonDown:Z

    return v0
.end method

.method public getMetaState()I
    .locals 2

    .line 202
    iget v0, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->onScreenMetaState:I

    iget v1, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->lastDownMetaState:I

    or-int/2addr v0, v1

    return v0
.end method

.method public keyEvent(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, p1, p2, v0}, Lcom/undatech/opaque/input/RemoteKeyboard;->processLocalKeyEvent(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1
.end method

.method public onScreenAltOff()V
    .locals 1

    .line 152
    iget v0, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->onScreenMetaState:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->onScreenMetaState:I

    return-void
.end method

.method public onScreenAltToggle()Z
    .locals 2

    .line 138
    iget v0, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->onScreenMetaState:I

    or-int/lit8 v1, v0, 0x2

    if-ne v0, v1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/undatech/opaque/input/RemoteKeyboard;->onScreenAltOff()V

    const/4 v0, 0x0

    return v0

    :cond_0
    or-int/lit8 v0, v0, 0x2

    .line 143
    iput v0, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->onScreenMetaState:I

    const/4 v0, 0x1

    return v0
.end method

.method public onScreenCtrlOff()V
    .locals 1

    .line 129
    iget v0, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->onScreenMetaState:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->onScreenMetaState:I

    return-void
.end method

.method public onScreenCtrlToggle()Z
    .locals 2

    .line 115
    iget v0, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->onScreenMetaState:I

    or-int/lit16 v1, v0, 0x1000

    if-ne v0, v1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/undatech/opaque/input/RemoteKeyboard;->onScreenCtrlOff()V

    const/4 v0, 0x0

    return v0

    :cond_0
    or-int/lit16 v0, v0, 0x1000

    .line 120
    iput v0, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->onScreenMetaState:I

    const/4 v0, 0x1

    return v0
.end method

.method public onScreenShiftOff()V
    .locals 1

    .line 198
    iget v0, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->onScreenMetaState:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->onScreenMetaState:I

    return-void
.end method

.method public onScreenShiftToggle()Z
    .locals 2

    .line 184
    iget v0, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->onScreenMetaState:I

    or-int/lit8 v1, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/undatech/opaque/input/RemoteKeyboard;->onScreenShiftOff()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    or-int/2addr v0, v1

    .line 189
    iput v0, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->onScreenMetaState:I

    return v1
.end method

.method public onScreenSuperOff()V
    .locals 2

    .line 175
    iget v0, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->onScreenMetaState:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->onScreenMetaState:I

    return-void
.end method

.method public onScreenSuperToggle()Z
    .locals 3

    .line 161
    iget v0, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->onScreenMetaState:I

    const/high16 v1, 0x20000

    or-int v2, v0, v1

    if-ne v0, v2, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/undatech/opaque/input/RemoteKeyboard;->onScreenSuperOff()V

    const/4 v0, 0x0

    return v0

    :cond_0
    or-int/2addr v0, v1

    .line 166
    iput v0, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->onScreenMetaState:I

    const/4 v0, 0x1

    return v0
.end method

.method public abstract processLocalKeyEvent(ILandroid/view/KeyEvent;I)Z
.end method

.method public repeatKeyEvent(ILandroid/view/KeyEvent;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->keyRepeater:Lcom/undatech/opaque/input/KeyRepeater;

    invoke-virtual {v0, p1, p2}, Lcom/undatech/opaque/input/KeyRepeater;->start(ILandroid/view/KeyEvent;)V

    return-void
.end method

.method public sendKeySym(II)V
    .locals 2

    int-to-long v0, p1

    .line 237
    invoke-static {v0, v1}, Lcom/undatech/opaque/input/XKeySymCoverter;->keysym2ucs(J)J

    move-result-wide v0

    long-to-int p1, v0

    int-to-char p1, p1

    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/undatech/opaque/input/RemoteKeyboard;->sendUnicode(CI)Z

    return-void
.end method

.method public sendText(Ljava/lang/String;)V
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    .line 218
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 220
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 221
    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    const-wide/16 v4, 0xa

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 224
    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x42

    invoke-direct {v2, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v3, v2}, Lcom/undatech/opaque/input/RemoteKeyboard;->keyEvent(ILandroid/view/KeyEvent;)Z

    .line 225
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :catch_0
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v3, v2}, Lcom/undatech/opaque/input/RemoteKeyboard;->keyEvent(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 229
    :cond_0
    new-instance v2, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Landroid/view/KeyEvent;-><init>(JLjava/lang/String;II)V

    .line 230
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {p0, v3, v2}, Lcom/undatech/opaque/input/RemoteKeyboard;->keyEvent(ILandroid/view/KeyEvent;)Z

    .line 231
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public sendUnicode(CI)Z
    .locals 5

    const/4 v0, 0x4

    .line 247
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    const/4 v1, -0x1

    .line 248
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    const/4 v2, 0x1

    .line 250
    new-array v3, v2, [C

    const/4 v4, 0x0

    aput-char p1, v3, v4

    .line 252
    invoke-virtual {v0, v3}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 255
    invoke-virtual {v1, v3}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 259
    array-length p1, v0

    if-lez p1, :cond_2

    .line 260
    aget-object p1, v0, v4

    .line 261
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/undatech/opaque/input/RemoteKeyboard;->processLocalKeyEvent(ILandroid/view/KeyEvent;I)Z

    .line 262
    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-direct {v0, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 263
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {p0, p1, v0, p2}, Lcom/undatech/opaque/input/RemoteKeyboard;->processLocalKeyEvent(ILandroid/view/KeyEvent;I)Z

    return v2

    .line 267
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Could not use any keymap to generate KeyEvent for unicode: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RemoteKeyboard"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v4
.end method

.method public setAfterMenu(Z)V
    .locals 0

    .line 206
    iput-boolean p1, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->afterMenu:Z

    return-void
.end method

.method public stopRepeatingKeyEvent()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/undatech/opaque/input/RemoteKeyboard;->keyRepeater:Lcom/undatech/opaque/input/KeyRepeater;

    invoke-virtual {v0}, Lcom/undatech/opaque/input/KeyRepeater;->stop()V

    return-void
.end method
