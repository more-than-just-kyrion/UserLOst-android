.class public Lcom/iiordanov/bVNC/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Decoder"


# instance fields
.field private backgroundColorBuffer:[B

.field private bg_buf:[B

.field private bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

.field private bitmapopts:Landroid/graphics/BitmapFactory$Options;

.field private boffset:I

.field private bytesPerPixel:I

.field private c:I

.field private colorBuf:[B

.field private colorModel:Lcom/iiordanov/bVNC/COLORMODEL;

.field private colorPalette:[I

.field private comp_ctl:I

.field private dataSize:I

.field private discardCursorShapeUpdates:Z

.field private dx:I

.field private dy:I

.field private handleHextileSubrectPaint:Landroid/graphics/Paint;

.field private handleRREPaint:Landroid/graphics/Paint;

.field private handleRawRectBuffer:[B

.field private handleTightRectPaint:Landroid/graphics/Paint;

.field private handleZRLERectPaint:Landroid/graphics/Paint;

.field private handleZRLERectPalette:[I

.field private handleZlibRectBuffer:[B

.field private hextile_bg:I

.field private hextile_fg:I

.field private idx:I

.field private inflBuf:[B

.field private jpegDataLen:I

.field private numColors:I

.field private offset:I

.field private pendingColorModel:Lcom/iiordanov/bVNC/COLORMODEL;

.field private readPixelsBuffer:[B

.field private rowSize:I

.field private rre_buf:[B

.field private solidColorBuf:[B

.field private stream_id:I

.field private tightInflaters:[Ljava/util/zip/Inflater;

.field private tightPalette24:[I

.field private tightPalette8:[B

.field private uncompDataBuf:[B

.field private useGradient:Z

.field private valid:Z

.field private vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

.field private zlibBuf:[B

.field private zlibData:[B

.field private zlibInflater:Ljava/util/zip/Inflater;

.field private zrleBuf:[B

.field private zrleInStream:Lcom/iiordanov/bVNC/ZlibInStream;

.field private zrleTilePixels:[I


# direct methods
.method public constructor <init>(Lcom/iiordanov/bVNC/RemoteCanvas;Z)V
    .locals 4

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lcom/iiordanov/bVNC/COLORMODEL;->C24bit:Lcom/iiordanov/bVNC/COLORMODEL;

    iput-object v0, p0, Lcom/iiordanov/bVNC/Decoder;->pendingColorModel:Lcom/iiordanov/bVNC/COLORMODEL;

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/iiordanov/bVNC/Decoder;->colorModel:Lcom/iiordanov/bVNC/COLORMODEL;

    const/4 v1, 0x0

    .line 50
    iput v1, p0, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    .line 51
    iput-object v0, p0, Lcom/iiordanov/bVNC/Decoder;->colorPalette:[I

    const/4 v0, 0x4

    .line 54
    new-array v2, v0, [Ljava/util/zip/Inflater;

    iput-object v2, p0, Lcom/iiordanov/bVNC/Decoder;->tightInflaters:[Ljava/util/zip/Inflater;

    .line 55
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/iiordanov/bVNC/Decoder;->handleTightRectPaint:Landroid/graphics/Paint;

    const/4 v2, 0x3

    .line 56
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/iiordanov/bVNC/Decoder;->solidColorBuf:[B

    const/4 v2, 0x2

    .line 57
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/iiordanov/bVNC/Decoder;->tightPalette8:[B

    const/16 v2, 0x100

    .line 58
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/iiordanov/bVNC/Decoder;->tightPalette24:[I

    const/16 v2, 0x300

    .line 59
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/iiordanov/bVNC/Decoder;->colorBuf:[B

    const/16 v2, 0x24

    .line 60
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/iiordanov/bVNC/Decoder;->uncompDataBuf:[B

    const/16 v2, 0x1000

    .line 61
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/iiordanov/bVNC/Decoder;->zlibData:[B

    const/16 v2, 0x2000

    .line 62
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/iiordanov/bVNC/Decoder;->inflBuf:[B

    .line 63
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v2, p0, Lcom/iiordanov/bVNC/Decoder;->bitmapopts:Landroid/graphics/BitmapFactory$Options;

    .line 71
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/iiordanov/bVNC/Decoder;->handleZRLERectPaint:Landroid/graphics/Paint;

    const/16 v2, 0x80

    .line 72
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/iiordanov/bVNC/Decoder;->handleZRLERectPalette:[I

    .line 73
    new-array v3, v2, [B

    iput-object v3, p0, Lcom/iiordanov/bVNC/Decoder;->readPixelsBuffer:[B

    .line 78
    new-array v3, v2, [B

    iput-object v3, p0, Lcom/iiordanov/bVNC/Decoder;->handleZlibRectBuffer:[B

    .line 81
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/iiordanov/bVNC/Decoder;->handleRREPaint:Landroid/graphics/Paint;

    .line 82
    new-array v3, v0, [B

    iput-object v3, p0, Lcom/iiordanov/bVNC/Decoder;->bg_buf:[B

    .line 83
    new-array v3, v2, [B

    iput-object v3, p0, Lcom/iiordanov/bVNC/Decoder;->rre_buf:[B

    .line 86
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/iiordanov/bVNC/Decoder;->handleRawRectBuffer:[B

    .line 91
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/iiordanov/bVNC/Decoder;->handleHextileSubrectPaint:Landroid/graphics/Paint;

    .line 92
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/iiordanov/bVNC/Decoder;->backgroundColorBuffer:[B

    .line 99
    iput-boolean p2, p0, Lcom/iiordanov/bVNC/Decoder;->discardCursorShapeUpdates:Z

    .line 100
    iget-object p2, p0, Lcom/iiordanov/bVNC/Decoder;->handleRREPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object p2, p0, Lcom/iiordanov/bVNC/Decoder;->handleTightRectPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    iget-object p2, p0, Lcom/iiordanov/bVNC/Decoder;->bitmapopts:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 103
    iget-object p2, p0, Lcom/iiordanov/bVNC/Decoder;->bitmapopts:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 104
    iget-object p2, p0, Lcom/iiordanov/bVNC/Decoder;->bitmapopts:Landroid/graphics/BitmapFactory$Options;

    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 105
    iget-object p2, p0, Lcom/iiordanov/bVNC/Decoder;->bitmapopts:Landroid/graphics/BitmapFactory$Options;

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 106
    iget-object p2, p0, Lcom/iiordanov/bVNC/Decoder;->bitmapopts:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 107
    iput-object p1, p0, Lcom/iiordanov/bVNC/Decoder;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    return-void
.end method

.method private handleHextileSubrect(Lcom/iiordanov/bVNC/RfbProto;IIII)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 330
    iget-object v0, v1, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 334
    invoke-virtual/range {v0 .. v6}, Lcom/iiordanov/bVNC/Decoder;->handleRawRect(Lcom/iiordanov/bVNC/RfbProto;IIIIZ)V

    return-void

    .line 338
    :cond_0
    iget-object v4, v7, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual {v4, v2, v3, v5, v6}, Lcom/iiordanov/bVNC/AbstractBitmapData;->validDraw(IIII)Z

    move-result v4

    .line 340
    iget v8, v7, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    iget-object v9, v7, Lcom/iiordanov/bVNC/Decoder;->backgroundColorBuffer:[B

    array-length v10, v9

    if-gt v8, v10, :cond_f

    and-int/lit8 v10, v0, 0x2

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/4 v13, 0x1

    if-eqz v10, :cond_2

    .line 344
    invoke-virtual {v1, v9, v15, v8}, Lcom/iiordanov/bVNC/RfbProto;->readFully([BII)V

    .line 345
    iget v8, v7, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    if-ne v8, v13, :cond_1

    .line 346
    iget-object v8, v7, Lcom/iiordanov/bVNC/Decoder;->colorPalette:[I

    iget-object v9, v7, Lcom/iiordanov/bVNC/Decoder;->backgroundColorBuffer:[B

    aget-byte v9, v9, v15

    and-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    iput v8, v7, Lcom/iiordanov/bVNC/Decoder;->hextile_bg:I

    goto :goto_0

    .line 348
    :cond_1
    iget-object v8, v7, Lcom/iiordanov/bVNC/Decoder;->backgroundColorBuffer:[B

    aget-byte v9, v8, v14

    and-int/lit16 v9, v9, 0xff

    aget-byte v10, v8, v13

    and-int/lit16 v10, v10, 0xff

    aget-byte v8, v8, v15

    and-int/lit16 v8, v8, 0xff

    invoke-static {v9, v10, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    iput v8, v7, Lcom/iiordanov/bVNC/Decoder;->hextile_bg:I

    .line 351
    :cond_2
    :goto_0
    iget-object v8, v7, Lcom/iiordanov/bVNC/Decoder;->handleHextileSubrectPaint:Landroid/graphics/Paint;

    iget v9, v7, Lcom/iiordanov/bVNC/Decoder;->hextile_bg:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    iget-object v8, v7, Lcom/iiordanov/bVNC/Decoder;->handleHextileSubrectPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz v4, :cond_3

    .line 354
    iget-object v8, v7, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget-object v12, v7, Lcom/iiordanov/bVNC/Decoder;->handleHextileSubrectPaint:Landroid/graphics/Paint;

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move-object v5, v12

    move/from16 v12, p5

    move v6, v13

    move-object v13, v5

    invoke-virtual/range {v8 .. v13}, Lcom/iiordanov/bVNC/AbstractBitmapData;->drawRect(IIIILandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    move v6, v13

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_5

    .line 358
    iget-object v5, v7, Lcom/iiordanov/bVNC/Decoder;->backgroundColorBuffer:[B

    iget v8, v7, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    invoke-virtual {v1, v5, v15, v8}, Lcom/iiordanov/bVNC/RfbProto;->readFully([BII)V

    .line 359
    iget v5, v7, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    if-ne v5, v6, :cond_4

    .line 360
    iget-object v5, v7, Lcom/iiordanov/bVNC/Decoder;->colorPalette:[I

    iget-object v8, v7, Lcom/iiordanov/bVNC/Decoder;->backgroundColorBuffer:[B

    aget-byte v8, v8, v15

    and-int/lit16 v8, v8, 0xff

    aget v5, v5, v8

    iput v5, v7, Lcom/iiordanov/bVNC/Decoder;->hextile_fg:I

    goto :goto_2

    .line 362
    :cond_4
    iget-object v5, v7, Lcom/iiordanov/bVNC/Decoder;->backgroundColorBuffer:[B

    aget-byte v8, v5, v14

    and-int/lit16 v8, v8, 0xff

    aget-byte v9, v5, v6

    and-int/lit16 v9, v9, 0xff

    aget-byte v5, v5, v15

    and-int/lit16 v5, v5, 0xff

    invoke-static {v8, v9, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    iput v5, v7, Lcom/iiordanov/bVNC/Decoder;->hextile_fg:I

    :cond_5
    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-nez v5, :cond_6

    return-void

    .line 370
    :cond_6
    iget-object v5, v1, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    mul-int/lit8 v8, v5, 0x2

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    .line 373
    iget v9, v7, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    mul-int/2addr v9, v5

    add-int/2addr v8, v9

    .line 375
    :cond_7
    iget-object v9, v7, Lcom/iiordanov/bVNC/Decoder;->rre_buf:[B

    array-length v9, v9

    if-ge v9, v8, :cond_8

    .line 376
    new-array v9, v8, [B

    iput-object v9, v7, Lcom/iiordanov/bVNC/Decoder;->rre_buf:[B

    .line 377
    :cond_8
    iget-object v9, v7, Lcom/iiordanov/bVNC/Decoder;->rre_buf:[B

    invoke-virtual {v1, v9, v15, v8}, Lcom/iiordanov/bVNC/RfbProto;->readFully([BII)V

    if-nez v0, :cond_a

    .line 384
    iget-object v0, v7, Lcom/iiordanov/bVNC/Decoder;->handleHextileSubrectPaint:Landroid/graphics/Paint;

    iget v1, v7, Lcom/iiordanov/bVNC/Decoder;->hextile_fg:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v15

    :goto_3
    if-ge v15, v5, :cond_e

    .line 386
    iget-object v1, v7, Lcom/iiordanov/bVNC/Decoder;->rre_buf:[B

    add-int/lit8 v8, v0, 0x1

    aget-byte v9, v1, v0

    and-int/lit16 v10, v9, 0xff

    add-int/2addr v0, v14

    .line 387
    aget-byte v1, v1, v8

    and-int/lit16 v8, v1, 0xff

    shr-int/lit8 v10, v10, 0x4

    add-int v17, v2, v10

    and-int/lit8 v9, v9, 0xf

    add-int v18, v3, v9

    shr-int/lit8 v8, v8, 0x4

    add-int/lit8 v19, v8, 0x1

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v20, v1, 0x1

    if-eqz v4, :cond_9

    .line 393
    iget-object v1, v7, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget-object v8, v7, Lcom/iiordanov/bVNC/Decoder;->handleHextileSubrectPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v1

    move-object/from16 v21, v8

    invoke-virtual/range {v16 .. v21}, Lcom/iiordanov/bVNC/AbstractBitmapData;->drawRect(IIIILandroid/graphics/Paint;)V

    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 395
    :cond_a
    iget v0, v7, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    if-ne v0, v6, :cond_c

    move v0, v15

    :goto_4
    if-ge v15, v5, :cond_e

    .line 399
    iget-object v1, v7, Lcom/iiordanov/bVNC/Decoder;->colorPalette:[I

    iget-object v8, v7, Lcom/iiordanov/bVNC/Decoder;->rre_buf:[B

    add-int/lit8 v9, v0, 0x1

    aget-byte v10, v8, v0

    and-int/lit16 v10, v10, 0xff

    aget v1, v1, v10

    iput v1, v7, Lcom/iiordanov/bVNC/Decoder;->hextile_fg:I

    add-int/lit8 v10, v0, 0x2

    .line 400
    aget-byte v9, v8, v9

    and-int/lit16 v11, v9, 0xff

    add-int/lit8 v0, v0, 0x3

    .line 401
    aget-byte v8, v8, v10

    and-int/lit16 v10, v8, 0xff

    shr-int/lit8 v11, v11, 0x4

    add-int v17, v2, v11

    and-int/lit8 v9, v9, 0xf

    add-int v18, v3, v9

    shr-int/lit8 v9, v10, 0x4

    add-int/lit8 v19, v9, 0x1

    and-int/lit8 v8, v8, 0xf

    add-int/lit8 v20, v8, 0x1

    .line 406
    iget-object v8, v7, Lcom/iiordanov/bVNC/Decoder;->handleHextileSubrectPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v4, :cond_b

    .line 408
    iget-object v1, v7, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget-object v8, v7, Lcom/iiordanov/bVNC/Decoder;->handleHextileSubrectPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v1

    move-object/from16 v21, v8

    invoke-virtual/range {v16 .. v21}, Lcom/iiordanov/bVNC/AbstractBitmapData;->drawRect(IIIILandroid/graphics/Paint;)V

    :cond_b
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_c
    move v0, v15

    :goto_5
    if-ge v15, v5, :cond_e

    .line 415
    iget-object v1, v7, Lcom/iiordanov/bVNC/Decoder;->rre_buf:[B

    add-int/lit8 v8, v0, 0x2

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v0, 0x1

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    invoke-static {v8, v9, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, v7, Lcom/iiordanov/bVNC/Decoder;->hextile_fg:I

    add-int/lit8 v8, v0, 0x4

    .line 417
    iget-object v9, v7, Lcom/iiordanov/bVNC/Decoder;->rre_buf:[B

    add-int/lit8 v10, v0, 0x5

    aget-byte v8, v9, v8

    and-int/lit16 v11, v8, 0xff

    add-int/lit8 v0, v0, 0x6

    .line 418
    aget-byte v9, v9, v10

    and-int/lit16 v10, v9, 0xff

    shr-int/lit8 v11, v11, 0x4

    add-int v17, v2, v11

    and-int/lit8 v8, v8, 0xf

    add-int v18, v3, v8

    shr-int/lit8 v8, v10, 0x4

    add-int/lit8 v19, v8, 0x1

    and-int/lit8 v8, v9, 0xf

    add-int/lit8 v20, v8, 0x1

    .line 423
    iget-object v8, v7, Lcom/iiordanov/bVNC/Decoder;->handleHextileSubrectPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v4, :cond_d

    .line 425
    iget-object v1, v7, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget-object v8, v7, Lcom/iiordanov/bVNC/Decoder;->handleHextileSubrectPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v1

    move-object/from16 v21, v8

    invoke-virtual/range {v16 .. v21}, Lcom/iiordanov/bVNC/AbstractBitmapData;->drawRect(IIIILandroid/graphics/Paint;)V

    :cond_d
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_e
    return-void

    .line 341
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "impossible colordepth"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleUpdatedZrleTile(IIII)V
    .locals 6

    .line 704
    iget-object v0, p0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget-object v0, v0, Lcom/iiordanov/bVNC/AbstractBitmapData;->bitmapPixels:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p4, :cond_0

    .line 706
    iget-object v3, p0, Lcom/iiordanov/bVNC/Decoder;->zrleTilePixels:[I

    iget-object v4, p0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    add-int v5, p2, v1

    invoke-virtual {v4, p1, v5}, Lcom/iiordanov/bVNC/AbstractBitmapData;->offset(II)I

    move-result v4

    invoke-static {v3, v2, v0, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/iiordanov/bVNC/AbstractBitmapData;->updateBitmap(IIII)V

    return-void
.end method

.method private readPixel(Lcom/iiordanov/bVNC/InStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 562
    iget v0, p0, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 563
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/InStream;->readU8()I

    move-result p1

    goto :goto_0

    .line 565
    :cond_0
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/InStream;->readU8()I

    move-result v0

    .line 566
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/InStream;->readU8()I

    move-result v1

    .line 567
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/InStream;->readU8()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p1, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method private readPixels(Lcom/iiordanov/bVNC/InStream;[II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 575
    iget v0, p0, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 576
    iget-object v0, p0, Lcom/iiordanov/bVNC/Decoder;->readPixelsBuffer:[B

    array-length v0, v0

    if-le p3, v0, :cond_0

    .line 577
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/iiordanov/bVNC/Decoder;->readPixelsBuffer:[B

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/Decoder;->readPixelsBuffer:[B

    invoke-virtual {p1, v0, v2, p3}, Lcom/iiordanov/bVNC/InStream;->readBytes([BII)V

    :goto_0
    if-ge v2, p3, :cond_3

    .line 581
    iget-object p1, p0, Lcom/iiordanov/bVNC/Decoder;->readPixelsBuffer:[B

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    aput p1, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 v0, p3, 0x3

    .line 585
    iget-object v1, p0, Lcom/iiordanov/bVNC/Decoder;->readPixelsBuffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 586
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/iiordanov/bVNC/Decoder;->readPixelsBuffer:[B

    .line 588
    :cond_2
    iget-object v1, p0, Lcom/iiordanov/bVNC/Decoder;->readPixelsBuffer:[B

    invoke-virtual {p1, v1, v2, v0}, Lcom/iiordanov/bVNC/InStream;->readBytes([BII)V

    :goto_1
    if-ge v2, p3, :cond_3

    mul-int/lit8 p1, v2, 0x3

    .line 591
    iget-object v0, p0, Lcom/iiordanov/bVNC/Decoder;->readPixelsBuffer:[B

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    aput p1, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private readZrlePackedPixels(II[II)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    const/16 v3, 0x10

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-le v2, v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    if-le v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v5

    :goto_0
    mul-int v2, p1, v1

    .line 612
    iget-object v6, v0, Lcom/iiordanov/bVNC/Decoder;->zrleTilePixels:[I

    if-eqz v6, :cond_3

    array-length v6, v6

    if-le v2, v6, :cond_4

    .line 613
    :cond_3
    new-array v2, v2, [I

    iput-object v2, v0, Lcom/iiordanov/bVNC/Decoder;->zrleTilePixels:[I

    :cond_4
    const/4 v2, 0x0

    move v6, v2

    move v7, v6

    :goto_1
    if-ge v6, v1, :cond_9

    add-int v8, v7, p1

    move v9, v2

    move v10, v9

    :goto_2
    if-ge v7, v8, :cond_8

    if-nez v9, :cond_5

    .line 622
    iget-object v9, v0, Lcom/iiordanov/bVNC/Decoder;->zrleInStream:Lcom/iiordanov/bVNC/ZlibInStream;

    invoke-virtual {v9}, Lcom/iiordanov/bVNC/ZlibInStream;->readU8()I

    move-result v10

    move v9, v4

    :cond_5
    sub-int/2addr v9, v3

    shr-int v11, v10, v9

    shl-int v12, v5, v3

    sub-int/2addr v12, v5

    and-int/2addr v11, v12

    and-int/lit8 v11, v11, 0x7f

    .line 627
    iget v12, v0, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    if-ne v12, v5, :cond_7

    .line 628
    iget-object v12, v0, Lcom/iiordanov/bVNC/Decoder;->colorPalette:[I

    array-length v12, v12

    if-lt v11, v12, :cond_6

    .line 629
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "zrlePlainRLEPixels palette lookup out of bounds "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Decoder"

    invoke-static {v13, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_6
    iget-object v12, v0, Lcom/iiordanov/bVNC/Decoder;->zrleTilePixels:[I

    add-int/lit8 v13, v7, 0x1

    iget-object v14, v0, Lcom/iiordanov/bVNC/Decoder;->colorPalette:[I

    aget v11, p3, v11

    and-int/lit16 v11, v11, 0xff

    aget v11, v14, v11

    aput v11, v12, v7

    goto :goto_3

    .line 632
    :cond_7
    iget-object v12, v0, Lcom/iiordanov/bVNC/Decoder;->zrleTilePixels:[I

    add-int/lit8 v13, v7, 0x1

    aget v11, p3, v11

    aput v11, v12, v7

    :goto_3
    move v7, v13

    goto :goto_2

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_9
    return-void
.end method

.method private readZrlePackedRLEPixels(II[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    mul-int/2addr p1, p2

    .line 669
    iget-object p2, p0, Lcom/iiordanov/bVNC/Decoder;->zrleTilePixels:[I

    if-eqz p2, :cond_0

    array-length p2, p2

    if-le p1, p2, :cond_1

    .line 670
    :cond_0
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/iiordanov/bVNC/Decoder;->zrleTilePixels:[I

    :cond_1
    const/4 p2, 0x0

    :cond_2
    if-ge p2, p1, :cond_7

    .line 672
    iget-object v0, p0, Lcom/iiordanov/bVNC/Decoder;->zrleInStream:Lcom/iiordanov/bVNC/ZlibInStream;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ZlibInStream;->readU8()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    move v1, v2

    .line 677
    :cond_3
    iget-object v3, p0, Lcom/iiordanov/bVNC/Decoder;->zrleInStream:Lcom/iiordanov/bVNC/ZlibInStream;

    invoke-virtual {v3}, Lcom/iiordanov/bVNC/ZlibInStream;->readU8()I

    move-result v3

    add-int/2addr v1, v3

    const/16 v4, 0xff

    if-eq v3, v4, :cond_3

    sub-int v3, p1, p2

    if-gt v1, v3, :cond_4

    goto :goto_0

    .line 682
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "ZRLE decoder: assertion failed (len <= end - ptr)"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    move v1, v2

    :goto_0
    and-int/lit8 v0, v0, 0x7f

    .line 686
    aget v0, p3, v0

    .line 688
    iget v3, p0, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    if-ne v3, v2, :cond_6

    :goto_1
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_2

    .line 690
    iget-object v1, p0, Lcom/iiordanov/bVNC/Decoder;->zrleTilePixels:[I

    add-int/lit8 v3, p2, 0x1

    iget-object v4, p0, Lcom/iiordanov/bVNC/Decoder;->colorPalette:[I

    and-int/lit16 v5, v0, 0xff

    aget v4, v4, v5

    aput v4, v1, p2

    move v1, v2

    move p2, v3

    goto :goto_1

    :cond_6
    :goto_2
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_2

    .line 693
    iget-object v1, p0, Lcom/iiordanov/bVNC/Decoder;->zrleTilePixels:[I

    add-int/lit8 v3, p2, 0x1

    aput v0, v1, p2

    move v1, v2

    move p2, v3

    goto :goto_2

    :cond_7
    return-void
.end method

.method private readZrlePalette([II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 597
    iget-object v0, p0, Lcom/iiordanov/bVNC/Decoder;->zrleInStream:Lcom/iiordanov/bVNC/ZlibInStream;

    invoke-direct {p0, v0, p1, p2}, Lcom/iiordanov/bVNC/Decoder;->readPixels(Lcom/iiordanov/bVNC/InStream;[II)V

    return-void
.end method

.method private readZrlePlainRLEPixels(II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    mul-int/2addr p1, p2

    .line 641
    iget-object p2, p0, Lcom/iiordanov/bVNC/Decoder;->zrleTilePixels:[I

    if-eqz p2, :cond_0

    array-length p2, p2

    if-le p1, p2, :cond_1

    .line 642
    :cond_0
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/iiordanov/bVNC/Decoder;->zrleTilePixels:[I

    :cond_1
    const/4 p2, 0x0

    :cond_2
    if-ge p2, p1, :cond_6

    .line 644
    iget-object v0, p0, Lcom/iiordanov/bVNC/Decoder;->zrleInStream:Lcom/iiordanov/bVNC/ZlibInStream;

    invoke-direct {p0, v0}, Lcom/iiordanov/bVNC/Decoder;->readPixel(Lcom/iiordanov/bVNC/InStream;)I

    move-result v0

    const/4 v1, 0x1

    move v2, v1

    .line 648
    :cond_3
    iget-object v3, p0, Lcom/iiordanov/bVNC/Decoder;->zrleInStream:Lcom/iiordanov/bVNC/ZlibInStream;

    invoke-virtual {v3}, Lcom/iiordanov/bVNC/ZlibInStream;->readU8()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v4, 0xff

    if-eq v3, v4, :cond_3

    sub-int v3, p1, p2

    if-gt v2, v3, :cond_5

    .line 655
    iget v3, p0, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    if-ne v3, v1, :cond_4

    :goto_0
    add-int/lit8 v1, v2, -0x1

    if-lez v2, :cond_2

    .line 657
    iget-object v2, p0, Lcom/iiordanov/bVNC/Decoder;->zrleTilePixels:[I

    add-int/lit8 v3, p2, 0x1

    iget-object v4, p0, Lcom/iiordanov/bVNC/Decoder;->colorPalette:[I

    and-int/lit16 v5, v0, 0xff

    aget v4, v4, v5

    aput v4, v2, p2

    move v2, v1

    move p2, v3

    goto :goto_0

    :cond_4
    :goto_1
    add-int/lit8 v1, v2, -0x1

    if-lez v2, :cond_2

    .line 660
    iget-object v2, p0, Lcom/iiordanov/bVNC/Decoder;->zrleTilePixels:[I

    add-int/lit8 v3, p2, 0x1

    aput v0, v2, p2

    move v2, v1

    move p2, v3

    goto :goto_1

    .line 653
    :cond_5
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "ZRLE decoder: assertion failed (len <= end-ptr)"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-void
.end method

.method private readZrleRawPixels(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    mul-int/2addr p1, p2

    .line 602
    iget-object p2, p0, Lcom/iiordanov/bVNC/Decoder;->zrleTilePixels:[I

    if-eqz p2, :cond_0

    array-length p2, p2

    if-le p1, p2, :cond_1

    .line 603
    :cond_0
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/iiordanov/bVNC/Decoder;->zrleTilePixels:[I

    .line 604
    :cond_1
    iget-object p2, p0, Lcom/iiordanov/bVNC/Decoder;->zrleInStream:Lcom/iiordanov/bVNC/ZlibInStream;

    iget-object v0, p0, Lcom/iiordanov/bVNC/Decoder;->zrleTilePixels:[I

    invoke-direct {p0, p2, v0, p1}, Lcom/iiordanov/bVNC/Decoder;->readPixels(Lcom/iiordanov/bVNC/InStream;[II)V

    return-void
.end method


# virtual methods
.method declared-synchronized decodeCursorShape(Lcom/iiordanov/bVNC/RfbProto;III)[I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p4

    monitor-enter p0

    add-int/lit8 v3, p3, 0x7

    .line 1108
    :try_start_0
    div-int/lit8 v3, v3, 0x8

    mul-int v4, v3, v2

    mul-int v5, p3, v2

    .line 1111
    new-array v6, v5, [I

    const/16 v7, -0xf0

    const/high16 v8, -0x1000000

    const/4 v10, 0x0

    const/4 v11, 0x1

    move/from16 v12, p2

    if-ne v12, v7, :cond_5

    const/4 v5, 0x6

    .line 1116
    new-array v5, v5, [B

    .line 1117
    invoke-virtual {v0, v5}, Lcom/iiordanov/bVNC/RfbProto;->readFully([B)V

    const/4 v7, 0x3

    .line 1118
    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v7, v8

    const/4 v12, 0x4

    aget-byte v12, v5, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v7, v12

    const/4 v12, 0x5

    aget-byte v12, v5, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v7, v12

    aget-byte v12, v5, v10

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v8, v12

    aget-byte v12, v5, v11

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v8, v12

    const/4 v12, 0x2

    aget-byte v5, v5, v12

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v8

    filled-new-array {v7, v5}, [I

    move-result-object v5

    .line 1124
    new-array v7, v4, [B

    .line 1125
    invoke-virtual {v0, v7}, Lcom/iiordanov/bVNC/RfbProto;->readFully([B)V

    .line 1126
    new-array v4, v4, [B

    .line 1127
    invoke-virtual {v0, v4}, Lcom/iiordanov/bVNC/RfbProto;->readFully([B)V

    move v0, v10

    move v8, v0

    :goto_0
    if-ge v0, v2, :cond_d

    move v12, v10

    .line 1134
    :goto_1
    div-int/lit8 v13, p3, 0x8

    if-ge v12, v13, :cond_2

    mul-int v13, v0, v3

    add-int/2addr v13, v12

    .line 1135
    aget-byte v14, v7, v13

    .line 1136
    aget-byte v13, v4, v13

    const/4 v15, 0x7

    :goto_2
    if-ltz v15, :cond_1

    shr-int v16, v13, v15

    and-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_0

    shr-int v16, v14, v15

    and-int/lit8 v16, v16, 0x1

    .line 1139
    aget v16, v5, v16

    goto :goto_3

    :cond_0
    move/from16 v16, v10

    :goto_3
    add-int/lit8 v17, v8, 0x1

    .line 1143
    aput v16, v6, v8

    add-int/lit8 v15, v15, -0x1

    move/from16 v8, v17

    goto :goto_2

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v13, 0x7

    .line 1146
    :goto_4
    rem-int/lit8 v14, p3, 0x8

    rsub-int/lit8 v14, v14, 0x8

    if-lt v13, v14, :cond_4

    mul-int v14, v0, v3

    add-int/2addr v14, v12

    .line 1147
    aget-byte v15, v4, v14

    shr-int/2addr v15, v13

    and-int/2addr v15, v11

    if-eqz v15, :cond_3

    .line 1148
    aget-byte v14, v7, v14

    shr-int/2addr v14, v13

    and-int/2addr v14, v11

    aget v14, v5, v14

    goto :goto_5

    :cond_3
    move v14, v10

    :goto_5
    add-int/lit8 v15, v8, 0x1

    .line 1152
    aput v14, v6, v8

    add-int/lit8 v13, v13, -0x1

    move v8, v15

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1160
    :cond_5
    iget v7, v1, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    mul-int/2addr v5, v7

    new-array v5, v5, [B

    .line 1161
    invoke-virtual {v0, v5}, Lcom/iiordanov/bVNC/RfbProto;->readFully([B)V

    .line 1162
    new-array v4, v4, [B

    .line 1163
    invoke-virtual {v0, v4}, Lcom/iiordanov/bVNC/RfbProto;->readFully([B)V

    move v0, v10

    move v7, v0

    :goto_6
    if-ge v0, v2, :cond_d

    move v12, v10

    .line 1170
    :goto_7
    div-int/lit8 v13, p3, 0x8

    if-ge v12, v13, :cond_9

    mul-int v13, v0, v3

    add-int/2addr v13, v12

    .line 1171
    aget-byte v13, v4, v13

    const/4 v14, 0x7

    :goto_8
    if-ltz v14, :cond_8

    shr-int v15, v13, v14

    and-int/2addr v15, v11

    if-eqz v15, :cond_7

    .line 1174
    iget v15, v1, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    if-ne v15, v11, :cond_6

    .line 1175
    iget-object v15, v1, Lcom/iiordanov/bVNC/Decoder;->colorPalette:[I

    aget-byte v9, v5, v7

    and-int/lit16 v9, v9, 0xff

    aget v9, v15, v9

    goto :goto_9

    :cond_6
    mul-int/lit8 v9, v7, 0x4

    add-int/lit8 v15, v9, 0x2

    .line 1177
    aget-byte v15, v5, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v15, v8

    add-int/lit8 v17, v9, 0x1

    aget-byte v10, v5, v17

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v10, v15

    aget-byte v9, v5, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v9, v10

    goto :goto_9

    :cond_7
    const/4 v9, 0x0

    :goto_9
    add-int/lit8 v10, v7, 0x1

    .line 1185
    aput v9, v6, v7

    add-int/lit8 v14, v14, -0x1

    move v7, v10

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x0

    goto :goto_7

    :cond_9
    const/4 v9, 0x7

    .line 1188
    :goto_a
    rem-int/lit8 v10, p3, 0x8

    rsub-int/lit8 v10, v10, 0x8

    if-lt v9, v10, :cond_c

    mul-int v10, v0, v3

    add-int/2addr v10, v12

    .line 1189
    aget-byte v10, v4, v10

    shr-int/2addr v10, v9

    and-int/2addr v10, v11

    if-eqz v10, :cond_b

    .line 1190
    iget v10, v1, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    if-ne v10, v11, :cond_a

    .line 1191
    iget-object v10, v1, Lcom/iiordanov/bVNC/Decoder;->colorPalette:[I

    aget-byte v13, v5, v7

    and-int/lit16 v13, v13, 0xff

    aget v10, v10, v13

    goto :goto_b

    :cond_a
    mul-int/lit8 v10, v7, 0x4

    add-int/lit8 v13, v10, 0x2

    .line 1193
    aget-byte v13, v5, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v13, v8

    add-int/lit8 v14, v10, 0x1

    aget-byte v14, v5, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v13, v14

    aget-byte v10, v5, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v10, v13

    goto :goto_b

    :cond_b
    const/4 v10, 0x0

    :goto_b
    add-int/lit8 v13, v7, 0x1

    .line 1201
    aput v10, v6, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v9, v9, -0x1

    move v7, v13

    goto :goto_a

    :cond_c
    add-int/lit8 v0, v0, 0x1

    const/4 v10, 0x0

    goto/16 :goto_6

    .line 1207
    :cond_d
    monitor-exit p0

    return-object v6

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method decodeGradientData(IIII[B)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p3

    mul-int/lit8 v2, v1, 0x3

    .line 1019
    new-array v3, v2, [B

    .line 1020
    new-array v4, v2, [B

    const/4 v5, 0x3

    .line 1021
    new-array v6, v5, [B

    .line 1022
    new-array v7, v5, [I

    .line 1023
    iget-object v8, v0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget-object v8, v8, Lcom/iiordanov/bVNC/AbstractBitmapData;->bitmapPixels:[I

    .line 1025
    iget-object v9, v0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    move/from16 v10, p1

    move/from16 v11, p2

    invoke-virtual {v9, v10, v11}, Lcom/iiordanov/bVNC/AbstractBitmapData;->offset(II)I

    move-result v9

    const/4 v10, 0x0

    move/from16 v11, p4

    move v12, v10

    :goto_0
    if-ge v12, v11, :cond_5

    move v13, v10

    :goto_1
    if-ge v13, v5, :cond_0

    .line 1031
    aget-byte v14, v3, v13

    mul-int v15, v12, v1

    mul-int/2addr v15, v5

    add-int/2addr v15, v13

    aget-byte v15, p5, v15

    add-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v6, v13

    .line 1032
    aput-byte v14, v4, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v13, v9, 0x1

    .line 1034
    aget-byte v14, v6, v10

    const/16 v15, 0xff

    and-int/2addr v14, v15

    shl-int/lit8 v14, v14, 0x10

    const/16 v16, 0x1

    aget-byte v10, v6, v16

    and-int/2addr v10, v15

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v10, v14

    const/4 v14, 0x2

    aget-byte v5, v6, v14

    and-int/2addr v5, v15

    or-int/2addr v5, v10

    aput v5, v8, v9

    move/from16 v5, v16

    :goto_2
    if-ge v5, v1, :cond_4

    const/4 v9, 0x0

    const/4 v10, 0x3

    :goto_3
    if-ge v9, v10, :cond_3

    mul-int/lit8 v17, v5, 0x3

    add-int v18, v17, v9

    .line 1039
    aget-byte v14, v3, v18

    and-int/2addr v14, v15

    aget-byte v10, v6, v9

    and-int/2addr v10, v15

    add-int/2addr v14, v10

    add-int/lit8 v10, v5, -0x1

    const/16 v17, 0x3

    mul-int/lit8 v10, v10, 0x3

    add-int/2addr v10, v9

    aget-byte v10, v3, v10

    and-int/2addr v10, v15

    sub-int/2addr v14, v10

    aput v14, v7, v9

    if-le v14, v15, :cond_1

    .line 1042
    aput v15, v7, v9

    goto :goto_4

    :cond_1
    if-gez v14, :cond_2

    const/4 v10, 0x0

    .line 1044
    aput v10, v7, v9

    .line 1046
    :cond_2
    :goto_4
    aget v10, v7, v9

    mul-int v14, v12, v1

    add-int/2addr v14, v5

    const/16 v17, 0x3

    mul-int/lit8 v14, v14, 0x3

    add-int/2addr v14, v9

    aget-byte v14, p5, v14

    add-int/2addr v10, v14

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 1047
    aput-byte v10, v4, v18

    add-int/lit8 v9, v9, 0x1

    move/from16 v10, v17

    const/4 v14, 0x2

    goto :goto_3

    :cond_3
    move/from16 v17, v10

    add-int/lit8 v9, v13, 0x1

    const/4 v10, 0x0

    .line 1049
    aget-byte v14, v6, v10

    and-int/lit16 v10, v14, 0xff

    shl-int/lit8 v10, v10, 0x10

    aget-byte v14, v6, v16

    and-int/2addr v14, v15

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v10, v14

    move-object/from16 v18, v7

    const/4 v14, 0x2

    aget-byte v7, v6, v14

    and-int/2addr v7, v15

    or-int/2addr v7, v10

    aput v7, v8, v13

    add-int/lit8 v5, v5, 0x1

    move v13, v9

    move-object/from16 v7, v18

    goto :goto_2

    :cond_4
    move-object/from16 v18, v7

    const/4 v5, 0x0

    const/16 v17, 0x3

    .line 1052
    invoke-static {v4, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1053
    iget-object v7, v0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget v7, v7, Lcom/iiordanov/bVNC/AbstractBitmapData;->bitmapwidth:I

    sub-int/2addr v7, v1

    add-int v9, v13, v7

    add-int/lit8 v12, v12, 0x1

    move v10, v5

    move/from16 v5, v17

    move-object/from16 v7, v18

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method decodeMonoData(IIII[B[B)V
    .locals 9

    .line 972
    iget-object v0, p0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v0, p1, p2}, Lcom/iiordanov/bVNC/AbstractBitmapData;->offset(II)I

    move-result p1

    .line 973
    iget-object p2, p0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget-object p2, p2, Lcom/iiordanov/bVNC/AbstractBitmapData;->bitmapPixels:[I

    add-int/lit8 v0, p3, 0x7

    .line 974
    div-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p4, :cond_3

    move v3, v1

    .line 978
    :goto_1
    div-int/lit8 v4, p3, 0x8

    const/4 v5, 0x7

    if-ge v3, v4, :cond_1

    mul-int v4, v2, v0

    add-int/2addr v4, v3

    .line 979
    aget-byte v4, p5, v4

    :goto_2
    if-ltz v5, :cond_0

    add-int/lit8 v6, p1, 0x1

    .line 981
    iget-object v7, p0, Lcom/iiordanov/bVNC/Decoder;->colorPalette:[I

    shr-int v8, v4, v5

    and-int/lit8 v8, v8, 0x1

    aget-byte v8, p6, v8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    aput v7, p2, p1

    add-int/lit8 v5, v5, -0x1

    move p1, v6

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 984
    :cond_1
    :goto_3
    rem-int/lit8 v4, p3, 0x8

    rsub-int/lit8 v4, v4, 0x8

    if-lt v5, v4, :cond_2

    add-int/lit8 v4, p1, 0x1

    .line 985
    iget-object v6, p0, Lcom/iiordanov/bVNC/Decoder;->colorPalette:[I

    mul-int v7, v2, v0

    add-int/2addr v7, v3

    aget-byte v7, p5, v7

    shr-int/2addr v7, v5

    and-int/lit8 v7, v7, 0x1

    aget-byte v7, p6, v7

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    aput v6, p2, p1

    add-int/lit8 v5, v5, -0x1

    move p1, v4

    goto :goto_3

    .line 987
    :cond_2
    iget-object v3, p0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget v3, v3, Lcom/iiordanov/bVNC/AbstractBitmapData;->bitmapwidth:I

    sub-int/2addr v3, p3

    add-int/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method decodeMonoData(IIII[B[I)V
    .locals 8

    .line 994
    iget-object v0, p0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v0, p1, p2}, Lcom/iiordanov/bVNC/AbstractBitmapData;->offset(II)I

    move-result p1

    .line 995
    iget-object p2, p0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget-object p2, p2, Lcom/iiordanov/bVNC/AbstractBitmapData;->bitmapPixels:[I

    add-int/lit8 v0, p3, 0x7

    .line 996
    div-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p4, :cond_3

    move v3, v1

    .line 1000
    :goto_1
    div-int/lit8 v4, p3, 0x8

    const/4 v5, 0x7

    if-ge v3, v4, :cond_1

    mul-int v4, v2, v0

    add-int/2addr v4, v3

    .line 1001
    aget-byte v4, p5, v4

    :goto_2
    if-ltz v5, :cond_0

    add-int/lit8 v6, p1, 0x1

    shr-int v7, v4, v5

    and-int/lit8 v7, v7, 0x1

    .line 1003
    aget v7, p6, v7

    aput v7, p2, p1

    add-int/lit8 v5, v5, -0x1

    move p1, v6

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1006
    :cond_1
    :goto_3
    rem-int/lit8 v4, p3, 0x8

    rsub-int/lit8 v4, v4, 0x8

    if-lt v5, v4, :cond_2

    add-int/lit8 v4, p1, 0x1

    mul-int v6, v2, v0

    add-int/2addr v6, v3

    .line 1007
    aget-byte v6, p5, v6

    shr-int/2addr v6, v5

    and-int/lit8 v6, v6, 0x1

    aget v6, p6, v6

    aput v6, p2, p1

    add-int/lit8 v5, v5, -0x1

    move p1, v4

    goto :goto_3

    .line 1009
    :cond_2
    iget-object v3, p0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget v3, v3, Lcom/iiordanov/bVNC/AbstractBitmapData;->bitmapwidth:I

    sub-int/2addr v3, p3

    add-int/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getColorModel()Lcom/iiordanov/bVNC/COLORMODEL;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/iiordanov/bVNC/Decoder;->colorModel:Lcom/iiordanov/bVNC/COLORMODEL;

    return-object v0
.end method

.method handleCoRRERect(Lcom/iiordanov/bVNC/RfbProto;IIII)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    .line 255
    iget-object v2, v0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v2, v8, v9, v10, v11}, Lcom/iiordanov/bVNC/AbstractBitmapData;->validDraw(IIII)Z

    move-result v12

    .line 256
    iget-object v2, v1, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 258
    iget-object v2, v0, Lcom/iiordanov/bVNC/Decoder;->bg_buf:[B

    iget v3, v0, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    const/4 v14, 0x0

    invoke-virtual {v1, v2, v14, v3}, Lcom/iiordanov/bVNC/RfbProto;->readFully([BII)V

    .line 260
    iget v2, v0, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    const/4 v15, 0x1

    if-ne v2, v15, :cond_0

    .line 261
    iget-object v2, v0, Lcom/iiordanov/bVNC/Decoder;->colorPalette:[I

    iget-object v3, v0, Lcom/iiordanov/bVNC/Decoder;->bg_buf:[B

    aget-byte v3, v3, v14

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    goto :goto_0

    .line 263
    :cond_0
    iget-object v2, v0, Lcom/iiordanov/bVNC/Decoder;->bg_buf:[B

    const/4 v3, 0x2

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, v2, v15

    and-int/lit16 v4, v4, 0xff

    aget-byte v2, v2, v14

    and-int/lit16 v2, v2, 0xff

    invoke-static {v3, v4, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    .line 265
    :goto_0
    iget-object v3, v0, Lcom/iiordanov/bVNC/Decoder;->handleRREPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v12, :cond_1

    .line 267
    iget-object v2, v0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget-object v7, v0, Lcom/iiordanov/bVNC/Decoder;->handleRREPaint:Landroid/graphics/Paint;

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/iiordanov/bVNC/AbstractBitmapData;->drawRect(IIIILandroid/graphics/Paint;)V

    .line 269
    :cond_1
    iget v2, v0, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    add-int/lit8 v2, v2, 0x8

    mul-int/2addr v2, v13

    .line 270
    iget-object v3, v0, Lcom/iiordanov/bVNC/Decoder;->rre_buf:[B

    array-length v3, v3

    if-le v2, v3, :cond_2

    .line 271
    new-array v3, v2, [B

    iput-object v3, v0, Lcom/iiordanov/bVNC/Decoder;->rre_buf:[B

    .line 273
    :cond_2
    iget-object v3, v0, Lcom/iiordanov/bVNC/Decoder;->rre_buf:[B

    invoke-virtual {v1, v3, v14, v2}, Lcom/iiordanov/bVNC/RfbProto;->readFully([BII)V

    if-nez v12, :cond_3

    return-void

    :cond_3
    move v1, v14

    :goto_1
    if-ge v14, v13, :cond_5

    .line 281
    iget v2, v0, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    if-ne v2, v15, :cond_4

    .line 282
    iget-object v2, v0, Lcom/iiordanov/bVNC/Decoder;->colorPalette:[I

    iget-object v3, v0, Lcom/iiordanov/bVNC/Decoder;->rre_buf:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    aget v1, v2, v1

    goto :goto_2

    .line 284
    :cond_4
    iget-object v2, v0, Lcom/iiordanov/bVNC/Decoder;->rre_buf:[B

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v3, v4, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    add-int/lit8 v4, v1, 0x4

    move v1, v2

    .line 287
    :goto_2
    iget-object v2, v0, Lcom/iiordanov/bVNC/Decoder;->rre_buf:[B

    add-int/lit8 v3, v4, 0x1

    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    add-int v17, v8, v5

    add-int/lit8 v5, v4, 0x2

    .line 288
    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    add-int v18, v9, v3

    add-int/lit8 v3, v4, 0x3

    .line 289
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v4, v4, 0x4

    .line 290
    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 292
    iget-object v3, v0, Lcom/iiordanov/bVNC/Decoder;->handleRREPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 293
    iget-object v1, v0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget-object v3, v0, Lcom/iiordanov/bVNC/Decoder;->handleRREPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v1

    move/from16 v19, v5

    move/from16 v20, v2

    move-object/from16 v21, v3

    invoke-virtual/range {v16 .. v21}, Lcom/iiordanov/bVNC/AbstractBitmapData;->drawRect(IIIILandroid/graphics/Paint;)V

    add-int/lit8 v14, v14, 0x1

    move v1, v4

    goto :goto_1

    .line 296
    :cond_5
    iget-object v1, v0, Lcom/iiordanov/bVNC/Decoder;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v1, v8, v9, v10, v11}, Lcom/iiordanov/bVNC/RemoteCanvas;->reDraw(IIII)V

    return-void
.end method

.method handleCopyRect(Lcom/iiordanov/bVNC/RfbProto;IIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RfbProto;->readCopyRect()V

    .line 195
    iget-object v0, p0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/iiordanov/bVNC/AbstractBitmapData;->validDraw(IIII)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget v2, p1, Lcom/iiordanov/bVNC/RfbProto;->copyRectSrcX:I

    iget v3, p1, Lcom/iiordanov/bVNC/RfbProto;->copyRectSrcY:I

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/iiordanov/bVNC/AbstractBitmapData;->copyRect(IIIIII)V

    .line 199
    iget-object p1, p0, Lcom/iiordanov/bVNC/Decoder;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/iiordanov/bVNC/RemoteCanvas;->reDraw(IIII)V

    return-void
.end method

.method declared-synchronized handleCursorShapeUpdate(Lcom/iiordanov/bVNC/RfbProto;IIIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1063
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/Decoder;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getPointer()Lcom/iiordanov/bVNC/input/RemotePointer;

    move-result-object v0

    .line 1064
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/input/RemotePointer;->getX()I

    move-result v2

    .line 1065
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/input/RemotePointer;->getY()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int v0, p5, p6

    if-nez v0, :cond_0

    .line 1068
    monitor-exit p0

    return-void

    .line 1083
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/iiordanov/bVNC/Decoder;->decodeCursorShape(Lcom/iiordanov/bVNC/RfbProto;III)[I

    move-result-object p1

    .line 1085
    iget-boolean p2, p0, Lcom/iiordanov/bVNC/Decoder;->discardCursorShapeUpdates:Z

    if-nez p2, :cond_1

    .line 1087
    iget-object v1, p0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    move v4, p5

    move v5, p6

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/iiordanov/bVNC/AbstractBitmapData;->setCursorRect(IIIIII)V

    .line 1090
    iget-object p2, p0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {p2, p1}, Lcom/iiordanov/bVNC/AbstractBitmapData;->setSoftCursor([I)V

    .line 1093
    iget-object p1, p0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/AbstractBitmapData;->getCursorRect()Landroid/graphics/RectF;

    move-result-object p1

    .line 1094
    iget-object p2, p0, Lcom/iiordanov/bVNC/Decoder;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget p3, p1, Landroid/graphics/RectF;->left:F

    iget p4, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p5

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {p2, p3, p4, p5, p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->reDraw(FFFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1096
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method handleHextileRect(Lcom/iiordanov/bVNC/RfbProto;IIII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, -0x1000000

    .line 304
    iput v0, p0, Lcom/iiordanov/bVNC/Decoder;->hextile_bg:I

    .line 305
    iput v0, p0, Lcom/iiordanov/bVNC/Decoder;->hextile_fg:I

    move v0, p3

    :goto_0
    add-int v1, p3, p5

    if-ge v0, v1, :cond_3

    sub-int/2addr v1, v0

    const/16 v7, 0x10

    if-ge v1, v7, :cond_0

    move v8, v1

    goto :goto_1

    :cond_0
    move v8, v7

    :goto_1
    move v9, p2

    :goto_2
    add-int v1, p2, p4

    if-ge v9, v1, :cond_2

    sub-int/2addr v1, v9

    if-ge v1, v7, :cond_1

    move v5, v1

    goto :goto_3

    :cond_1
    move v5, v7

    :goto_3
    move-object v1, p0

    move-object v2, p1

    move v3, v9

    move v4, v0

    move v6, v8

    .line 317
    invoke-direct/range {v1 .. v6}, Lcom/iiordanov/bVNC/Decoder;->handleHextileSubrect(Lcom/iiordanov/bVNC/RfbProto;IIII)V

    add-int/lit8 v9, v9, 0x10

    goto :goto_2

    .line 321
    :cond_2
    iget-object v1, p0, Lcom/iiordanov/bVNC/Decoder;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/iiordanov/bVNC/RemoteCanvas;->reDraw(IIII)V

    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_3
    return-void
.end method

.method handleRRERect(Lcom/iiordanov/bVNC/RfbProto;IIII)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    .line 206
    iget-object v2, v0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v2, v8, v9, v10, v11}, Lcom/iiordanov/bVNC/AbstractBitmapData;->validDraw(IIII)Z

    move-result v12

    .line 207
    iget-object v2, v1, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 209
    iget-object v2, v0, Lcom/iiordanov/bVNC/Decoder;->bg_buf:[B

    iget v3, v0, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    const/4 v14, 0x0

    invoke-virtual {v1, v2, v14, v3}, Lcom/iiordanov/bVNC/RfbProto;->readFully([BII)V

    .line 211
    iget v2, v0, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    const/4 v15, 0x1

    if-ne v2, v15, :cond_0

    .line 212
    iget-object v2, v0, Lcom/iiordanov/bVNC/Decoder;->colorPalette:[I

    iget-object v3, v0, Lcom/iiordanov/bVNC/Decoder;->bg_buf:[B

    aget-byte v3, v3, v14

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    goto :goto_0

    .line 214
    :cond_0
    iget-object v2, v0, Lcom/iiordanov/bVNC/Decoder;->bg_buf:[B

    const/4 v3, 0x2

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, v2, v15

    and-int/lit16 v4, v4, 0xff

    aget-byte v2, v2, v14

    and-int/lit16 v2, v2, 0xff

    invoke-static {v3, v4, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    .line 216
    :goto_0
    iget-object v3, v0, Lcom/iiordanov/bVNC/Decoder;->handleRREPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v12, :cond_1

    .line 218
    iget-object v2, v0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget-object v7, v0, Lcom/iiordanov/bVNC/Decoder;->handleRREPaint:Landroid/graphics/Paint;

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/iiordanov/bVNC/AbstractBitmapData;->drawRect(IIIILandroid/graphics/Paint;)V

    .line 220
    :cond_1
    iget v2, v0, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    add-int/lit8 v2, v2, 0x8

    mul-int/2addr v2, v13

    .line 221
    iget-object v3, v0, Lcom/iiordanov/bVNC/Decoder;->rre_buf:[B

    array-length v3, v3

    if-le v2, v3, :cond_2

    .line 222
    new-array v3, v2, [B

    iput-object v3, v0, Lcom/iiordanov/bVNC/Decoder;->rre_buf:[B

    .line 224
    :cond_2
    iget-object v3, v0, Lcom/iiordanov/bVNC/Decoder;->rre_buf:[B

    invoke-virtual {v1, v3, v14, v2}, Lcom/iiordanov/bVNC/RfbProto;->readFully([BII)V

    if-nez v12, :cond_3

    return-void

    :cond_3
    move v1, v14

    :goto_1
    if-ge v14, v13, :cond_5

    .line 232
    iget v2, v0, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    if-ne v2, v15, :cond_4

    .line 233
    iget-object v2, v0, Lcom/iiordanov/bVNC/Decoder;->colorPalette:[I

    iget-object v3, v0, Lcom/iiordanov/bVNC/Decoder;->rre_buf:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    aget v1, v2, v1

    goto :goto_2

    .line 235
    :cond_4
    iget-object v2, v0, Lcom/iiordanov/bVNC/Decoder;->rre_buf:[B

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v3, v4, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    add-int/lit8 v4, v1, 0x4

    move v1, v2

    .line 238
    :goto_2
    iget-object v2, v0, Lcom/iiordanov/bVNC/Decoder;->rre_buf:[B

    aget-byte v3, v2, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v8

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    add-int v17, v3, v5

    add-int/lit8 v3, v4, 0x2

    .line 239
    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v9

    add-int/lit8 v5, v4, 0x3

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    add-int v18, v3, v5

    add-int/lit8 v3, v4, 0x4

    .line 240
    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v4, 0x5

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    add-int v19, v3, v5

    add-int/lit8 v3, v4, 0x6

    .line 241
    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v4, 0x7

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    add-int v20, v3, v2

    add-int/lit8 v2, v4, 0x8

    .line 243
    iget-object v3, v0, Lcom/iiordanov/bVNC/Decoder;->handleRREPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    iget-object v1, v0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget-object v3, v0, Lcom/iiordanov/bVNC/Decoder;->handleRREPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v1

    move-object/from16 v21, v3

    invoke-virtual/range {v16 .. v21}, Lcom/iiordanov/bVNC/AbstractBitmapData;->drawRect(IIIILandroid/graphics/Paint;)V

    add-int/lit8 v14, v14, 0x1

    move v1, v2

    goto/16 :goto_1

    .line 247
    :cond_5
    iget-object v1, v0, Lcom/iiordanov/bVNC/Decoder;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v1, v8, v9, v10, v11}, Lcom/iiordanov/bVNC/RemoteCanvas;->reDraw(IIII)V

    return-void
.end method

.method handleRawRect(Lcom/iiordanov/bVNC/RfbProto;IIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 137
    invoke-virtual/range {v0 .. v6}, Lcom/iiordanov/bVNC/Decoder;->handleRawRect(Lcom/iiordanov/bVNC/RfbProto;IIIIZ)V

    return-void
.end method

.method handleRawRect(Lcom/iiordanov/bVNC/RfbProto;IIIIZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 141
    iget-object v6, v0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v6, v2, v3, v4, v5}, Lcom/iiordanov/bVNC/AbstractBitmapData;->validDraw(IIII)Z

    move-result v6

    .line 142
    iget-object v7, v0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget-object v7, v7, Lcom/iiordanov/bVNC/AbstractBitmapData;->bitmapPixels:[I

    .line 143
    iget v8, v0, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v8, v9, :cond_3

    .line 145
    iget-object v8, v0, Lcom/iiordanov/bVNC/Decoder;->handleRawRectBuffer:[B

    array-length v8, v8

    if-le v4, v8, :cond_0

    .line 146
    new-array v8, v4, [B

    iput-object v8, v0, Lcom/iiordanov/bVNC/Decoder;->handleRawRectBuffer:[B

    :cond_0
    move v8, v3

    :goto_0
    add-int v9, v3, v5

    if-ge v8, v9, :cond_7

    .line 150
    iget-object v9, v0, Lcom/iiordanov/bVNC/Decoder;->handleRawRectBuffer:[B

    invoke-virtual {v1, v9, v10, v4}, Lcom/iiordanov/bVNC/RfbProto;->readFully([BII)V

    if-nez v6, :cond_1

    goto :goto_2

    .line 153
    :cond_1
    iget-object v9, v0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v9, v2, v8}, Lcom/iiordanov/bVNC/AbstractBitmapData;->offset(II)I

    move-result v9

    move v11, v10

    :goto_1
    if-ge v11, v4, :cond_2

    add-int v12, v9, v11

    .line 155
    iget-object v13, v0, Lcom/iiordanov/bVNC/Decoder;->colorPalette:[I

    iget-object v14, v0, Lcom/iiordanov/bVNC/Decoder;->handleRawRectBuffer:[B

    aget-byte v14, v14, v11

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    aput v13, v7, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    mul-int/lit8 v8, v4, 0x4

    .line 162
    iget-object v9, v0, Lcom/iiordanov/bVNC/Decoder;->handleRawRectBuffer:[B

    array-length v9, v9

    if-le v8, v9, :cond_4

    .line 163
    new-array v9, v8, [B

    iput-object v9, v0, Lcom/iiordanov/bVNC/Decoder;->handleRawRectBuffer:[B

    :cond_4
    move v9, v3

    :goto_3
    add-int v11, v3, v5

    if-ge v9, v11, :cond_7

    .line 167
    iget-object v11, v0, Lcom/iiordanov/bVNC/Decoder;->handleRawRectBuffer:[B

    invoke-virtual {v1, v11, v10, v8}, Lcom/iiordanov/bVNC/RfbProto;->readFully([BII)V

    if-nez v6, :cond_5

    goto :goto_5

    .line 170
    :cond_5
    iget-object v11, v0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v11, v2, v9}, Lcom/iiordanov/bVNC/AbstractBitmapData;->offset(II)I

    move-result v11

    move v12, v10

    :goto_4
    if-ge v12, v4, :cond_6

    mul-int/lit8 v13, v12, 0x4

    add-int v14, v11, v12

    .line 173
    iget-object v15, v0, Lcom/iiordanov/bVNC/Decoder;->handleRawRectBuffer:[B

    add-int/lit8 v16, v13, 0x2

    aget-byte v10, v15, v16

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    add-int/lit8 v16, v13, 0x1

    aget-byte v1, v15, v16

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v10

    aget-byte v10, v15, v13

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v1, v10

    aput v1, v7, v14

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    const/4 v10, 0x0

    goto :goto_4

    :cond_6
    :goto_5
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    const/4 v10, 0x0

    goto :goto_3

    :cond_7
    if-nez v6, :cond_8

    return-void

    .line 182
    :cond_8
    iget-object v1, v0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/iiordanov/bVNC/AbstractBitmapData;->updateBitmap(IIII)V

    if-eqz p6, :cond_9

    .line 185
    iget-object v1, v0, Lcom/iiordanov/bVNC/Decoder;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/iiordanov/bVNC/RemoteCanvas;->reDraw(IIII)V

    :cond_9
    return-void
.end method

.method handleTightRect(Lcom/iiordanov/bVNC/RfbProto;IIIIZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    .line 719
    iget-object v1, v8, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget-object v1, v1, Lcom/iiordanov/bVNC/AbstractBitmapData;->bitmapPixels:[I

    .line 720
    iget-object v2, v8, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v2, v9, v10, v11, v12}, Lcom/iiordanov/bVNC/AbstractBitmapData;->validDraw(IIII)Z

    move-result v2

    iput-boolean v2, v8, Lcom/iiordanov/bVNC/Decoder;->valid:Z

    .line 721
    iget-object v2, v0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    iput v2, v8, Lcom/iiordanov/bVNC/Decoder;->comp_ctl:I

    .line 723
    iput v11, v8, Lcom/iiordanov/bVNC/Decoder;->rowSize:I

    const/4 v2, 0x0

    .line 724
    iput v2, v8, Lcom/iiordanov/bVNC/Decoder;->boffset:I

    .line 725
    iput v2, v8, Lcom/iiordanov/bVNC/Decoder;->numColors:I

    .line 726
    iput-boolean v2, v8, Lcom/iiordanov/bVNC/Decoder;->useGradient:Z

    .line 729
    iput v2, v8, Lcom/iiordanov/bVNC/Decoder;->stream_id:I

    :goto_0
    iget v3, v8, Lcom/iiordanov/bVNC/Decoder;->stream_id:I

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 730
    iget v4, v8, Lcom/iiordanov/bVNC/Decoder;->comp_ctl:I

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_0

    .line 731
    iget-object v5, v8, Lcom/iiordanov/bVNC/Decoder;->tightInflaters:[Ljava/util/zip/Inflater;

    const/4 v6, 0x0

    aput-object v6, v5, v3

    :cond_0
    shr-int/lit8 v4, v4, 0x1

    .line 733
    iput v4, v8, Lcom/iiordanov/bVNC/Decoder;->comp_ctl:I

    add-int/lit8 v3, v3, 0x1

    .line 729
    iput v3, v8, Lcom/iiordanov/bVNC/Decoder;->stream_id:I

    goto :goto_0

    .line 737
    :cond_1
    iget v3, v8, Lcom/iiordanov/bVNC/Decoder;->comp_ctl:I

    const/16 v5, 0x9

    if-gt v3, v5, :cond_28

    const/16 v6, 0x8

    const/4 v7, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-ne v3, v6, :cond_4

    .line 743
    iget v1, v8, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    if-ne v1, v14, :cond_2

    .line 744
    iget-object v0, v0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    iput v0, v8, Lcom/iiordanov/bVNC/Decoder;->idx:I

    .line 745
    iget-object v1, v8, Lcom/iiordanov/bVNC/Decoder;->handleTightRectPaint:Landroid/graphics/Paint;

    iget-object v2, v8, Lcom/iiordanov/bVNC/Decoder;->colorPalette:[I

    and-int/lit16 v0, v0, 0xff

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 747
    :cond_2
    iget-object v1, v8, Lcom/iiordanov/bVNC/Decoder;->solidColorBuf:[B

    invoke-virtual {v0, v1, v2, v7}, Lcom/iiordanov/bVNC/RfbProto;->readFully([BII)V

    .line 748
    iget-object v0, v8, Lcom/iiordanov/bVNC/Decoder;->handleTightRectPaint:Landroid/graphics/Paint;

    iget-object v1, v8, Lcom/iiordanov/bVNC/Decoder;->solidColorBuf:[B

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, -0x1000000

    or-int/2addr v2, v3

    aget-byte v3, v1, v14

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v6

    or-int/2addr v2, v3

    aget-byte v1, v1, v13

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 751
    :goto_1
    iget-boolean v0, v8, Lcom/iiordanov/bVNC/Decoder;->valid:Z

    if-eqz v0, :cond_3

    .line 752
    iget-object v0, v8, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget-object v5, v8, Lcom/iiordanov/bVNC/Decoder;->handleTightRectPaint:Landroid/graphics/Paint;

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/iiordanov/bVNC/AbstractBitmapData;->drawRect(IIIILandroid/graphics/Paint;)V

    .line 753
    iget-object v0, v8, Lcom/iiordanov/bVNC/Decoder;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0, v9, v10, v11, v12}, Lcom/iiordanov/bVNC/RemoteCanvas;->reDraw(IIII)V

    :cond_3
    return-void

    :cond_4
    if-ne v3, v5, :cond_7

    .line 760
    invoke-virtual/range {p1 .. p1}, Lcom/iiordanov/bVNC/RfbProto;->readCompactLen()I

    move-result v1

    iput v1, v8, Lcom/iiordanov/bVNC/Decoder;->jpegDataLen:I

    .line 761
    iget-object v3, v8, Lcom/iiordanov/bVNC/Decoder;->inflBuf:[B

    array-length v3, v3

    if-le v1, v3, :cond_5

    mul-int/lit8 v3, v1, 0x2

    .line 762
    new-array v3, v3, [B

    iput-object v3, v8, Lcom/iiordanov/bVNC/Decoder;->inflBuf:[B

    .line 764
    :cond_5
    iget-object v3, v8, Lcom/iiordanov/bVNC/Decoder;->inflBuf:[B

    invoke-virtual {v0, v3, v2, v1}, Lcom/iiordanov/bVNC/RfbProto;->readFully([BII)V

    .line 765
    iget-boolean v0, v8, Lcom/iiordanov/bVNC/Decoder;->valid:Z

    if-nez v0, :cond_6

    return-void

    .line 769
    :cond_6
    iget-object v0, v8, Lcom/iiordanov/bVNC/Decoder;->inflBuf:[B

    iget v1, v8, Lcom/iiordanov/bVNC/Decoder;->jpegDataLen:I

    iget-object v3, v8, Lcom/iiordanov/bVNC/Decoder;->bitmapopts:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 773
    iget-object v0, v8, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    move-object v1, v6

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/iiordanov/bVNC/AbstractBitmapData;->updateBitmap(Landroid/graphics/Bitmap;IIII)V

    .line 774
    iget-object v0, v8, Lcom/iiordanov/bVNC/Decoder;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0, v9, v10, v11, v12}, Lcom/iiordanov/bVNC/RemoteCanvas;->reDraw(IIII)V

    .line 776
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :cond_7
    and-int/2addr v3, v4

    if-eqz v3, :cond_e

    .line 782
    iget-object v3, v0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    if-ne v3, v14, :cond_b

    .line 785
    iget-object v3, v0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    add-int/2addr v3, v14

    iput v3, v8, Lcom/iiordanov/bVNC/Decoder;->numColors:I

    .line 787
    iget v5, v8, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    if-ne v5, v14, :cond_9

    if-ne v3, v13, :cond_8

    .line 791
    iget-object v3, v8, Lcom/iiordanov/bVNC/Decoder;->tightPalette8:[B

    invoke-virtual {v0, v3, v2, v13}, Lcom/iiordanov/bVNC/RfbProto;->readFully([BII)V

    goto :goto_3

    .line 789
    :cond_8
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incorrect tight palette size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v8, Lcom/iiordanov/bVNC/Decoder;->numColors:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 794
    :cond_9
    iget-object v5, v8, Lcom/iiordanov/bVNC/Decoder;->colorBuf:[B

    mul-int/2addr v3, v7

    invoke-virtual {v0, v5, v2, v3}, Lcom/iiordanov/bVNC/RfbProto;->readFully([BII)V

    .line 795
    iput v2, v8, Lcom/iiordanov/bVNC/Decoder;->c:I

    :goto_2
    iget v3, v8, Lcom/iiordanov/bVNC/Decoder;->c:I

    iget v5, v8, Lcom/iiordanov/bVNC/Decoder;->numColors:I

    if-ge v3, v5, :cond_a

    mul-int/lit8 v5, v3, 0x3

    .line 796
    iput v5, v8, Lcom/iiordanov/bVNC/Decoder;->idx:I

    .line 797
    iget-object v15, v8, Lcom/iiordanov/bVNC/Decoder;->tightPalette24:[I

    iget-object v2, v8, Lcom/iiordanov/bVNC/Decoder;->colorBuf:[B

    aget-byte v7, v2, v5

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    add-int/lit8 v16, v5, 0x1

    aget-byte v4, v2, v16

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v6

    or-int/2addr v4, v7

    add-int/2addr v5, v13

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v4

    aput v2, v15, v3

    add-int/lit8 v3, v3, 0x1

    .line 795
    iput v3, v8, Lcom/iiordanov/bVNC/Decoder;->c:I

    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v7, 0x3

    goto :goto_2

    .line 803
    :cond_a
    :goto_3
    iget v2, v8, Lcom/iiordanov/bVNC/Decoder;->numColors:I

    if-ne v2, v13, :cond_e

    add-int/lit8 v2, v11, 0x7

    .line 804
    div-int/2addr v2, v6

    iput v2, v8, Lcom/iiordanov/bVNC/Decoder;->rowSize:I

    goto :goto_4

    :cond_b
    if-ne v3, v13, :cond_c

    .line 807
    iput-boolean v14, v8, Lcom/iiordanov/bVNC/Decoder;->useGradient:Z

    goto :goto_4

    :cond_c
    if-nez v3, :cond_d

    goto :goto_4

    .line 809
    :cond_d
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incorrect tight filter id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 813
    :cond_e
    :goto_4
    iget v2, v8, Lcom/iiordanov/bVNC/Decoder;->numColors:I

    if-nez v2, :cond_f

    iget v2, v8, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_f

    .line 814
    iget v2, v8, Lcom/iiordanov/bVNC/Decoder;->rowSize:I

    const/4 v3, 0x3

    mul-int/2addr v2, v3

    iput v2, v8, Lcom/iiordanov/bVNC/Decoder;->rowSize:I

    .line 817
    :cond_f
    iget v2, v8, Lcom/iiordanov/bVNC/Decoder;->rowSize:I

    mul-int/2addr v2, v12

    iput v2, v8, Lcom/iiordanov/bVNC/Decoder;->dataSize:I

    const/16 v3, 0xc

    if-ge v2, v3, :cond_19

    .line 821
    iget-object v3, v8, Lcom/iiordanov/bVNC/Decoder;->uncompDataBuf:[B

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Lcom/iiordanov/bVNC/RfbProto;->readFully([BII)V

    .line 822
    iget-boolean v0, v8, Lcom/iiordanov/bVNC/Decoder;->valid:Z

    if-nez v0, :cond_10

    return-void

    .line 825
    :cond_10
    iget v0, v8, Lcom/iiordanov/bVNC/Decoder;->numColors:I

    if-eqz v0, :cond_14

    if-ne v0, v13, :cond_12

    .line 829
    iget v0, v8, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    if-ne v0, v14, :cond_11

    .line 830
    iget-object v6, v8, Lcom/iiordanov/bVNC/Decoder;->uncompDataBuf:[B

    iget-object v7, v8, Lcom/iiordanov/bVNC/Decoder;->tightPalette8:[B

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v7}, Lcom/iiordanov/bVNC/Decoder;->decodeMonoData(IIII[B[B)V

    goto/16 :goto_12

    .line 832
    :cond_11
    iget-object v6, v8, Lcom/iiordanov/bVNC/Decoder;->uncompDataBuf:[B

    iget-object v7, v8, Lcom/iiordanov/bVNC/Decoder;->tightPalette24:[I

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v7}, Lcom/iiordanov/bVNC/Decoder;->decodeMonoData(IIII[B[I)V

    goto/16 :goto_12

    :cond_12
    const/4 v2, 0x0

    .line 836
    iput v2, v8, Lcom/iiordanov/bVNC/Decoder;->boffset:I

    .line 837
    iput v10, v8, Lcom/iiordanov/bVNC/Decoder;->dy:I

    :goto_5
    iget v0, v8, Lcom/iiordanov/bVNC/Decoder;->dy:I

    add-int v2, v10, v12

    if-ge v0, v2, :cond_27

    .line 838
    iget-object v2, v8, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v2, v9, v0}, Lcom/iiordanov/bVNC/AbstractBitmapData;->offset(II)I

    move-result v0

    iput v0, v8, Lcom/iiordanov/bVNC/Decoder;->offset:I

    .line 839
    iput v9, v8, Lcom/iiordanov/bVNC/Decoder;->dx:I

    :goto_6
    iget v0, v8, Lcom/iiordanov/bVNC/Decoder;->dx:I

    add-int v2, v9, v11

    if-ge v0, v2, :cond_13

    .line 840
    iget v2, v8, Lcom/iiordanov/bVNC/Decoder;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v8, Lcom/iiordanov/bVNC/Decoder;->offset:I

    iget-object v3, v8, Lcom/iiordanov/bVNC/Decoder;->tightPalette24:[I

    iget-object v4, v8, Lcom/iiordanov/bVNC/Decoder;->uncompDataBuf:[B

    iget v5, v8, Lcom/iiordanov/bVNC/Decoder;->boffset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v8, Lcom/iiordanov/bVNC/Decoder;->boffset:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    .line 839
    iput v0, v8, Lcom/iiordanov/bVNC/Decoder;->dx:I

    goto :goto_6

    .line 837
    :cond_13
    iget v0, v8, Lcom/iiordanov/bVNC/Decoder;->dy:I

    add-int/2addr v0, v14

    iput v0, v8, Lcom/iiordanov/bVNC/Decoder;->dy:I

    goto :goto_5

    .line 844
    :cond_14
    iget-boolean v0, v8, Lcom/iiordanov/bVNC/Decoder;->useGradient:Z

    if-eqz v0, :cond_15

    .line 846
    iget-object v6, v8, Lcom/iiordanov/bVNC/Decoder;->uncompDataBuf:[B

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/iiordanov/bVNC/Decoder;->decodeGradientData(IIII[B)V

    goto/16 :goto_12

    :cond_15
    const/4 v2, 0x0

    .line 848
    iput v2, v8, Lcom/iiordanov/bVNC/Decoder;->boffset:I

    .line 850
    iget v0, v8, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    if-ne v0, v14, :cond_17

    .line 851
    iput v10, v8, Lcom/iiordanov/bVNC/Decoder;->dy:I

    :goto_7
    iget v0, v8, Lcom/iiordanov/bVNC/Decoder;->dy:I

    add-int v3, v10, v12

    if-ge v0, v3, :cond_27

    .line 852
    iget-object v3, v8, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v3, v9, v0}, Lcom/iiordanov/bVNC/AbstractBitmapData;->offset(II)I

    move-result v0

    iput v0, v8, Lcom/iiordanov/bVNC/Decoder;->offset:I

    .line 853
    iput v2, v8, Lcom/iiordanov/bVNC/Decoder;->dx:I

    :goto_8
    iget v0, v8, Lcom/iiordanov/bVNC/Decoder;->dx:I

    if-ge v0, v11, :cond_16

    .line 854
    iget v2, v8, Lcom/iiordanov/bVNC/Decoder;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v8, Lcom/iiordanov/bVNC/Decoder;->offset:I

    iget-object v3, v8, Lcom/iiordanov/bVNC/Decoder;->colorPalette:[I

    iget-object v4, v8, Lcom/iiordanov/bVNC/Decoder;->uncompDataBuf:[B

    iget v5, v8, Lcom/iiordanov/bVNC/Decoder;->boffset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v8, Lcom/iiordanov/bVNC/Decoder;->boffset:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    .line 853
    iput v0, v8, Lcom/iiordanov/bVNC/Decoder;->dx:I

    goto :goto_8

    .line 851
    :cond_16
    iget v0, v8, Lcom/iiordanov/bVNC/Decoder;->dy:I

    add-int/2addr v0, v14

    iput v0, v8, Lcom/iiordanov/bVNC/Decoder;->dy:I

    const/4 v2, 0x0

    goto :goto_7

    .line 858
    :cond_17
    iput v10, v8, Lcom/iiordanov/bVNC/Decoder;->dy:I

    :goto_9
    iget v0, v8, Lcom/iiordanov/bVNC/Decoder;->dy:I

    add-int v2, v10, v12

    if-ge v0, v2, :cond_27

    .line 859
    iget-object v2, v8, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v2, v9, v0}, Lcom/iiordanov/bVNC/AbstractBitmapData;->offset(II)I

    move-result v0

    iput v0, v8, Lcom/iiordanov/bVNC/Decoder;->offset:I

    const/4 v2, 0x0

    .line 860
    iput v2, v8, Lcom/iiordanov/bVNC/Decoder;->dx:I

    :goto_a
    iget v0, v8, Lcom/iiordanov/bVNC/Decoder;->dx:I

    if-ge v0, v11, :cond_18

    .line 861
    iget v2, v8, Lcom/iiordanov/bVNC/Decoder;->boffset:I

    mul-int/lit8 v3, v2, 0x3

    iput v3, v8, Lcom/iiordanov/bVNC/Decoder;->idx:I

    add-int/2addr v2, v14

    iput v2, v8, Lcom/iiordanov/bVNC/Decoder;->boffset:I

    .line 862
    iget v2, v8, Lcom/iiordanov/bVNC/Decoder;->offset:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v8, Lcom/iiordanov/bVNC/Decoder;->offset:I

    iget-object v4, v8, Lcom/iiordanov/bVNC/Decoder;->uncompDataBuf:[B

    aget-byte v5, v4, v3

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v6

    or-int/2addr v5, v7

    add-int/2addr v3, v13

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v5

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    .line 860
    iput v0, v8, Lcom/iiordanov/bVNC/Decoder;->dx:I

    goto :goto_a

    .line 858
    :cond_18
    iget v0, v8, Lcom/iiordanov/bVNC/Decoder;->dy:I

    add-int/2addr v0, v14

    iput v0, v8, Lcom/iiordanov/bVNC/Decoder;->dy:I

    goto :goto_9

    :cond_19
    if-eqz p6, :cond_1a

    .line 874
    invoke-virtual/range {p1 .. p1}, Lcom/iiordanov/bVNC/RfbProto;->readCompactLen()I

    move-result v2

    .line 875
    new-array v2, v2, [B

    iput-object v2, v8, Lcom/iiordanov/bVNC/Decoder;->zlibData:[B

    .line 876
    invoke-virtual {v0, v2}, Lcom/iiordanov/bVNC/RfbProto;->readFully([B)V

    .line 878
    iget v0, v8, Lcom/iiordanov/bVNC/Decoder;->dataSize:I

    new-array v0, v0, [B

    iput-object v0, v8, Lcom/iiordanov/bVNC/Decoder;->inflBuf:[B

    .line 881
    :try_start_0
    iget-object v2, v8, Lcom/iiordanov/bVNC/Decoder;->zlibData:[B

    invoke-static {v0, v2}, Lcom/github/luben/zstd/Zstd;->decompress([B[B)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    .line 883
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    .line 888
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/iiordanov/bVNC/RfbProto;->readCompactLen()I

    move-result v2

    .line 889
    iget-object v3, v8, Lcom/iiordanov/bVNC/Decoder;->zlibData:[B

    array-length v3, v3

    if-le v2, v3, :cond_1b

    mul-int/lit8 v3, v2, 0x2

    .line 890
    new-array v3, v3, [B

    iput-object v3, v8, Lcom/iiordanov/bVNC/Decoder;->zlibData:[B

    .line 892
    :cond_1b
    iget-object v3, v8, Lcom/iiordanov/bVNC/Decoder;->zlibData:[B

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Lcom/iiordanov/bVNC/RfbProto;->readFully([BII)V

    .line 894
    iget v0, v8, Lcom/iiordanov/bVNC/Decoder;->comp_ctl:I

    const/4 v3, 0x3

    and-int/2addr v0, v3

    iput v0, v8, Lcom/iiordanov/bVNC/Decoder;->stream_id:I

    .line 895
    iget-object v3, v8, Lcom/iiordanov/bVNC/Decoder;->tightInflaters:[Ljava/util/zip/Inflater;

    aget-object v4, v3, v0

    if-nez v4, :cond_1c

    .line 896
    new-instance v4, Ljava/util/zip/Inflater;

    invoke-direct {v4}, Ljava/util/zip/Inflater;-><init>()V

    aput-object v4, v3, v0

    .line 899
    :cond_1c
    iget-object v0, v8, Lcom/iiordanov/bVNC/Decoder;->tightInflaters:[Ljava/util/zip/Inflater;

    iget v3, v8, Lcom/iiordanov/bVNC/Decoder;->stream_id:I

    aget-object v0, v0, v3

    .line 900
    iget-object v3, v8, Lcom/iiordanov/bVNC/Decoder;->zlibData:[B

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 902
    iget v2, v8, Lcom/iiordanov/bVNC/Decoder;->dataSize:I

    iget-object v3, v8, Lcom/iiordanov/bVNC/Decoder;->inflBuf:[B

    array-length v3, v3

    if-le v2, v3, :cond_1d

    mul-int/lit8 v3, v2, 0x2

    .line 903
    new-array v3, v3, [B

    iput-object v3, v8, Lcom/iiordanov/bVNC/Decoder;->inflBuf:[B

    .line 907
    :cond_1d
    :try_start_1
    iget-object v3, v8, Lcom/iiordanov/bVNC/Decoder;->inflBuf:[B

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/zip/Inflater;->inflate([BII)I
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    .line 909
    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->printStackTrace()V

    .line 913
    :goto_b
    iget-boolean v0, v8, Lcom/iiordanov/bVNC/Decoder;->valid:Z

    if-nez v0, :cond_1e

    return-void

    .line 916
    :cond_1e
    iget v0, v8, Lcom/iiordanov/bVNC/Decoder;->numColors:I

    if-eqz v0, :cond_22

    if-ne v0, v13, :cond_20

    .line 920
    iget v0, v8, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    if-ne v0, v14, :cond_1f

    .line 921
    iget-object v6, v8, Lcom/iiordanov/bVNC/Decoder;->inflBuf:[B

    iget-object v7, v8, Lcom/iiordanov/bVNC/Decoder;->tightPalette8:[B

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v7}, Lcom/iiordanov/bVNC/Decoder;->decodeMonoData(IIII[B[B)V

    goto/16 :goto_12

    .line 923
    :cond_1f
    iget-object v6, v8, Lcom/iiordanov/bVNC/Decoder;->inflBuf:[B

    iget-object v7, v8, Lcom/iiordanov/bVNC/Decoder;->tightPalette24:[I

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v7}, Lcom/iiordanov/bVNC/Decoder;->decodeMonoData(IIII[B[I)V

    goto/16 :goto_12

    :cond_20
    const/4 v2, 0x0

    .line 927
    iput v2, v8, Lcom/iiordanov/bVNC/Decoder;->boffset:I

    .line 928
    iput v10, v8, Lcom/iiordanov/bVNC/Decoder;->dy:I

    :goto_c
    iget v0, v8, Lcom/iiordanov/bVNC/Decoder;->dy:I

    add-int v2, v10, v12

    if-ge v0, v2, :cond_27

    .line 929
    iget-object v2, v8, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v2, v9, v0}, Lcom/iiordanov/bVNC/AbstractBitmapData;->offset(II)I

    move-result v0

    iput v0, v8, Lcom/iiordanov/bVNC/Decoder;->offset:I

    .line 930
    iput v9, v8, Lcom/iiordanov/bVNC/Decoder;->dx:I

    :goto_d
    iget v0, v8, Lcom/iiordanov/bVNC/Decoder;->dx:I

    add-int v2, v9, v11

    if-ge v0, v2, :cond_21

    .line 931
    iget v2, v8, Lcom/iiordanov/bVNC/Decoder;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v8, Lcom/iiordanov/bVNC/Decoder;->offset:I

    iget-object v3, v8, Lcom/iiordanov/bVNC/Decoder;->tightPalette24:[I

    iget-object v4, v8, Lcom/iiordanov/bVNC/Decoder;->inflBuf:[B

    iget v5, v8, Lcom/iiordanov/bVNC/Decoder;->boffset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v8, Lcom/iiordanov/bVNC/Decoder;->boffset:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    .line 930
    iput v0, v8, Lcom/iiordanov/bVNC/Decoder;->dx:I

    goto :goto_d

    .line 928
    :cond_21
    iget v0, v8, Lcom/iiordanov/bVNC/Decoder;->dy:I

    add-int/2addr v0, v14

    iput v0, v8, Lcom/iiordanov/bVNC/Decoder;->dy:I

    goto :goto_c

    .line 935
    :cond_22
    iget-boolean v0, v8, Lcom/iiordanov/bVNC/Decoder;->useGradient:Z

    if-eqz v0, :cond_23

    .line 937
    iget-object v6, v8, Lcom/iiordanov/bVNC/Decoder;->inflBuf:[B

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/iiordanov/bVNC/Decoder;->decodeGradientData(IIII[B)V

    goto/16 :goto_12

    :cond_23
    const/4 v2, 0x0

    .line 939
    iput v2, v8, Lcom/iiordanov/bVNC/Decoder;->boffset:I

    .line 941
    iget v0, v8, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    if-ne v0, v14, :cond_25

    .line 942
    iput v10, v8, Lcom/iiordanov/bVNC/Decoder;->dy:I

    :goto_e
    iget v0, v8, Lcom/iiordanov/bVNC/Decoder;->dy:I

    add-int v3, v10, v12

    if-ge v0, v3, :cond_27

    .line 943
    iget-object v3, v8, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v3, v9, v0}, Lcom/iiordanov/bVNC/AbstractBitmapData;->offset(II)I

    move-result v0

    iput v0, v8, Lcom/iiordanov/bVNC/Decoder;->offset:I

    .line 944
    iput v2, v8, Lcom/iiordanov/bVNC/Decoder;->dx:I

    :goto_f
    iget v0, v8, Lcom/iiordanov/bVNC/Decoder;->dx:I

    if-ge v0, v11, :cond_24

    .line 945
    iget v2, v8, Lcom/iiordanov/bVNC/Decoder;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v8, Lcom/iiordanov/bVNC/Decoder;->offset:I

    iget-object v3, v8, Lcom/iiordanov/bVNC/Decoder;->colorPalette:[I

    iget-object v4, v8, Lcom/iiordanov/bVNC/Decoder;->inflBuf:[B

    iget v5, v8, Lcom/iiordanov/bVNC/Decoder;->boffset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v8, Lcom/iiordanov/bVNC/Decoder;->boffset:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    .line 944
    iput v0, v8, Lcom/iiordanov/bVNC/Decoder;->dx:I

    goto :goto_f

    .line 942
    :cond_24
    iget v0, v8, Lcom/iiordanov/bVNC/Decoder;->dy:I

    add-int/2addr v0, v14

    iput v0, v8, Lcom/iiordanov/bVNC/Decoder;->dy:I

    const/4 v2, 0x0

    goto :goto_e

    .line 949
    :cond_25
    iput v10, v8, Lcom/iiordanov/bVNC/Decoder;->dy:I

    :goto_10
    iget v0, v8, Lcom/iiordanov/bVNC/Decoder;->dy:I

    add-int v2, v10, v12

    if-ge v0, v2, :cond_27

    .line 950
    iget-object v2, v8, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v2, v9, v0}, Lcom/iiordanov/bVNC/AbstractBitmapData;->offset(II)I

    move-result v0

    iput v0, v8, Lcom/iiordanov/bVNC/Decoder;->offset:I

    const/4 v2, 0x0

    .line 951
    iput v2, v8, Lcom/iiordanov/bVNC/Decoder;->dx:I

    :goto_11
    iget v0, v8, Lcom/iiordanov/bVNC/Decoder;->dx:I

    if-ge v0, v11, :cond_26

    .line 952
    iget v3, v8, Lcom/iiordanov/bVNC/Decoder;->boffset:I

    mul-int/lit8 v4, v3, 0x3

    iput v4, v8, Lcom/iiordanov/bVNC/Decoder;->idx:I

    add-int/2addr v3, v14

    iput v3, v8, Lcom/iiordanov/bVNC/Decoder;->boffset:I

    .line 953
    iget v3, v8, Lcom/iiordanov/bVNC/Decoder;->offset:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v8, Lcom/iiordanov/bVNC/Decoder;->offset:I

    iget-object v5, v8, Lcom/iiordanov/bVNC/Decoder;->inflBuf:[B

    aget-byte v7, v5, v4

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    add-int/lit8 v15, v4, 0x1

    aget-byte v15, v5, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v6

    or-int/2addr v7, v15

    add-int/2addr v4, v13

    aget-byte v4, v5, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v7

    aput v4, v1, v3

    add-int/lit8 v0, v0, 0x1

    .line 951
    iput v0, v8, Lcom/iiordanov/bVNC/Decoder;->dx:I

    goto :goto_11

    .line 949
    :cond_26
    iget v0, v8, Lcom/iiordanov/bVNC/Decoder;->dy:I

    add-int/2addr v0, v14

    iput v0, v8, Lcom/iiordanov/bVNC/Decoder;->dy:I

    goto :goto_10

    .line 962
    :cond_27
    :goto_12
    iget-object v0, v8, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v0, v9, v10, v11, v12}, Lcom/iiordanov/bVNC/AbstractBitmapData;->updateBitmap(IIII)V

    .line 963
    iget-object v0, v8, Lcom/iiordanov/bVNC/Decoder;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0, v9, v10, v11, v12}, Lcom/iiordanov/bVNC/RemoteCanvas;->reDraw(IIII)V

    return-void

    .line 738
    :cond_28
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incorrect tight subencoding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v8, Lcom/iiordanov/bVNC/Decoder;->comp_ctl:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method handleZRLERect(Lcom/iiordanov/bVNC/RfbProto;IIII)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 436
    iget-object v6, v0, Lcom/iiordanov/bVNC/Decoder;->zrleInStream:Lcom/iiordanov/bVNC/ZlibInStream;

    if-nez v6, :cond_0

    .line 437
    new-instance v6, Lcom/iiordanov/bVNC/ZlibInStream;

    invoke-direct {v6}, Lcom/iiordanov/bVNC/ZlibInStream;-><init>()V

    iput-object v6, v0, Lcom/iiordanov/bVNC/Decoder;->zrleInStream:Lcom/iiordanov/bVNC/ZlibInStream;

    .line 439
    :cond_0
    iget-object v6, v1, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    const/high16 v7, 0x4000000

    if-gt v6, v7, :cond_d

    .line 443
    iget-object v7, v0, Lcom/iiordanov/bVNC/Decoder;->zrleBuf:[B

    if-eqz v7, :cond_1

    array-length v7, v7

    if-ge v7, v6, :cond_2

    :cond_1
    add-int/lit16 v7, v6, 0x1000

    .line 444
    new-array v7, v7, [B

    iput-object v7, v0, Lcom/iiordanov/bVNC/Decoder;->zrleBuf:[B

    .line 447
    :cond_2
    iget-object v7, v0, Lcom/iiordanov/bVNC/Decoder;->zrleBuf:[B

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8, v6}, Lcom/iiordanov/bVNC/RfbProto;->readFully([BII)V

    .line 449
    iget-object v1, v0, Lcom/iiordanov/bVNC/Decoder;->zrleInStream:Lcom/iiordanov/bVNC/ZlibInStream;

    new-instance v7, Lcom/iiordanov/bVNC/MemInStream;

    iget-object v9, v0, Lcom/iiordanov/bVNC/Decoder;->zrleBuf:[B

    invoke-direct {v7, v9, v8, v6}, Lcom/iiordanov/bVNC/MemInStream;-><init>([BII)V

    invoke-virtual {v1, v7, v6}, Lcom/iiordanov/bVNC/ZlibInStream;->setUnderlying(Lcom/iiordanov/bVNC/InStream;I)V

    .line 451
    iget-object v1, v0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/iiordanov/bVNC/AbstractBitmapData;->validDraw(IIII)Z

    move-result v1

    move v6, v3

    :goto_0
    add-int v7, v3, v5

    if-ge v6, v7, :cond_c

    sub-int/2addr v7, v6

    const/16 v15, 0x40

    .line 455
    invoke-static {v7, v15}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v14, v2

    :goto_1
    add-int v9, v2, v4

    if-ge v14, v9, :cond_b

    sub-int/2addr v9, v14

    .line 459
    invoke-static {v9, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 461
    iget-object v9, v0, Lcom/iiordanov/bVNC/Decoder;->zrleInStream:Lcom/iiordanov/bVNC/ZlibInStream;

    invoke-virtual {v9}, Lcom/iiordanov/bVNC/ZlibInStream;->readU8()I

    move-result v9

    and-int/lit16 v10, v9, 0x80

    const/4 v11, 0x1

    if-eqz v10, :cond_3

    move v10, v11

    goto :goto_2

    :cond_3
    move v10, v8

    :goto_2
    and-int/lit8 v9, v9, 0x7f

    .line 465
    iget-object v13, v0, Lcom/iiordanov/bVNC/Decoder;->handleZRLERectPalette:[I

    invoke-direct {v0, v13, v9}, Lcom/iiordanov/bVNC/Decoder;->readZrlePalette([II)V

    if-ne v9, v11, :cond_6

    .line 468
    iget-object v9, v0, Lcom/iiordanov/bVNC/Decoder;->handleZRLERectPalette:[I

    aget v9, v9, v8

    .line 469
    iget v10, v0, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    if-ne v10, v11, :cond_4

    iget-object v10, v0, Lcom/iiordanov/bVNC/Decoder;->colorPalette:[I

    and-int/lit16 v9, v9, 0xff

    aget v9, v10, v9

    goto :goto_3

    :cond_4
    const/high16 v10, -0x1000000

    or-int/2addr v9, v10

    .line 470
    :goto_3
    iget-object v10, v0, Lcom/iiordanov/bVNC/Decoder;->handleZRLERectPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 471
    iget-object v9, v0, Lcom/iiordanov/bVNC/Decoder;->handleZRLERectPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz v1, :cond_5

    .line 473
    iget-object v9, v0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget-object v13, v0, Lcom/iiordanov/bVNC/Decoder;->handleZRLERectPaint:Landroid/graphics/Paint;

    move v10, v14

    move v11, v6

    move-object/from16 v16, v13

    move v13, v7

    move v8, v14

    move-object/from16 v14, v16

    invoke-virtual/range {v9 .. v14}, Lcom/iiordanov/bVNC/AbstractBitmapData;->drawRect(IIIILandroid/graphics/Paint;)V

    goto :goto_5

    :cond_5
    move v8, v14

    goto :goto_5

    :cond_6
    move v8, v14

    if-nez v10, :cond_8

    if-nez v9, :cond_7

    .line 479
    invoke-direct {v0, v12, v7}, Lcom/iiordanov/bVNC/Decoder;->readZrleRawPixels(II)V

    goto :goto_4

    .line 481
    :cond_7
    iget-object v10, v0, Lcom/iiordanov/bVNC/Decoder;->handleZRLERectPalette:[I

    invoke-direct {v0, v12, v7, v10, v9}, Lcom/iiordanov/bVNC/Decoder;->readZrlePackedPixels(II[II)V

    goto :goto_4

    :cond_8
    if-nez v9, :cond_9

    .line 485
    invoke-direct {v0, v12, v7}, Lcom/iiordanov/bVNC/Decoder;->readZrlePlainRLEPixels(II)V

    goto :goto_4

    .line 487
    :cond_9
    iget-object v9, v0, Lcom/iiordanov/bVNC/Decoder;->handleZRLERectPalette:[I

    invoke-direct {v0, v12, v7, v9}, Lcom/iiordanov/bVNC/Decoder;->readZrlePackedRLEPixels(II[I)V

    :goto_4
    if-eqz v1, :cond_a

    .line 491
    invoke-direct {v0, v8, v6, v12, v7}, Lcom/iiordanov/bVNC/Decoder;->handleUpdatedZrleTile(IIII)V

    :cond_a
    :goto_5
    add-int/lit8 v14, v8, 0x40

    const/4 v8, 0x0

    goto :goto_1

    :cond_b
    add-int/lit8 v6, v6, 0x40

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 495
    :cond_c
    iget-object v1, v0, Lcom/iiordanov/bVNC/Decoder;->zrleInStream:Lcom/iiordanov/bVNC/ZlibInStream;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ZlibInStream;->reset()V

    .line 497
    iget-object v1, v0, Lcom/iiordanov/bVNC/Decoder;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/iiordanov/bVNC/RemoteCanvas;->reDraw(IIII)V

    return-void

    .line 441
    :cond_d
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "ZRLE decoder: illegal compressed data size"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method handleZlibRect(Lcom/iiordanov/bVNC/RfbProto;IIII)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 504
    iget-object v6, v0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v6, v2, v3, v4, v5}, Lcom/iiordanov/bVNC/AbstractBitmapData;->validDraw(IIII)Z

    move-result v6

    .line 505
    iget-object v7, v1, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 507
    iget-object v8, v0, Lcom/iiordanov/bVNC/Decoder;->zlibBuf:[B

    if-eqz v8, :cond_0

    array-length v8, v8

    if-ge v8, v7, :cond_1

    :cond_0
    mul-int/lit8 v8, v7, 0x2

    .line 508
    new-array v8, v8, [B

    iput-object v8, v0, Lcom/iiordanov/bVNC/Decoder;->zlibBuf:[B

    .line 511
    :cond_1
    iget-object v8, v0, Lcom/iiordanov/bVNC/Decoder;->zlibBuf:[B

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9, v7}, Lcom/iiordanov/bVNC/RfbProto;->readFully([BII)V

    .line 513
    iget-object v1, v0, Lcom/iiordanov/bVNC/Decoder;->zlibInflater:Ljava/util/zip/Inflater;

    if-nez v1, :cond_2

    .line 514
    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v1, v0, Lcom/iiordanov/bVNC/Decoder;->zlibInflater:Ljava/util/zip/Inflater;

    .line 516
    :cond_2
    iget-object v1, v0, Lcom/iiordanov/bVNC/Decoder;->zlibInflater:Ljava/util/zip/Inflater;

    iget-object v8, v0, Lcom/iiordanov/bVNC/Decoder;->zlibBuf:[B

    invoke-virtual {v1, v8, v9, v7}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 518
    iget-object v1, v0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget-object v1, v1, Lcom/iiordanov/bVNC/AbstractBitmapData;->bitmapPixels:[I

    .line 520
    iget v7, v0, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 522
    iget-object v7, v0, Lcom/iiordanov/bVNC/Decoder;->handleZlibRectBuffer:[B

    array-length v7, v7

    if-le v4, v7, :cond_3

    .line 523
    new-array v7, v4, [B

    iput-object v7, v0, Lcom/iiordanov/bVNC/Decoder;->handleZlibRectBuffer:[B

    :cond_3
    move v7, v3

    :goto_0
    add-int v8, v3, v5

    if-ge v7, v8, :cond_a

    .line 527
    iget-object v8, v0, Lcom/iiordanov/bVNC/Decoder;->zlibInflater:Ljava/util/zip/Inflater;

    iget-object v10, v0, Lcom/iiordanov/bVNC/Decoder;->handleZlibRectBuffer:[B

    invoke-virtual {v8, v10, v9, v4}, Ljava/util/zip/Inflater;->inflate([BII)I

    if-nez v6, :cond_4

    goto :goto_2

    .line 530
    :cond_4
    iget-object v8, v0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v8, v2, v7}, Lcom/iiordanov/bVNC/AbstractBitmapData;->offset(II)I

    move-result v8

    move v10, v9

    :goto_1
    if-ge v10, v4, :cond_5

    add-int v11, v8, v10

    .line 532
    iget-object v12, v0, Lcom/iiordanov/bVNC/Decoder;->colorPalette:[I

    iget-object v13, v0, Lcom/iiordanov/bVNC/Decoder;->handleZlibRectBuffer:[B

    aget-byte v13, v13, v10

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    aput v12, v1, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    mul-int/lit8 v7, v4, 0x4

    .line 538
    iget-object v8, v0, Lcom/iiordanov/bVNC/Decoder;->handleZlibRectBuffer:[B

    array-length v8, v8

    if-le v7, v8, :cond_7

    .line 539
    new-array v8, v7, [B

    iput-object v8, v0, Lcom/iiordanov/bVNC/Decoder;->handleZlibRectBuffer:[B

    :cond_7
    move v8, v3

    :goto_3
    add-int v10, v3, v5

    if-ge v8, v10, :cond_a

    .line 543
    iget-object v10, v0, Lcom/iiordanov/bVNC/Decoder;->zlibInflater:Ljava/util/zip/Inflater;

    iget-object v11, v0, Lcom/iiordanov/bVNC/Decoder;->handleZlibRectBuffer:[B

    invoke-virtual {v10, v11, v9, v7}, Ljava/util/zip/Inflater;->inflate([BII)I

    if-nez v6, :cond_8

    goto :goto_5

    .line 546
    :cond_8
    iget-object v10, v0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v10, v2, v8}, Lcom/iiordanov/bVNC/AbstractBitmapData;->offset(II)I

    move-result v10

    move v11, v9

    :goto_4
    if-ge v11, v4, :cond_9

    mul-int/lit8 v12, v11, 0x4

    add-int v13, v10, v11

    .line 549
    iget-object v14, v0, Lcom/iiordanov/bVNC/Decoder;->handleZlibRectBuffer:[B

    add-int/lit8 v15, v12, 0x2

    aget-byte v15, v14, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    add-int/lit8 v16, v12, 0x1

    aget-byte v9, v14, v16

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v9, v15

    aget-byte v12, v14, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v9, v12

    aput v9, v1, v13

    add-int/lit8 v11, v11, 0x1

    const/4 v9, 0x0

    goto :goto_4

    :cond_9
    :goto_5
    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x0

    goto :goto_3

    :cond_a
    if-nez v6, :cond_b

    return-void

    .line 555
    :cond_b
    iget-object v1, v0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/iiordanov/bVNC/AbstractBitmapData;->updateBitmap(IIII)V

    .line 557
    iget-object v1, v0, Lcom/iiordanov/bVNC/Decoder;->vncCanvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/iiordanov/bVNC/RemoteCanvas;->reDraw(IIII)V

    return-void
.end method

.method public isChangedColorModel()Z
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/iiordanov/bVNC/Decoder;->pendingColorModel:Lcom/iiordanov/bVNC/COLORMODEL;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setBitmapData(Lcom/iiordanov/bVNC/AbstractBitmapData;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/iiordanov/bVNC/Decoder;->bitmapData:Lcom/iiordanov/bVNC/AbstractBitmapData;

    return-void
.end method

.method public setColorModel(Lcom/iiordanov/bVNC/COLORMODEL;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/iiordanov/bVNC/Decoder;->colorModel:Lcom/iiordanov/bVNC/COLORMODEL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/iiordanov/bVNC/COLORMODEL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    :cond_0
    iput-object p1, p0, Lcom/iiordanov/bVNC/Decoder;->pendingColorModel:Lcom/iiordanov/bVNC/COLORMODEL;

    :cond_1
    return-void
.end method

.method setPixelFormat(Lcom/iiordanov/bVNC/RfbProto;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/iiordanov/bVNC/Decoder;->pendingColorModel:Lcom/iiordanov/bVNC/COLORMODEL;

    invoke-virtual {v0, p1}, Lcom/iiordanov/bVNC/COLORMODEL;->setPixelFormat(Lcom/undatech/opaque/RfbConnectable;)V

    .line 116
    iget-object p1, p0, Lcom/iiordanov/bVNC/Decoder;->pendingColorModel:Lcom/iiordanov/bVNC/COLORMODEL;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/COLORMODEL;->bpp()I

    move-result p1

    iput p1, p0, Lcom/iiordanov/bVNC/Decoder;->bytesPerPixel:I

    .line 117
    iget-object p1, p0, Lcom/iiordanov/bVNC/Decoder;->pendingColorModel:Lcom/iiordanov/bVNC/COLORMODEL;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/COLORMODEL;->palette()[I

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/bVNC/Decoder;->colorPalette:[I

    .line 118
    iget-object p1, p0, Lcom/iiordanov/bVNC/Decoder;->pendingColorModel:Lcom/iiordanov/bVNC/COLORMODEL;

    iput-object p1, p0, Lcom/iiordanov/bVNC/Decoder;->colorModel:Lcom/iiordanov/bVNC/COLORMODEL;

    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lcom/iiordanov/bVNC/Decoder;->pendingColorModel:Lcom/iiordanov/bVNC/COLORMODEL;

    return-void
.end method
