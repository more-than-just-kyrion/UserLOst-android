.class public Lcom/iiordanov/bVNC/input/RemoteVncPointer;
.super Lcom/iiordanov/bVNC/input/RemotePointer;
.source "RemoteVncPointer.java"


# static fields
.field public static final MOUSE_BUTTON_LEFT:I = 0x1

.field public static final MOUSE_BUTTON_MIDDLE:I = 0x2

.field public static final MOUSE_BUTTON_NONE:I = 0x0

.field public static final MOUSE_BUTTON_RIGHT:I = 0x4

.field public static final MOUSE_BUTTON_SCROLL_DOWN:I = 0x10

.field public static final MOUSE_BUTTON_SCROLL_LEFT:I = 0x20

.field public static final MOUSE_BUTTON_SCROLL_RIGHT:I = 0x40

.field public static final MOUSE_BUTTON_SCROLL_UP:I = 0x8

.field private static final TAG:Ljava/lang/String; = "RemotePointer"


# direct methods
.method public constructor <init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;Landroid/os/Handler;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/iiordanov/bVNC/input/RemotePointer;-><init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;Landroid/os/Handler;)V

    return-void
.end method

.method private sendPointerEvent(IIIZ)V
    .locals 7

    .line 120
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getKeyboard()Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/input/RemoteKeyboard;->getMetaState()I

    move-result v0

    or-int/2addr p3, v0

    if-nez p4, :cond_1

    .line 126
    iget p4, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->prevPointerMask:I

    if-eqz p4, :cond_0

    iget p4, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->prevPointerMask:I

    iget v0, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerMask:I

    if-eq p4, v0, :cond_0

    .line 127
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->protocomm:Lcom/undatech/opaque/RfbConnectable;

    iget v2, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerX:I

    iget v3, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerY:I

    iget p4, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->prevPointerMask:I

    const v0, -0x8001

    and-int v5, p4, v0

    const/4 v6, 0x0

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/undatech/opaque/RfbConnectable;->writePointerEvent(IIIIZ)V

    .line 131
    :cond_0
    iget p4, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerMask:I

    iput p4, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->prevPointerMask:I

    .line 134
    :cond_1
    iget-object p4, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p4}, Lcom/iiordanov/bVNC/RemoteCanvas;->invalidateMousePosition()V

    .line 135
    iput p1, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerX:I

    .line 136
    iput p2, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerY:I

    .line 139
    iget p1, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerX:I

    const/4 p2, 0x0

    if-gez p1, :cond_2

    .line 140
    iput p2, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerX:I

    goto :goto_0

    .line 141
    :cond_2
    iget p1, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerX:I

    iget-object p4, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p4}, Lcom/iiordanov/bVNC/RemoteCanvas;->getImageWidth()I

    move-result p4

    if-lt p1, p4, :cond_3

    .line 142
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getImageWidth()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerX:I

    .line 144
    :cond_3
    :goto_0
    iget p1, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerY:I

    if-gez p1, :cond_4

    .line 145
    iput p2, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerY:I

    goto :goto_1

    .line 146
    :cond_4
    iget p1, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerY:I

    iget-object p2, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p2}, Lcom/iiordanov/bVNC/RemoteCanvas;->getImageHeight()I

    move-result p2

    if-lt p1, p2, :cond_5

    .line 147
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getImageHeight()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerY:I

    .line 149
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->invalidateMousePosition()V

    .line 151
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->protocomm:Lcom/undatech/opaque/RfbConnectable;

    iget v2, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerX:I

    iget v3, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerY:I

    iget v5, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerMask:I

    const/4 v6, 0x0

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/undatech/opaque/RfbConnectable;->writePointerEvent(IIIIZ)V

    return-void
.end method


# virtual methods
.method public leftButtonDown(III)V
    .locals 1

    const/4 v0, 0x1

    .line 46
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerMask:I

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->sendPointerEvent(IIIZ)V

    return-void
.end method

.method public middleButtonDown(III)V
    .locals 1

    const/4 v0, 0x2

    .line 52
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerMask:I

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->sendPointerEvent(IIIZ)V

    return-void
.end method

.method public moveMouse(III)V
    .locals 1

    .line 88
    iget v0, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->prevPointerMask:I

    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerMask:I

    const/4 v0, 0x1

    .line 89
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->sendPointerEvent(IIIZ)V

    return-void
.end method

.method public moveMouseButtonDown(III)V
    .locals 2

    .line 94
    iget v0, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->prevPointerMask:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerMask:I

    const/4 v0, 0x1

    .line 95
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->sendPointerEvent(IIIZ)V

    return-void
.end method

.method public moveMouseButtonUp(III)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerMask:I

    const/4 v0, 0x1

    .line 101
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->sendPointerEvent(IIIZ)V

    return-void
.end method

