.class public Lcom/freerdp/freerdpcore/utils/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freerdp/freerdpcore/utils/GestureDetector$OnDoubleTapListener;,
        Lcom/freerdp/freerdpcore/utils/GestureDetector$OnGestureListener;,
        Lcom/freerdp/freerdpcore/utils/GestureDetector$GestureHandler;,
        Lcom/freerdp/freerdpcore/utils/GestureDetector$SimpleOnGestureListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_SLOP:I = 0x64

.field private static final DOUBLE_TAP_TIMEOUT:I = 0xc8

.field private static final LARGE_TOUCH_SLOP:I = 0x12

.field private static final LONG_PRESS:I = 0x2

.field private static final SHOW_PRESS:I = 0x1

.field private static final TAP:I = 0x3

.field private static final TAP_TIMEOUT:I = 0x64


# instance fields
.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDoubleTapListener:Lcom/freerdp/freerdpcore/utils/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreMultitouch:Z

.field private mInLongPress:Z

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLargeTouchSlopSquare:I

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private final mListener:Lcom/freerdp/freerdpcore/utils/GestureDetector$OnGestureListener;

.field private mLongpressTimeout:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mStillDown:Z

.field private mTouchSlopSquare:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/freerdp/freerdpcore/utils/GestureDetector$OnGestureListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2, v0}, Lcom/freerdp/freerdpcore/utils/GestureDetector;-><init>(Landroid/content/Context;Lcom/freerdp/freerdpcore/utils/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/freerdp/freerdpcore/utils/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 98
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/freerdp/freerdpcore/utils/GestureDetector;-><init>(Landroid/content/Context;Lcom/freerdp/freerdpcore/utils/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/freerdp/freerdpcore/utils/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V
    .locals 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 48
    iput v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mLongpressTimeout:I

    if-eqz p3, :cond_0

    .line 121
    new-instance v0, Lcom/freerdp/freerdpcore/utils/GestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Lcom/freerdp/freerdpcore/utils/GestureDetector$GestureHandler;-><init>(Lcom/freerdp/freerdpcore/utils/GestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 125
    :cond_0
    new-instance p3, Lcom/freerdp/freerdpcore/utils/GestureDetector$GestureHandler;

    invoke-direct {p3, p0}, Lcom/freerdp/freerdpcore/utils/GestureDetector$GestureHandler;-><init>(Lcom/freerdp/freerdpcore/utils/GestureDetector;)V

    iput-object p3, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 127
    :goto_0
    iput-object p2, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mListener:Lcom/freerdp/freerdpcore/utils/GestureDetector$OnGestureListener;

    .line 128
    instance-of p3, p2, Lcom/freerdp/freerdpcore/utils/GestureDetector$OnDoubleTapListener;

    if-eqz p3, :cond_1

    .line 130
    check-cast p2, Lcom/freerdp/freerdpcore/utils/GestureDetector$OnDoubleTapListener;

    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/utils/GestureDetector;->setOnDoubleTapListener(Lcom/freerdp/freerdpcore/utils/GestureDetector$OnDoubleTapListener;)V

    .line 132
    :cond_1
    invoke-direct {p0, p1, p4}, Lcom/freerdp/freerdpcore/utils/GestureDetector;->init(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/freerdp/freerdpcore/utils/GestureDetector;)Landroid/view/MotionEvent;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freerdp/freerdpcore/utils/GestureDetector;)Lcom/freerdp/freerdpcore/utils/GestureDetector$OnGestureListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mListener:Lcom/freerdp/freerdpcore/utils/GestureDetector$OnGestureListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freerdp/freerdpcore/utils/GestureDetector;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/utils/GestureDetector;->dispatchLongPress()V

    return-void
.end method

.method static synthetic access$300(Lcom/freerdp/freerdpcore/utils/GestureDetector;)Lcom/freerdp/freerdpcore/utils/GestureDetector$OnDoubleTapListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mDoubleTapListener:Lcom/freerdp/freerdpcore/utils/GestureDetector$OnDoubleTapListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freerdp/freerdpcore/utils/GestureDetector;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mStillDown:Z

    return p0
.end method

.method private cancel()V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 376
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 377
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 378
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mAlwaysInTapRegion:Z

    .line 380
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mIsDoubleTapping:Z

    .line 381
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mStillDown:Z

    .line 382
    iget-boolean v1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mInLongPress:Z

    if-eqz v1, :cond_0

    .line 384
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mInLongPress:Z

    :cond_0
    return-void
.end method

.method private dispatchLongPress()V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    .line 409
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mInLongPress:Z

    .line 410
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mListener:Lcom/freerdp/freerdpcore/utils/GestureDetector$OnGestureListener;

    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/freerdp/freerdpcore/utils/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private init(Landroid/content/Context;Z)V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mListener:Lcom/freerdp/freerdpcore/utils/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mIsLongpressEnabled:Z

    .line 142
    iput-boolean p2, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mIgnoreMultitouch:Z

    if-nez p1, :cond_0

    .line 149
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result p1

    add-int/lit8 p2, p1, 0x2

    const/16 v0, 0x64

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 156
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 157
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    const/high16 v1, 0x41900000    # 18.0f

    mul-float/2addr p2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p2, v1

    float-to-int p2, p2

    .line 160
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result p1

    move v2, v0

    move v0, p1

    move p1, v2

    :goto_0
    mul-int/2addr p1, p1

    .line 162
    iput p1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mTouchSlopSquare:I

    mul-int/2addr p2, p2

    .line 163
    iput p2, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mLargeTouchSlopSquare:I

    mul-int/2addr v0, v0

    .line 164
    iput v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mDoubleTapSlopSquare:I

    return-void

    .line 139
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "OnGestureListener must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 391
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 396
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long p2, v2, v4

    if-lez p2, :cond_1

    return v1

    .line 401
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    sub-int/2addr p2, v0

    .line 402
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    float-to-int p3, p3

    sub-int/2addr p1, p3

    mul-int/2addr p2, p2

    mul-int/2addr p1, p1

    add-int/2addr p2, p1

    .line 403
    iget p1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mDoubleTapSlopSquare:I

    if-ge p2, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public isLongpressEnabled()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mIsLongpressEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    and-int/lit16 v3, v0, 0xff

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_10

    if-eq v3, v6, :cond_b

    if-eq v3, v5, :cond_4

    if-eq v3, v4, :cond_3

    const/4 v1, 0x5

    if-eq v3, v1, :cond_2

    const/4 v1, 0x6

    if-eq v3, v1, :cond_0

    goto/16 :goto_4

    .line 234
    :cond_0
    iget-boolean v1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mIgnoreMultitouch:Z

    if-eqz v1, :cond_16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v5, :cond_16

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v6, v7

    .line 240
    :goto_0
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mLastMotionX:F

    .line 241
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mLastMotionY:F

    goto/16 :goto_4

    .line 225
    :cond_2
    iget-boolean p1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mIgnoreMultitouch:Z

    if-eqz p1, :cond_16

    .line 228
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/utils/GestureDetector;->cancel()V

    goto/16 :goto_4

    .line 367
    :cond_3
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/utils/GestureDetector;->cancel()V

    goto/16 :goto_4

    .line 294
    :cond_4
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mIgnoreMultitouch:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v6, :cond_5

    goto/16 :goto_4

    .line 298
    :cond_5
    iget v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mLastMotionX:F

    sub-float/2addr v0, v2

    .line 299
    iget v3, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mLastMotionY:F

    sub-float/2addr v3, v1

    .line 300
    iget-boolean v8, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mIsDoubleTapping:Z

    if-eqz v8, :cond_6

    .line 303
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mDoubleTapListener:Lcom/freerdp/freerdpcore/utils/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Lcom/freerdp/freerdpcore/utils/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto/16 :goto_4

    .line 305
    :cond_6
    iget-boolean v8, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v8, :cond_9

    .line 307
    iget-object v8, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float v8, v2, v8

    float-to-int v8, v8

    .line 308
    iget-object v9, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    sub-float v9, v1, v9

    float-to-int v9, v9

    mul-int/2addr v8, v8

    mul-int/2addr v9, v9

    add-int/2addr v8, v9

    .line 310
    iget v9, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mTouchSlopSquare:I

    if-le v8, v9, :cond_7

    .line 312
    iput v2, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mLastMotionX:F

    .line 313
    iput v1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mLastMotionY:F

    .line 314
    iput-boolean v7, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mAlwaysInTapRegion:Z

    .line 315
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 316
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 317
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 319
    :cond_7
    iget v1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mLargeTouchSlopSquare:I

    if-le v8, v1, :cond_8

    .line 321
    iput-boolean v7, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 323
    :cond_8
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mListener:Lcom/freerdp/freerdpcore/utils/GestureDetector$OnGestureListener;

    iget-object v2, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v1, v2, p1, v0, v3}, Lcom/freerdp/freerdpcore/utils/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v7

    goto/16 :goto_4

    .line 325
    :cond_9
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-gez v4, :cond_a

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_16

    .line 327
    :cond_a
    iget-object v4, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mListener:Lcom/freerdp/freerdpcore/utils/GestureDetector$OnGestureListener;

    iget-object v5, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v4, v5, p1, v0, v3}, Lcom/freerdp/freerdpcore/utils/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v7

    .line 328
    iput v2, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mLastMotionX:F

    .line 329
    iput v1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mLastMotionY:F

    goto/16 :goto_4

    .line 334
    :cond_b
    iput-boolean v7, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mStillDown:Z

    .line 335
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 336
    iget-boolean v1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mIsDoubleTapping:Z

    if-eqz v1, :cond_c

    .line 339
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mDoubleTapListener:Lcom/freerdp/freerdpcore/utils/GestureDetector$OnDoubleTapListener;

    invoke-interface {v1, p1}, Lcom/freerdp/freerdpcore/utils/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_2

    .line 341
    :cond_c
    iget-boolean v1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mInLongPress:Z

    if-eqz v1, :cond_d

    .line 343
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 344
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mListener:Lcom/freerdp/freerdpcore/utils/GestureDetector$OnGestureListener;

    invoke-interface {v1, p1}, Lcom/freerdp/freerdpcore/utils/GestureDetector$OnGestureListener;->onLongPressUp(Landroid/view/MotionEvent;)V

    .line 345
    iput-boolean v7, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mInLongPress:Z

    goto :goto_1

    .line 347
    :cond_d
    iget-boolean v1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v1, :cond_e

    .line 349
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mListener:Lcom/freerdp/freerdpcore/utils/GestureDetector$OnGestureListener;

    iget-object v2, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v1, v2}, Lcom/freerdp/freerdpcore/utils/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_2

    :cond_e
    :goto_1
    move v1, v7

    .line 355
    :goto_2
    iget-object v2, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_f

    .line 357
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 360
    :cond_f
    iput-object v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 361
    iput-boolean v7, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mIsDoubleTapping:Z

    .line 362
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 363
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 364
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mListener:Lcom/freerdp/freerdpcore/utils/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Lcom/freerdp/freerdpcore/utils/GestureDetector$OnGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int v7, v1, p1

    goto/16 :goto_4

    .line 246
    :cond_10
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mDoubleTapListener:Lcom/freerdp/freerdpcore/utils/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_13

    .line 248
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 250
    iget-object v3, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 251
    :cond_11
    iget-object v3, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_12

    iget-object v8, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v8, :cond_12

    if-eqz v0, :cond_12

    .line 253
    invoke-direct {p0, v3, v8, p1}, Lcom/freerdp/freerdpcore/utils/GestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 256
    iput-boolean v6, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mIsDoubleTapping:Z

    .line 258
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mDoubleTapListener:Lcom/freerdp/freerdpcore/utils/GestureDetector$OnDoubleTapListener;

    iget-object v3, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v3}, Lcom/freerdp/freerdpcore/utils/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 260
    iget-object v3, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mDoubleTapListener:Lcom/freerdp/freerdpcore/utils/GestureDetector$OnDoubleTapListener;

    invoke-interface {v3, p1}, Lcom/freerdp/freerdpcore/utils/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_3

    .line 265
    :cond_12
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0xc8

    invoke-virtual {v0, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_13
    move v0, v7

    .line 269
    :goto_3
    iput v2, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mLastMotionX:F

    .line 270
    iput v1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mLastMotionY:F

    .line 271
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_14

    .line 273
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 275
    :cond_14
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 276
    iput-boolean v6, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mAlwaysInTapRegion:Z

    .line 277
    iput-boolean v6, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 278
    iput-boolean v6, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mStillDown:Z

    .line 279
    iput-boolean v7, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mInLongPress:Z

    .line 281
    iget-boolean v1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mIsLongpressEnabled:Z

    const-wide/16 v2, 0x64

    if-eqz v1, :cond_15

    .line 283
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 284
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    add-long/2addr v7, v2

    iget v4, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mLongpressTimeout:I

    int-to-long v9, v4

    add-long/2addr v7, v9

    invoke-virtual {v1, v5, v7, v8}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 288
    :cond_15
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 289
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 288
    invoke-virtual {v1, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 290
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mListener:Lcom/freerdp/freerdpcore/utils/GestureDetector$OnGestureListener;

    invoke-interface {v1, p1}, Lcom/freerdp/freerdpcore/utils/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int v7, v0, p1

    :cond_16
    :goto_4
    return v7
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 0

    .line 190
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mIsLongpressEnabled:Z

    return-void
.end method

.method public setLongPressTimeout(I)V
    .locals 0

    .line 203
    iput p1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mLongpressTimeout:I

    return-void
.end method

.method public setOnDoubleTapListener(Lcom/freerdp/freerdpcore/utils/GestureDetector$OnDoubleTapListener;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector;->mDoubleTapListener:Lcom/freerdp/freerdpcore/utils/GestureDetector$OnDoubleTapListener;

    return-void
.end method
