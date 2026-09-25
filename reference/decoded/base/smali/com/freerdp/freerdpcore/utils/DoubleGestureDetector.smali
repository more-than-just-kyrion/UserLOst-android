.class public Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;
.super Ljava/lang/Object;
.source "DoubleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$OnDoubleGestureListener;,
        Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$GestureHandler;
    }
.end annotation


# static fields
.field private static final DOUBLE_TOUCH_TIMEOUT:J = 0x64L

.field private static final MODE_PINCH_ZOOM:I = 0x1

.field private static final MODE_SCROLL:I = 0x2

.field private static final MODE_UNKNOWN:I = 0x0

.field private static final SCROLL_SCORE_TO_REACH:I = 0x14

.field private static final SINGLE_DOUBLE_TOUCH_TIMEOUT:J = 0x3e8L

.field private static final TAP:I = 0x1


# instance fields
.field private mCancelDetection:Z

.field private mCurrentDoubleDownEvent:Landroid/view/MotionEvent;

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mCurrentMode:I

.field private mDoubleInProgress:Z

.field private mHandler:Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$GestureHandler;

.field private final mListener:Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$OnDoubleGestureListener;

.field private mPointerDistanceSquare:I

.field private mPreviousPointerUpEvent:Landroid/view/MotionEvent;

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mScrollDetectionScore:I

