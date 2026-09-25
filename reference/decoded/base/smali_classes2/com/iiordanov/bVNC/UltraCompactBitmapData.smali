.class Lcom/iiordanov/bVNC/UltraCompactBitmapData;
.super Lcom/iiordanov/bVNC/AbstractBitmapData;
.source "UltraCompactBitmapData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iiordanov/bVNC/UltraCompactBitmapData$UltraCompactBitmapDrawable;
    }
.end annotation


# static fields
.field static final CAPACITY_MULTIPLIER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "UltraCompactBitmapData"


# instance fields
.field cfg:Landroid/graphics/Bitmap$Config;


# direct methods
.method constructor <init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/iiordanov/bVNC/AbstractBitmapData;-><init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;)V

    .line 36
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p1, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->cfg:Landroid/graphics/Bitmap$Config;

    .line 58
    iget p1, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->framebufferwidth:I

    iput p1, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->bitmapwidth:I

    .line 59
    iget p1, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->framebufferheight:I

    iput p1, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->bitmapheight:I

    .line 62
    iget p1, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->bitmapwidth:I

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iput p2, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->bitmapwidth:I

    .line 63
    :cond_0
    iget p1, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->bitmapheight:I

    if-nez p1, :cond_1

    iput p2, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->bitmapheight:I

    :cond_1
    if-eqz p3, :cond_2

    .line 66
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p1, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->cfg:Landroid/graphics/Bitmap$Config;

    .line 69
    :cond_2
    iget p1, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->bitmapwidth:I

    iget p2, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->bitmapheight:I

    iget-object p3, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->cfg:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "bitmapsize = ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->bitmapwidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->bitmapheight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UltraCompactBitmapData"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget p1, Lcom/iiordanov/bVNC/Constants;->SDK_INT:I

    const/16 p2, 0xc

    if-lt p1, p2, :cond_3

    .line 73
    iget-object p1, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 76
    :cond_3
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->memGraphics:Landroid/graphics/Canvas;

    .line 77
    iget-object p1, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->drawable:Lcom/iiordanov/bVNC/AbstractBitmapDrawable;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->startDrawing()V

    return-void
.end method


# virtual methods
.method public copyRect(IIIIII)V
    .locals 24

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v0, p2

    move/from16 v11, p3

    move/from16 v12, p4

    const/4 v3, 0x1

    if-le v0, v12, :cond_0

    add-int v4, v0, p6

    move v13, v3

    move v14, v4

    move v5, v12

    goto :goto_0

    :cond_0
    add-int v4, v0, p6

    sub-int/2addr v4, v3

    add-int/lit8 v0, v0, -0x1

    add-int v5, v12, p6

    sub-int/2addr v5, v3

    const/4 v3, -0x1

    move v14, v0

    move v13, v3

    move v0, v4

    :goto_0
    move v15, v0

    move v10, v5

    :goto_1
    if-eq v15, v14, :cond_1

    .line 126
    invoke-virtual {v1, v2, v15}, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->offset(II)I

    move-result v18

    .line 127
    invoke-virtual {v1, v11, v10}, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->offset(II)I

    mul-int v0, p5, p6

    .line 129
    :try_start_0
    new-array v4, v0, [I

    .line 130
    iget-object v9, v1, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    :try_start_1
    iget-object v0, v1, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    iget v3, v1, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->bitmapwidth:I

    iget v5, v1, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->xoffset:I

    sub-int v20, v2, v5

    iget v5, v1, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->yoffset:I

    sub-int v21, v15, v5

    const/16 v23, 0x1

    move-object/from16 v16, v0

    move-object/from16 v17, v4

    move/from16 v19, v3

    move/from16 v22, p5

    invoke-virtual/range {v16 .. v23}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 132
    iget-object v3, v1, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v11, v12}, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->offset(II)I

    move-result v5

    iget v6, v1, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->bitmapwidth:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v16, v9

    move/from16 v9, p5

    move/from16 v17, v10

    move/from16 v10, p6

    :try_start_2
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 133
    monitor-exit v16

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v16, v9

    move/from16 v17, v10

    :goto_2
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move/from16 v17, v10

    .line 136
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    add-int v10, v17, v13

    add-int/2addr v15, v13

    goto :goto_1

    :cond_1
    return-void
.end method

.method createDrawable()Lcom/iiordanov/bVNC/AbstractBitmapDrawable;
    .locals 1

    .line 92
    new-instance v0, Lcom/iiordanov/bVNC/UltraCompactBitmapData$UltraCompactBitmapDrawable;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/UltraCompactBitmapData$UltraCompactBitmapDrawable;-><init>(Lcom/iiordanov/bVNC/UltraCompactBitmapData;)V

    return-object v0
.end method

.method drawRect(IIIILandroid/graphics/Paint;)V
    .locals 7

    .line 144
    iget-object v0, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    monitor-enter v0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->memGraphics:Landroid/graphics/Canvas;

    int-to-float v2, p1

    int-to-float v3, p2

    add-int/2addr p1, p3

    int-to-float v4, p1

    add-int/2addr p2, p4

    int-to-float v5, p2

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 146
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public frameBufferSizeChanged()V
    .locals 5

    .line 156
    iget-object v0, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->rfb:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v0}, Lcom/undatech/opaque/RfbConnectable;->framebufferWidth()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->framebufferwidth:I

    .line 157
    iget-object v0, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->rfb:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v0}, Lcom/undatech/opaque/RfbConnectable;->framebufferHeight()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->framebufferheight:I

    .line 158
    iget v0, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->bitmapwidth:I

    iget v1, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->framebufferwidth:I

    const-string v2, ")"

    const-string v3, ","

    const-string v4, "UltraCompactBitmapData"

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->bitmapheight:I

    iget v1, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->framebufferheight:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Both bitmap dimensions same or smaller, no realloc = ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->framebufferwidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->framebufferheight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 159
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "One or more bitmap dimensions increased, realloc = ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->framebufferwidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->framebufferheight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->dispose()V

    .line 163
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 164
    iget v0, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->framebufferwidth:I

    iput v0, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->bitmapwidth:I

    .line 165
    iget v0, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->framebufferheight:I

    iput v0, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->bitmapheight:I

    .line 166
    iget v0, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->bitmapwidth:I

    iget v1, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->bitmapheight:I

    iget-object v2, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->cfg:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    .line 167
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->memGraphics:Landroid/graphics/Canvas;

    .line 168
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->createDrawable()Lcom/iiordanov/bVNC/AbstractBitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->drawable:Lcom/iiordanov/bVNC/AbstractBitmapDrawable;

    .line 169
    iget-object v0, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->drawable:Lcom/iiordanov/bVNC/AbstractBitmapDrawable;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->startDrawing()V

    :goto_1
    return-void
.end method

.method public offset(II)I
    .locals 1

    .line 87
    iget v0, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->bitmapwidth:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    return p2
.end method

.method scrollChanged(II)V
    .locals 0

    return-void
.end method

.method syncScroll()V
    .locals 0

    return-void
.end method

.method public updateBitmap(IIII)V
    .locals 0

    return-void
.end method

.method public updateBitmap(Landroid/graphics/Bitmap;IIII)V
    .locals 1

    .line 102
    iget-object p4, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    monitor-enter p4

    .line 103
    :try_start_0
    iget-object p5, p0, Lcom/iiordanov/bVNC/UltraCompactBitmapData;->memGraphics:Landroid/graphics/Canvas;

    int-to-float p2, p2

    int-to-float p3, p3

    const/4 v0, 0x0

    invoke-virtual {p5, p1, p2, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 104
    monitor-exit p4

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public validDraw(IIII)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
