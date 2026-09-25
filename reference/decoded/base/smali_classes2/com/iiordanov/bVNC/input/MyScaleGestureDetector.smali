.class public Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;
.super Landroid/view/ScaleGestureDetector;
.source "MyScaleGestureDetector.java"


# static fields
.field private static final ANCHORED_SCALE_MODE_DOUBLE_TAP:I = 0x1

.field private static final ANCHORED_SCALE_MODE_NONE:I = 0x0

.field private static final ANCHORED_SCALE_MODE_STYLUS:I = 0x2

.field private static final SCALE_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "MyScaleGestureDetector"

.field private static final TOUCH_STABILIZE_TIME:J = 0x80L


# instance fields
.field private mAnchoredScaleMode:I

.field private mAnchoredScaleStartX:F

.field private mAnchoredScaleStartY:F

.field private final mContext:Landroid/content/Context;

.field private mCurrSpan:F

.field private mCurrSpanX:F

.field private mCurrSpanY:F

.field private mCurrTime:J

.field private mEventBeforeOrAboveStartingGestureEvent:Z

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mInProgress:Z

.field private mInitialSpan:F

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mMinSpan:I

.field private mPrevSpan:F

.field private mPrevSpanX:F

.field private mPrevSpanY:F

.field private mPrevTime:J

.field private mQuickScaleEnabled:Z

.field private mSpanSlop:I

.field private mStylusScaleEnabled:Z


# direct methods
.method static bridge synthetic -$$Nest$fputmAnchoredScaleMode(Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;I)V
    .locals 0

    iput p1, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mAnchoredScaleMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAnchoredScaleStartX(Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;F)V
    .locals 0

    iput p1, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mAnchoredScaleStartX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAnchoredScaleStartY(Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;F)V
    .locals 0

    iput p1, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mAnchoredScaleStartY:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2, v0}, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V
    .locals 1

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mAnchoredScaleMode:I

    .line 98
    iput-object p1, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 100
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 101
    iput v0, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mSpanSlop:I

    .line 102
    iput v0, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mMinSpan:I

    .line 103
    iput-object p3, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mHandler:Landroid/os/Handler;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p2, 0x12

    const/4 p3, 0x1

    if-le p1, p2, :cond_0

    .line 107
    invoke-virtual {p0, p3}, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->setQuickScaleEnabled(Z)V

    :cond_0
    const/16 p2, 0x16

    if-le p1, p2, :cond_1

    .line 111
    invoke-virtual {p0, p3}, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->setStylusScaleEnabled(Z)V

    :cond_1
    return-void
.end method

.method private inAnchoredScaleMode()Z
    .locals 1

    .line 283
    iget v0, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mAnchoredScaleMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 1

    .line 379
    iget v0, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mCurrSpan:F

    return v0
.end method

.method public getCurrentSpanX()F
    .locals 1

    .line 389
    iget v0, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mCurrSpanX:F

    return v0
.end method

.method public getCurrentSpanY()F
    .locals 1

    .line 399
    iget v0, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mCurrSpanY:F

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .line 469
    iget-wide v0, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mCurrTime:J

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    .line 355
    iget v0, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .line 369
    iget v0, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 1

    .line 409
    iget v0, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mPrevSpan:F

    return v0
.end method

.method public getPreviousSpanX()F
    .locals 1

    .line 419
    iget v0, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mPrevSpanX:F

    return v0
.end method

.method public getPreviousSpanY()F
    .locals 1

    .line 429
    iget v0, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mPrevSpanY:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 5

    .line 440
    invoke-direct {p0}, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    .line 444
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mCurrSpan:F

    iget v3, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mPrevSpan:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget v0, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mCurrSpan:F

    iget v2, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mPrevSpan:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 447
    :goto_0
    iget v2, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mCurrSpan:F

    iget v3, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mPrevSpan:F

    div-float/2addr v2, v3

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    .line 448
    iget v3, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mPrevSpan:F

    iget v4, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mSpanSlop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    add-float/2addr v1, v2

    goto :goto_1

    :cond_4
    sub-float/2addr v1, v2

    :goto_1
    return v1

    .line 450
    :cond_5
    iget v0, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mPrevSpan:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6

    iget v1, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mCurrSpan:F

    div-float/2addr v1, v0

    :cond_6
    return v1
.end method

