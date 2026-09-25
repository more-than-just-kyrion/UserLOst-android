.class public abstract Lcom/iiordanov/bVNC/input/RemotePointer;
.super Ljava/lang/Object;
.source "RemotePointer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iiordanov/bVNC/input/RemotePointer$MouseScroller;
    }
.end annotation


# static fields
.field public static DEFAULT_ACCELERATED:Z = true

.field public static DEFAULT_SENSITIVITY:F = 2.0f

.field public static final POINTER_DOWN_MASK:I = 0x8000


# instance fields
.field protected accelerated:Z

.field protected canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

.field protected context:Landroid/content/Context;

.field protected handler:Landroid/os/Handler;

.field protected pointerMask:I

.field protected pointerX:I

.field protected pointerY:I

.field protected prevPointerMask:I

.field protected protocomm:Lcom/undatech/opaque/RfbConnectable;

.field protected relativeEvents:Z

.field scroller:Lcom/iiordanov/bVNC/input/RemotePointer$MouseScroller;

.field protected sensitivity:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;Landroid/os/Handler;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->pointerMask:I

    .line 21
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->prevPointerMask:I

    .line 34
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->relativeEvents:Z

    .line 39
    sget v0, Lcom/iiordanov/bVNC/input/RemotePointer;->DEFAULT_SENSITIVITY:F

    iput v0, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->sensitivity:F

    .line 40
    sget-boolean v0, Lcom/iiordanov/bVNC/input/RemotePointer;->DEFAULT_ACCELERATED:Z

    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->accelerated:Z

    .line 59
    iput-object p1, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->protocomm:Lcom/undatech/opaque/RfbConnectable;

    .line 60
    iput-object p2, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    .line 61
    invoke-virtual {p2}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->context:Landroid/content/Context;

    .line 62
    iput-object p3, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->handler:Landroid/os/Handler;

    .line 65
    new-instance p1, Lcom/iiordanov/bVNC/input/RemotePointer$MouseScroller;

    invoke-direct {p1, p0}, Lcom/iiordanov/bVNC/input/RemotePointer$MouseScroller;-><init>(Lcom/iiordanov/bVNC/input/RemotePointer;)V

    iput-object p1, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->scroller:Lcom/iiordanov/bVNC/input/RemotePointer$MouseScroller;

    return-void
.end method


# virtual methods
.method public getSensitivity()F
    .locals 1

    .line 200
    iget v0, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->sensitivity:F

    return v0
.end method

.method public getX()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->pointerX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->pointerY:I

    return v0
.end method

.method public hardwareButtonsAsMouseEvents(ILandroid/view/KeyEvent;I)Z
    .locals 3

    .line 143
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    iput v1, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->pointerMask:I

    goto :goto_1

    :cond_1
    :goto_0
    const v0, 0x8000

    .line 146
    iput v0, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->pointerMask:I

    .line 150
    :goto_1
    invoke-virtual {p0, p2}, Lcom/iiordanov/bVNC/input/RemotePointer;->shouldBeRightClick(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/input/RemotePointer;->getX()I

    move-result p1

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/input/RemotePointer;->getY()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/iiordanov/bVNC/input/RemotePointer;->rightButtonDown(III)V

    .line 152
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/input/RemotePointer;->getX()I

    move-result p1

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/input/RemotePointer;->getY()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/iiordanov/bVNC/input/RemotePointer;->releaseButton(III)V

    :goto_2
    move v1, v2

    goto :goto_5

    :cond_2
    const/16 p3, 0x19

    const/16 v0, 0x18

    if-eq p1, p3, :cond_3

    if-ne p1, v0, :cond_6

    :cond_3
    if-ne p1, v0, :cond_4

    .line 156
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->scroller:Lcom/iiordanov/bVNC/input/RemotePointer$MouseScroller;

    iput v1, p1, Lcom/iiordanov/bVNC/input/RemotePointer$MouseScroller;->direction:I

    goto :goto_3

    .line 158
    :cond_4
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->scroller:Lcom/iiordanov/bVNC/input/RemotePointer$MouseScroller;

    iput v2, p1, Lcom/iiordanov/bVNC/input/RemotePointer$MouseScroller;->direction:I

    .line 161
    :goto_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_5

    .line 162
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->scroller:Lcom/iiordanov/bVNC/input/RemotePointer$MouseScroller;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 164
    :cond_5
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->scroller:Lcom/iiordanov/bVNC/input/RemotePointer$MouseScroller;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    :goto_4
    iget p1, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->pointerX:I

    iget p2, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->pointerY:I

    invoke-virtual {p0, p1, p2, v1}, Lcom/iiordanov/bVNC/input/RemotePointer;->releaseButton(III)V

    goto :goto_2

    :cond_6
    :goto_5
    return v1
.end method

.method public isAccelerated()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->accelerated:Z

    return v0
.end method

.method public isRelativeEvents()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->relativeEvents:Z

    return v0
.end method

.method public abstract leftButtonDown(III)V
.end method

.method public abstract middleButtonDown(III)V
.end method

.method public abstract moveMouse(III)V
.end method

.method public abstract moveMouseButtonDown(III)V
.end method

.method public abstract moveMouseButtonUp(III)V
.end method

.method public movePointer(II)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->invalidateMousePosition()V

    .line 115
    iput p1, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->pointerX:I

    .line 116
    iput p2, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->pointerY:I

    .line 117
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->invalidateMousePosition()V

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, p1, p2, v0}, Lcom/iiordanov/bVNC/input/RemotePointer;->moveMouseButtonUp(III)V

    return-void
