.class Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;
.super Lcom/iiordanov/bVNC/AbstractBitmapDrawable;
.source "FullBufferBitmapData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iiordanov/bVNC/FullBufferBitmapData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Drawable"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Drawable"


# instance fields
.field drawHeight:I

.field drawWidth:I

.field final synthetic this$0:Lcom/iiordanov/bVNC/FullBufferBitmapData;

.field xo:I

.field yo:I


# direct methods
.method public constructor <init>(Lcom/iiordanov/bVNC/FullBufferBitmapData;Lcom/iiordanov/bVNC/AbstractBitmapData;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->this$0:Lcom/iiordanov/bVNC/FullBufferBitmapData;

    .line 53
    invoke-direct {p0, p2}, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;-><init>(Lcom/iiordanov/bVNC/AbstractBitmapData;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->toDraw:Landroid/graphics/Rect;

    .line 64
    iget-object v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->toDraw:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->toDraw:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->toDraw:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->toDraw:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->toDraw:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 65
    iget-object v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->toDraw:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->drawWidth:I

    .line 66
    iget-object v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->toDraw:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->drawHeight:I

    .line 68
    iget-object v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->toDraw:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 69
    iput v1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->xo:I

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->toDraw:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->data:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget v2, v2, Lcom/iiordanov/bVNC/AbstractBitmapData;->framebufferwidth:I

    if-lt v0, v2, :cond_1

    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->toDraw:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->xo:I

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->toDraw:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_2

    .line 76
    iput v1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->yo:I

    goto :goto_1

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->toDraw:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->data:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget v1, v1, Lcom/iiordanov/bVNC/AbstractBitmapData;->framebufferheight:I

    if-lt v0, v1, :cond_3

    return-void

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->toDraw:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->yo:I

    .line 82
    :goto_1
    iget v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->xo:I

    iget v1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->drawWidth:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->data:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget v1, v1, Lcom/iiordanov/bVNC/AbstractBitmapData;->framebufferwidth:I

    if-lt v0, v1, :cond_4

    .line 83
    iget-object v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->data:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget v0, v0, Lcom/iiordanov/bVNC/AbstractBitmapData;->framebufferwidth:I

    iget v1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->xo:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->drawWidth:I

    .line 84
    :cond_4
    iget v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->yo:I

    iget v1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->drawHeight:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->data:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget v1, v1, Lcom/iiordanov/bVNC/AbstractBitmapData;->framebufferheight:I

    if-lt v0, v1, :cond_5

    .line 85
    iget-object v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->data:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget v0, v0, Lcom/iiordanov/bVNC/AbstractBitmapData;->framebufferheight:I

    iget v1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->yo:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->drawHeight:I

    .line 88
    :cond_5
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    :try_start_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->data:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget-object v2, v0, Lcom/iiordanov/bVNC/AbstractBitmapData;->bitmapPixels:[I

    iget-object v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->this$0:Lcom/iiordanov/bVNC/FullBufferBitmapData;

    iget v1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->xo:I

    iget v3, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->yo:I

    invoke-virtual {v0, v1, v3}, Lcom/iiordanov/bVNC/FullBufferBitmapData;->offset(II)I

    move-result v3

    iget-object v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->data:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget v4, v0, Lcom/iiordanov/bVNC/AbstractBitmapData;->framebufferwidth:I

    iget v5, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->xo:I

    iget v6, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->yo:I

    iget v7, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->drawWidth:I

    iget v8, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->drawHeight:I

    iget-object v10, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->_defaultPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 91
    iget-object v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->softCursor:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->cursorRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->cursorRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;->_defaultPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 92
    monitor-exit p0

    goto :goto_2

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
    :goto_2
    return-void
.end method
