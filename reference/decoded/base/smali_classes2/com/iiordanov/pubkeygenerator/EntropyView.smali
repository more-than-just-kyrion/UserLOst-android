.class public Lcom/iiordanov/pubkeygenerator/EntropyView;
.super Landroid/view/View;
.source "EntropyView.java"


# static fields
.field private static final MILLIS_BETWEEN_INPUTS:I = 0x5

.field private static final SHA1_MAX_BYTES:I = 0x14


# instance fields
.field private lastX:F

.field private lastY:F

.field private listeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/iiordanov/pubkeygenerator/OnEntropyGatheredListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEntropy:[B

.field private mEntropyBitIndex:I

.field private mEntropyByteIndex:I

.field private mFlipFlop:Z

.field private mFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private mLastTime:J

.field private mPaint:Landroid/graphics/Paint;

.field private splitText:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->splitText:I

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->lastX:F

    iput p1, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->lastY:F

    .line 55
    invoke-direct {p0}, Lcom/iiordanov/pubkeygenerator/EntropyView;->setUpEntropy()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->splitText:I

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->lastX:F

    iput p1, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->lastY:F

    .line 61
    invoke-direct {p0}, Lcom/iiordanov/pubkeygenerator/EntropyView;->setUpEntropy()V

    return-void
.end method

.method private setUpEntropy()V
    .locals 2

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 66
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 68
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 69
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 70
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    const/16 v0, 0x14

    .line 73
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mEntropy:[B

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mEntropyByteIndex:I

    .line 75
    iput v0, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mEntropyBitIndex:I

    .line 77
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->listeners:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addOnEntropyGatheredListener(Lcom/iiordanov/pubkeygenerator/OnEntropyGatheredListener;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 90
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/EntropyView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/iiordanov/pubkeygenerator/R$string;->touch_prompt:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mEntropyByteIndex:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iget v2, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mEntropyBitIndex:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 92
    iget v1, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->splitText:I

    const/high16 v2, 0x40000000    # 2.0f

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mPaint:Landroid/graphics/Paint;

    .line 93
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v3, v1

    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/EntropyView;->getWidth()I

    move-result v1

    int-to-double v5, v1

    const-wide v7, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v5, v7

    cmpl-double v1, v3, v5

    if-lez v1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/EntropyView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 108
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/EntropyView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget-object v4, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget-object v5, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v4, v5

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    iget-object v2, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mPaint:Landroid/graphics/Paint;

    .line 106
    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 94
    :cond_1
    :goto_0
    iget v1, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->splitText:I

    if-nez v1, :cond_2

    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const-string v3, " "

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->splitText:I

    :cond_2
    const/4 v1, 0x0

    .line 97
    iget v3, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->splitText:I

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/EntropyView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 99
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/EntropyView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget-object v5, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    iget-object v6, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v6

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mPaint:Landroid/graphics/Paint;

    .line 97
    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 101
    iget v1, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->splitText:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/EntropyView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 103
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/EntropyView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    iget-object v4, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    add-float/2addr v2, v4

    sub-float/2addr v3, v2

    iget-object v2, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mPaint:Landroid/graphics/Paint;

    .line 101
    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 115
    iget v0, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mEntropyByteIndex:I

    const/4 v1, 0x1

    const/16 v2, 0x14

    if-ge v0, v2, :cond_8

    iget v0, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->lastX:F

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->lastY:F

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 121
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 122
    iget-wide v5, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mLastTime:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x5

    cmp-long v0, v5, v7

    if-gez v0, :cond_1

    return v1

    .line 125
    :cond_1
    iput-wide v3, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mLastTime:J

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->lastX:F

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->lastY:F

    .line 134
    iget-boolean v0, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mFlipFlop:Z

    const/4 v3, 0x4

    if-eqz v0, :cond_2

    .line 135
    iget v4, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->lastX:F

    float-to-int v4, v4

    and-int/lit8 v4, v4, 0xf

    shl-int/2addr v4, v3

    float-to-int p1, p1

    and-int/lit8 p1, p1, 0xf

    or-int/2addr p1, v4

    goto :goto_0

    :cond_2
    float-to-int p1, p1

    and-int/lit8 p1, p1, 0xf

    shl-int/2addr p1, v3

    .line 137
    iget v4, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->lastX:F

    float-to-int v4, v4

    and-int/lit8 v4, v4, 0xf

    or-int/2addr p1, v4

    :goto_0
    int-to-byte p1, p1

    xor-int/2addr v0, v1

    .line 138
    iput-boolean v0, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mFlipFlop:Z

    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_6

    .line 140
    iget v5, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mEntropyByteIndex:I

    if-ge v5, v2, :cond_6

    and-int/lit8 v6, p1, 0x3

    if-ne v6, v1, :cond_3

    .line 142
    iget-object v6, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mEntropy:[B

    aget-byte v7, v6, v5

    shl-int/2addr v7, v1

    int-to-byte v7, v7

    aput-byte v7, v6, v5

    or-int/2addr v7, v1

    int-to-byte v7, v7

    .line 143
    aput-byte v7, v6, v5

    .line 144
    iget v6, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mEntropyBitIndex:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mEntropyBitIndex:I

    :goto_2
    shr-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    goto :goto_3

    :cond_3
    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 147
    iget-object v6, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mEntropy:[B

    aget-byte v7, v6, v5

    shl-int/2addr v7, v1

    int-to-byte v7, v7

    aput-byte v7, v6, v5

    .line 148
    iget v6, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mEntropyBitIndex:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mEntropyBitIndex:I

    goto :goto_2

    .line 152
    :cond_4
    :goto_3
    iget v6, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mEntropyBitIndex:I

    const/16 v7, 0x8

    if-lt v6, v7, :cond_5

    .line 153
    iput v0, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mEntropyBitIndex:I

    add-int/lit8 v5, v5, 0x1

    .line 154
    iput v5, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mEntropyByteIndex:I

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 159
    :cond_6
    iget p1, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mEntropyByteIndex:I

    if-lt p1, v2, :cond_7

    .line 160
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->listeners:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iiordanov/pubkeygenerator/OnEntropyGatheredListener;

    .line 161
    iget-object v2, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->mEntropy:[B

    invoke-interface {v0, v2}, Lcom/iiordanov/pubkeygenerator/OnEntropyGatheredListener;->onEntropyGathered([B)V

    goto :goto_4

    .line 165
    :cond_7
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/EntropyView;->invalidate()V

    :cond_8
    :goto_5
    return v1
.end method

.method public removeOnEntropyGatheredListener(Lcom/iiordanov/pubkeygenerator/OnEntropyGatheredListener;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/EntropyView;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    return-void
.end method
