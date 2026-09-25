.class public Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;
.super Lcom/iiordanov/bVNC/input/RemoteKeyboard;
.source "RemoteSpiceKeyboard.java"


# static fields
.field static final SCANCODE_ALTGR_MASK:I = 0x20000

.field static final SCANCODE_CIRCUMFLEX_MASK:I = 0x40000

.field static final SCANCODE_DIAERESIS_MASK:I = 0x80000

.field static final SCANCODE_SHIFT_MASK:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "RemoteSpiceKeyboard"

.field static final UNICODE_MASK:I = 0x100000

.field static final UNICODE_META_MASK:I = 0x177000


# instance fields
.field protected canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

.field private table:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/undatech/opaque/SpiceCommunicator;Lcom/iiordanov/bVNC/RemoteCanvas;Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-virtual {p3}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4, p6}, Lcom/iiordanov/bVNC/input/RemoteKeyboard;-><init>(Lcom/undatech/opaque/RfbConnectable;Landroid/content/Context;Landroid/os/Handler;Z)V

    .line 53
    iput-object p3, p0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "layouts/"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->loadKeyMap(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->table:Ljava/util/HashMap;

    return-void
.end method

.method private loadKeyMap(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string p2, "layouts/English (US)"

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 65
    :goto_0
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 66
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    .line 67
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    :goto_1
    if-eqz p1, :cond_1

    .line 70
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 71
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/Integer;

    .line 72
    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, -0x1

    .line 73
    aget-object v4, p1, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    .line 75
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private setHardwareMetaState(ILandroid/view/KeyEvent;Z)V
    .locals 4

    .line 89
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 92
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result p2

    const/16 v2, 0x1d

    const/16 v3, 0x1000

    if-eq p2, v2, :cond_1

    const/16 v2, 0x61

    if-eq p2, v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    const/16 p2, 0x17

    if-eq p1, p2, :cond_5

    const/16 p2, 0x39

    if-eq p1, p2, :cond_3

    const/16 p2, 0x3a

    if-eq p1, p2, :cond_2

    goto :goto_2

    :cond_2
    or-int/lit8 v3, v1, 0x20

    goto :goto_3

    :cond_3
    if-nez v0, :cond_4

    or-int/lit8 v3, v1, 0x2

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v1

    :cond_5
    :goto_3
    if-nez p3, :cond_6

    .line 114
    iget p1, p0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->hardwareMetaState:I

    not-int p2, v3

    and-int/2addr p1, p2

    iput p1, p0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->hardwareMetaState:I

    goto :goto_4

    .line 116
    :cond_6
    iget p1, p0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->hardwareMetaState:I

    or-int/2addr p1, v3

    iput p1, p0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->hardwareMetaState:I

    :goto_4
    return-void
.end method

.method private writeKeyEvent(ZIIZZ)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 254
    iput p3, p0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->lastDownMetaState:I

    goto :goto_0

    .line 256
    :cond_0
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->lastDownMetaState:I

    :goto_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x100000

    or-int/2addr p2, p1

    .line 265
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->table:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    const-string p2, "RemoteSpiceKeyboard"

    if-nez p1, :cond_2

    .line 267
    :try_start_1
    const-string p1, "Could not convert KeyCode to scan codes. Not sending key."

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    move v1, v0

    .line 270
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_6

    .line 271
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/high16 v3, 0x10000

    and-int/2addr v3, v2

    if-eqz v3, :cond_3

    .line 275
    const-string v3, "Found Shift mask."

    invoke-static {p2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v3, p3, 0x1

    const v4, -0x10001

    and-int/2addr v2, v4

    goto :goto_2

    :cond_3
    move v3, p3

    :goto_2
    const/high16 v4, 0x20000

    and-int/2addr v4, v2

    if-eqz v4, :cond_4

    .line 280
    const-string v4, "Found AltGr mask."

    invoke-static {p2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v3, v3, 0x20

    const v4, -0x20001

    and-int/2addr v2, v4

    .line 285
    :cond_4
    iget-object v4, p0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->rfb:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v4, v2, v3, p4}, Lcom/undatech/opaque/RfbConnectable;->writeKeyEvent(IIZ)V

    if-eqz p5, :cond_5

    .line 287
    iget-object v4, p0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->rfb:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v4, v2, v3, v0}, Lcom/undatech/opaque/RfbConnectable;->writeKeyEvent(IIZ)V

    .line 288
    const-string v2, "UNsetting lastDownMetaState"

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->lastDownMetaState:I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 293
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_6
    return-void
.end method


# virtual methods
.method protected convertEventMetaState(Landroid/view/KeyEvent;I)I
    .locals 5

    .line 130
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x20

    goto :goto_0

    :cond_0
    const/16 p1, 0x32

    :goto_0
    and-int/lit16 v0, p2, 0xc1

    .line 136
    const-string v1, "RemoteSpiceKeyboard"

    if-eqz v0, :cond_1

    .line 137
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->debugLog:Z

    const-string v2, "convertEventMetaState: KeyEvent.META_SHIFT_MASK"

    invoke-static {v0, v1, v2}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    and-int/lit16 v2, p2, 0x7000

    if-eqz v2, :cond_2

    .line 141
    iget-boolean v2, p0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->debugLog:Z

    const-string v3, "convertEventMetaState: KeyEvent.META_CTRL_MASK"

    invoke-static {v2, v1, v3}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    or-int/lit16 v0, v0, 0x1000

    :cond_2
    and-int v2, p2, p1

    if-eqz v2, :cond_3

    .line 145
    iget-boolean v2, p0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->debugLog:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "convertEventMetaState: altMask: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    or-int/lit8 v0, v0, 0x2

    :cond_3
    const/high16 p1, 0x70000

    and-int/2addr p1, p2

    if-eqz p1, :cond_4

    .line 149
    iget-boolean p1, p0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->debugLog:Z

    const-string p2, "convertEventMetaState: KeyEvent.META_META_MASK"

    invoke-static {p1, v1, p2}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    const/high16 p1, 0x20000

    or-int/2addr v0, p1

    :cond_4
    return v0
.end method

.method public keyEvent(ILandroid/view/KeyEvent;I)Z
    .locals 13

    move-object v6, p0

    move v0, p1

    move-object v1, p2

    move/from16 v7, p3

    .line 161
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v8, 0x1

    if-nez v2, :cond_0

    move v4, v8

    goto :goto_0

    :cond_0
    move v4, v3

    .line 164
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    invoke-virtual {p0, p2, v5}, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->convertEventMetaState(Landroid/view/KeyEvent;I)I

    move-result v5

    or-int/2addr v5, v7

    if-eqz v4, :cond_2

    const/16 v9, 0x39

    if-eq v0, v9, :cond_1

    const/16 v9, 0x3a

    if-eq v0, v9, :cond_1

    const/16 v9, 0x3b

    if-eq v0, v9, :cond_1

    const/16 v9, 0x3c

    if-ne v0, v9, :cond_2

    .line 179
    :cond_1
    iput v5, v6, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->lastDownMetaState:I

    return v8

    .line 184
    :cond_2
    invoke-direct {p0, p1, p2, v4}, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->setHardwareMetaState(ILandroid/view/KeyEvent;Z)V

    const/16 v9, 0x52

    if-eq v0, v9, :cond_c

    .line 187
    iget-object v9, v6, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    .line 188
    invoke-virtual {v9}, Lcom/iiordanov/bVNC/RemoteCanvas;->getPointer()Lcom/iiordanov/bVNC/input/RemotePointer;

    move-result-object v9

    iget v10, v6, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->onScreenMetaState:I

    or-int/2addr v10, v5

    iget v11, v6, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->hardwareMetaState:I

    or-int/2addr v10, v11

    invoke-virtual {v9, p1, p2, v10}, Lcom/iiordanov/bVNC/input/RemotePointer;->hardwareButtonsAsMouseEvents(ILandroid/view/KeyEvent;I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_5

    .line 191
    :cond_3
    iget-object v0, v6, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->rfb:Lcom/undatech/opaque/RfbConnectable;

    if-eqz v0, :cond_c

    iget-object v0, v6, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->rfb:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v0}, Lcom/undatech/opaque/RfbConnectable;->isInNormalProtocol()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 193
    iget v0, v6, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->onScreenMetaState:I

    iget v9, v6, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->hardwareMetaState:I

    or-int/2addr v0, v9

    or-int v9, v0, v5

    const/4 v0, 0x2

    if-ne v2, v0, :cond_5

    .line 197
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 199
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    move v12, v3

    :goto_1
    if-ge v12, v11, :cond_c

    .line 202
    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0, v7}, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->sendUnicode(CI)Z

    move-result v0

    if-nez v0, :cond_4

    .line 203
    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v1, 0x1

    move-object v0, p0

    move v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->writeKeyEvent(ZIIZZ)V

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 209
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    const v2, -0x177001

    and-int/2addr v0, v2

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v0

    if-lez v0, :cond_9

    .line 216
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x32

    if-eqz v2, :cond_6

    .line 217
    iget-object v2, v6, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->table:Ljava/util/HashMap;

    const/high16 v5, 0x100000

    or-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_8

    .line 222
    array-length v2, v2

    if-nez v2, :cond_7

    goto :goto_3

    .line 227
    :cond_7
    iget v2, v6, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->onScreenMetaState:I

    or-int/2addr v2, v7

    iget v3, v6, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->hardwareMetaState:I

    or-int/2addr v2, v3

    .line 228
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    and-int/lit16 v3, v3, -0xf4

    invoke-virtual {p0, p2, v3}, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->convertEventMetaState(Landroid/view/KeyEvent;I)I

    move-result v3

    or-int/2addr v3, v2

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v0, -0x1

    :cond_9
    :goto_4
    if-gtz v0, :cond_a

    .line 234
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    const v2, -0x177033

    and-int/2addr v0, v2

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v0

    .line 235
    iget v2, v6, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->onScreenMetaState:I

    or-int/2addr v2, v7

    iget v3, v6, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->hardwareMetaState:I

    or-int/2addr v2, v3

    .line 236
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    and-int/lit16 v3, v3, -0xc2

    invoke-virtual {p0, p2, v3}, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->convertEventMetaState(Landroid/view/KeyEvent;I)I

    move-result v3

    or-int/2addr v2, v3

    move v3, v2

    :cond_a
    move v2, v0

    if-lez v2, :cond_b

    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    .line 241
    invoke-direct/range {v0 .. v5}, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->writeKeyEvent(ZIIZZ)V

    goto :goto_5

    .line 244
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Could not get unicode or determine scancodes for event. Keycode: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RemoteSpiceKeyboard"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->writeKeyEvent(ZIIZZ)V

    :cond_c
    :goto_5
    return v8
.end method

.method public processLocalKeyEvent(ILandroid/view/KeyEvent;I)Z
    .locals 0

    .line 156
    invoke-virtual {p0, p1, p2, p3}, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->keyEvent(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1
.end method

.method public sendMetaKey(Lcom/iiordanov/bVNC/input/MetaKeyBean;)V
    .locals 7

    .line 298
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getPointer()Lcom/iiordanov/bVNC/input/RemotePointer;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/input/RemotePointer;->getX()I

    move-result v1

    .line 300
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/input/RemotePointer;->getY()I

    move-result v2

    .line 302
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->isMouseClick()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 304
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMouseButtons()I

    move-result v3

    const/4 v4, 0x1

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

    .line 319
    :cond_0
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMetaFlags()I

    move-result v3

    iget v4, p0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->onScreenMetaState:I

    or-int/2addr v3, v4

    iget v4, p0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->hardwareMetaState:I

    or-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/iiordanov/bVNC/input/RemotePointer;->scrollDown(III)V

    goto :goto_0

    .line 316
    :cond_1
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMetaFlags()I

    move-result v3

    iget v4, p0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->onScreenMetaState:I

    or-int/2addr v3, v4

    iget v4, p0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->hardwareMetaState:I

    or-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/iiordanov/bVNC/input/RemotePointer;->scrollUp(III)V

    goto :goto_0

    .line 310
    :cond_2
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMetaFlags()I

    move-result v3

    iget v4, p0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->onScreenMetaState:I

    or-int/2addr v3, v4

    iget v4, p0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->hardwareMetaState:I

    or-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/iiordanov/bVNC/input/RemotePointer;->rightButtonDown(III)V

    goto :goto_0

    .line 313
    :cond_3
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMetaFlags()I

    move-result v3

    iget v4, p0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->onScreenMetaState:I

    or-int/2addr v3, v4

    iget v4, p0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->hardwareMetaState:I

    or-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/iiordanov/bVNC/input/RemotePointer;->middleButtonDown(III)V

    goto :goto_0

    .line 307
    :cond_4
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMetaFlags()I

    move-result v3

    iget v4, p0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->onScreenMetaState:I

    or-int/2addr v3, v4

    iget v4, p0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->hardwareMetaState:I

    or-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/iiordanov/bVNC/input/RemotePointer;->leftButtonDown(III)V

    :goto_0
    const-wide/16 v3, 0x32

    .line 322
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :catch_0
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMetaFlags()I

    move-result p1

    iget v3, p0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->onScreenMetaState:I

    or-int/2addr p1, v3

    iget v3, p0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->hardwareMetaState:I

    or-int/2addr p1, v3

    invoke-virtual {v0, v1, v2, p1}, Lcom/iiordanov/bVNC/input/RemotePointer;->releaseButton(III)V

    goto :goto_1

    .line 327
    :cond_5
    sget-object v0, Lcom/iiordanov/bVNC/input/MetaKeyBean;->keyCtrlAltDel:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x70

    const/16 v4, 0x1002

    move-object v1, p0

    .line 328
    invoke-direct/range {v1 .. v6}, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->writeKeyEvent(ZIIZZ)V

    goto :goto_1

    .line 330
    :cond_6
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getKeySym()I

    move-result v0

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMetaFlags()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;->sendKeySym(II)V

    :goto_1
    return-void
.end method
