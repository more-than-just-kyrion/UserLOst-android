.class public abstract Lcom/undatech/opaque/input/RemotePointer;
.super Ljava/lang/Object;
.source "RemotePointer.java"


# static fields
.field public static DEFAULT_ACCELERATED:Z = true

.field public static DEFAULT_SENSITIVITY:F = 2.0f

.field public static final POINTER_DOWN_MASK:I = 0x8000


# instance fields
.field protected accelerated:Z

.field protected pointerX:I

.field protected pointerY:I

.field protected relativeEvents:Z

.field protected sensitivity:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/undatech/opaque/input/RemotePointer;->relativeEvents:Z

    .line 39
    sget v0, Lcom/undatech/opaque/input/RemotePointer;->DEFAULT_SENSITIVITY:F

    iput v0, p0, Lcom/undatech/opaque/input/RemotePointer;->sensitivity:F

    .line 40
    sget-boolean v0, Lcom/undatech/opaque/input/RemotePointer;->DEFAULT_ACCELERATED:Z

    iput-boolean v0, p0, Lcom/undatech/opaque/input/RemotePointer;->accelerated:Z

    return-void
.end method


# virtual methods
.method public getSensitivity()F
    .locals 1

    .line 77
    iget v0, p0, Lcom/undatech/opaque/input/RemotePointer;->sensitivity:F

    return v0
.end method

.method public abstract getX()I
.end method

.method public abstract getY()I
.end method

.method public abstract hardwareButtonsAsMouseEvents(ILandroid/view/KeyEvent;I)Z
.end method

.method public isAccelerated()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/undatech/opaque/input/RemotePointer;->accelerated:Z

    return v0
.end method

.method public isRelativeEvents()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/undatech/opaque/input/RemotePointer;->relativeEvents:Z

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

.method public abstract movePointer(II)V
.end method

.method public abstract movePointerToMakeVisible()V
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

    .line 89
    iput-boolean p1, p0, Lcom/undatech/opaque/input/RemotePointer;->accelerated:Z

    return-void
.end method

.method public setRelativeEvents(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/undatech/opaque/input/RemotePointer;->relativeEvents:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 68
    invoke-virtual {p0, p1}, Lcom/undatech/opaque/input/RemotePointer;->setSensitivity(F)V

    const/4 p1, 0x0

    .line 69
    invoke-virtual {p0, p1}, Lcom/undatech/opaque/input/RemotePointer;->setAccelerated(Z)V

    goto :goto_0

    .line 71
    :cond_0
    sget p1, Lcom/undatech/opaque/input/RemotePointer;->DEFAULT_SENSITIVITY:F

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/input/RemotePointer;->setSensitivity(F)V

    .line 72
    sget-boolean p1, Lcom/undatech/opaque/input/RemotePointer;->DEFAULT_ACCELERATED:Z

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/input/RemotePointer;->setAccelerated(Z)V

    :goto_0
    return-void
.end method

.method public setSensitivity(F)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/undatech/opaque/input/RemotePointer;->sensitivity:F

    return-void
.end method

.method public abstract setX(I)V
.end method

.method public abstract setY(I)V
.end method
