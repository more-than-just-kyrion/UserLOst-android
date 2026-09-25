.class Lcom/iiordanov/bVNC/LargeBitmapData;
.super Lcom/iiordanov/bVNC/AbstractBitmapData;
.source "LargeBitmapData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iiordanov/bVNC/LargeBitmapData$LargeBitmapDrawable;
    }
.end annotation


# static fields
.field static CAPACITY_MULTIPLIER:I = 0x12

.field private static rectPool:Lcom/iiordanov/util/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iiordanov/util/ObjectPool<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitmapRect:Landroid/graphics/Rect;

.field private capacity:I

.field private defaultPaint:Landroid/graphics/Paint;

.field private displayHeight:I

.field private displayWidth:I

.field private invalidList:Lcom/iiordanov/android/drawing/RectList;

.field private pendingList:Lcom/iiordanov/android/drawing/RectList;

.field scaleMultiplier:D

.field scrolledToX:I

.field scrolledToY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/iiordanov/bVNC/LargeBitmapData$1;

    invoke-direct {v0}, Lcom/iiordanov/bVNC/LargeBitmapData$1;-><init>()V

    sput-object v0, Lcom/iiordanov/bVNC/LargeBitmapData;->rectPool:Lcom/iiordanov/util/ObjectPool;

    return-void
.end method

.method constructor <init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;III)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/iiordanov/bVNC/AbstractBitmapData;-><init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;)V

    const-wide/16 p1, 0x0

    .line 41
    iput-wide p1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->scaleMultiplier:D

    .line 97
    iput p5, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->capacity:I

    .line 98
    iput p3, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->displayWidth:I

    .line 99
    iput p4, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->displayHeight:I

    .line 100
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/LargeBitmapData;->initializeLargeBitmapData()V

    return-void
.end method


