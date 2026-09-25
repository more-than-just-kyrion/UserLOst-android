.class public Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;
.super Lcom/iiordanov/bVNC/input/RemoteKeyboard;
.source "RemoteVncKeyboard.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteKeyboard"

.field public static rAltAsIsoL3Shift:Z = false


# instance fields
.field protected canvas:Lcom/iiordanov/bVNC/RemoteCanvas;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;Landroid/os/Handler;ZZ)V
    .locals 1

    .line 19
    invoke-virtual {p2}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p5}, Lcom/iiordanov/bVNC/input/RemoteKeyboard;-><init>(Lcom/undatech/opaque/RfbConnectable;Landroid/content/Context;Landroid/os/Handler;Z)V

    .line 20
    iput-object p2, p0, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    .line 22
    sput-boolean p4, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->rAltAsIsoL3Shift:Z

    return-void
.end method


# virtual methods
.method public processLocalKeyEvent(ILandroid/view/KeyEvent;I)Z
    .locals 39

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "processLocalKeyEvent: Unicode key. Down: false, key: "

    const-string v4, "processLocalKeyEvent: Sending key. Down: "

    .line 26
    sget-boolean v5, Lcom/iiordanov/bVNC/App;->debugLog:Z

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "processLocalKeyEvent: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "RemoteKeyboard"

    invoke-static {v5, v7, v6}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v5, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->rfb:Lcom/undatech/opaque/RfbConnectable;

    if-eqz v5, :cond_26

    iget-object v5, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->rfb:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v5}, Lcom/undatech/opaque/RfbConnectable;->isInNormalProtocol()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 29
    iget-object v5, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v5}, Lcom/iiordanov/bVNC/RemoteCanvas;->getPointer()Lcom/iiordanov/bVNC/input/RemotePointer;

    move-result-object v5

    .line 30
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v8, :cond_1

    .line 31
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-ne v8, v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v10

    .line 34
    :goto_1
    invoke-virtual {v1, v2}, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->convertEventMetaState(Landroid/view/KeyEvent;)I

    move-result v11

    or-int v11, p3, v11

    const/16 v12, 0x52

    if-ne v0, v12, :cond_2

    return v10

    :cond_2
    const/16 v12, 0x19

    if-eq v0, v12, :cond_25

    const/16 v12, 0x18

    if-ne v0, v12, :cond_3

    goto/16 :goto_12

    .line 44
    :cond_3
    iget v12, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->onScreenMetaState:I

    or-int/2addr v12, v11

    iget v13, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->hardwareMetaState:I

    or-int/2addr v12, v13

    invoke-virtual {v5, v0, v2, v12}, Lcom/iiordanov/bVNC/input/RemotePointer;->hardwareButtonsAsMouseEvents(ILandroid/view/KeyEvent;I)Z

    move-result v5

    if-eqz v5, :cond_4

    return v10

    .line 50
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    if-nez v5, :cond_5

    move v5, v10

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    const/16 v12, 0x3a

    const/16 v13, 0x39

    const/16 v14, 0x17

    const/16 v15, 0x61

    const/16 v9, 0x1d

    const v16, 0xffc7

    const v17, 0xffc6

    const v18, 0xffc5

    const v19, 0xffc4

    const v20, 0xffc3

    const v21, 0xffc2

    const v22, 0xffc1

    const v23, 0xffc0

    const v24, 0xffbf

    const v25, 0xffbe

    const v26, 0xff1b

    if-nez v8, :cond_c

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v6

    if-eq v6, v10, :cond_8

    if-eq v6, v9, :cond_7

    if-eq v6, v15, :cond_6

    packed-switch v6, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    move/from16 v6, v16

    goto :goto_4

    :pswitch_1
    move/from16 v6, v17

    goto :goto_4

    :pswitch_2
    move/from16 v6, v18

    goto :goto_4

    :pswitch_3
    move/from16 v6, v19

    goto :goto_4

    :pswitch_4
    move/from16 v6, v20

    goto :goto_4

    :pswitch_5
    move/from16 v6, v21

    goto :goto_4

    :pswitch_6
    move/from16 v6, v22

    goto :goto_4

    :pswitch_7
    move/from16 v6, v23

    goto :goto_4

    :pswitch_8
    move/from16 v6, v24

    goto :goto_4

    :pswitch_9
    move/from16 v6, v25

    goto :goto_4

    .line 58
    :cond_6
    iget v6, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->hardwareMetaState:I

    and-int/lit16 v6, v6, -0x4001

    iput v6, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->hardwareMetaState:I

    goto :goto_3

    .line 55
    :cond_7
    iget v6, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->hardwareMetaState:I

    and-int/lit16 v6, v6, -0x1001

    iput v6, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->hardwareMetaState:I

    :goto_3
    const/4 v6, 0x0

    :goto_4
    const/16 v27, 0x0

    goto :goto_5

    :cond_8
    move/from16 v27, v26

    const/4 v6, 0x0

    :goto_5
    if-eq v0, v14, :cond_b

    if-eq v0, v13, :cond_a

    if-eq v0, v12, :cond_9

    goto :goto_6

    .line 82
    :cond_9
    iget v12, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->hardwareMetaState:I

    and-int/lit8 v12, v12, -0x21

    iput v12, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->hardwareMetaState:I

    goto :goto_6

    :cond_a
    if-nez v5, :cond_d

    .line 79
    iget v12, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->hardwareMetaState:I

    and-int/lit8 v12, v12, -0x3

    iput v12, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->hardwareMetaState:I

    goto :goto_6

    .line 74
    :cond_b
    iget v12, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->hardwareMetaState:I

    and-int/lit16 v12, v12, -0x1001

    iput v12, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->hardwareMetaState:I

    goto :goto_6

    :cond_c
    const/4 v6, 0x0

    const/16 v27, 0x0

    :cond_d
    :goto_6
    if-eqz v0, :cond_16

    const/4 v6, 0x4

    if-eq v0, v6, :cond_15

    const/16 v6, 0x3d

    if-eq v0, v6, :cond_14

    const/16 v6, 0x42

    if-eq v0, v6, :cond_13

    const/16 v6, 0x43

    if-eq v0, v6, :cond_12

    const/16 v6, 0x5c

    if-eq v0, v6, :cond_11

    const/16 v6, 0x5d

    if-eq v0, v6, :cond_10

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    and-int/lit8 v6, v11, 0x2

    if-nez v6, :cond_f

    and-int/lit8 v6, v11, 0x20

    if-eqz v6, :cond_e

    goto :goto_7

    :cond_e
    const v6, 0x77000

    goto :goto_8

    :cond_f
    :goto_7
    const v6, 0x77032

    .line 144
    :goto_8
    new-instance v12, Landroid/view/KeyEvent;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v28

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v30

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v32

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v34

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v27

    not-int v6, v6

    and-int v35, v27, v6

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v36

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v37

    move-object/from16 v27, v12

    invoke-direct/range {v27 .. v37}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    .line 147
    invoke-virtual {v12}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v27

    .line 148
    invoke-static/range {v27 .. v27}, Lcom/iiordanov/tigervnc/rfb/UnicodeToKeysym;->translate(I)I

    move-result v6

    goto/16 :goto_9

    :pswitch_a
    const v6, 0xff7f

    goto/16 :goto_9

    :pswitch_b
    const v6, 0xffc9

    goto/16 :goto_9

    :pswitch_c
    const v6, 0xffc8

    goto/16 :goto_9

    :pswitch_d
    move v12, v10

    move/from16 v6, v16

    goto/16 :goto_a

    :pswitch_e
    move v12, v10

    move/from16 v6, v17

    goto/16 :goto_a

    :pswitch_f
    move v12, v10

    move/from16 v6, v18

    goto/16 :goto_a

    :pswitch_10
    move v12, v10

    move/from16 v6, v19

    goto/16 :goto_a

    :pswitch_11
    move v12, v10

    move/from16 v6, v20

    goto/16 :goto_a

    :pswitch_12
    move v12, v10

    move/from16 v6, v21

    goto/16 :goto_a

    :pswitch_13
    move v12, v10

    move/from16 v6, v22

    goto/16 :goto_a

    :pswitch_14
    move v12, v10

    move/from16 v6, v23

    goto/16 :goto_a

    :pswitch_15
    move v12, v10

    move/from16 v6, v24

    goto/16 :goto_a

    :pswitch_16
    move v12, v10

    move/from16 v6, v25

    goto/16 :goto_a

    :pswitch_17
    const v6, 0xff63

    goto/16 :goto_9

    :pswitch_18
    const v6, 0xff57

    goto/16 :goto_9

    :pswitch_19
    const v6, 0xff50

    goto/16 :goto_9

    :pswitch_1a
    const v6, 0xff6b

    goto/16 :goto_9

    :pswitch_1b
    const v6, 0xff61

    goto/16 :goto_9

    :pswitch_1c
    const v6, 0xffec

    goto/16 :goto_9

    :pswitch_1d
    const v6, 0xffeb

    goto/16 :goto_9

    :pswitch_1e
    const v6, 0xff14

    goto :goto_9

    :pswitch_1f
    const v6, 0xffe5

    goto :goto_9

    :pswitch_20
    const v6, 0xffe4

    goto :goto_9

    :pswitch_21
    const v6, 0xffe3

    goto :goto_9

    :pswitch_22
    const v6, 0xffff

    goto :goto_9

    :pswitch_23
    const v6, 0xff53

    goto :goto_9

    :pswitch_24
    const v6, 0xff51

    goto :goto_9

    :pswitch_25
    const v6, 0xff54

    goto :goto_9

    :pswitch_26
    const v6, 0xff52

    goto :goto_9

    :cond_10
    const v6, 0xff56

    goto :goto_9

    :cond_11
    const v6, 0xff55

    goto :goto_9

    :cond_12
    const v6, 0xff08

    goto :goto_9

    :cond_13
    const v6, 0xff0d

    goto :goto_9

    :cond_14
    const v6, 0xff09

    goto :goto_9

    :cond_15
    :pswitch_27
    move v12, v10

    move/from16 v6, v26

    goto :goto_a

    .line 125
    :cond_16
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_17

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v27

    .line 127
    invoke-static/range {v27 .. v27}, Lcom/iiordanov/tigervnc/rfb/UnicodeToKeysym;->translate(I)I

    move-result v6

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    move/from16 v38, v27

    move/from16 v27, v10

    goto :goto_b

    :cond_17
    :goto_9
    move v12, v10

    :goto_a
    move/from16 v38, v27

    const/16 v27, 0x0

    :goto_b
    if-eqz v8, :cond_1f

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v13

    if-eq v13, v10, :cond_1a

    if-eq v13, v9, :cond_19

    if-eq v13, v15, :cond_18

    packed-switch v13, :pswitch_data_5

    goto :goto_c

    :pswitch_28
    move/from16 v16, v17

    goto :goto_d

    :pswitch_29
    move/from16 v16, v18

    goto :goto_d

    :pswitch_2a
    move/from16 v16, v19

    goto :goto_d

    :pswitch_2b
    move/from16 v16, v20

    goto :goto_d

    :pswitch_2c
    move/from16 v16, v21

    goto :goto_d

    :pswitch_2d
    move/from16 v16, v22

    goto :goto_d

    :pswitch_2e
    move/from16 v16, v23

    goto :goto_d

    :pswitch_2f
    move/from16 v16, v24

    goto :goto_d

    :pswitch_30
    move/from16 v16, v25

    goto :goto_d

    .line 160
    :cond_18
    iget v9, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->hardwareMetaState:I

    or-int/lit16 v9, v9, 0x4000

    iput v9, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->hardwareMetaState:I

    goto :goto_c

    .line 157
    :cond_19
    iget v9, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->hardwareMetaState:I

    or-int/lit16 v9, v9, 0x1000

    iput v9, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->hardwareMetaState:I

    :goto_c
    move/from16 v16, v6

    goto :goto_d

    :cond_1a
    move/from16 v16, v26

    :goto_d
    :pswitch_31
    if-eq v0, v14, :cond_1d

    const/16 v6, 0x39

    if-eq v0, v6, :cond_1c

    const/16 v6, 0x3a

    if-eq v0, v6, :cond_1b

    goto :goto_e

    .line 184
    :cond_1b
    iget v0, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->hardwareMetaState:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->hardwareMetaState:I

    goto :goto_e

    :cond_1c
    if-nez v5, :cond_1e

    .line 181
    iget v0, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->hardwareMetaState:I

    const/4 v5, 0x2

    or-int/2addr v0, v5

    iput v0, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->hardwareMetaState:I

    goto :goto_e

    .line 176
    :cond_1d
    iget v0, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->hardwareMetaState:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->hardwareMetaState:I

    :cond_1e
    :goto_e
    move/from16 v6, v16

    .line 190
    :cond_1f
    :try_start_0
    iget-boolean v0, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->afterMenu:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->afterMenu:Z

    if-nez v8, :cond_20

    .line 192
    iget v0, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->lastKeyDown:I

    if-eq v6, v0, :cond_20

    return v10

    :cond_20
    if-eqz v8, :cond_21

    .line 196
    iput v6, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->lastKeyDown:I

    .line 198
    :cond_21
    iget v0, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->onScreenMetaState:I

    or-int/2addr v0, v11

    iget v5, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->hardwareMetaState:I

    or-int/2addr v0, v5

    if-eqz v8, :cond_22

    .line 200
    iput v0, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->lastDownMetaState:I

    goto :goto_f

    :cond_22
    const/4 v5, 0x0

    .line 202
    iput v5, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->lastDownMetaState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_f
    const-string v5, ", metaState: "

    if-ne v12, v10, :cond_23

    .line 206
    :try_start_1
    sget-boolean v2, Lcom/iiordanov/bVNC/App;->debugLog:Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ", key: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v9, v38

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ". keysym:"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v7, v4}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v2, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->rfb:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v2, v6, v0, v8}, Lcom/undatech/opaque/RfbConnectable;->writeKeyEvent(IIZ)V

    if-eqz v27, :cond_24

    .line 211
    sget-boolean v2, Lcom/iiordanov/bVNC/App;->debugLog:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". keysym:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v7, v3}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v2, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->rfb:Lcom/undatech/opaque/RfbConnectable;

    const/4 v3, 0x0

    invoke-interface {v2, v6, v0, v3}, Lcom/undatech/opaque/RfbConnectable;->writeKeyEvent(IIZ)V

    goto :goto_11

    :cond_23
    if-le v12, v10, :cond_24

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v12, :cond_24

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 219
    invoke-static {v4}, Lcom/iiordanov/tigervnc/rfb/UnicodeToKeysym;->translate(I)I

    move-result v6

    .line 220
    sget-boolean v8, Lcom/iiordanov/bVNC/App;->debugLog:Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processLocalKeyEvent: Sending multiple keys. Key: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " keysym: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v7, v4}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v4, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->rfb:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v4, v6, v0, v10}, Lcom/undatech/opaque/RfbConnectable;->writeKeyEvent(IIZ)V

    .line 223
    iget-object v4, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->rfb:Lcom/undatech/opaque/RfbConnectable;

    const/4 v8, 0x0

    invoke-interface {v4, v6, v0, v8}, Lcom/undatech/opaque/RfbConnectable;->writeKeyEvent(IIZ)V

    .line 224
    iput v8, v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->lastDownMetaState:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :catch_0
    move-exception v0

    .line 228
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_24
    :goto_11
    return v10

    :cond_25
    :goto_12
    const/4 v0, 0x0

    return v0

    :cond_26
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6f
        :pswitch_27
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x78
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x83
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x3b
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_31
    .end packed-switch
