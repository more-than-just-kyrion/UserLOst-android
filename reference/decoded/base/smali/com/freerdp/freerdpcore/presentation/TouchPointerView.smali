.class public Lcom/freerdp/freerdpcore/presentation/TouchPointerView;
.super Landroid/widget/ImageView;
.source "TouchPointerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;,
        Lcom/freerdp/freerdpcore/presentation/TouchPointerView$UIHandler;,
        Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_TOUCH_POINTER_RESTORE_DELAY:I = 0x96

.field private static final POINTER_ACTION_CLOSE:I = 0x3

.field private static final POINTER_ACTION_CURSOR:I = 0x0

.field private static final POINTER_ACTION_EXTKEYBOARD:I = 0x8

.field private static final POINTER_ACTION_KEYBOARD:I = 0x7

.field private static final POINTER_ACTION_LCLICK:I = 0x4

.field private static final POINTER_ACTION_MOVE:I = 0x4

.field private static final POINTER_ACTION_RCLICK:I = 0x2

.field private static final POINTER_ACTION_RESET:I = 0x6

.field private static final POINTER_ACTION_SCROLL:I = 0x5

.field private static final SCROLL_DELTA:F = 10.0f


# instance fields
.field private gestureDetector:Lcom/freerdp/freerdpcore/utils/GestureDetector;

.field private listener:Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;