# virtual methods
.method allocateObjects()V
    .locals 7

    .line 397
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/LargeBitmapData;->dispose()V

    const/4 v0, 0x0

    .line 398
    iput-object v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->invalidList:Lcom/iiordanov/android/drawing/RectList;

    .line 399
    iput-object v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->pendingList:Lcom/iiordanov/android/drawing/RectList;

    .line 400
    iput-object v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapRect:Landroid/graphics/Rect;

    .line 401
    iput-object v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->defaultPaint:Landroid/graphics/Paint;

    .line 403
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 404
    iget v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->capacity:I

    const/high16 v1, 0x100000

    mul-int/2addr v0, v1

    int-to-double v0, v0

    sget v2, Lcom/iiordanov/bVNC/LargeBitmapData;->CAPACITY_MULTIPLIER:I

    iget v3, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->framebufferwidth:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->framebufferheight:I

    mul-int/2addr v2, v3

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->scaleMultiplier:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 407
    iput-wide v2, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->scaleMultiplier:D

    .line 408
    :cond_0
    iget v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->framebufferwidth:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->scaleMultiplier:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapwidth:I

    .line 409
    iget v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapwidth:I

    int-to-double v0, v0

    iget v2, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->displayWidth:I

    int-to-double v3, v2

    const-wide v5, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v3, v5

    cmpg-double v0, v0, v3

    if-gez v0, :cond_1

    int-to-double v0, v2

    mul-double/2addr v0, v5

    double-to-int v0, v0

    .line 410
    iput v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapwidth:I

    .line 411
    :cond_1
    iget v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->framebufferheight:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->scaleMultiplier:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapheight:I

    .line 412
    iget v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapheight:I

    int-to-double v0, v0

    iget v2, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->displayHeight:I

    int-to-double v3, v2

    mul-double/2addr v3, v5

    cmpg-double v0, v0, v3

    if-gez v0, :cond_2

    int-to-double v0, v2

    mul-double/2addr v0, v5

    double-to-int v0, v0

    .line 413
    iput v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapheight:I

    .line 414
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bitmapsize = ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapwidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapheight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LBM"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapwidth:I

    iget v1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapheight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    .line 416
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->memGraphics:Landroid/graphics/Canvas;

    .line 417
    iget v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapwidth:I

    iget v1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapheight:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapPixels:[I

    .line 418
    new-instance v0, Lcom/iiordanov/android/drawing/RectList;

    sget-object v1, Lcom/iiordanov/bVNC/LargeBitmapData;->rectPool:Lcom/iiordanov/util/ObjectPool;

    invoke-direct {v0, v1}, Lcom/iiordanov/android/drawing/RectList;-><init>(Lcom/iiordanov/util/ObjectPool;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->invalidList:Lcom/iiordanov/android/drawing/RectList;

    .line 419
    new-instance v0, Lcom/iiordanov/android/drawing/RectList;

    sget-object v1, Lcom/iiordanov/bVNC/LargeBitmapData;->rectPool:Lcom/iiordanov/util/ObjectPool;

    invoke-direct {v0, v1}, Lcom/iiordanov/android/drawing/RectList;-><init>(Lcom/iiordanov/util/ObjectPool;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->pendingList:Lcom/iiordanov/android/drawing/RectList;

    .line 420
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapwidth:I

    iget v2, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapheight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapRect:Landroid/graphics/Rect;

    .line 421
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->defaultPaint:Landroid/graphics/Paint;

    .line 422
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/LargeBitmapData;->createDrawable()Lcom/iiordanov/bVNC/AbstractBitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->drawable:Lcom/iiordanov/bVNC/AbstractBitmapDrawable;

    .line 423
    iget-object v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->drawable:Lcom/iiordanov/bVNC/AbstractBitmapDrawable;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->startDrawing()V

    return-void
.end method

.method public copyRect(IIIIII)V
    .locals 20

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v0, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p6

    const/4 v6, 0x1

    if-le v0, v4, :cond_0

    add-int v7, v0, v5

    move v8, v4

    goto :goto_0

    :cond_0
    add-int v7, v0, v5

    sub-int/2addr v7, v6

    add-int/lit8 v0, v0, -0x1

    add-int v8, v4, v5

    sub-int/2addr v8, v6

    const/4 v6, -0x1

    move/from16 v19, v7

    move v7, v0

    move/from16 v0, v19

    :goto_0
    move v9, v8

    move v8, v0

    move/from16 v0, p5

    :goto_1
    if-eq v8, v7, :cond_4

    .line 140
    invoke-virtual {v1, v2, v8}, Lcom/iiordanov/bVNC/LargeBitmapData;->offset(II)I

    move-result v15

    .line 141
    invoke-virtual {v1, v3, v9}, Lcom/iiordanov/bVNC/LargeBitmapData;->offset(II)I

    move-result v14

    .line 142
    iget v10, v1, Lcom/iiordanov/bVNC/LargeBitmapData;->xoffset:I

    sub-int v10, v2, v10

    const/4 v11, 0x0

    if-gez v10, :cond_1

    move/from16 v16, v11

    goto :goto_2

    :cond_1
    move/from16 v16, v10

    .line 144
    :goto_2
    iget v10, v1, Lcom/iiordanov/bVNC/LargeBitmapData;->yoffset:I

    sub-int v10, v8, v10

    if-gez v10, :cond_2

    move/from16 v17, v11

    goto :goto_3

    :cond_2
    move/from16 v17, v10

    :goto_3
    add-int v10, v2, v0

    .line 146
    iget v11, v1, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapwidth:I

    if-le v10, v11, :cond_3

    iget v0, v1, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapwidth:I

    sub-int/2addr v0, v2

    :cond_3
    move v13, v0

    .line 148
    :try_start_0
    iget-object v10, v1, Lcom/iiordanov/bVNC/LargeBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    iget-object v11, v1, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapPixels:[I

    iget v0, v1, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapwidth:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v18, 0x1

    move v12, v15

    move/from16 p2, v13

    move v13, v0

    move v0, v14

    move/from16 v14, v16

    move v2, v15

    move/from16 v15, v17

    move/from16 v16, p2

    move/from16 v17, v18

    :try_start_1
    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 149
    iget-object v10, v1, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapPixels:[I

    iget-object v11, v1, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapPixels:[I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v12, p2

    :try_start_2
    invoke-static {v10, v2, v11, v0, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move/from16 v12, p2

    goto :goto_4

    :catch_2
    move-exception v0

    move v12, v13

    .line 152
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    add-int/2addr v9, v6

    add-int/2addr v8, v6

    move/from16 v2, p1

    move v0, v12

    goto :goto_1

    .line 156
    :cond_4
    invoke-virtual {v1, v3, v4, v0, v5}, Lcom/iiordanov/bVNC/LargeBitmapData;->updateBitmap(IIII)V

    return-void
.end method

.method createDrawable()Lcom/iiordanov/bVNC/AbstractBitmapDrawable;
    .locals 1

    .line 105
    new-instance v0, Lcom/iiordanov/bVNC/LargeBitmapData$LargeBitmapDrawable;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/LargeBitmapData$LargeBitmapDrawable;-><init>(Lcom/iiordanov/bVNC/LargeBitmapData;)V

    return-object v0
.end method

.method drawRect(IIIILandroid/graphics/Paint;)V
    .locals 6

    .line 164
    iget v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->xoffset:I

    sub-int/2addr p1, v0

    .line 165
    iget v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->yoffset:I

    sub-int/2addr p2, v0

    .line 166
    iget-object v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->memGraphics:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int/2addr p1, p3

    int-to-float v3, p1

    add-int/2addr p2, p4

    int-to-float v4, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public frameBufferSizeChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 359
    iput v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->xoffset:I

    .line 360
    iput v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->yoffset:I

    .line 361
    iput v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->scrolledToX:I

    .line 362
    iput v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->scrolledToY:I

    .line 363
    iget-object v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->rfb:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v0}, Lcom/undatech/opaque/RfbConnectable;->framebufferWidth()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->framebufferwidth:I

    .line 364
    iget-object v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->rfb:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v0}, Lcom/undatech/opaque/RfbConnectable;->framebufferHeight()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->framebufferheight:I

    .line 365
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/LargeBitmapData;->initializeLargeBitmapData()V

    return-void
.end method

.method getMinimumScale()F
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapwidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapheight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method initializeLargeBitmapData()V
    .locals 2

    .line 374
    :catch_0
    :goto_0
    sget v0, Lcom/iiordanov/bVNC/LargeBitmapData;->CAPACITY_MULTIPLIER:I

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_0

    .line 376
    :try_start_0
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/LargeBitmapData;->allocateObjects()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 382
    :catchall_0
    sget v0, Lcom/iiordanov/bVNC/LargeBitmapData;->CAPACITY_MULTIPLIER:I

    add-int/lit8 v0, v0, 0xa

    sput v0, Lcom/iiordanov/bVNC/LargeBitmapData;->CAPACITY_MULTIPLIER:I

    .line 384
    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v0, 0x1f4

    .line 386
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e8

    .line 391
    sput v0, Lcom/iiordanov/bVNC/LargeBitmapData;->CAPACITY_MULTIPLIER:I

    .line 392
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/LargeBitmapData;->allocateObjects()V

    :goto_1
    return-void
.end method

.method public offset(II)I
    .locals 1

    .line 174
    iget v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->yoffset:I

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapwidth:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    iget p1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->xoffset:I

    sub-int/2addr p2, p1

    return p2
.end method

.method public declared-synchronized prepareFullUpdateRequest(Z)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    .line 268
    :try_start_0
    sget-object p1, Lcom/iiordanov/bVNC/LargeBitmapData;->rectPool:Lcom/iiordanov/util/ObjectPool;

    invoke-virtual {p1}, Lcom/iiordanov/util/ObjectPool;->reserve()Lcom/iiordanov/util/ObjectPool$Entry;

    move-result-object p1

    .line 269
    invoke-virtual {p1}, Lcom/iiordanov/util/ObjectPool$Entry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 270
    iget v1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->xoffset:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 271
    iget v1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->yoffset:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 272
    iget v1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->xoffset:I

    iget v2, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapwidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 273
    iget v1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->yoffset:I

    iget v2, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapheight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 274
    iget-object v1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->pendingList:Lcom/iiordanov/android/drawing/RectList;

    invoke-virtual {v1, v0}, Lcom/iiordanov/android/drawing/RectList;->add(Landroid/graphics/Rect;)V

    .line 275
    iget-object v1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->invalidList:Lcom/iiordanov/android/drawing/RectList;

    invoke-virtual {v1, v0}, Lcom/iiordanov/android/drawing/RectList;->add(Landroid/graphics/Rect;)V

    .line 276
    sget-object v0, Lcom/iiordanov/bVNC/LargeBitmapData;->rectPool:Lcom/iiordanov/util/ObjectPool;

    invoke-virtual {v0, p1}, Lcom/iiordanov/util/ObjectPool;->release(Lcom/iiordanov/util/ObjectPool$Entry;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 278
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method declared-synchronized scrollChanged(II)V
    .locals 7

    monitor-enter p0

    .line 183
    :try_start_0
    iget v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->scrolledToX:I

    .line 184
    iget v1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->scrolledToY:I

    .line 185
    iget-object v2, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/RemoteCanvas;->getVisibleDesktopWidth()I

    move-result v2

    .line 186
    iget-object v3, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v3}, Lcom/iiordanov/bVNC/RemoteCanvas;->getVisibleDesktopHeight()I

    move-result v3

    .line 187
    iget v4, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->xoffset:I

    sub-int v4, p1, v4

    const/4 v5, 0x0

    if-gez v4, :cond_0

    .line 188
    div-int/lit8 v2, v2, 0x2

    add-int/2addr p1, v2

    iget v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapwidth:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    if-gez v0, :cond_1

    move v0, v5

    goto :goto_0

    .line 191
    :cond_0
    iget v4, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->xoffset:I

    sub-int v4, p1, v4

    add-int/2addr v4, v2

    iget v6, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapwidth:I

    if-le v4, v6, :cond_1

    .line 192
    div-int/lit8 v2, v2, 0x2

    add-int/2addr p1, v2

    iget v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapwidth:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    .line 193
    iget p1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapwidth:I

    add-int/2addr p1, v0

    iget v2, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->framebufferwidth:I

    if-le p1, v2, :cond_1

    .line 194
    iget p1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->framebufferwidth:I

    iget v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapwidth:I

    sub-int v0, p1, v0

    .line 197
    :cond_1
    :goto_0
    iget p1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->yoffset:I

    sub-int p1, p2, p1

    if-gez p1, :cond_2

    .line 198
    div-int/lit8 v3, v3, 0x2

    add-int/2addr p2, v3

    iget p1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapheight:I

    div-int/lit8 p1, p1, 0x2

    sub-int v1, p2, p1

    if-gez v1, :cond_3

    move v1, v5

    goto :goto_1

    .line 201
    :cond_2
    iget p1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->yoffset:I

    sub-int p1, p2, p1

    add-int/2addr p1, v3

    iget v2, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapheight:I

    if-le p1, v2, :cond_3

    .line 202
    div-int/lit8 v3, v3, 0x2

    add-int/2addr p2, v3

    iget p1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapheight:I

    div-int/lit8 p1, p1, 0x2

    sub-int v1, p2, p1

    .line 203
    iget p1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapheight:I

    add-int/2addr p1, v1

    iget p2, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->framebufferheight:I

    if-le p1, p2, :cond_3

    .line 204
    iget p1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->framebufferheight:I

    iget p2, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapheight:I

    sub-int v1, p1, p2

    .line 207
    :cond_3
    :goto_1
    iget p1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->scrolledToX:I

    if-ne v0, p1, :cond_4

    iget p1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->scrolledToY:I

    if-eq v1, p1, :cond_5

    .line 208
    :cond_4
    iput v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->scrolledToX:I

    .line 209
    iput v1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->scrolledToY:I

    .line 210
    iget-boolean p1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->waitingForInput:Z

    if-eqz p1, :cond_5

    .line 211
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/LargeBitmapData;->syncScroll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized syncScroll()V
    .locals 15

    monitor-enter p0

    .line 286
    :try_start_0
    iget v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->xoffset:I

    iget v1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->scrolledToX:I

    sub-int/2addr v0, v1

    .line 287
    iget v1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->yoffset:I

    iget v2, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->scrolledToY:I

    sub-int/2addr v1, v2

    .line 288
    iget v2, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->scrolledToX:I

    iput v2, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->xoffset:I

    .line 289
    iget v2, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->scrolledToY:I

    iput v2, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->yoffset:I

    .line 290
    iget-object v2, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->scrolledToY:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 291
    iget-object v2, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->scrolledToY:I

    iget v4, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapheight:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 292
    iget-object v2, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->scrolledToX:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 293
    iget-object v2, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->scrolledToX:I

    iget v4, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapwidth:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 294
    iget-object v2, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->invalidList:Lcom/iiordanov/android/drawing/RectList;

    iget-object v3, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/iiordanov/android/drawing/RectList;->intersect(Landroid/graphics/Rect;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    if-eqz v1, :cond_c

    .line 298
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapwidth:I

    if-ge v4, v5, :cond_b

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapheight:I

    if-ge v4, v5, :cond_b

    .line 299
    sget-object v4, Lcom/iiordanov/bVNC/LargeBitmapData;->rectPool:Lcom/iiordanov/util/ObjectPool;

    invoke-virtual {v4}, Lcom/iiordanov/util/ObjectPool;->reserve()Lcom/iiordanov/util/ObjectPool$Entry;

    move-result-object v4

    .line 300
    sget-object v5, Lcom/iiordanov/bVNC/LargeBitmapData;->rectPool:Lcom/iiordanov/util/ObjectPool;

    invoke-virtual {v5}, Lcom/iiordanov/util/ObjectPool;->reserve()Lcom/iiordanov/util/ObjectPool$Entry;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 303
    :try_start_1
    invoke-virtual {v5}, Lcom/iiordanov/util/ObjectPool$Entry;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 304
    invoke-virtual {v4}, Lcom/iiordanov/util/ObjectPool$Entry;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Landroid/graphics/Rect;

    if-gez v0, :cond_1

    neg-int v7, v0

    goto :goto_0

    :cond_1
    move v7, v3

    :goto_0
    if-gez v1, :cond_2

    neg-int v8, v1

    goto :goto_1

    :cond_2
    move v8, v3

    :goto_1
    if-gez v0, :cond_3

    .line 307
    iget v9, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapwidth:I

    goto :goto_2

    :cond_3
    iget v9, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapwidth:I

    sub-int/2addr v9, v0

    :goto_2
    if-gez v1, :cond_4

    .line 308
    iget v10, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapheight:I

    goto :goto_3

    :cond_4
    iget v10, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapheight:I

    sub-int/2addr v10, v1

    .line 305
    :goto_3
    invoke-virtual {v11, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 309
    iget-object v7, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->invalidList:Lcom/iiordanov/android/drawing/RectList;

    invoke-virtual {v7, v11}, Lcom/iiordanov/android/drawing/RectList;->testIntersect(Landroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 311
    iget-object v8, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->memGraphics:Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->defaultPaint:Landroid/graphics/Paint;

    iget v7, v11, Landroid/graphics/Rect;->left:I

    add-int v12, v0, v7

    iget v7, v11, Landroid/graphics/Rect;->top:I

    add-int v13, v1, v7

    sget-object v14, Lcom/iiordanov/bVNC/LargeBitmapData;->rectPool:Lcom/iiordanov/util/ObjectPool;

    invoke-static/range {v8 .. v14}, Lcom/iiordanov/android/drawing/OverlappingCopy;->Copy(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;IILcom/iiordanov/util/ObjectPool;)V

    if-eqz v0, :cond_6

    if-gez v0, :cond_5

    .line 314
    iget-object v7, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v0

    goto :goto_4

    :cond_5
    iget-object v7, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    :goto_4
    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 315
    iget v7, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 316
    iget-object v7, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 317
    iget-object v7, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 318
    iget-object v7, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->invalidList:Lcom/iiordanov/android/drawing/RectList;

    invoke-virtual {v7, v6}, Lcom/iiordanov/android/drawing/RectList;->add(Landroid/graphics/Rect;)V

    :cond_6
    if-eqz v1, :cond_9

    if-gez v0, :cond_7

    .line 321
    iget-object v7, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    goto :goto_5

    :cond_7
    iget-object v7, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    :goto_5
    iput v7, v6, Landroid/graphics/Rect;->left:I

    if-gez v1, :cond_8

    .line 322
    iget-object v7, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v1

    goto :goto_6

    :cond_8
    iget-object v7, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    :goto_6
    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 323
    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapwidth:I

    add-int/2addr v7, v8

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int/2addr v7, v0

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 324
    iget v0, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 325
    iget-object v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->invalidList:Lcom/iiordanov/android/drawing/RectList;

    invoke-virtual {v0, v6}, Lcom/iiordanov/android/drawing/RectList;->add(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    move v0, v2

    goto :goto_7

    :cond_a
    move v0, v3

    .line 330
    :goto_7
    :try_start_2
    sget-object v1, Lcom/iiordanov/bVNC/LargeBitmapData;->rectPool:Lcom/iiordanov/util/ObjectPool;

    invoke-virtual {v1, v5}, Lcom/iiordanov/util/ObjectPool;->release(Lcom/iiordanov/util/ObjectPool$Entry;)V

    .line 331
    sget-object v1, Lcom/iiordanov/bVNC/LargeBitmapData;->rectPool:Lcom/iiordanov/util/ObjectPool;

    invoke-virtual {v1, v4}, Lcom/iiordanov/util/ObjectPool;->release(Lcom/iiordanov/util/ObjectPool$Entry;)V

    goto :goto_8

    :catchall_0
    move-exception v0

    .line 330
    sget-object v1, Lcom/iiordanov/bVNC/LargeBitmapData;->rectPool:Lcom/iiordanov/util/ObjectPool;

    invoke-virtual {v1, v5}, Lcom/iiordanov/util/ObjectPool;->release(Lcom/iiordanov/util/ObjectPool$Entry;)V

    .line 331
    sget-object v1, Lcom/iiordanov/bVNC/LargeBitmapData;->rectPool:Lcom/iiordanov/util/ObjectPool;

    invoke-virtual {v1, v4}, Lcom/iiordanov/util/ObjectPool;->release(Lcom/iiordanov/util/ObjectPool$Entry;)V

    .line 332
    throw v0

    :cond_b
    move v0, v3

    :goto_8
    if-nez v0, :cond_c

    .line 336
    iget-object v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 337
    iget-object v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0, v3}, Lcom/iiordanov/bVNC/RemoteCanvas;->writeFullUpdateRequest(Z)V

    .line 340
    :cond_c
    iget-object v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->pendingList:Lcom/iiordanov/android/drawing/RectList;

    invoke-virtual {v0}, Lcom/iiordanov/android/drawing/RectList;->getSize()I

    move-result v0

    move v1, v3

    :goto_9
    if-ge v1, v0, :cond_d

    .line 342
    iget-object v4, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->invalidList:Lcom/iiordanov/android/drawing/RectList;

    iget-object v5, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->pendingList:Lcom/iiordanov/android/drawing/RectList;

    invoke-virtual {v5, v1}, Lcom/iiordanov/android/drawing/RectList;->get(I)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iiordanov/android/drawing/RectList;->subtract(Landroid/graphics/Rect;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 344
    :cond_d
    iget-object v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->invalidList:Lcom/iiordanov/android/drawing/RectList;

    invoke-virtual {v0}, Lcom/iiordanov/android/drawing/RectList;->getSize()I

    move-result v0

    :goto_a
    if-ge v3, v0, :cond_e

    .line 346
    iget-object v1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->invalidList:Lcom/iiordanov/android/drawing/RectList;

    invoke-virtual {v1, v3}, Lcom/iiordanov/android/drawing/RectList;->get(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 347
    iget-object v4, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->rfb:Lcom/undatech/opaque/RfbConnectable;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iget v9, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/undatech/opaque/RfbConnectable;->writeFramebufferUpdateRequest(IIIIZ)V

    .line 348
    iget-object v4, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->pendingList:Lcom/iiordanov/android/drawing/RectList;

    invoke-virtual {v4, v1}, Lcom/iiordanov/android/drawing/RectList;->add(Landroid/graphics/Rect;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 350
    :cond_e
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->waitingForInput:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 352
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public updateBitmap(IIII)V
    .locals 10

    .line 220
    iget v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->xoffset:I

    sub-int v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, v0

    .line 222
    :goto_0
    iget v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->yoffset:I

    sub-int v0, p2, v0

    if-gez v0, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, v0

    :goto_1
    add-int v0, p1, p3

    .line 224
    iget v1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->xoffset:I

    iget v2, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapwidth:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_2

    iget p3, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->xoffset:I

    iget v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapwidth:I

    add-int/2addr p3, v0

    sub-int/2addr p3, p1

    :cond_2
    move v8, p3

    add-int p3, p2, p4

    .line 225
    iget v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->yoffset:I

    iget v1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapheight:I

    add-int/2addr v0, v1

    if-le p3, v0, :cond_3

    iget p3, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->yoffset:I

    iget p4, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapheight:I

    add-int/2addr p3, p4

    sub-int p4, p3, p2

    :cond_3
    move v9, p4

    .line 228
    :try_start_0
    iget-object v2, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapPixels:[I

    invoke-virtual {p0, p1, p2}, Lcom/iiordanov/bVNC/LargeBitmapData;->offset(II)I

    move-result v4

    iget v5, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapwidth:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 231
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public updateBitmap(Landroid/graphics/Bitmap;IIII)V
    .locals 0

    .line 240
    iget-object p4, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->memGraphics:Landroid/graphics/Canvas;

    iget p5, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->xoffset:I

    sub-int/2addr p2, p5

    int-to-float p2, p2

    iget p5, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->yoffset:I

    sub-int/2addr p3, p5

    int-to-float p3, p3

    const/4 p5, 0x0

    invoke-virtual {p4, p1, p2, p3, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public declared-synchronized validDraw(IIII)Z
    .locals 3

    monitor-enter p0

    .line 248
    :try_start_0
    iget v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->xoffset:I

    sub-int v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->xoffset:I

    sub-int v0, p1, v0

    add-int/2addr v0, p3

    iget v1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapwidth:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->yoffset:I

    sub-int v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->yoffset:I

    sub-int v0, p2, v0

    add-int/2addr v0, p4

    iget v1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->bitmapheight:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 250
    :goto_0
    sget-object v1, Lcom/iiordanov/bVNC/LargeBitmapData;->rectPool:Lcom/iiordanov/util/ObjectPool;

    invoke-virtual {v1}, Lcom/iiordanov/util/ObjectPool;->reserve()Lcom/iiordanov/util/ObjectPool$Entry;

    move-result-object v1

    .line 251
    invoke-virtual {v1}, Lcom/iiordanov/util/ObjectPool$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    .line 252
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 253
    iget-object p1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->pendingList:Lcom/iiordanov/android/drawing/RectList;

    invoke-virtual {p1, v2}, Lcom/iiordanov/android/drawing/RectList;->subtract(Landroid/graphics/Rect;)V

    if-nez v0, :cond_1

    .line 255
    iget-object p1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->invalidList:Lcom/iiordanov/android/drawing/RectList;

    invoke-virtual {p1, v2}, Lcom/iiordanov/android/drawing/RectList;->add(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 257
    :cond_1
    iget-object p1, p0, Lcom/iiordanov/bVNC/LargeBitmapData;->invalidList:Lcom/iiordanov/android/drawing/RectList;

    invoke-virtual {p1, v2}, Lcom/iiordanov/android/drawing/RectList;->subtract(Landroid/graphics/Rect;)V

    .line 258
    :goto_1
    sget-object p1, Lcom/iiordanov/bVNC/LargeBitmapData;->rectPool:Lcom/iiordanov/util/ObjectPool;

    invoke-virtual {p1, v1}, Lcom/iiordanov/util/ObjectPool;->release(Lcom/iiordanov/util/ObjectPool$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