.end method

.method public sendMetaKey(Lcom/iiordanov/bVNC/input/MetaKeyBean;)V
    .locals 8

    .line 236
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getPointer()Lcom/iiordanov/bVNC/input/RemotePointer;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/input/RemotePointer;->getX()I

    move-result v7

    .line 238
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/input/RemotePointer;->getY()I

    move-result v0

    .line 240
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->isMouseClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->rfb:Lcom/undatech/opaque/RfbConnectable;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMetaFlags()I

    move-result v2

    iget v3, p0, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->onScreenMetaState:I

    or-int/2addr v2, v3

    iget v3, p0, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->hardwareMetaState:I

    or-int v4, v2, v3

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMouseButtons()I

    move-result v5

    const/4 v6, 0x0

    move v2, v7

    move v3, v0

    invoke-interface/range {v1 .. v6}, Lcom/undatech/opaque/RfbConnectable;->writePointerEvent(IIIIZ)V

    .line 242
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->rfb:Lcom/undatech/opaque/RfbConnectable;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMetaFlags()I

    move-result p1

    iget v2, p0, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->onScreenMetaState:I

    or-int/2addr p1, v2

    iget v2, p0, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->hardwareMetaState:I

    or-int v4, p1, v2

    const/4 v5, 0x0

    move v2, v7

    invoke-interface/range {v1 .. v6}, Lcom/undatech/opaque/RfbConnectable;->writePointerEvent(IIIIZ)V

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->rfb:Lcom/undatech/opaque/RfbConnectable;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getKeySym()I

    move-result v1

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMetaFlags()I

    move-result v2

    iget v3, p0, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->onScreenMetaState:I

    or-int/2addr v2, v3

    iget v3, p0, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->hardwareMetaState:I

    or-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/undatech/opaque/RfbConnectable;->writeKeyEvent(IIZ)V

    .line 245
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->rfb:Lcom/undatech/opaque/RfbConnectable;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getKeySym()I

    move-result v1

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMetaFlags()I

    move-result p1

    iget v2, p0, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->onScreenMetaState:I

    or-int/2addr p1, v2

    iget v2, p0, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->hardwareMetaState:I

    or-int/2addr p1, v2

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/undatech/opaque/RfbConnectable;->writeKeyEvent(IIZ)V

    :goto_0
    return-void
.end method