.method public processPointerEvent(IIIIZZZZI)Z
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->protocomm:Lcom/undatech/opaque/RfbConnectable;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->protocomm:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v0}, Lcom/undatech/opaque/RfbConnectable;->isInNormalProtocol()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    const/4 p3, 0x4

    .line 160
    iput p3, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerMask:I

    goto :goto_0

    :cond_0
    const/4 p6, 0x2

    if-eqz p5, :cond_1

    if-eqz p7, :cond_1

    .line 163
    iput p6, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerMask:I

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_5

    if-eqz p8, :cond_5

    if-nez p9, :cond_2

    const/16 p3, 0x8

    .line 167
    iput p3, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerMask:I

    goto :goto_0

    :cond_2
    if-ne p9, v0, :cond_3

    const/16 p3, 0x10

    .line 169
    iput p3, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerMask:I

    goto :goto_0

    :cond_3
    if-ne p9, p6, :cond_4

    const/16 p3, 0x20

    .line 171
    iput p3, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerMask:I

    goto :goto_0

    :cond_4
    const/4 p3, 0x3

    if-ne p9, p3, :cond_8

    const/16 p3, 0x40

    .line 173
    iput p3, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerMask:I

    goto :goto_0

    :cond_5
    if-eqz p5, :cond_7

    if-eqz p3, :cond_6

    if-ne p3, p6, :cond_7

    .line 177
    :cond_6
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerMask:I

    goto :goto_0

    .line 181
    :cond_7
    iput v1, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerMask:I

    .line 184
    :cond_8
    :goto_0
    iget-object p3, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p3}, Lcom/iiordanov/bVNC/RemoteCanvas;->invalidateMousePosition()V

    .line 185
    iput p1, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerX:I

    .line 186
    iput p2, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerY:I

    .line 189
    iget p1, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerX:I

    if-gez p1, :cond_9

    .line 190
    iput v1, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerX:I

    goto :goto_1

    .line 191
    :cond_9
    iget p1, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerX:I

    iget-object p2, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p2}, Lcom/iiordanov/bVNC/RemoteCanvas;->getImageWidth()I

    move-result p2

    if-lt p1, p2, :cond_a

    .line 192
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getImageWidth()I

    move-result p1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerX:I

    .line 194
    :cond_a
    :goto_1
    iget p1, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerY:I

    if-gez p1, :cond_b

    .line 195
    iput v1, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerY:I

    goto :goto_2

    .line 196
    :cond_b
    iget p1, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerY:I

    iget-object p2, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p2}, Lcom/iiordanov/bVNC/RemoteCanvas;->getImageHeight()I

    move-result p2

    if-lt p1, p2, :cond_c

    .line 197
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getImageHeight()I

    move-result p1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerY:I

    .line 199
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->invalidateMousePosition()V

    .line 201
    iget-object p2, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->protocomm:Lcom/undatech/opaque/RfbConnectable;

    iget p3, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerX:I

    iget p1, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerY:I

    iget-object p5, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    .line 202
    invoke-virtual {p5}, Lcom/iiordanov/bVNC/RemoteCanvas;->getKeyboard()Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    move-result-object p5

    invoke-virtual {p5}, Lcom/iiordanov/bVNC/input/RemoteKeyboard;->getMetaState()I

    move-result p5

    or-int/2addr p5, p4

    iget p6, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerMask:I

    const/4 p7, 0x0

    move p4, p1

    .line 201
    invoke-interface/range {p2 .. p7}, Lcom/undatech/opaque/RfbConnectable;->writePointerEvent(IIIIZ)V

    return v0

    :cond_d
    return v1
.end method

.method public releaseButton(III)V
    .locals 1

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerMask:I

    .line 107
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->prevPointerMask:I

    .line 108
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->sendPointerEvent(IIIZ)V

    return-void
.end method

.method public rightButtonDown(III)V
    .locals 1

    const/4 v0, 0x4

    .line 58
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerMask:I

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->sendPointerEvent(IIIZ)V

    return-void
.end method

.method public scrollDown(III)V
    .locals 1

    const v0, 0x8010

    .line 70
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerMask:I

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->sendPointerEvent(IIIZ)V

    return-void
.end method

.method public scrollLeft(III)V
    .locals 1

    const v0, 0x8020

    .line 76
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerMask:I

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->sendPointerEvent(IIIZ)V

    return-void
.end method

.method public scrollRight(III)V
    .locals 1

    const v0, 0x8040

    .line 82
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerMask:I

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->sendPointerEvent(IIIZ)V

    return-void
.end method

.method public scrollUp(III)V
    .locals 1

    const v0, 0x8008

    .line 64
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->pointerMask:I

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iiordanov/bVNC/input/RemoteVncPointer;->sendPointerEvent(IIIZ)V

    return-void
.end method
