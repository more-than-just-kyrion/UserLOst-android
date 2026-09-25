.class public Lcom/freerdp/freerdpcore/presentation/SessionView;
.super Landroid/view/View;
.source "SessionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;,
        Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;,
        Lcom/freerdp/freerdpcore/presentation/SessionView$SessionDoubleGestureListener;
    }
.end annotation


# static fields
.field public static final MAX_SCALE_FACTOR:F = 3.0f

.field public static final MIN_SCALE_FACTOR:F = 1.0f

.field private static final SCALE_FACTOR_DELTA:F = 1.0E-4f

.field private static final TAG:Ljava/lang/String; = "SessionView"

.field private static final TOUCH_SCROLL_DELTA:F = 10.0f


# instance fields
.field private currentSession:Lcom/freerdp/freerdpcore/application/SessionState;

.field private doubleGestureDetector:Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;

.field private gestureDetector:Lcom/freerdp/freerdpcore/utils/GestureDetector;

.field private height:I

.field private invScaleMatrix:Landroid/graphics/Matrix;

.field private invalidRegionF:Landroid/graphics/RectF;

.field private invalidRegions:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private scaleFactor:F

.field private scaleMatrix:Landroid/graphics/Matrix;

.field private sessionViewListener:Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;

.field private surface:Landroid/graphics/drawable/BitmapDrawable;

.field private touchPointerPaddingHeight:I

.field private touchPointerPaddingWidth:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->touchPointerPaddingWidth:I

    .line 48
    iput v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->touchPointerPaddingHeight:I

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->sessionViewListener:Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 51
    iput v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->scaleFactor:F

    .line 63
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->initSessionView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 47
    iput p2, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->touchPointerPaddingWidth:I

    .line 48
    iput p2, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->touchPointerPaddingHeight:I

    const/4 p2, 0x0

    .line 49
    iput-object p2, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->sessionViewListener:Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 51
    iput p2, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->scaleFactor:F

    .line 69
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->initSessionView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 47
    iput p2, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->touchPointerPaddingWidth:I

    .line 48
    iput p2, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->touchPointerPaddingHeight:I

    const/4 p2, 0x0

    .line 49
    iput-object p2, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->sessionViewListener:Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 51
    iput p2, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->scaleFactor:F

    .line 75
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->initSessionView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/freerdp/freerdpcore/presentation/SessionView;)Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->sessionViewListener:Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freerdp/freerdpcore/presentation/SessionView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->mapTouchEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/freerdp/freerdpcore/presentation/SessionView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->mapDoubleTouchEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method private initSessionView(Landroid/content/Context;)V
    .locals 4

    .line 80
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->invalidRegions:Ljava/util/Stack;

    .line 81
    new-instance v0, Lcom/freerdp/freerdpcore/utils/GestureDetector;

    new-instance v1, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionGestureListener;-><init>(Lcom/freerdp/freerdpcore/presentation/SessionView;Lcom/freerdp/freerdpcore/presentation/SessionView$1;)V

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/freerdp/freerdpcore/utils/GestureDetector;-><init>(Landroid/content/Context;Lcom/freerdp/freerdpcore/utils/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->gestureDetector:Lcom/freerdp/freerdpcore/utils/GestureDetector;

    .line 82
    new-instance v0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;

    new-instance v1, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionDoubleGestureListener;

    invoke-direct {v1, p0, v2}, Lcom/freerdp/freerdpcore/presentation/SessionView$SessionDoubleGestureListener;-><init>(Lcom/freerdp/freerdpcore/presentation/SessionView;Lcom/freerdp/freerdpcore/presentation/SessionView$1;)V

    invoke-direct {v0, p1, v2, v1}, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$OnDoubleGestureListener;)V

    iput-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->doubleGestureDetector:Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 85
    iput p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->scaleFactor:F

    .line 86
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->scaleMatrix:Landroid/graphics/Matrix;

    .line 87
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->invScaleMatrix:Landroid/graphics/Matrix;

    .line 88
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->invalidRegionF:Landroid/graphics/RectF;

    const/16 p1, 0x1002

    .line 90
    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->setSystemUiVisibility(I)V

    return-void
.end method

.method private mapDoubleTouchEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 6

    .line 244
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    .line 246
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v3

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v1, v3, v0

    aput v4, v3, v2

    .line 247
    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->invScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 248
    aget v0, v3, v0

    aget v1, v3, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    return-object p1
