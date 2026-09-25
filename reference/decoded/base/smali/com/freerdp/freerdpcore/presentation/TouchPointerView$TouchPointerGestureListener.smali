.class Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;
.super Lcom/freerdp/freerdpcore/utils/GestureDetector$SimpleOnGestureListener;
.source "TouchPointerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freerdp/freerdpcore/presentation/TouchPointerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchPointerGestureListener"
.end annotation


# instance fields
.field private prevEvent:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;


# direct methods
.method private constructor <init>(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-direct {p0}, Lcom/freerdp/freerdpcore/utils/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 p1, 0x0

    .line 242
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->prevEvent:Landroid/view/MotionEvent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;Lcom/freerdp/freerdpcore/presentation/TouchPointerView$1;)V
    .locals 0

    .line 239
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;-><init>(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 376
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    const/4 v1, 0x4

    invoke-static {v0, p1, v1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$200(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;Landroid/view/MotionEvent;I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 378
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$500(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;I)Landroid/graphics/RectF;

    move-result-object p1

    .line 379
    iget-object v2, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-static {v2}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$600(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;)Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    float-to-int v4, v4

    invoke-interface {v2, v3, v4, v0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;->onTouchPointerLeftClick(IIZ)V

    .line 380
    iget-object v2, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-static {v2}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$600(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;)Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {v2, v3, p1, v1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;->onTouchPointerLeftClick(IIZ)V

    :cond_0
    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    const/4 v1, 0x4

    invoke-static {v0, p1, v1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$200(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;Landroid/view/MotionEvent;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 248
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->prevEvent:Landroid/view/MotionEvent;

    .line 249
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-static {p1, v1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$302(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;Z)Z

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    const/4 v2, 0x5

    invoke-static {v0, p1, v2}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$200(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->prevEvent:Landroid/view/MotionEvent;

    .line 254
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-static {p1, v1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$402(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;Z)Z

    .line 255
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    sget v0, Lcom/freerdp/freerdpcore/R$drawable;->touch_pointer_scroll:I

    invoke-static {p1, v0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$100(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;I)V

    :cond_1
    :goto_0
    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    const/4 v1, 0x4

    invoke-static {v0, p1, v1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$200(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;Landroid/view/MotionEvent;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 281
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    sget v0, Lcom/freerdp/freerdpcore/R$drawable;->touch_pointer_active:I

    invoke-static {p1, v0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$100(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;I)V

    .line 282
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$302(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;Z)Z

    .line 283
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$500(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;I)Landroid/graphics/RectF;

    move-result-object p1

    .line 284
    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-static {v1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$600(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;)Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {v1, v2, p1, v0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;->onTouchPointerLeftClick(IIZ)V

    :cond_0
    return-void
.end method

.method public onLongPressUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 290
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$300(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 292
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    sget v0, Lcom/freerdp/freerdpcore/R$drawable;->touch_pointer_default:I

    invoke-static {p1, v0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$100(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;I)V

    .line 293
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$302(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;Z)Z

    .line 294
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-static {p1, v0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$500(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;I)Landroid/graphics/RectF;

    move-result-object p1

    .line 295
    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-static {v1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$600(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;)Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {v1, v2, p1, v0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;->onTouchPointerLeftClick(IIZ)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 301
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$300(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;)Z

    move-result p1

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    .line 304
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->prevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    .line 305
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->prevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    .line 304
    invoke-static {p1, v0, v1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$700(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;FF)V

    .line 306
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->prevEvent:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 307
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->prevEvent:Landroid/view/MotionEvent;

    .line 310
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-static {p1, p4}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$500(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;I)Landroid/graphics/RectF;

    move-result-object p1

    .line 311
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-static {p2}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$600(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;)Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;

    move-result-object p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p4

    float-to-int p4, p4

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {p2, p4, p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;->onTouchPointerMove(II)V

    return p3

    .line 314
    :cond_0
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$400(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 317
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->prevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr p1, v0

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 320
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$600(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;)Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;->onTouchPointerScroll(Z)V

    .line 321
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->prevEvent:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 322
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->prevEvent:Landroid/view/MotionEvent;

    goto :goto_0

    :cond_1
    const/high16 v0, -0x3ee00000    # -10.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    .line 326
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$600(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;)Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;

    move-result-object p1

    invoke-interface {p1, p4}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;->onTouchPointerScroll(Z)V

    .line 327
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->prevEvent:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 328
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->prevEvent:Landroid/view/MotionEvent;

    :cond_2
    :goto_0
    return p3

    :cond_3
    return p4
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 338
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    const/4 v1, 0x3

    invoke-static {v0, p1, v1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$200(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;Landroid/view/MotionEvent;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 339
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$600(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;)Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;->onTouchPointerClose()V

    goto/16 :goto_0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    const/4 v2, 0x4

    invoke-static {v0, p1, v2}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$200(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;Landroid/view/MotionEvent;I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 342
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    sget v0, Lcom/freerdp/freerdpcore/R$drawable;->touch_pointer_lclick:I

    invoke-static {p1, v0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$800(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;I)V

    .line 343
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-static {p1, v2}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$500(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;I)Landroid/graphics/RectF;

    move-result-object p1

    .line 344
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-static {v0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$600(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;)Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    float-to-int v4, v4

    invoke-interface {v0, v3, v4, v1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;->onTouchPointerLeftClick(IIZ)V

    .line 345
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-static {v0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$600(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;)Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {v0, v3, p1, v2}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;->onTouchPointerLeftClick(IIZ)V

    goto/16 :goto_0

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    const/4 v3, 0x2

    invoke-static {v0, p1, v3}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$200(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    sget v0, Lcom/freerdp/freerdpcore/R$drawable;->touch_pointer_rclick:I

    invoke-static {p1, v0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$800(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;I)V

    .line 350
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-static {p1, v2}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$500(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;I)Landroid/graphics/RectF;

    move-result-object p1

    .line 351
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-static {v0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$600(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;)Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    float-to-int v4, v4

    invoke-interface {v0, v3, v4, v1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;->onTouchPointerRightClick(IIZ)V

    .line 352
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-static {v0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$600(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;)Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {v0, v3, p1, v2}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;->onTouchPointerRightClick(IIZ)V

    goto :goto_0

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    const/4 v2, 0x7

    invoke-static {v0, p1, v2}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$200(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 356
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    sget v0, Lcom/freerdp/freerdpcore/R$drawable;->touch_pointer_keyboard:I

    invoke-static {p1, v0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$800(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;I)V

    .line 357
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$600(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;)Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;->onTouchPointerToggleKeyboard()V

    goto :goto_0

    .line 359
    :cond_3
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    const/16 v2, 0x8

    invoke-static {v0, p1, v2}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$200(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 361
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    sget v0, Lcom/freerdp/freerdpcore/R$drawable;->touch_pointer_extkeyboard:I

    invoke-static {p1, v0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$800(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;I)V

    .line 362
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$600(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;)Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;->onTouchPointerToggleExtKeyboard()V

    goto :goto_0

    .line 364
    :cond_4
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    const/4 v2, 0x6

    invoke-static {v0, p1, v2}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$200(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;Landroid/view/MotionEvent;I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 366
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    sget v0, Lcom/freerdp/freerdpcore/R$drawable;->touch_pointer_reset:I

    invoke-static {p1, v0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$800(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;I)V

    .line 367
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$600(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;)Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;->onTouchPointerResetScrollZoom()V

    :cond_5
    :goto_0
    return v1
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 263
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->prevEvent:Landroid/view/MotionEvent;

    if-eqz p1, :cond_0

    .line 265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    const/4 p1, 0x0

    .line 266
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->prevEvent:Landroid/view/MotionEvent;

    .line 269
    :cond_0
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$400(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 270
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    sget v0, Lcom/freerdp/freerdpcore/R$drawable;->touch_pointer_default:I

    invoke-static {p1, v0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$100(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;I)V

    .line 272
    :cond_1
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$302(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;Z)Z

    .line 273
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerGestureListener;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-static {p1, v0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$402(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;Z)Z

    const/4 p1, 0x1

    return p1
.end method
