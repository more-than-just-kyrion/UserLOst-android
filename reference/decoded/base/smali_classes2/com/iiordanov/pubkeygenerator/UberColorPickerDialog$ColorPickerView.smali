.class Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;
.super Landroid/view/View;
.source "UberColorPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorPickerView"
.end annotation


# static fields
.field private static final METHOD_HS_V_PALETTE:I = 0x0

.field private static final PALETTE_CENTER_X:I

.field private static final PALETTE_CENTER_Y:I

.field private static final PALETTE_DIM:I

.field private static PALETTE_POS_X:I = 0x0

.field private static PALETTE_POS_Y:I = 0x3c

.field private static final PALETTE_RADIUS:I

.field private static final PI:F = 3.1415927f

.field private static final SLIDER_THICKNESS:I = 0x28

.field private static final SWATCH_HEIGHT:I = 0x3c

.field private static SWATCH_WIDTH:I = 0x5f

.field private static TEXT_HEX_POS:[I = null

.field private static TEXT_HSV_POS:[I = null

.field private static TEXT_RGB_POS:[I = null

.field private static final TEXT_SIZE:I = 0xc

.field private static TEXT_YUV_POS:[I = null

.field private static final TRACKED_NONE:I = -0x1

.field private static final TRACK_HS_PALETTE:I = 0x1e

.field private static final TRACK_SWATCH_NEW:I = 0xb

.field private static final TRACK_SWATCH_OLD:I = 0xa

.field private static final TRACK_VER_VALUE_SLIDER:I = 0x1f

.field private static VIEW_DIM_X:I

.field private static VIEW_DIM_Y:I


# instance fields
.field private mCoord:[I

.field private mFocusedControl:I

.field private mHSV:[F

.field private mHSVenabled:Z

.field private mHexStr:Ljava/lang/String;

.field private mHexenabled:Z

.field private mHorSlidersBM:[Landroid/graphics/Bitmap;

.field private mHorSlidersCv:[Landroid/graphics/Canvas;

.field private mListener:Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$OnColorChangedListener;

.field private mMethod:I

.field private mNewSwatchRect:Landroid/graphics/Rect;

.field private mOldSwatchRect:Landroid/graphics/Rect;

.field private mOriginalColor:I

.field private mOvalHueSat:Landroid/graphics/Paint;

.field private mOvalHueSatSmall:Landroid/graphics/Paint;

.field private mPaletteRect:Landroid/graphics/Rect;

.field private mPosMarker:Landroid/graphics/Paint;

.field private mRGB:[I

.field private mRGBenabled:Z

.field private mSpectrumColorsRev:[I

.field private mSwatchNew:Landroid/graphics/Paint;

.field private mSwatchOld:Landroid/graphics/Paint;

.field private mText:Landroid/graphics/Paint;

.field private mTracking:I

.field private mValDimmer:Landroid/graphics/Paint;

.field private mVerSliderBM:Landroid/graphics/Bitmap;

.field private mVerSliderCv:Landroid/graphics/Canvas;

.field private mVerSliderRect:Landroid/graphics/Rect;

.field private mYUV:[F

.field private mYUVenabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x5f

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    .line 140
    sput v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    .line 141
    div-int/lit8 v2, v0, 0x2

    sput v2, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    .line 142
    sput v2, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_CENTER_X:I

    .line 143
    sput v2, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_CENTER_Y:I

    .line 147
    sput v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->VIEW_DIM_X:I

    const/16 v0, 0x3c

    .line 148
    sput v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->VIEW_DIM_Y:I

    .line 162
    new-array v0, v1, [I

    sput-object v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->TEXT_HSV_POS:[I

    .line 163
    new-array v0, v1, [I

    sput-object v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->TEXT_RGB_POS:[I

    .line 164
    new-array v0, v1, [I

    sput-object v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->TEXT_YUV_POS:[I

    .line 165
    new-array v0, v1, [I

    sput-object v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->TEXT_HEX_POS:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$OnColorChangedListener;III)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p5

    .line 225
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 169
    iput v2, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mMethod:I

    const/4 v3, -0x1

    .line 170
    iput v3, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mTracking:I

    const/4 v4, 0x3

    .line 183
    new-array v5, v4, [Landroid/graphics/Bitmap;

    iput-object v5, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHorSlidersBM:[Landroid/graphics/Bitmap;

    .line 184
    new-array v5, v4, [Landroid/graphics/Canvas;

    iput-object v5, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHorSlidersCv:[Landroid/graphics/Canvas;

    .line 195
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mOldSwatchRect:Landroid/graphics/Rect;

    .line 196
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mNewSwatchRect:Landroid/graphics/Rect;

    .line 197
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mPaletteRect:Landroid/graphics/Rect;

    .line 198
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mVerSliderRect:Landroid/graphics/Rect;

    .line 201
    iput v2, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mOriginalColor:I

    .line 202
    new-array v5, v4, [F

    iput-object v5, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    .line 203
    new-array v5, v4, [I

    iput-object v5, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mRGB:[I

    .line 204
    new-array v5, v4, [F

    iput-object v5, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mYUV:[F

    .line 205
    const-string v5, ""

    iput-object v5, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHexStr:Ljava/lang/String;

    const/4 v5, 0x1

    .line 206
    iput-boolean v5, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHSVenabled:Z

    .line 207
    iput-boolean v5, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mRGBenabled:Z

    .line 208
    iput-boolean v5, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mYUVenabled:Z

    .line 209
    iput-boolean v5, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHexenabled:Z

    .line 210
    new-array v6, v4, [I

    iput-object v6, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    .line 211
    iput v3, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mFocusedControl:I

    .line 228
    invoke-virtual {v0, v5}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->setFocusable(Z)V

    move-object/from16 v6, p2

    .line 230
    iput-object v6, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mListener:Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$OnColorChangedListener;

    .line 232
    iput v1, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mOriginalColor:I

    .line 234
    iget-object v6, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    invoke-static {v1, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 236
    invoke-direct/range {p0 .. p0}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->updateAllFromHSV()V

    const/16 v1, 0x28

    move/from16 v6, p3

    move/from16 v7, p4

    if-gt v6, v7, :cond_0

    .line 240
    sget v6, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    add-int/lit8 v7, v6, 0x28

    div-int/lit8 v7, v7, 0x2

    sput v7, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->SWATCH_WIDTH:I

    .line 242
    sput v2, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_X:I

    const/16 v8, 0x6c

    .line 243
    sput v8, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_Y:I

    .line 246
    iget-object v9, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mOldSwatchRect:Landroid/graphics/Rect;

    const/16 v10, 0x30

    invoke-virtual {v9, v2, v10, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 247
    iget-object v7, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mNewSwatchRect:Landroid/graphics/Rect;

    sget v9, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->SWATCH_WIDTH:I

    mul-int/lit8 v11, v9, 0x2

    invoke-virtual {v7, v9, v10, v11, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 248
    iget-object v7, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mPaletteRect:Landroid/graphics/Rect;

    sget v9, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_Y:I

    add-int v10, v9, v6

    invoke-virtual {v7, v2, v9, v6, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 249
    iget-object v7, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mVerSliderRect:Landroid/graphics/Rect;

    sget v9, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_Y:I

    add-int/lit8 v10, v6, 0x28

    add-int v11, v9, v6

    invoke-virtual {v7, v6, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 251
    sget-object v7, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->TEXT_HSV_POS:[I

    aput v4, v7, v2

    .line 252
    aput v2, v7, v5

    .line 253
    sget-object v9, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->TEXT_RGB_POS:[I

    add-int/lit8 v10, v4, 0x32

    aput v10, v9, v2

    .line 254
    aput v2, v9, v5

    .line 255
    sget-object v9, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->TEXT_YUV_POS:[I

    aget v10, v7, v2

    add-int/lit8 v10, v10, 0x64

    aput v10, v9, v2

    .line 256
    aget v10, v7, v5

    aput v10, v9, v5

    .line 257
    sget-object v9, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->TEXT_HEX_POS:[I

    aget v10, v7, v2

    add-int/lit16 v10, v10, 0x96

    aput v10, v9, v2

    .line 258
    aget v7, v7, v5

    aput v7, v9, v5

    add-int/lit8 v7, v6, 0x28

    .line 260
    sput v7, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->VIEW_DIM_X:I

    add-int/2addr v6, v8

    .line 261
    sput v6, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->VIEW_DIM_Y:I

    goto :goto_0

    :cond_0
    const/16 v6, 0x6e

    .line 264
    sput v6, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->SWATCH_WIDTH:I

    .line 266
    sput v6, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_X:I

    .line 267
    sput v2, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_Y:I

    .line 270
    iget-object v7, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mOldSwatchRect:Landroid/graphics/Rect;

    const/16 v8, 0x54

    const/16 v9, 0x90

    invoke-virtual {v7, v2, v8, v6, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 271
    iget-object v6, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mNewSwatchRect:Landroid/graphics/Rect;

    sget v7, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->SWATCH_WIDTH:I

    const/16 v8, 0xcc

    invoke-virtual {v6, v2, v9, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 272
    iget-object v6, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mPaletteRect:Landroid/graphics/Rect;

    sget v7, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->SWATCH_WIDTH:I

    sget v8, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_Y:I

    sget v9, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    add-int v10, v7, v9

    add-int v11, v8, v9

    invoke-virtual {v6, v7, v8, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 273
    iget-object v6, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mVerSliderRect:Landroid/graphics/Rect;

    sget v7, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->SWATCH_WIDTH:I

    add-int v8, v7, v9

    sget v10, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_Y:I

    add-int/2addr v7, v9

    add-int/2addr v7, v1

    add-int v11, v10, v9

    invoke-virtual {v6, v8, v10, v7, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 275
    sget-object v6, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->TEXT_HSV_POS:[I

    aput v4, v6, v2

    .line 276
    aput v2, v6, v5

    .line 277
    sget-object v7, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->TEXT_RGB_POS:[I

    aput v4, v7, v2

    int-to-double v10, v2

    const-wide/high16 v12, 0x4045000000000000L    # 42.0

    add-double/2addr v10, v12

    double-to-int v8, v10

    .line 278
    aput v8, v7, v5

    .line 279
    sget-object v7, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->TEXT_YUV_POS:[I

    aget v8, v6, v2

    add-int/lit8 v8, v8, 0x32

    aput v8, v7, v2

    .line 280
    aget v8, v6, v5

    int-to-double v10, v8

    add-double/2addr v10, v12

    double-to-int v8, v10

    aput v8, v7, v5

    .line 281
    sget-object v7, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->TEXT_HEX_POS:[I

    aget v8, v6, v2

    add-int/lit8 v8, v8, 0x32

    aput v8, v7, v2

    .line 282
    aget v6, v6, v5

    aput v6, v7, v5

    .line 284
    sget v6, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_X:I

    add-int/2addr v6, v9

    add-int/2addr v6, v1

    sput v6, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->VIEW_DIM_X:I

    .line 285
    iget-object v6, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mNewSwatchRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    sput v6, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->VIEW_DIM_Y:I

    :goto_0
    const/4 v6, 0x7

    .line 289
    new-array v6, v6, [I

    fill-array-data v6, :array_0

    iput-object v6, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mSpectrumColorsRev:[I

    .line 299
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mSwatchOld:Landroid/graphics/Paint;

    .line 300
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 301
    iget-object v6, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mSwatchOld:Landroid/graphics/Paint;

    iget-object v7, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    invoke-static {v7}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 303
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mSwatchNew:Landroid/graphics/Paint;

    .line 304
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 305
    iget-object v6, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mSwatchNew:Landroid/graphics/Paint;

    iget-object v7, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    invoke-static {v7}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 307
    new-instance v6, Landroid/graphics/SweepGradient;

    iget-object v7, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mSpectrumColorsRev:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v6, v8, v8, v7, v9}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 308
    new-instance v7, Landroid/graphics/RadialGradient;

    sget v10, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_CENTER_X:I

    int-to-float v13, v10

    const/high16 v15, -0x1000000

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, -0x1

    move-object v10, v7

    invoke-direct/range {v10 .. v16}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 309
    new-instance v10, Landroid/graphics/ComposeShader;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v6, v7, v11}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 310
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mOvalHueSat:Landroid/graphics/Paint;

    .line 311
    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 312
    iget-object v6, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mOvalHueSat:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 313
    iget-object v6, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mOvalHueSat:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 315
    sget v6, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mVerSliderBM:Landroid/graphics/Bitmap;

    .line 316
    new-instance v6, Landroid/graphics/Canvas;

    iget-object v7, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mVerSliderBM:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v6, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mVerSliderCv:Landroid/graphics/Canvas;

    :goto_1
    if-ge v2, v4, :cond_1

    .line 319
    iget-object v6, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHorSlidersBM:[Landroid/graphics/Bitmap;

    sget v7, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v1, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    aput-object v7, v6, v2

    .line 320
    iget-object v6, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHorSlidersCv:[Landroid/graphics/Canvas;

    new-instance v7, Landroid/graphics/Canvas;

    iget-object v10, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHorSlidersBM:[Landroid/graphics/Bitmap;

    aget-object v10, v10, v2

    invoke-direct {v7, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 323
    :cond_1
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mValDimmer:Landroid/graphics/Paint;

    .line 324
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 325
    iget-object v1, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mValDimmer:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 326
    iget-object v1, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mValDimmer:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 334
    new-instance v1, Landroid/graphics/SweepGradient;

    iget-object v2, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mSpectrumColorsRev:[I

    invoke-direct {v1, v8, v8, v2, v9}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 335
    new-instance v2, Landroid/graphics/RadialGradient;

    sget v4, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v13, v4

    const/high16 v15, -0x1000000

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, -0x1

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 336
    new-instance v4, Landroid/graphics/ComposeShader;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v1, v2, v6}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 337
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mOvalHueSatSmall:Landroid/graphics/Paint;

    .line 338
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 339
    iget-object v1, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mOvalHueSatSmall:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 342
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    .line 343
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 344
    iget-object v1, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 347
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    const/high16 v2, 0x41400000    # 12.0f

    .line 348
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 349
    iget-object v1, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    invoke-direct/range {p0 .. p0}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->initUI()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x10000
        -0xff01
        -0xffff01
        -0xff0001
        -0xff0100
        -0x100
        -0x10000
    .end array-data
.end method

.method private ave(IIF)I
    .locals 0

    sub-int/2addr p2, p1

    int-to-float p2, p2

    mul-float/2addr p3, p2

    float-to-double p2, p3

    .line 636
    invoke-direct {p0, p2, p3}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->round(D)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method private changeHSPalette(FFI)V
    .locals 10

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/4 v2, 0x0

    if-gez v1, :cond_0

    neg-int p1, p3

    goto :goto_0

    :cond_0
    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    move p1, p3

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    cmpg-float v1, p2, v0

    if-gez v1, :cond_2

    neg-int p3, p3

    goto :goto_1

    :cond_2
    cmpl-float p2, p2, v0

    if-lez p2, :cond_3

    goto :goto_1

    :cond_3
    move p3, v2

    .line 744
    :goto_1
    iget-object p2, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    aget v1, p2, v2

    add-int/2addr v1, p1

    aput v1, p2, v2

    const/4 p1, 0x1

    .line 745
    aget v3, p2, p1

    add-int/2addr v3, p3

    aput v3, p2, p1

    .line 747
    sget p3, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    neg-int v4, p3

    if-ge v1, v4, :cond_4

    neg-int v1, p3

    .line 748
    aput v1, p2, v2

    goto :goto_2

    :cond_4
    if-le v1, p3, :cond_5

    .line 750
    aput p3, p2, v2

    :cond_5
    :goto_2
    neg-int v1, p3

    if-ge v3, v1, :cond_6

    neg-int v1, p3

    .line 752
    aput v1, p2, p1

    goto :goto_3

    :cond_6
    if-le v3, p3, :cond_7

    .line 754
    aput p3, p2, p1

    .line 756
    :cond_7
    :goto_3
    aget v1, p2, v2

    mul-int/2addr v1, v1

    aget p2, p2, p1

    mul-int/2addr p2, p2

    add-int/2addr v1, p2

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float p2, v3

    int-to-float v1, p3

    cmpl-float v1, p2, v1

    if-lez v1, :cond_8

    int-to-float p2, p3

    .line 760
    :cond_8
    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    aget v3, v1, p1

    int-to-double v3, v3

    aget v1, v1, v2

    int-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v1, v3

    const v3, 0x40c90fdb

    div-float v3, v1, v3

    cmpg-float v0, v3, v0

    if-gez v0, :cond_9

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v3, v0

    .line 767
    :cond_9
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    float-to-double v8, p2

    mul-double/2addr v6, v8

    invoke-direct {p0, v6, v7}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->round(D)I

    move-result v1

    aput v1, v0, v2

    .line 768
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    invoke-direct {p0, v4, v5}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->round(D)I

    move-result v1

    aput v1, v0, p1

    .line 770
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mSpectrumColorsRev:[I

    invoke-direct {p0, v0, v3}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->interpColor([IF)I

    move-result v0

    const/4 v1, 0x3

    .line 771
    new-array v1, v1, [F

    .line 772
    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 773
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    aget v1, v1, v2

    aput v1, v0, v2

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 774
    aput p2, v0, p1

    .line 775
    invoke-direct {p0}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->updateAllFromHSV()V

    .line 776
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mSwatchNew:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    invoke-static {p2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 778
    invoke-direct {p0}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->setVerValSlider()V

    .line 780
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->invalidate()V

    return-void
.end method

.method private changeSlider(IZI)V
    .locals 3

    .line 794
    iget p1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mMethod:I

    if-nez p1, :cond_1

    .line 797
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    const/4 v0, 0x2

    aget v1, p1, v0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    neg-int p3, p3

    :goto_0
    int-to-float p2, p3

    const/high16 p3, 0x43800000    # 256.0f

    div-float/2addr p2, p3

    add-float/2addr v1, p2

    aput v1, p1, v0

    .line 798
    invoke-direct {p0, v1}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->pinToUnit(F)F

    move-result p2

    aput p2, p1, v0

    .line 799
    invoke-direct {p0}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->updateAllFromHSV()V

    .line 800
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    sget p2, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    iget-object p3, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    aget v1, p3, v0

    int-to-float v2, p2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr p2, v1

    aput p2, p1, v0

    .line 802
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mSwatchNew:Landroid/graphics/Paint;

    invoke-static {p3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 804
    invoke-direct {p0}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->setOvalValDimmer()V

    .line 806
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->invalidate()V

    :cond_1
    return-void
.end method

.method private drawHSV1Palette(Landroid/graphics/Canvas;)V
    .locals 8

    .line 481
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 483
    sget v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_X:I

    int-to-float v0, v0

    sget v1, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_Y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 486
    sget v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_CENTER_X:I

    int-to-float v1, v0

    sget v2, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_CENTER_Y:I

    int-to-float v3, v2

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 487
    new-instance v1, Landroid/graphics/RectF;

    sget v3, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    neg-int v4, v3

    int-to-float v4, v4

    neg-int v5, v3

    int-to-float v5, v5

    int-to-float v6, v3

    int-to-float v7, v3

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v4, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mOvalHueSat:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 488
    new-instance v1, Landroid/graphics/RectF;

    neg-int v4, v3

    int-to-float v4, v4

    neg-int v5, v3

    int-to-float v5, v5

    int-to-float v6, v3

    int-to-float v3, v3

    invoke-direct {v1, v4, v5, v6, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mValDimmer:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 489
    iget v1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mFocusedControl:I

    if-nez v1, :cond_0

    .line 490
    invoke-direct {p0, p1}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->hilightFocusedOvalPalette(Landroid/graphics/Canvas;)V

    .line 491
    :cond_0
    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-direct {p0, p1, v3, v1}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mark2DPalette(Landroid/graphics/Canvas;II)V

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v2

    int-to-float v1, v1

    .line 492
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 495
    sget v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 496
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mVerSliderBM:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 497
    iget v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mFocusedControl:I

    if-ne v0, v4, :cond_1

    .line 498
    invoke-direct {p0, p1}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->hilightFocusedVerSlider(Landroid/graphics/Canvas;)V

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->markVerSlider(Landroid/graphics/Canvas;I)V

    .line 501
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawSwatches(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v0, 0x3

    .line 376
    new-array v0, v0, [F

    .line 378
    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 381
    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mOldSwatchRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mSwatchOld:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 382
    iget v1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mOriginalColor:I

    invoke-static {v1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x2

    .line 385
    aget v0, v0, v1

    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v2, v4

    const/high16 v2, -0x1000000

    if-lez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mOldSwatchRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sget v3, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->SWATCH_WIDTH:I

    div-int/2addr v3, v1

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget-object v3, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    const-string v6, "Revert"

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v3, v7

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mOldSwatchRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x10

    int-to-float v3, v3

    iget-object v8, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 388
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 391
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mNewSwatchRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mSwatchNew:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 392
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    aget v0, v0, v1

    float-to-double v8, v0

    cmpl-double v0, v8, v4

    if-lez v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mNewSwatchRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->SWATCH_WIDTH:I

    div-int/2addr v2, v1

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    const-string v2, "Accept"

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v1, v7

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mNewSwatchRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0x10

    int-to-float v1, v1

    iget-object v4, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 395
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 397
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private hilightFocusedOvalPalette(Landroid/graphics/Canvas;)V
    .locals 6

    .line 468
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 469
    new-instance v0, Landroid/graphics/RectF;

    sget v1, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    neg-int v2, v1

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    int-to-float v4, v1

    int-to-float v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 470
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 471
    new-instance v0, Landroid/graphics/RectF;

    neg-int v2, v1

    add-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    neg-int v3, v1

    add-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-int/lit8 v4, v1, -0x2

    int-to-float v4, v4

    add-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private hilightFocusedVerSlider(Landroid/graphics/Canvas;)V
    .locals 4

    .line 457
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 458
    new-instance v0, Landroid/graphics/Rect;

    sget v1, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    const/4 v2, 0x0

    const/16 v3, 0x28

    invoke-direct {v0, v2, v2, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 459
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 460
    new-instance v0, Landroid/graphics/Rect;

    const/16 v2, 0x26

    const/4 v3, 0x2

    sub-int/2addr v1, v3

    invoke-direct {v0, v3, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private initHSV1Palette()V
    .locals 11

    .line 520
    invoke-direct {p0}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->setOvalValDimmer()V

    .line 521
    invoke-direct {p0}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->setVerValSlider()V

    .line 523
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const v3, 0x42652ee0

    div-float/2addr v2, v3

    const v3, 0x40c90fdb

    sub-float/2addr v3, v2

    const/4 v2, 0x1

    .line 524
    aget v0, v0, v2

    sget v4, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    int-to-float v4, v4

    mul-float/2addr v0, v4

    .line 525
    iget-object v4, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    float-to-double v9, v0

    mul-double/2addr v7, v9

    double-to-int v0, v7

    aput v0, v4, v1

    .line 526
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v3, v9

    double-to-int v1, v3

    aput v1, v0, v2

    .line 528
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    sget v1, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    iget-object v2, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    int-to-float v4, v1

    mul-float/2addr v2, v4

    float-to-int v2, v2

    sub-int/2addr v1, v2

    aput v1, v0, v3

    return-void
.end method

.method private initUI()V
    .locals 1

    .line 508
    invoke-direct {p0}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->initHSV1Palette()V

    const/4 v0, 0x0

    .line 511
    iput v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mFocusedControl:I

    return-void
.end method

.method private interpColor([IF)I
    .locals 5

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 p2, 0x0

    .line 649
    aget p1, p1, p2

    return p1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1

    .line 652
    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget p1, p1, p2

    return p1

    .line 655
    :cond_1
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr p2, v0

    float-to-int v0, p2

    int-to-float v1, v0

    sub-float/2addr p2, v1

    .line 660
    aget v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 661
    aget p1, p1, v0

    .line 662
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-direct {p0, v0, v2, p2}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v0

    .line 663
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-direct {p0, v2, v3, p2}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v2

    .line 664
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v3

    .line 665
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-direct {p0, v1, p1, p2}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result p1

    .line 667
    invoke-static {v0, v2, v3, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private mark2DPalette(Landroid/graphics/Canvas;II)V
    .locals 5

    .line 434
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 435
    new-instance v0, Landroid/graphics/RectF;

    add-int/lit8 v1, p2, -0x5

    int-to-float v1, v1

    add-int/lit8 v2, p3, -0x5

    int-to-float v2, v2

    add-int/lit8 v3, p2, 0x5

    int-to-float v3, v3

    add-int/lit8 v4, p3, 0x5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 436
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 437
    new-instance v0, Landroid/graphics/RectF;

    add-int/lit8 v1, p2, -0x3

    int-to-float v1, v1

    add-int/lit8 v2, p3, -0x3

    int-to-float v2, v2

    add-int/lit8 p2, p2, 0x3

    int-to-float p2, p2

    add-int/lit8 p3, p3, 0x3

    int-to-float p3, p3

    invoke-direct {v0, v1, v2, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p2, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private markVerSlider(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 446
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 447
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v1, p2, -0x2

    add-int/lit8 v2, p2, 0x3

    const/4 v3, 0x0

    const/16 v4, 0x28

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 448
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 449
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v1, p2, 0x1

    invoke-direct {v0, v3, p2, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p2, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private pin(FF)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, p2

    if-lez v0, :cond_1

    move p1, p2

    :cond_1
    :goto_0
    return p1
.end method

.method private pin(FFF)F
    .locals 1

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    cmpl-float p2, p1, p3

    if-lez p2, :cond_1

    move p1, p3

    :cond_1
    :goto_0
    return p1
.end method

.method private pinToUnit(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method private round(D)I
    .locals 0

    .line 579
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method

.method private setOvalValDimmer()V
    .locals 5

    .line 538
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x2

    .line 540
    aget v0, v0, v3

    const/4 v4, 0x3

    new-array v4, v4, [F

    aput v2, v4, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, v4, v2

    aput v0, v4, v3

    .line 541
    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 542
    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mValDimmer:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private setVerValSlider()V
    .locals 5

    .line 550
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    .line 551
    aget v0, v0, v3

    const/4 v4, 0x3

    .line 552
    new-array v4, v4, [F

    aput v2, v4, v1

    aput v0, v4, v3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    aput v0, v4, v2

    .line 553
    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    const/high16 v2, -0x1000000

    .line 557
    filled-new-array {v0, v2}, [I

    move-result-object v0

    .line 558
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v2, v4, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 559
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setDither(Z)V

    const/16 v0, 0x2710

    .line 560
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setLevel(I)Z

    const/16 v0, 0x28

    .line 561
    sget v3, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    invoke-virtual {v2, v1, v1, v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 562
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mVerSliderCv:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private updateAllFromHSV()V
    .locals 1

    .line 854
    iget-boolean v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mRGBenabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mYUVenabled:Z

    if-eqz v0, :cond_1

    .line 855
    :cond_0
    invoke-direct {p0}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->updateRGBfromHSV()V

    .line 858
    :cond_1
    iget-boolean v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mYUVenabled:Z

    if-eqz v0, :cond_2

    .line 859
    invoke-direct {p0}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->updateYUVfromRGB()V

    .line 862
    :cond_2
    iget-boolean v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mRGBenabled:Z

    if-eqz v0, :cond_3

    .line 863
    invoke-direct {p0}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->updateHexFromHSV()V

    :cond_3
    return-void
.end method

.method private updateHexFromHSV()V
    .locals 3

    .line 845
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHexStr:Ljava/lang/String;

    const/4 v1, 0x2

    .line 846
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHexStr:Ljava/lang/String;

    return-void
.end method

.method private updateRGBfromHSV()V
    .locals 4

    .line 814
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 815
    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mRGB:[I

    const/4 v2, 0x0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    aput v3, v1, v2

    .line 816
    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mRGB:[I

    const/4 v2, 0x1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    aput v3, v1, v2

    .line 817
    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mRGB:[I

    const/4 v2, 0x2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    aput v0, v1, v2

    return-void
.end method

.method private updateYUVfromRGB()V
    .locals 10

    .line 824
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mRGB:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    const/4 v4, 0x1

    .line 825
    aget v5, v0, v4

    int-to-float v5, v5

    div-float/2addr v5, v3

    const/4 v6, 0x2

    .line 826
    aget v0, v0, v6

    int-to-float v0, v0

    div-float/2addr v0, v3

    .line 828
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 829
    invoke-virtual {v3}, Landroid/graphics/ColorMatrix;->setRGB2YUV()V

    .line 830
    invoke-virtual {v3}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v3

    .line 832
    iget-object v7, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mYUV:[F

    aget v8, v3, v1

    mul-float/2addr v8, v2

    aget v9, v3, v4

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    aget v9, v3, v6

    mul-float/2addr v9, v0

    add-float/2addr v8, v9

    aput v8, v7, v1

    .line 833
    invoke-direct {p0, v8}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->pinToUnit(F)F

    move-result v8

    aput v8, v7, v1

    .line 834
    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mYUV:[F

    const/4 v7, 0x5

    aget v7, v3, v7

    mul-float/2addr v7, v2

    const/4 v8, 0x6

    aget v8, v3, v8

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    const/4 v8, 0x7

    aget v8, v3, v8

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    aput v7, v1, v4

    const/high16 v8, -0x41000000    # -0.5f

    const/high16 v9, 0x3f000000    # 0.5f

    .line 835
    invoke-direct {p0, v7, v8, v9}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->pin(FFF)F

    move-result v7

    aput v7, v1, v4

    .line 836
    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mYUV:[F

    const/16 v4, 0xa

    aget v4, v3, v4

    mul-float/2addr v4, v2

    const/16 v2, 0xb

    aget v2, v3, v2

    mul-float/2addr v2, v5

    add-float/2addr v4, v2

    const/16 v2, 0xc

    aget v2, v3, v2

    mul-float/2addr v2, v0

    add-float/2addr v4, v2

    aput v4, v1, v6

    .line 837
    invoke-direct {p0, v4, v8, v9}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->pin(FFF)F

    move-result v0

    aput v0, v1, v6

    return-void
.end method

.method private writeColorParams(Landroid/graphics/Canvas;)V
    .locals 10

    .line 405
    iget-boolean v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHSVenabled:Z

    const-string v1, "V: "

    const/4 v2, 0x2

    const/high16 v3, 0x437f0000    # 255.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "H: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    aget v6, v6, v5

    const/high16 v7, 0x43b40000    # 360.0f

    div-float/2addr v6, v7

    mul-float/2addr v6, v3

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->TEXT_HSV_POS:[I

    aget v7, v6, v5

    int-to-float v7, v7

    aget v6, v6, v4

    add-int/lit8 v6, v6, 0xc

    int-to-float v6, v6

    iget-object v8, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "S: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    aget v6, v6, v4

    mul-float/2addr v6, v3

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->TEXT_HSV_POS:[I

    aget v7, v6, v5

    int-to-float v7, v7

    aget v6, v6, v4

    add-int/lit8 v6, v6, 0x18

    int-to-float v6, v6

    iget-object v8, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    aget v6, v6, v2

    mul-float/2addr v6, v3

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->TEXT_HSV_POS:[I

    aget v7, v6, v5

    int-to-float v7, v7

    aget v6, v6, v4

    add-int/lit8 v6, v6, 0x24

    int-to-float v6, v6

    iget-object v8, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 411
    :cond_0
    iget-boolean v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mRGBenabled:Z

    if-eqz v0, :cond_1

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "R: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mRGB:[I

    aget v6, v6, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->TEXT_RGB_POS:[I

    aget v7, v6, v5

    int-to-float v7, v7

    aget v6, v6, v4

    add-int/lit8 v6, v6, 0xc

    int-to-float v6, v6

    iget-object v8, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "G: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mRGB:[I

    aget v6, v6, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->TEXT_RGB_POS:[I

    aget v7, v6, v5

    int-to-float v7, v7

    aget v6, v6, v4

    add-int/lit8 v6, v6, 0x18

    int-to-float v6, v6

    iget-object v8, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "B: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mRGB:[I

    aget v6, v6, v2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->TEXT_RGB_POS:[I

    aget v7, v6, v5

    int-to-float v7, v7

    aget v6, v6, v4

    add-int/lit8 v6, v6, 0x24

    int-to-float v6, v6

    iget-object v8, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 417
    :cond_1
    iget-boolean v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mYUVenabled:Z

    if-eqz v0, :cond_2

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Y: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mYUV:[F

    aget v6, v6, v5

    mul-float/2addr v6, v3

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->TEXT_YUV_POS:[I

    aget v7, v6, v5

    int-to-float v7, v7

    aget v6, v6, v4

    add-int/lit8 v6, v6, 0xc

    int-to-float v6, v6

    iget-object v8, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "U: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mYUV:[F

    aget v6, v6, v4

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    mul-float/2addr v6, v3

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->TEXT_YUV_POS:[I

    aget v8, v6, v5

    int-to-float v8, v8

    aget v6, v6, v4

    add-int/lit8 v6, v6, 0x18

    int-to-float v6, v6

    iget-object v9, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v6, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mYUV:[F

    aget v1, v1, v2

    add-float/2addr v1, v7

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->TEXT_YUV_POS:[I

    aget v2, v1, v5

    int-to-float v2, v2

    aget v1, v1, v4

    add-int/lit8 v1, v1, 0x24

    int-to-float v1, v1

    iget-object v3, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 423
    :cond_2
    iget-boolean v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHexenabled:Z

    if-eqz v0, :cond_3

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHexStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->TEXT_HEX_POS:[I

    aget v2, v1, v5

    int-to-float v2, v2

    aget v1, v1, v4

    add-int/lit8 v1, v1, 0xc

    int-to-float v1, v1

    iget-object v3, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 686
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 687
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 691
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 693
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    goto :goto_0

    .line 701
    :cond_0
    iget p1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mMethod:I

    if-eqz p1, :cond_1

    goto :goto_0

    .line 703
    :cond_1
    iget p1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mFocusedControl:I

    if-nez p1, :cond_2

    .line 704
    invoke-direct {p0, v0, v1, v2}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->changeHSPalette(FFI)V

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_4

    const/4 v0, 0x0

    cmpg-float v4, v1, v0

    if-gez v4, :cond_3

    .line 708
    invoke-direct {p0, p1, v3, v2}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->changeSlider(IZI)V

    goto :goto_0

    :cond_3
    cmpl-float v0, v1, v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    .line 710
    invoke-direct {p0, p1, v0, v2}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->changeSlider(IZI)V

    :cond_4
    :goto_0
    return v3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 361
    invoke-direct {p0, p1}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->drawSwatches(Landroid/graphics/Canvas;)V

    .line 364
    invoke-direct {p0, p1}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->writeColorParams(Landroid/graphics/Canvas;)V

    .line 367
    iget v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mMethod:I

    if-nez v0, :cond_0

    .line 368
    invoke-direct {p0, p1}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->drawHSV1Palette(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 570
    sget p1, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->VIEW_DIM_X:I

    sget p2, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->VIEW_DIM_Y:I

    invoke-virtual {p0, p1, p2}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    .line 871
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 872
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 875
    sget v3, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_Y:I

    int-to-float v3, v3

    sub-float v3, v2, v3

    float-to-double v3, v3

    invoke-direct {v0, v3, v4}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->round(D)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    int-to-float v5, v4

    invoke-direct {v0, v3, v5}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->pin(FF)F

    move-result v3

    float-to-int v3, v3

    .line 878
    sget v5, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_X:I

    int-to-float v5, v5

    sub-float v5, v1, v5

    sget v6, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_CENTER_X:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 879
    sget v6, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_Y:I

    int-to-float v6, v6

    sub-float v6, v2, v6

    sget v7, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_CENTER_Y:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-double v7, v1

    .line 882
    invoke-direct {v0, v7, v8}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->round(D)I

    move-result v1

    float-to-double v9, v2

    invoke-direct {v0, v9, v10}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->round(D)I

    move-result v2

    iget-object v11, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mOldSwatchRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v11}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->ptInRect(IILandroid/graphics/Rect;)Z

    move-result v1

    .line 883
    invoke-direct {v0, v7, v8}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->round(D)I

    move-result v2

    invoke-direct {v0, v9, v10}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->round(D)I

    move-result v11

    iget-object v12, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mNewSwatchRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v11, v12}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->ptInRect(IILandroid/graphics/Rect;)Z

    move-result v2

    mul-float v11, v5, v5

    mul-float v12, v6, v6

    add-float/2addr v11, v12

    float-to-double v11, v11

    .line 886
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v11, v11

    .line 889
    sget v12, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    int-to-float v13, v12

    cmpg-float v13, v11, v13

    const/4 v15, 0x1

    if-gtz v13, :cond_0

    move v13, v15

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    int-to-float v14, v12

    cmpl-float v14, v11, v14

    if-lez v14, :cond_1

    int-to-float v11, v12

    .line 896
    :cond_1
    invoke-direct {v0, v7, v8}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->round(D)I

    move-result v7

    invoke-direct {v0, v9, v10}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->round(D)I

    move-result v8

    iget-object v9, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mVerSliderRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7, v8, v9}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->ptInRect(IILandroid/graphics/Rect;)Z

    move-result v7

    .line 898
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/16 v9, 0xb

    const/16 v14, 0xa

    const/4 v10, 0x2

    if-eqz v8, :cond_6

    if-eq v8, v15, :cond_3

    if-eq v8, v10, :cond_2

    goto/16 :goto_4

    :cond_2
    :goto_1
    const/16 v1, 0x1e

    goto :goto_3

    .line 964
    :cond_3
    iget v3, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mTracking:I

    if-ne v3, v14, :cond_4

    if-eqz v1, :cond_4

    .line 965
    iget v1, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mOriginalColor:I

    iget-object v2, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    invoke-static {v1, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 966
    iget-object v1, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mSwatchNew:Landroid/graphics/Paint;

    iget v2, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mOriginalColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 967
    invoke-direct/range {p0 .. p0}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->initUI()V

    .line 968
    invoke-virtual/range {p0 .. p0}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->invalidate()V

    goto :goto_2

    :cond_4
    if-ne v3, v9, :cond_5

    if-eqz v2, :cond_5

    .line 971
    iget-object v1, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mListener:Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$OnColorChangedListener;

    iget-object v2, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mSwatchNew:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$OnColorChangedListener;->colorChanged(I)V

    .line 972
    invoke-virtual/range {p0 .. p0}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->invalidate()V

    :cond_5
    :goto_2
    const/4 v8, -0x1

    .line 975
    iput v8, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mTracking:I

    goto/16 :goto_4

    :cond_6
    const/4 v8, -0x1

    .line 900
    iput v8, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mTracking:I

    if-eqz v1, :cond_7

    .line 903
    iput v14, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mTracking:I

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_8

    .line 905
    iput v9, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mTracking:I

    goto :goto_1

    .line 909
    :cond_8
    iget v1, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mMethod:I

    if-nez v1, :cond_2

    if-eqz v13, :cond_9

    const/16 v1, 0x1e

    .line 911
    iput v1, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mTracking:I

    const/4 v2, 0x0

    .line 912
    iput v2, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mFocusedControl:I

    goto :goto_3

    :cond_9
    const/16 v1, 0x1e

    if-eqz v7, :cond_a

    const/16 v2, 0x1f

    .line 915
    iput v2, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mTracking:I

    .line 916
    iput v15, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mFocusedControl:I

    .line 923
    :cond_a
    :goto_3
    iget v2, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mTracking:I

    const/high16 v7, 0x3f800000    # 1.0f

    if-ne v2, v1, :cond_c

    float-to-double v1, v6

    float-to-double v3, v5

    .line 924
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x40c90fdb

    div-float v2, v1, v2

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_b

    add-float/2addr v2, v7

    .line 931
    :cond_b
    iget-object v3, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    float-to-double v8, v11

    mul-double/2addr v6, v8

    invoke-direct {v0, v6, v7}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->round(D)I

    move-result v1

    const/4 v6, 0x0

    aput v1, v3, v6

    .line 932
    iget-object v1, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v3, v8

    invoke-direct {v0, v3, v4}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->round(D)I

    move-result v3

    aput v3, v1, v15

    .line 934
    iget-object v1, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mSpectrumColorsRev:[I

    invoke-direct {v0, v1, v2}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->interpColor([IF)I

    move-result v1

    const/4 v2, 0x3

    .line 935
    new-array v2, v2, [F

    .line 936
    invoke-static {v1, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 937
    iget-object v1, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    aput v2, v1, v3

    int-to-float v2, v12

    div-float/2addr v11, v2

    .line 938
    aput v11, v1, v15

    .line 939
    invoke-direct/range {p0 .. p0}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->updateAllFromHSV()V

    .line 940
    iget-object v1, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mSwatchNew:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 942
    invoke-direct/range {p0 .. p0}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->setVerValSlider()V

    .line 944
    invoke-virtual/range {p0 .. p0}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->invalidate()V

    goto :goto_4

    :cond_c
    const/16 v1, 0x1f

    if-ne v2, v1, :cond_d

    .line 947
    iget-object v1, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    aget v2, v1, v10

    if-eq v2, v3, :cond_d

    .line 948
    aput v3, v1, v10

    int-to-float v1, v3

    int-to-float v2, v4

    div-float/2addr v1, v2

    sub-float/2addr v7, v1

    .line 951
    iget-object v1, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    aput v7, v1, v10

    .line 952
    invoke-direct/range {p0 .. p0}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->updateAllFromHSV()V

    .line 953
    iget-object v1, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mSwatchNew:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 955
    invoke-direct/range {p0 .. p0}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->setOvalValDimmer()V

    .line 957
    invoke-virtual/range {p0 .. p0}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;->invalidate()V

    :cond_d
    :goto_4
    return v15
.end method

.method public ptInRect(IILandroid/graphics/Rect;)Z
    .locals 1

    .line 678
    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-le p1, v0, :cond_0

    iget v0, p3, Landroid/graphics/Rect;->right:I

    if-ge p1, v0, :cond_0

    iget p1, p3, Landroid/graphics/Rect;->top:I

    if-le p2, p1, :cond_0

    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