.field private scaleGestureDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$OnDoubleGestureListener;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p3, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mListener:Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$OnDoubleGestureListener;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->init(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method private cancel()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mHandler:Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$GestureHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$GestureHandler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 245
    iput v0, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mCurrentMode:I

    .line 246
    iput-boolean v1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mCancelDetection:Z

    .line 247
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mDoubleInProgress:Z

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mListener:Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$OnDoubleGestureListener;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 70
    new-instance v0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$GestureHandler;

    invoke-direct {v0, p0, p2}, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$GestureHandler;-><init>(Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mHandler:Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$GestureHandler;

    goto :goto_0

    .line 72
    :cond_0
    new-instance p2, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$GestureHandler;

    invoke-direct {p2, p0}, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$GestureHandler;-><init>(Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;)V

    iput-object p2, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mHandler:Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$GestureHandler;

    .line 78
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->xdpi:F

    const v0, 0x3e499326

    mul-float/2addr p2, v0

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    mul-float/2addr p1, v0

    mul-float/2addr p2, p2

    mul-float/2addr p1, p1

    add-float/2addr p2, p1

    float-to-int p1, p2

    .line 81
    iput p1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mPointerDistanceSquare:I

    return-void

    .line 66
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "OnGestureListener must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private pointerDistanceChanged(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    .line 253
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 254
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v3, v1

    mul-int/2addr v3, v3

    .line 257
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 258
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    float-to-int p2, p2

    sub-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    sub-int/2addr p2, p1

    mul-int/2addr p2, p2

    add-int/2addr v3, p2

    .line 261
    iget p1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mPointerDistanceSquare:I

    if-le v3, p1, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_14

    const-wide/16 v5, 0x64

    if-eq v1, v3, :cond_e

    if-eq v1, v2, :cond_8

    const/4 v7, 0x3

    if-eq v1, v7, :cond_7

    const/4 v7, 0x5

    if-eq v1, v7, :cond_2

    const/4 v5, 0x6

    if-eq v1, v5, :cond_0

    goto/16 :goto_3

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mPreviousPointerUpEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 125
    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mPreviousPointerUpEvent:Landroid/view/MotionEvent;

    goto/16 :goto_3

    .line 131
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v2, :cond_6

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    cmp-long v1, v7, v5

    if-lez v1, :cond_3

    goto :goto_0

    .line 139
    :cond_3
    iget-boolean v1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mCancelDetection:Z

    if-eqz v1, :cond_4

    goto/16 :goto_3

    .line 143
    :cond_4
    iput-boolean v3, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mDoubleInProgress:Z

    .line 144
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mCurrentDoubleDownEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_5

    .line 145
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 146
    :cond_5
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mCurrentDoubleDownEvent:Landroid/view/MotionEvent;

    .line 149
    iput v4, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mCurrentMode:I

    .line 150
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mHandler:Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$GestureHandler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v3, v4, v5}, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$GestureHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 152
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mListener:Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$OnDoubleGestureListener;

    invoke-interface {v1, p1}, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$OnDoubleGestureListener;->onDoubleTouchDown(Landroid/view/MotionEvent;)Z

    move-result v4

    goto/16 :goto_3

    .line 134
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->cancel()V

    goto/16 :goto_3

    .line 232
    :cond_7
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->cancel()V

    goto/16 :goto_3

    .line 158
    :cond_8
    iget-boolean v1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mCancelDetection:Z

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mDoubleInProgress:Z

    if-eqz v1, :cond_16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-eq v1, v2, :cond_9

    goto/16 :goto_3

    .line 162
    :cond_9
    iget v1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mCurrentMode:I

    if-nez v1, :cond_b

    .line 165
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mCurrentDoubleDownEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v1, p1}, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->pointerDistanceChanged(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 167
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    iget-object v4, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1, v4}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 168
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 169
    iget-object v4, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mCurrentDoubleDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 170
    iget-object v4, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int v4, v1, p1

    .line 171
    iput v3, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mCurrentMode:I

    goto/16 :goto_3

    .line 176
    :cond_a
    iget v1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mScrollDetectionScore:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mScrollDetectionScore:I

    const/16 v5, 0x14

    if-lt v1, v5, :cond_b

    .line 178
    iput v2, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mCurrentMode:I

    .line 182
    :cond_b
    iget v1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mCurrentMode:I

    if-eq v1, v3, :cond_d

    if-eq v1, v2, :cond_c

    goto/16 :goto_2

    .line 190
    :cond_c
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mListener:Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$OnDoubleGestureListener;

    iget-object v4, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v1, v4, p1}, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$OnDoubleGestureListener;->onDoubleTouchScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v4

    goto/16 :goto_3

    .line 185
    :cond_d
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v1, :cond_16

    .line 186
    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto/16 :goto_3

    .line 202
    :cond_e
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mPreviousPointerUpEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_f

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mPreviousPointerUpEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    cmp-long v1, v7, v5

    if-lez v1, :cond_f

    .line 206
    iget-object p1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mPreviousPointerUpEvent:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    const/4 p1, 0x0

    .line 207
    iput-object p1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mPreviousPointerUpEvent:Landroid/view/MotionEvent;

    .line 208
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->cancel()V

    goto :goto_3

    .line 213
    :cond_f
    iget-boolean v1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mCancelDetection:Z

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mDoubleInProgress:Z

    if-nez v1, :cond_10

    goto :goto_3

    .line 216
    :cond_10
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mHandler:Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$GestureHandler;

    invoke-virtual {v1, v3}, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$GestureHandler;->hasMessages(I)Z

    move-result v1

    .line 217
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    .line 218
    iget v6, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mCurrentMode:I

    if-nez v6, :cond_11

    if-eqz v1, :cond_11

    .line 219
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mListener:Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$OnDoubleGestureListener;

    iget-object v4, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mCurrentDoubleDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v1, v4}, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$OnDoubleGestureListener;->onDoubleTouchSingleTap(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_1

    :cond_11
    if-ne v6, v3, :cond_12

    .line 221
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 223
    :cond_12
    :goto_1
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_13

    .line 224
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 227
    :cond_13
    iput-object v5, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 228
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mListener:Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$OnDoubleGestureListener;

    invoke-interface {v1, p1}, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$OnDoubleGestureListener;->onDoubleTouchUp(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr v4, p1

    goto :goto_3

    .line 111
    :cond_14
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_15

    .line 112
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 114
    :cond_15
    iput v4, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mCurrentMode:I

    .line 115
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 116
    iput-boolean v4, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mCancelDetection:Z

    .line 117
    iput-boolean v4, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mDoubleInProgress:Z

    .line 118
    iput v4, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->mScrollDetectionScore:I

    :goto_2
    move v4, v3

    :cond_16
    :goto_3
    if-ne v0, v2, :cond_17

    if-nez v4, :cond_17

    goto :goto_4

    :cond_17
    move v3, v4

    :goto_4
    return v3
.end method

.method public setScaleGestureDetector(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method
