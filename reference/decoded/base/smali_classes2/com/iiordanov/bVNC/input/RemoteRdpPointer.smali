.class public Lcom/iiordanov/bVNC/input/RemoteRdpPointer;
.super Lcom/iiordanov/bVNC/input/RemotePointer;
.source "RemoteRdpPointer.java"


# static fields
.field private static final MOUSE_BUTTON_LEFT:I = 0x1000

.field private static final MOUSE_BUTTON_MIDDLE:I = 0x4000

.field private static final MOUSE_BUTTON_MOVE:I = 0x800

.field private static final MOUSE_BUTTON_NONE:I = 0x0

.field private static final MOUSE_BUTTON_RIGHT:I = 0x2000

.field private static final MOUSE_BUTTON_SCROLL_DOWN:I = 0x388

.field private static final MOUSE_BUTTON_SCROLL_UP:I = 0x278

.field private static final PTRFLAGS_WHEEL:I = 0x200

.field private static final PTRFLAGS_WHEEL_NEGATIVE:I = 0x100

.field private static final TAG:Ljava/lang/String; = "RemoteRdpPointer"


# direct methods
.method public constructor <init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;Landroid/os/Handler;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/iiordanov/bVNC/input/RemotePointer;-><init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;Landroid/os/Handler;)V

    return-void
.end method

.method private sendPointerEvent(IIIZ)V
    .locals 7

    .line 102
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getKeyboard()Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/input/RemoteKeyboard;->getMetaState()I

    move-result v0

    or-int/2addr p3, v0

    if-nez p4, :cond_1

    .line 108
    iget p4, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->prevPointerMask:I

    if-eqz p4, :cond_0

    iget p4, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->prevPointerMask:I

    iget v0, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->pointerMask:I

    if-eq p4, v0, :cond_0

    .line 109
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->protocomm:Lcom/undatech/opaque/RfbConnectable;

    iget v2, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->pointerX:I

    iget v3, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->pointerY:I

    iget p4, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->prevPointerMask:I

    const v0, -0x8001

    and-int v5, p4, v0

    const/4 v6, 0x0

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/undatech/opaque/RfbConnectable;->writePointerEvent(IIIIZ)V

    .line 113
    :cond_0
    iget p4, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->pointerMask:I

    iput p4, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->prevPointerMask:I

    .line 116
    :cond_1
    iget-object p4, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p4}, Lcom/iiordanov/bVNC/RemoteCanvas;->invalidateMousePosition()V

    .line 117
    iput p1, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->pointerX:I

    .line 118
    iput p2, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->pointerY:I

    .line 121
    iget p1, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->pointerX:I

    const/4 p2, 0x0

    if-gez p1, :cond_2

    .line 122
    iput p2, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->pointerX:I

    goto :goto_0

    .line 123
    :cond_2
    iget p1, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->pointerX:I

    iget-object p4, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p4}, Lcom/iiordanov/bVNC/RemoteCanvas;->getImageWidth()I

    move-result p4

    if-lt p1, p4, :cond_3

    .line 124
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getImageWidth()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->pointerX:I

    .line 126
    :cond_3
    :goto_0
    iget p1, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->pointerY:I

    if-gez p1, :cond_4

    .line 127
    iput p2, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->pointerY:I

    goto :goto_1

    .line 128
    :cond_4
    iget p1, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->pointerY:I

    iget-object p2, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p2}, Lcom/iiordanov/bVNC/RemoteCanvas;->getImageHeight()I

    move-result p2

    if-lt p1, p2, :cond_5

    .line 129
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getImageHeight()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->pointerY:I

    .line 131
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->invalidateMousePosition()V

    .line 133
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->protocomm:Lcom/undatech/opaque/RfbConnectable;

    iget v2, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->pointerX:I

    iget v3, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->pointerY:I

    iget v5, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->pointerMask:I

    const/4 v6, 0x0

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/undatech/opaque/RfbConnectable;->writePointerEvent(IIIIZ)V

    return-void
.end method


# virtual methods
.method public leftButtonDown(III)V
    .locals 1

    const v0, 0x9000

    .line 30
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->pointerMask:I

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->sendPointerEvent(IIIZ)V

    return-void
.end method

.method public middleButtonDown(III)V
    .locals 1

    const v0, 0xc000

    .line 36
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->pointerMask:I

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->sendPointerEvent(IIIZ)V

    return-void
.end method

.method public moveMouse(III)V
    .locals 1

    .line 70
    iget v0, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->prevPointerMask:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->pointerMask:I

    const/4 v0, 0x1

    .line 71
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->sendPointerEvent(IIIZ)V

    return-void
.end method

.method public moveMouseButtonDown(III)V
    .locals 1

    const v0, 0x8800

    .line 76
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->pointerMask:I

    const/4 v0, 0x1

    .line 77
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->sendPointerEvent(IIIZ)V

    return-void
.end method

.method public moveMouseButtonUp(III)V
    .locals 1

    const/16 v0, 0x800

    .line 82
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->pointerMask:I

    const/4 v0, 0x1

    .line 83
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->sendPointerEvent(IIIZ)V

    return-void
.end method

.method public releaseButton(III)V
    .locals 1

    const/16 v0, 0x800

    .line 88
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->pointerMask:I

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->sendPointerEvent(IIIZ)V

    .line 90
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->prevPointerMask:I

    return-void
.end method

.method public rightButtonDown(III)V
    .locals 1

    const v0, 0xa000

    .line 42
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->pointerMask:I

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->sendPointerEvent(IIIZ)V

    return-void
.end method

.method public scrollDown(III)V
    .locals 1

    const v0, 0x8388

    .line 54
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->pointerMask:I

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->sendPointerEvent(IIIZ)V

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

    const v0, 0x8278

    .line 48
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->pointerMask:I

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;->sendPointerEvent(IIIZ)V

    return-void
.end method
