.class public Lcom/freerdp/freerdpcore/utils/Mouse;
.super Ljava/lang/Object;
.source "Mouse.java"


# static fields
.field private static final PTRFLAGS_DOWN:I = 0x8000

.field private static final PTRFLAGS_LBUTTON:I = 0x1000

.field private static final PTRFLAGS_MOVE:I = 0x800

.field private static final PTRFLAGS_RBUTTON:I = 0x2000

.field private static final PTRFLAGS_WHEEL:I = 0x200

.field private static final PTRFLAGS_WHEEL_NEGATIVE:I = 0x100


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLeftButtonEvent(Landroid/content/Context;Z)I
    .locals 2

    .line 31
    invoke-static {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->getSwapMouseButtons(Landroid/content/Context;)Z

    move-result p0

    const v0, 0x8000

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/lit16 p0, v0, 0x2000

    return p0

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    or-int/lit16 p0, v0, 0x1000

    return p0
.end method

.method public static getMoveEvent()I
    .locals 1

    const/16 v0, 0x800

    return v0
.end method

.method public static getRightButtonEvent(Landroid/content/Context;Z)I
    .locals 2

    .line 39
    invoke-static {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->getSwapMouseButtons(Landroid/content/Context;)Z

    move-result p0

    const v0, 0x8000

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/lit16 p0, v0, 0x1000

    return p0

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    or-int/lit16 p0, v0, 0x2000

    return p0
.end method

.method public static getScrollEvent(Landroid/content/Context;Z)I
    .locals 0

    .line 55
    invoke-static {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->getInvertScrolling(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    :cond_0
    if-eqz p1, :cond_1

    const/16 p0, 0x388

    goto :goto_0

    :cond_1
    const/16 p0, 0x278

    :goto_0
    return p0
.end method
