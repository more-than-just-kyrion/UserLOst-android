.class Lcom/iiordanov/bVNC/CompactBitmapData;
.super Lcom/iiordanov/bVNC/AbstractBitmapData;
.source "CompactBitmapData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iiordanov/bVNC/CompactBitmapData$CompactBitmapDrawable;
    }
.end annotation


# static fields
.field static final CAPACITY_MULTIPLIER:I = 0x7

.field private static final TAG:Ljava/lang/String; = "CompactBitmapData"


# instance fields
.field cfg:Landroid/graphics/Bitmap$Config;


# direct methods
.method constructor <init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;Z)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/iiordanov/bVNC/AbstractBitmapData;-><init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;)V

    .line 37
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p1, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->cfg:Landroid/graphics/Bitmap$Config;

    .line 63
    iget p1, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->framebufferwidth:I

    iput p1, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->bitmapwidth:I

    .line 64
    iget p1, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->framebufferheight:I

    iput p1, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->bitmapheight:I

    .line 66
    iget p1, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->bitmapwidth:I

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iput p2, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->bitmapwidth:I

    .line 67
    :cond_0
    iget p1, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->bitmapheight:I

    if-nez p1, :cond_1

    iput p2, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->bitmapheight:I

    :cond_1
    if-eqz p3, :cond_2

    .line 70
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p1, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->cfg:Landroid/graphics/Bitmap$Config;

    .line 72
    :cond_2
    iget p1, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->bitmapwidth:I

    iget p2, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->bitmapheight:I

    iget-object p3, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->cfg:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "bitmapsize = ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->bitmapwidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->bitmapheight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CompactBitmapData"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget p1, Lcom/iiordanov/bVNC/Constants;->SDK_INT:I

    const/16 p2, 0xc

    if-lt p1, p2, :cond_3

    .line 76
    iget-object p1, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 79
    :cond_3
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->memGraphics:Landroid/graphics/Canvas;

    .line 80
    iget p1, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->bitmapwidth:I

    iget p2, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->bitmapheight:I

    mul-int/2addr p1, p2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->bitmapPixels:[I

    .line 81
    iget-object p1, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->drawable:Lcom/iiordanov/bVNC/AbstractBitmapDrawable;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->startDrawing()V

    return-void
.end method


# virtual methods
.method public copyRect(IIIIII)V
    .locals 22

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v0, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v13, p5

    move/from16 v14, p6

    const/4 v5, 0x1

    if-le v0, v4, :cond_0

    add-int v6, v0, v14

    move v7, v4

    move v15, v5

    move v12, v6

    goto :goto_0

    :cond_0
    add-int v6, v0, v14

    sub-int/2addr v6, v5

    add-int/lit8 v0, v0, -0x1

    add-int v7, v4, v14

    sub-int/2addr v7, v5

    const/4 v5, -0x1

    move v12, v0

    move v15, v5

    move v0, v6

    :goto_0
    move v11, v0

    move v10, v7

    :goto_1
    if-eq v11, v12, :cond_1

    .line 144
    invoke-virtual {v1, v2, v11}, Lcom/iiordanov/bVNC/CompactBitmapData;->offset(II)I

    move-result v0

    .line 145
    invoke-virtual {v1, v3, v10}, Lcom/iiordanov/bVNC/CompactBitmapData;->offset(II)I

    move-result v9

    .line 147
    :try_start_0
    iget-object v8, v1, Lcom/iiordanov/bVNC/CompactBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 148
    :try_start_1
    iget-object v5, v1, Lcom/iiordanov/bVNC/CompactBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    iget-object v6, v1, Lcom/iiordanov/bVNC/CompactBitmapData;->bitmapPixels:[I

    iget v7, v1, Lcom/iiordanov/bVNC/CompactBitmapData;->bitmapwidth:I

    move/from16 p2, v7

    iget v7, v1, Lcom/iiordanov/bVNC/CompactBitmapData;->xoffset:I

    sub-int v16, v2, v7

    iget v7, v1, Lcom/iiordanov/bVNC/CompactBitmapData;->yoffset:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int v17, v11, v7

    const/16 v18, 0x1

    move/from16 v19, p2

    move v7, v0

    move-object/from16 v20, v8

    move/from16 v8, v19

    move/from16 v21, v9

    move/from16 v9, v16

    move/from16 v16, v10

    move/from16 v10, v17

    move/from16 v17, v11

    move/from16 v11, p5

    move/from16 v19, v12

    move/from16 v12, v18

    :try_start_2
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 149
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 150
    :try_start_3
    iget-object v5, v1, Lcom/iiordanov/bVNC/CompactBitmapData;->bitmapPixels:[I

    iget-object v6, v1, Lcom/iiordanov/bVNC/CompactBitmapData;->bitmapPixels:[I

    move/from16 v7, v21

    invoke-static {v5, v0, v6, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v20, v8

    move/from16 v16, v10

    move/from16 v17, v11

    move/from16 v19, v12

    .line 149
    :goto_2
    :try_start_4
    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move/from16 v16, v10

    move/from16 v17, v11

    move/from16 v19, v12

    .line 153
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    add-int v10, v16, v15

    add-int v11, v17, v15

    move/from16 v12, v19

    goto :goto_1

    .line 157
    :cond_1
    invoke-virtual {v1, v3, v4, v13, v14}, Lcom/iiordanov/bVNC/CompactBitmapData;->updateBitmap(IIII)V

    return-void
.end method

.method createDrawable()Lcom/iiordanov/bVNC/AbstractBitmapDrawable;
    .locals 1

    .line 99
    new-instance v0, Lcom/iiordanov/bVNC/CompactBitmapData$CompactBitmapDrawable;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/CompactBitmapData$CompactBitmapDrawable;-><init>(Lcom/iiordanov/bVNC/CompactBitmapData;)V

    return-object v0
.end method

.method drawRect(IIIILandroid/graphics/Paint;)V
    .locals 7

    .line 165
    iget-object v0, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->memGraphics:Landroid/graphics/Canvas;

    int-to-float v2, p1

    int-to-float v3, p2

    add-int/2addr p1, p3

    int-to-float v4, p1

    add-int/2addr p2, p4

    int-to-float v5, p2

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 167
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

    .line 183
    iget-object v0, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->rfb:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v0}, Lcom/undatech/opaque/RfbConnectable;->framebufferWidth()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->framebufferwidth:I

    .line 184
    iget-object v0, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->rfb:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v0}, Lcom/undatech/opaque/RfbConnectable;->framebufferHeight()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->framebufferheight:I

    .line 185
    iget v0, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->bitmapwidth:I

    iget v1, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->framebufferwidth:I

    const-string v2, ")"

    const-string v3, ","

    const-string v4, "CompactBitmapData"

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->bitmapheight:I

    iget v1, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->framebufferheight:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Both bitmap dimensions same or smaller, no realloc = ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->framebufferwidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->framebufferheight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 186
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "One or more bitmap dimensions increased, realloc = ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->framebufferwidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->framebufferheight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/CompactBitmapData;->dispose()V

    .line 190
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 191
    iget v0, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->framebufferwidth:I

    iput v0, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->bitmapwidth:I

    .line 192
    iget v0, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->framebufferheight:I

    iput v0, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->bitmapheight:I

    .line 193
    iget v0, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->bitmapwidth:I

    iget v1, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->bitmapheight:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->bitmapPixels:[I

    .line 194
    iget v0, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->bitmapwidth:I

    iget v1, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->bitmapheight:I

    iget-object v2, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->cfg:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    .line 195
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->memGraphics:Landroid/graphics/Canvas;

    .line 196
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/CompactBitmapData;->createDrawable()Lcom/iiordanov/bVNC/AbstractBitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->drawable:Lcom/iiordanov/bVNC/AbstractBitmapDrawable;

    .line 197
    iget-object v0, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->drawable:Lcom/iiordanov/bVNC/AbstractBitmapDrawable;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->startDrawing()V

    :goto_1
    return-void
.end method

.method public offset(II)I
    .locals 1

    .line 91
    iget v0, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->bitmapwidth:I

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
    .locals 9

    .line 107
    iget-object v0, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->bitmapPixels:[I

    invoke-virtual {p0, p1, p2}, Lcom/iiordanov/bVNC/CompactBitmapData;->offset(II)I

    move-result v3

    iget v4, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->bitmapwidth:I

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 109
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateBitmap(Landroid/graphics/Bitmap;IIII)V
    .locals 1

    .line 117
    iget-object p4, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    monitor-enter p4

    .line 118
    :try_start_0
    iget-object p5, p0, Lcom/iiordanov/bVNC/CompactBitmapData;->memGraphics:Landroid/graphics/Canvas;

    int-to-float p2, p2

    int-to-float p3, p3

    const/4 v0, 0x0

    invoke-virtual {p5, p1, p2, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 119
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
