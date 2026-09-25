.class public Lcom/undatech/opaque/CanvasDrawableContainer;
.super Landroid/graphics/drawable/DrawableContainer;
.source "CanvasDrawableContainer.java"


# static fields
.field static final CAPACITY_FACTOR:I = 0x7


# instance fields
.field protected bitmap:Landroid/graphics/Bitmap;

.field private bitmapH:I

.field private bitmapW:I

.field private cfg:Landroid/graphics/Bitmap$Config;

.field private cursorRect:Landroid/graphics/RectF;

.field public paint:Landroid/graphics/Paint;

.field private softCursor:Landroid/graphics/Bitmap;

.field private softCursorInit:Z


# direct methods
.method constructor <init>(II)V
    .locals 3

    .line 45
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->softCursorInit:Z

    .line 40
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->cfg:Landroid/graphics/Bitmap$Config;

    .line 46
    iput p1, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->bitmapW:I

    .line 47
    iput p2, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->bitmapH:I

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 50
    iput v2, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->bitmapW:I

    :cond_0
    if-nez p2, :cond_1

    .line 51
    iput v2, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->bitmapH:I

    .line 53
    :cond_1
    iget p1, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->bitmapW:I

    iget p2, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->bitmapH:I

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->bitmap:Landroid/graphics/Bitmap;

    .line 54
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 56
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->cursorRect:Landroid/graphics/RectF;

    .line 58
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 59
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->softCursor:Landroid/graphics/Bitmap;

    .line 61
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->paint:Landroid/graphics/Paint;

    .line 62
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->bitmap:Landroid/graphics/Bitmap;

    .line 115
    iget-object v1, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->softCursor:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 117
    :cond_1
    iput-object v0, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->softCursor:Landroid/graphics/Bitmap;

    .line 118
    iput-object v0, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->cursorRect:Landroid/graphics/RectF;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 68
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    :try_start_1
    iget-object v0, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 70
    iget-object v0, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->softCursor:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->cursorRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->cursorRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 71
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :goto_0
    return-void
.end method

.method public frameBufferSizeChanged(II)V
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bitmapsize changed = ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->bitmapW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->bitmapH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CanvasDrawableContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget v0, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->bitmapW:I

    if-lt v0, p1, :cond_0

    iget v0, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->bitmapH:I

    if-ge v0, p1, :cond_1

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/undatech/opaque/CanvasDrawableContainer;->destroy()V

    .line 126
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 127
    iput p1, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->bitmapW:I

    .line 128
    iput p2, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->bitmapH:I

    .line 129
    iget-object v0, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->cfg:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->bitmap:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    .line 130
    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :cond_1
    return-void
.end method

.method getCursorRect()Landroid/graphics/RectF;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->cursorRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->bitmapH:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->bitmapW:I

    return v0
.end method

.method getMinimumScale(II)F
    .locals 1

    int-to-float p1, p1

    .line 108
    iget v0, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->bitmapW:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    iget v0, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->bitmapH:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method isNotInitSoftCursor()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->softCursorInit:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method moveCursorRect(II)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->cursorRect:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-void
.end method

.method setCursorRect(IIFF)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->cursorRect:Landroid/graphics/RectF;

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 77
    iget-object p1, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->cursorRect:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 78
    iget-object p1, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->cursorRect:Landroid/graphics/RectF;

    int-to-float p2, p2

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 79
    iget-object p1, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->cursorRect:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, p4

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method setSoftCursor([I)V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->softCursor:Landroid/graphics/Bitmap;

    .line 88
    iget-object v1, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->cursorRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->cursorRect:Landroid/graphics/RectF;

    .line 89
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 88
    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->softCursor:Landroid/graphics/Bitmap;

    .line 90
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/undatech/opaque/CanvasDrawableContainer;->softCursorInit:Z

    return-void
.end method
