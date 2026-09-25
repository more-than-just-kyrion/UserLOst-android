.class public Lcom/iiordanov/bVNC/input/RemoteSpicePointer;
.super Lcom/iiordanov/bVNC/input/RemotePointer;
.source "RemoteSpicePointer.java"


# static fields
.field public static final SPICE_MOUSE_BUTTON_DOWN:I = 0x5

.field public static final SPICE_MOUSE_BUTTON_LEFT:I = 0x1

.field public static final SPICE_MOUSE_BUTTON_MIDDLE:I = 0x2

.field public static final SPICE_MOUSE_BUTTON_MOVE:I = 0x0

.field public static final SPICE_MOUSE_BUTTON_RIGHT:I = 0x3

.field public static final SPICE_MOUSE_BUTTON_UP:I = 0x4

.field private static final TAG:Ljava/lang/String; = "RemoteSpicePointer"


# direct methods
.method public constructor <init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;Landroid/os/Handler;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/iiordanov/bVNC/input/RemotePointer;-><init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;Landroid/os/Handler;)V

    return-void
.end method

.method private clearPointerMaskEvent(IIZI)V
    .locals 7

    if-nez p3, :cond_1

    .line 115
    iget p3, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->prevPointerMask:I

    if-eqz p3, :cond_0

    iget p3, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->prevPointerMask:I

    iget v0, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->pointerMask:I

    if-eq p3, v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->protocomm:Lcom/undatech/opaque/RfbConnectable;

    iget p3, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->prevPointerMask:I

    const v0, -0x8001

    and-int v5, p3, v0

    iget-boolean v6, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->relativeEvents:Z

    move v2, p1

    move v3, p2

    move v4, p4

    invoke-interface/range {v1 .. v6}, Lcom/undatech/opaque/RfbConnectable;->writePointerEvent(IIIIZ)V

    .line 119
    :cond_0
    iget p1, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->pointerMask:I

    iput p1, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->prevPointerMask:I

    :cond_1
    return-void
.end method

.method private sendPointerEvent(IIIZ)V
    .locals 7

    .line 132
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getKeyboard()Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/input/RemoteKeyboard;->getMetaState()I

    move-result v0

    or-int v4, p3, v0

    .line 134
    iget-boolean p3, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->relativeEvents:Z

    if-eqz p3, :cond_0

    .line 135
    iget p3, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->pointerX:I

    sub-int v2, p1, p3

    .line 136
    iget p1, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->pointerY:I

    sub-int v3, p2, p1

    .line 138
    invoke-direct {p0, v2, v3, p4, v4}, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->clearPointerMaskEvent(IIZI)V

    .line 139
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->protocomm:Lcom/undatech/opaque/RfbConnectable;

    iget v5, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->pointerMask:I

    iget-boolean v6, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->relativeEvents:Z

    invoke-interface/range {v1 .. v6}, Lcom/undatech/opaque/RfbConnectable;->writePointerEvent(IIIIZ)V

    goto :goto_2

    .line 142
    :cond_0
    iget-object p3, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p3}, Lcom/iiordanov/bVNC/RemoteCanvas;->invalidateMousePosition()V

    .line 143
    iput p1, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->pointerX:I

    .line 144
    iput p2, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->pointerY:I

    .line 146
    iget p3, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->pointerX:I

    const/4 v0, 0x0

    if-gez p3, :cond_1

    .line 147
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->pointerX:I

    goto :goto_0

    .line 148
    :cond_1
    iget p3, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->pointerX:I

    iget-object v1, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getImageWidth()I

    move-result v1

    if-lt p3, v1, :cond_2

    .line 149
    iget-object p3, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p3}, Lcom/iiordanov/bVNC/RemoteCanvas;->getImageWidth()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    iput p3, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->pointerX:I

    .line 151
    :cond_2
    :goto_0
    iget p3, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->pointerY:I

    if-gez p3, :cond_3

    .line 152
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->pointerY:I

    goto :goto_1

    .line 153
    :cond_3
    iget p3, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->pointerY:I

    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getImageHeight()I

    move-result v0

    if-lt p3, v0, :cond_4

    .line 154
    iget-object p3, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p3}, Lcom/iiordanov/bVNC/RemoteCanvas;->getImageHeight()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    iput p3, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->pointerY:I

    .line 156
    :cond_4
    :goto_1
    invoke-direct {p0, p1, p2, p4, v4}, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->clearPointerMaskEvent(IIZI)V

    .line 157
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->protocomm:Lcom/undatech/opaque/RfbConnectable;

    iget v2, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->pointerX:I

    iget v3, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->pointerY:I

    iget v5, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->pointerMask:I

    iget-boolean v6, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->relativeEvents:Z

    invoke-interface/range {v1 .. v6}, Lcom/undatech/opaque/RfbConnectable;->writePointerEvent(IIIIZ)V

    .line 159
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->invalidateMousePosition()V

    :goto_2
    return-void
.end method


# virtual methods
.method public leftButtonDown(III)V
    .locals 1

    const v0, 0x8001

    .line 43
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->pointerMask:I

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->sendPointerEvent(IIIZ)V

    return-void
.end method

.method public middleButtonDown(III)V
    .locals 1

    const v0, 0x8002

    .line 49
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->pointerMask:I

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->sendPointerEvent(IIIZ)V

    return-void
.end method

.method public moveMouse(III)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->pointerMask:I

    const/4 v0, 0x1

    .line 84
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->sendPointerEvent(IIIZ)V

    return-void
.end method

.method public moveMouseButtonDown(III)V
    .locals 1

    const v0, 0x8000

    .line 89
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->pointerMask:I

    const/4 v0, 0x1

    .line 90
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->sendPointerEvent(IIIZ)V

    return-void
.end method

.method public moveMouseButtonUp(III)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->pointerMask:I

    const/4 v0, 0x1

    .line 96
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->sendPointerEvent(IIIZ)V

    return-void
.end method

.method public releaseButton(III)V
    .locals 2

    .line 101
    iget v0, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->prevPointerMask:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->pointerMask:I

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->prevPointerMask:I

    .line 103
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->sendPointerEvent(IIIZ)V

    return-void
.end method

.method public rightButtonDown(III)V
    .locals 1

    const v0, 0x8003

    .line 55
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->pointerMask:I

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->sendPointerEvent(IIIZ)V

    return-void
.end method

.method public scrollDown(III)V
    .locals 1

    const v0, 0x8005

    .line 67
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->pointerMask:I

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->sendPointerEvent(IIIZ)V

    return-void
.end method

.method public scrollLeft(III)V
    .locals 0

    return-void
.end method

.method public scrollRight(III)V
    .locals 0

    return-void
.end method

.method public scrollUp(III)V
    .locals 1

    const v0, 0x8004

    .line 61
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->pointerMask:I

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;->sendPointerEvent(IIIZ)V

    return-void
.end method