.end method

.method public movePointerToMakeVisible()V
    .locals 6

    .line 126
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getMouseFollowPan()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getAbsX()I

    move-result v0

    .line 128
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getAbsY()I

    move-result v1

    .line 129
    iget-object v2, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/RemoteCanvas;->getVisibleDesktopWidth()I

    move-result v2

    .line 130
    iget-object v3, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v3}, Lcom/iiordanov/bVNC/RemoteCanvas;->getVisibleDesktopHeight()I

    move-result v3

    .line 131
    iget v4, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->pointerX:I

    if-lt v4, v0, :cond_0

    add-int v5, v0, v2

    if-ge v4, v5, :cond_0

    iget v4, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->pointerY:I

    if-lt v4, v1, :cond_0

    add-int v5, v1, v3

    if-lt v4, v5, :cond_1

    .line 133
    :cond_0
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/iiordanov/bVNC/input/RemotePointer;->movePointer(II)V

    :cond_1
    return-void
.end method

.method public abstract releaseButton(III)V
.end method

.method public abstract rightButtonDown(III)V
.end method

.method public abstract scrollDown(III)V
.end method

.method public abstract scrollLeft(III)V
.end method

.method public abstract scrollRight(III)V
.end method

.method public abstract scrollUp(III)V
.end method

.method public setAccelerated(Z)V
    .locals 0

    .line 212
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->accelerated:Z

    return-void
.end method

.method public setRelativeEvents(Z)V
    .locals 0

    .line 189
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->relativeEvents:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 191
    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/RemotePointer;->setSensitivity(F)V

    const/4 p1, 0x0

    .line 192
    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/RemotePointer;->setAccelerated(Z)V

    goto :goto_0

    .line 194
    :cond_0
    sget p1, Lcom/iiordanov/bVNC/input/RemotePointer;->DEFAULT_SENSITIVITY:F

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/RemotePointer;->setSensitivity(F)V

    .line 195
    sget-boolean p1, Lcom/iiordanov/bVNC/input/RemotePointer;->DEFAULT_ACCELERATED:Z

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/RemotePointer;->setAccelerated(Z)V

    :goto_0
    return-void
.end method

.method public setSensitivity(F)V
    .locals 0

    .line 204
    iput p1, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->sensitivity:F

    return-void
.end method

.method public setX(I)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->pointerX:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->pointerY:I

    return-void
.end method

.method protected shouldBeRightClick(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 70
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x1b

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x4

    const/4 v3, 0x0

    if-ne v0, v1, :cond_4

    .line 80
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v0

    const/16 v1, 0x2002

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 82
    :goto_0
    iget-object v1, p0, Lcom/iiordanov/bVNC/input/RemotePointer;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 84
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_2

    :cond_3
    move p1, v3

    :goto_2
    if-nez v0, :cond_5

    if-nez v1, :cond_5

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :cond_5
    :goto_3
    return v2
.end method