.method public getTimeDelta()J
    .locals 4

    .line 460
    iget-wide v0, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mCurrTime:J

    iget-wide v2, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mPrevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isInProgress()Z
    .locals 1

    .line 341
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mInProgress:Z

    return v0
.end method

.method public isQuickScaleEnabled()Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mQuickScaleEnabled:Z

    return v0
.end method

.method public isStylusScaleEnabled()Z
    .locals 1

    .line 334
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mStylusScaleEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mCurrTime:J

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 133
    iget-boolean v3, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz v3, :cond_0

    .line 134
    iget-object v3, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 137
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v6

    .line 141
    :goto_0
    iget v7, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mAnchoredScaleMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    if-nez v4, :cond_2

    move v7, v5

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    if-eq v2, v5, :cond_4

    const/4 v9, 0x3

    if-eq v2, v9, :cond_4

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    move v9, v6

    goto :goto_3

    :cond_4
    :goto_2
    move v9, v5

    :goto_3
    const/4 v10, 0x0

    if-eqz v2, :cond_5

    if-eqz v9, :cond_8

    .line 150
    :cond_5
    iget-boolean v11, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mInProgress:Z

    if-eqz v11, :cond_6

    .line 151
    iget-object v11, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v11, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 152
    iput-boolean v6, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mInProgress:Z

    .line 153
    iput v10, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mInitialSpan:F

    .line 154
    iput v6, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mAnchoredScaleMode:I

    goto :goto_4

    .line 155
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v11

    if-eqz v11, :cond_7

    if-eqz v9, :cond_7

    .line 156
    iput-boolean v6, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mInProgress:Z

    .line 157
    iput v10, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mInitialSpan:F

    .line 158
    iput v6, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mAnchoredScaleMode:I

    :cond_7
    :goto_4
    if-eqz v9, :cond_8

    return v5

    .line 166
    :cond_8
    iget-boolean v11, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mInProgress:Z

    if-nez v11, :cond_9

    iget-boolean v11, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mStylusScaleEnabled:Z

    if-eqz v11, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v11

    if-nez v11, :cond_9

    if-nez v9, :cond_9

    if-eqz v4, :cond_9

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mAnchoredScaleStartX:F

    .line 170
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mAnchoredScaleStartY:F

    .line 171
    iput v8, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mAnchoredScaleMode:I

    .line 172
    iput v10, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mInitialSpan:F

    :cond_9
    const/4 v4, 0x6

    if-eqz v2, :cond_b

    if-eq v2, v4, :cond_b

    const/4 v9, 0x5

    if-eq v2, v9, :cond_b

    if-eqz v7, :cond_a

    goto :goto_5

    :cond_a
    move v7, v6

    goto :goto_6

    :cond_b
    :goto_5
    move v7, v5

    :goto_6
    if-ne v2, v4, :cond_c

    move v4, v5

    goto :goto_7

    :cond_c
    move v4, v6

    :goto_7
    if-eqz v4, :cond_d

    .line 180
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    goto :goto_8

    :cond_d
    const/4 v9, -0x1

    :goto_8
    if-eqz v4, :cond_e

    add-int/lit8 v4, v3, -0x1

    goto :goto_9

    :cond_e
    move v4, v3

    .line 187
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 190
    iget v11, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mAnchoredScaleStartX:F

    .line 191
    iget v12, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mAnchoredScaleStartY:F

    .line 192
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    cmpg-float v13, v13, v12

    if-gez v13, :cond_f

    .line 193
    iput-boolean v5, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_c

    .line 195
    :cond_f
    iput-boolean v6, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_c

    :cond_10
    move v11, v6

    move v12, v10

    move v13, v12

    :goto_a
    if-ge v11, v3, :cond_12

    if-ne v9, v11, :cond_11

    goto :goto_b

    .line 200
    :cond_11
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    add-float/2addr v12, v14

    .line 201
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    add-float/2addr v13, v14

    :goto_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_12
    int-to-float v11, v4

    div-float/2addr v12, v11

    div-float v11, v13, v11

    move/from16 v16, v12

    move v12, v11

    move/from16 v11, v16

    :goto_c
    move v14, v6

    move v13, v10

    :goto_d
    if-ge v14, v3, :cond_14

    if-ne v9, v14, :cond_13

    goto :goto_e

    .line 214
    :cond_13
    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    sub-float/2addr v15, v11

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    add-float/2addr v10, v15

    .line 215
    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    sub-float/2addr v15, v12

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    add-float/2addr v13, v15

    :goto_e
    add-int/lit8 v14, v14, 0x1

    goto :goto_d

    :cond_14
    int-to-float v1, v4

    div-float/2addr v10, v1

    div-float/2addr v13, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v10, v1

    mul-float/2addr v13, v1

    .line 226
    invoke-direct/range {p0 .. p0}, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v1

    if-eqz v1, :cond_15

    move v1, v13

    goto :goto_f

    :cond_15
    float-to-double v3, v10

    float-to-double v14, v13

    .line 229
    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v1, v3

    .line 235
    :goto_f
    iget-boolean v3, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mInProgress:Z

    .line 236
    iput v11, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mFocusX:F

    .line 237
    iput v12, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mFocusY:F

    .line 238
    invoke-direct/range {p0 .. p0}, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v4

    if-nez v4, :cond_17

    iget-boolean v4, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mInProgress:Z

    if-eqz v4, :cond_17

    iget v4, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mMinSpan:I

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-ltz v4, :cond_16

    if-eqz v7, :cond_17

    .line 239
    :cond_16
    iget-object v4, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v4, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 240
    iput-boolean v6, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mInProgress:Z

    .line 241
    iput v1, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mInitialSpan:F

    :cond_17
    if-eqz v7, :cond_18

    .line 244
    iput v10, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mCurrSpanX:F

    iput v10, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mPrevSpanX:F

    .line 245
    iput v13, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mCurrSpanY:F

    iput v13, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mPrevSpanY:F

    .line 246
    iput v1, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mCurrSpan:F

    iput v1, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mPrevSpan:F

    iput v1, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mInitialSpan:F

    .line 249
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v4

    if-eqz v4, :cond_19

    iget v4, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mSpanSlop:I

    goto :goto_10

    :cond_19
    iget v4, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mMinSpan:I

    .line 250
    :goto_10
    iget-boolean v6, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mInProgress:Z

    if-nez v6, :cond_1b

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1b

    if-nez v3, :cond_1a

    iget v3, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mInitialSpan:F

    sub-float v3, v1, v3

    .line 251
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mSpanSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1b

    .line 252
    :cond_1a
    iput v10, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mCurrSpanX:F

    iput v10, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mPrevSpanX:F

    .line 253
    iput v13, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mCurrSpanY:F

    iput v13, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mPrevSpanY:F

    .line 254
    iput v1, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mCurrSpan:F

    iput v1, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mPrevSpan:F

    .line 255
    iget-wide v3, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mCurrTime:J

    iput-wide v3, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mPrevTime:J

    .line 256
    iget-object v3, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v3, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mInProgress:Z

    :cond_1b
    if-ne v2, v8, :cond_1d

    .line 261
    iput v10, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mCurrSpanX:F

    .line 262
    iput v13, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mCurrSpanY:F

    .line 263
    iput v1, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mCurrSpan:F

    .line 267
    iget-boolean v1, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mInProgress:Z

    if-eqz v1, :cond_1c

    .line 268
    iget-object v1, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v1

    goto :goto_11

    :cond_1c
    move v1, v5

    :goto_11
    if-eqz v1, :cond_1d

    .line 272
    iget v1, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mCurrSpanX:F

    iput v1, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mPrevSpanX:F

    .line 273
    iget v1, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mCurrSpanY:F

    iput v1, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mPrevSpanY:F

    .line 274
    iget v1, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mCurrSpan:F

    iput v1, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mPrevSpan:F

    .line 275
    iget-wide v1, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mCurrTime:J

    iput-wide v1, v0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mPrevTime:J

    :cond_1d
    return v5
.end method

.method public setQuickScaleEnabled(Z)V
    .locals 3

    .line 293
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz p1, :cond_0

    .line 294
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez p1, :cond_0

    .line 295
    new-instance p1, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector$1;

    invoke-direct {p1, p0}, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector$1;-><init>(Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;)V

    .line 306
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    :cond_0
    return-void
.end method

.method public setStylusScaleEnabled(Z)V
    .locals 0

    .line 326
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->mStylusScaleEnabled:Z

    return-void
.end method