.field private pointerAreaRects:[Landroid/graphics/RectF;

.field private pointerMoving:Z

.field private pointerRect:Landroid/graphics/RectF;

.field private pointerScrolling:Z

.field private translationMatrix:Landroid/graphics/Matrix;

.field private uiHandler:Lcom/freerdp/freerdpcore/presentation/TouchPointerView$UIHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x9

    .line 55
    new-array v0, v0, [Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->pointerAreaRects:[Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->pointerMoving:Z

    .line 58
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->pointerScrolling:Z

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->listener:Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;

    .line 60
    new-instance v0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$UIHandler;

    invoke-direct {v0, p0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$UIHandler;-><init>(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;)V

    iput-object v0, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->uiHandler:Lcom/freerdp/freerdpcore/presentation/TouchPointerView$UIHandler;

    .line 66
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->initTouchPointer(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x9

    .line 55
    new-array p2, p2, [Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->pointerAreaRects:[Landroid/graphics/RectF;

    const/4 p2, 0x0

    .line 57
    iput-boolean p2, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->pointerMoving:Z

    .line 58
    iput-boolean p2, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->pointerScrolling:Z

    const/4 p2, 0x0

    .line 59
    iput-object p2, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->listener:Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;

    .line 60
    new-instance p2, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$UIHandler;

    invoke-direct {p2, p0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$UIHandler;-><init>(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;)V

    iput-object p2, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->uiHandler:Lcom/freerdp/freerdpcore/presentation/TouchPointerView$UIHandler;

    .line 72
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->initTouchPointer(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x9

    .line 55
    new-array p2, p2, [Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->pointerAreaRects:[Landroid/graphics/RectF;

    const/4 p2, 0x0

    .line 57
    iput-boolean p2, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->pointerMoving:Z

    .line 58
    iput-boolean p2, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->pointerScrolling:Z

    const/4 p2, 0x0

    .line 59
    iput-object p2, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->listener:Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;

    .line 60
    new-instance p2, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$UIHandler;

    invoke-direct {p2, p0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$UIHandler;-><init>(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;)V

    iput-object p2, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->uiHandler:Lcom/freerdp/freerdpcore/presentation/TouchPointerView$UIHandler;

    .line 78
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->initTouchPointer(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->setPointerImage(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;Landroid/view/MotionEvent;I)Z
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->pointerAreaTouched(Landroid/view/MotionEvent;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->pointerMoving:Z

    return p0
.end method

.method static synthetic access$302(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->pointerMoving:Z

    return p1
.end method

.method static synthetic access$400(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->pointerScrolling:Z

    return p0
.end method

.method static synthetic access$402(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->pointerScrolling:Z

    return p1
.end method

.method static synthetic access$500(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;I)Landroid/graphics/RectF;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->getCurrentPointerArea(I)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;)Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->listener:Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;FF)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->movePointer(FF)V

    return-void
.end method

.method static synthetic access$800(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->displayPointerImageAction(I)V

    return-void
.end method

.method private displayPointerImageAction(I)V
    .locals 3

    .line 156
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->setPointerImage(I)V

    .line 157
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->uiHandler:Lcom/freerdp/freerdpcore/presentation/TouchPointerView$UIHandler;

    const/4 v0, 0x0

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v0, v1, v2}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$UIHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private ensureVisibility(II)V
    .locals 5

    const/4 v0, 0x2

    .line 138
    new-array v0, v0, [F

    .line 139
    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->translationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v1, 0x0

    .line 141
    aget v2, v0, v1

    int-to-float p1, p1

    iget-object v3, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->pointerRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float v3, p1, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->pointerRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr p1, v2

    aput p1, v0, v1

    .line 143
    :cond_0
    aget p1, v0, v1

    const/4 v2, 0x0

    cmpg-float p1, p1, v2

    if-gez p1, :cond_1

    .line 144
    aput v2, v0, v1

    :cond_1
    const/4 p1, 0x1

    .line 145
    aget v3, v0, p1

    int-to-float p2, p2

    iget-object v4, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->pointerRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float v4, p2, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 146
    iget-object v3, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->pointerRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr p2, v3

    aput p2, v0, p1

    .line 147
    :cond_2
    aget p2, v0, p1

    cmpg-float p2, p2, v2

    if-gez p2, :cond_3

    .line 148
    aput v2, v0, p1

    .line 150
    :cond_3
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->translationMatrix:Landroid/graphics/Matrix;

    aget v1, v0, v1

    aget p1, v0, p1

    invoke-virtual {p2, v1, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 151
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->translationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private getCurrentPointerArea(I)Landroid/graphics/RectF;
    .locals 2

    .line 168
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->pointerAreaRects:[Landroid/graphics/RectF;

    aget-object p1, v1, p1

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 169
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->translationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method private initTouchPointer(Landroid/content/Context;)V
    .locals 12

    .line 83
    new-instance v0, Lcom/freerdp/freerdpcore/utils/GestureDetector;

    new-instance v1, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;-><init>(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;Lcom/freerdp/freerdpcore/presentation/TouchPointerView$1;)V

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/freerdp/freerdpcore/utils/GestureDetector;-><init>(Landroid/content/Context;Lcom/freerdp/freerdpcore/utils/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->gestureDetector:Lcom/freerdp/freerdpcore/utils/GestureDetector;

    const/16 p1, 0x1f4

    .line 85
    invoke-virtual {v0, p1}, Lcom/freerdp/freerdpcore/utils/GestureDetector;->setLongPressTimeout(I)V

    .line 86
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->translationMatrix:Landroid/graphics/Matrix;

    .line 87
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 88
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->translationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 91
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p1, v0

    .line 92
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_0

    int-to-float v5, v4

    mul-float/2addr v5, p1

    float-to-int v5, v5

    int-to-float v6, v2

    mul-float/2addr v6, v1

    float-to-int v6, v6

    float-to-int v7, p1

    add-int/2addr v7, v5

    float-to-int v8, v1

    add-int/2addr v8, v6

    .line 101
    iget-object v9, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->pointerAreaRects:[Landroid/graphics/RectF;

    mul-int/lit8 v10, v2, 0x3

    add-int/2addr v10, v4

    new-instance v11, Landroid/graphics/RectF;

    int-to-float v5, v5

    int-to-float v6, v6

    int-to-float v7, v7

    int-to-float v8, v8

    invoke-direct {v11, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v11, v9, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_1
    new-instance p1, Landroid/graphics/RectF;

    .line 105
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->pointerRect:Landroid/graphics/RectF;

    return-void
.end method

.method private movePointer(FF)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->translationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 133
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->translationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private pointerAreaTouched(Landroid/view/MotionEvent;I)Z
    .locals 2

    .line 175
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->pointerAreaRects:[Landroid/graphics/RectF;

    aget-object p2, v1, p2

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 176
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->translationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private pointerTouched(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 184
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->pointerRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 185
    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->translationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private setPointerImage(I)V
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public getPointerHeight()I
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getPointerPosition()[F
    .locals 2

    const/4 v0, 0x2

    .line 125
    new-array v0, v0, [F

    .line 126
    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->translationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-object v0
.end method

.method public getPointerWidth()I
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    if-eqz p1, :cond_0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 203
    invoke-direct {p0, p4, p5}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->ensureVisibility(II)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->pointerMoving:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->pointerScrolling:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->pointerTouched(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->gestureDetector:Lcom/freerdp/freerdpcore/utils/GestureDetector;

    invoke-virtual {v0, p1}, Lcom/freerdp/freerdpcore/utils/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setTouchPointerListener(Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->listener:Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;

    return-void
.end method