.end method

.method private mapTouchEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 4

    .line 234
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    .line 236
    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->invScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 237
    aget v1, v2, v3

    aget v0, v2, v0

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    return-object p1
.end method


# virtual methods
.method public addInvalidRegion(Landroid/graphics/Rect;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->invalidRegionF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 108
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->scaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->invalidRegionF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 109
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->invalidRegionF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 111
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->invalidRegions:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 225
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 226
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/SessionView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->onBackPressed()V

    .line 228
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getTouchPointerPaddingHeight()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->touchPointerPaddingHeight:I

    return v0
.end method

.method public getTouchPointerPaddingWidth()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->touchPointerPaddingWidth:I

    return v0
.end method

.method public getZoom()F
    .locals 1

    .line 136
    iget v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->scaleFactor:F

    return v0
.end method

.method public invalidateRegion()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->invalidRegions:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/SessionView;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public isAtMaxZoom()Z
    .locals 2

    .line 153
    iget v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->scaleFactor:F

    const v1, 0x403ffe5d    # 2.9999f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAtMinZoom()Z
    .locals 2

    .line 158
    iget v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->scaleFactor:F

    const v1, 0x3f800347    # 1.0001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 213
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 216
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->scaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 217
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->surface:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 218
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 206
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SessionView"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->width:I

    int-to-float p1, p1

    iget p2, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->scaleFactor:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iget v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->touchPointerPaddingWidth:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int p2, v0

    iget v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->touchPointerPaddingHeight:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/freerdp/freerdpcore/presentation/SessionView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSurfaceChange(Lcom/freerdp/freerdpcore/application/SessionState;)V
    .locals 4

    .line 121
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/application/SessionState;->getSurface()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->surface:Landroid/graphics/drawable/BitmapDrawable;

    .line 122
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->width:I

    .line 124
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->height:I

    .line 125
    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->surface:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    iget v3, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->width:I

    invoke-virtual {v1, v2, v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 127
    iget v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->width:I

    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/SessionView;->setMinimumWidth(I)V

    .line 128
    iget v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->height:I

    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/SessionView;->setMinimumHeight(I)V

    .line 130
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/SessionView;->requestLayout()V

    .line 131
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->currentSession:Lcom/freerdp/freerdpcore/application/SessionState;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->gestureDetector:Lcom/freerdp/freerdpcore/utils/GestureDetector;

    invoke-virtual {v0, p1}, Lcom/freerdp/freerdpcore/utils/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 255
    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->doubleGestureDetector:Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;

    invoke-virtual {v1, p1}, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public setScaleGestureDetector(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->doubleGestureDetector:Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;

    invoke-virtual {v0, p1}, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;->setScaleGestureDetector(Landroid/view/ScaleGestureDetector;)V

    return-void
.end method

.method public setSessionViewListener(Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->sessionViewListener:Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;

    return-void
.end method

.method public setTouchPointerPadding(II)V
    .locals 0

    .line 189
    iput p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->touchPointerPaddingWidth:I

    .line 190
    iput p2, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->touchPointerPaddingHeight:I

    .line 191
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/SessionView;->requestLayout()V

    return-void
.end method

.method public setZoom(F)V
    .locals 3

    .line 143
    iput p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->scaleFactor:F

    .line 144
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->scaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 145
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->invScaleMatrix:Landroid/graphics/Matrix;

    iget v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->scaleFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v2, v1, v0

    div-float/2addr v1, v0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 148
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/SessionView;->requestLayout()V

    return-void
.end method

.method public zoomIn(F)Z
    .locals 1

    .line 164
    iget v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->scaleFactor:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->scaleFactor:F

    const p1, 0x403ffe5d    # 2.9999f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    const/high16 p1, 0x40400000    # 3.0f

    .line 167
    iput p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->scaleFactor:F

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 170
    :goto_0
    iget v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->scaleFactor:F

    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/SessionView;->setZoom(F)V

    return p1
.end method

.method public zoomOut(F)Z
    .locals 1

    .line 177
    iget v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->scaleFactor:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->scaleFactor:F

    const p1, 0x3f800347    # 1.0001f

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 180
    iput p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->scaleFactor:F

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 183
    :goto_0
    iget v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionView;->scaleFactor:F

    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/SessionView;->setZoom(F)V

    return p1
.end method
