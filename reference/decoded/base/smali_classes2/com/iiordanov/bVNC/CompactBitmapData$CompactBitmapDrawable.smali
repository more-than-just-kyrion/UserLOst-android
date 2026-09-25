.class Lcom/iiordanov/bVNC/CompactBitmapData$CompactBitmapDrawable;
.super Lcom/iiordanov/bVNC/AbstractBitmapDrawable;
.source "CompactBitmapData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iiordanov/bVNC/CompactBitmapData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompactBitmapDrawable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/CompactBitmapData;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/CompactBitmapData;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/iiordanov/bVNC/CompactBitmapData$CompactBitmapDrawable;->this$0:Lcom/iiordanov/bVNC/CompactBitmapData;

    .line 42
    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;-><init>(Lcom/iiordanov/bVNC/AbstractBitmapData;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 52
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    :try_start_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/CompactBitmapData$CompactBitmapDrawable;->data:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget-object v0, v0, Lcom/iiordanov/bVNC/AbstractBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/iiordanov/bVNC/CompactBitmapData$CompactBitmapDrawable;->_defaultPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 54
    iget-object v0, p0, Lcom/iiordanov/bVNC/CompactBitmapData$CompactBitmapDrawable;->softCursor:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/iiordanov/bVNC/CompactBitmapData$CompactBitmapDrawable;->cursorRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/iiordanov/bVNC/CompactBitmapData$CompactBitmapDrawable;->cursorRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/iiordanov/bVNC/CompactBitmapData$CompactBitmapDrawable;->_defaultPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 55
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
