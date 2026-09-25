.class public abstract Lcom/iiordanov/bVNC/AbstractBitmapData;
.super Ljava/lang/Object;
.source "AbstractBitmapData.java"


# instance fields
.field bitmapPixels:[I

.field bitmapheight:I

.field bitmapwidth:I

.field public drawable:Lcom/iiordanov/bVNC/AbstractBitmapDrawable;

.field framebufferheight:I

.field framebufferwidth:I

.field mbitmap:Landroid/graphics/Bitmap;

.field memGraphics:Landroid/graphics/Canvas;

.field public paint:Landroid/graphics/Paint;

.field rfb:Lcom/undatech/opaque/RfbConnectable;

.field vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

.field waitingForInput:Z

.field xoffset:I

.field yoffset:I


# direct methods
.method constructor <init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->xoffset:I

    .line 52
    iput v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->yoffset:I

    .line 56
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->rfb:Lcom/undatech/opaque/RfbConnectable;

    .line 57
    iput-object p2, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    .line 58
    invoke-interface {p1}, Lcom/undatech/opaque/RfbConnectable;->framebufferWidth()I

    move-result p1

    iput p1, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->framebufferwidth:I

    .line 59
    iget-object p1, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->rfb:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {p1}, Lcom/undatech/opaque/RfbConnectable;->framebufferHeight()I

    move-result p1

    iput p1, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->framebufferheight:I

    .line 60
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/AbstractBitmapData;->createDrawable()Lcom/iiordanov/bVNC/AbstractBitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->drawable:Lcom/iiordanov/bVNC/AbstractBitmapDrawable;

    .line 61
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public bmHeight()I
    .locals 1

    .line 272
    iget v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->bitmapheight:I

    return v0
.end method

.method public bmWidth()I
    .locals 1

    .line 268
    iget v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->bitmapwidth:I

    return v0
.end method

.method public abstract copyRect(IIIIII)V
.end method

.method abstract createDrawable()Lcom/iiordanov/bVNC/AbstractBitmapDrawable;
.end method

.method dispose()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->drawable:Lcom/iiordanov/bVNC/AbstractBitmapDrawable;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 249
    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->drawable:Lcom/iiordanov/bVNC/AbstractBitmapDrawable;

    .line 251
    iget-object v1, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 252
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 253
    :cond_1
    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    .line 255
    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->memGraphics:Landroid/graphics/Canvas;

    .line 256
    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->bitmapPixels:[I

    return-void
.end method

.method declared-synchronized doneWaiting()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 65
    :try_start_0
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->waitingForInput:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method abstract drawRect(IIIILandroid/graphics/Paint;)V
.end method

.method public fbHeight()I
    .locals 1

    .line 264
    iget v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->framebufferheight:I

    return v0
.end method

.method public fbWidth()I
    .locals 1

    .line 260
    iget v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->framebufferwidth:I

    return v0
.end method

.method public fillRect(IIIII)V
    .locals 7

    .line 190
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    iget-object v6, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->paint:Landroid/graphics/Paint;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/iiordanov/bVNC/AbstractBitmapData;->drawRect(IIIILandroid/graphics/Paint;)V

    return-void
.end method

.method public abstract frameBufferSizeChanged()V
.end method

.method getCursorRect()Landroid/graphics/RectF;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->drawable:Lcom/iiordanov/bVNC/AbstractBitmapDrawable;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, v0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->cursorRect:Landroid/graphics/RectF;

    return-object v0

    .line 87
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    return-object v0
.end method

.method getMinimumScale()F
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->framebufferwidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->framebufferheight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getXoffset()I
    .locals 1

    .line 276
    iget v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->xoffset:I

    return v0
.end method

.method public getYoffset()I
    .locals 1

    .line 280
    iget v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->yoffset:I

    return v0
.end method

.method public imageRect(IIII[I)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int v2, p3, v0

    .line 198
    :try_start_1
    iget-object v3, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->bitmapPixels:[I

    add-int v4, p2, v0

    invoke-virtual {p0, p1, v4}, Lcom/iiordanov/bVNC/AbstractBitmapData;->offset(II)I

    move-result v4

    invoke-static {p5, v2, v3, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    .line 203
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iiordanov/bVNC/AbstractBitmapData;->updateBitmap(IIII)V

    return-void
.end method

.method isNotInitSoftCursor()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->drawable:Lcom/iiordanov/bVNC/AbstractBitmapDrawable;

    if-eqz v0, :cond_0

    .line 92
    iget-boolean v0, v0, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->softCursorInit:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method moveCursorRect(II)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->drawable:Lcom/iiordanov/bVNC/AbstractBitmapDrawable;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0, p1, p2}, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->moveCursorRect(II)V

    :cond_0
    return-void
.end method

.method public abstract offset(II)I
.end method

.method public prepareFullUpdateRequest(Z)V
    .locals 0

    return-void
.end method

.method abstract scrollChanged(II)V
.end method

.method setCursorRect(IIIIII)V
    .locals 7

    .line 69
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->drawable:Lcom/iiordanov/bVNC/AbstractBitmapDrawable;

    if-eqz v0, :cond_0

    int-to-float v3, p3

    int-to-float v4, p4

    move v1, p1

    move v2, p2

    move v5, p5

    move v6, p6

    .line 70
    invoke-virtual/range {v0 .. v6}, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->setCursorRect(IIFFII)V

    :cond_0
    return-void
.end method

.method setImageDrawable(Landroid/widget/ImageView;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->drawable:Lcom/iiordanov/bVNC/AbstractBitmapDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method setSoftCursor([I)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->drawable:Lcom/iiordanov/bVNC/AbstractBitmapDrawable;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, p1}, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->setSoftCursor([I)V

    :cond_0
    return-void
.end method

.method abstract syncScroll()V
.end method

.method public abstract updateBitmap(IIII)V
.end method

.method public abstract updateBitmap(Landroid/graphics/Bitmap;IIII)V
.end method

.method updateView(Landroid/widget/ImageView;)V
    .locals 0

    .line 178
    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public abstract validDraw(IIII)Z
.end method

.method widthRatioLessThanHeightRatio()Z
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->framebufferwidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/iiordanov/bVNC/AbstractBitmapData;->framebufferheight:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
