.class public Lcom/iiordanov/bVNC/AbstractBitmapDrawable;
.super Landroid/graphics/drawable/DrawableContainer;
.source "AbstractBitmapDrawable.java"


# instance fields
.field _blackPaint:Landroid/graphics/Paint;

.field public _defaultPaint:Landroid/graphics/Paint;

.field _whitePaint:Landroid/graphics/Paint;

.field clipRect:Landroid/graphics/Rect;

.field cursorRect:Landroid/graphics/RectF;

.field data:Lcom/iiordanov/bVNC/AbstractBitmapData;

.field drawing:Z

.field hotX:I

.field hotY:I

.field softCursor:Landroid/graphics/Bitmap;

.field softCursorInit:Z

.field toDraw:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/AbstractBitmapData;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->drawing:Z

    .line 51
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->data:Lcom/iiordanov/bVNC/AbstractBitmapData;

    .line 52
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->cursorRect:Landroid/graphics/RectF;

    .line 53
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->clipRect:Landroid/graphics/Rect;

    .line 55
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 56
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->softCursor:Landroid/graphics/Bitmap;

    .line 57
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->softCursorInit:Z

    .line 59
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->_defaultPaint:Landroid/graphics/Paint;

    .line 60
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 61
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->_whitePaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    .line 62
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->_blackPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    .line 64
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->drawing:Z

    .line 132
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->softCursor:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->softCursor:Landroid/graphics/Bitmap;

    .line 135
    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->cursorRect:Landroid/graphics/RectF;

    .line 136
    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->clipRect:Landroid/graphics/Rect;

    .line 137
    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->toDraw:Landroid/graphics/Rect;

    return-void
.end method

.method draw(Landroid/graphics/Canvas;II)V
    .locals 2

    .line 70
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 71
    :try_start_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->data:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget-object v0, v0, Lcom/iiordanov/bVNC/AbstractBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    int-to-float p2, p2

    int-to-float p3, p3

    iget-object v1, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->_defaultPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 72
    iget-object p2, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->softCursor:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->cursorRect:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->cursorRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->_defaultPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 73
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

.method public getIntrinsicHeight()I
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->data:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget v0, v0, Lcom/iiordanov/bVNC/AbstractBitmapData;->framebufferheight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->data:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget v0, v0, Lcom/iiordanov/bVNC/AbstractBitmapData;->framebufferwidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method moveCursorRect(II)V
    .locals 8

    .line 87
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->cursorRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->cursorRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget v6, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->hotX:I

    iget v7, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->hotY:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->setCursorRect(IIFFII)V

    return-void
.end method

.method setCursorRect(IIFFII)V
    .locals 0

    .line 78
    iput p5, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->hotX:I

    .line 79
    iput p6, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->hotY:I

    .line 80
    iget-object p6, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->cursorRect:Landroid/graphics/RectF;

    sub-int/2addr p1, p5

    int-to-float p1, p1

    iput p1, p6, Landroid/graphics/RectF;->left:F

    .line 81
    iget-object p1, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->cursorRect:Landroid/graphics/RectF;

    iget p5, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p5, p3

    iput p5, p1, Landroid/graphics/RectF;->right:F

    .line 82
    iget-object p1, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->cursorRect:Landroid/graphics/RectF;

    iget p3, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->hotY:I

    sub-int/2addr p2, p3

    int-to-float p2, p2

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 83
    iget-object p1, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->cursorRect:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, p4

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method setSoftCursor([I)V
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->softCursor:Landroid/graphics/Bitmap;

    .line 92
    iget-object v1, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->cursorRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->cursorRect:Landroid/graphics/RectF;

    .line 93
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 92
    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->softCursor:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->softCursorInit:Z

    .line 95
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method protected startDrawing()V
    .locals 1

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->drawing:Z

    return-void
.end method
