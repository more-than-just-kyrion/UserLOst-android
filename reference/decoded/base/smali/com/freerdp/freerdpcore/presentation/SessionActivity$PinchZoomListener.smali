.class Lcom/freerdp/freerdpcore/presentation/SessionActivity$PinchZoomListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SessionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freerdp/freerdpcore/presentation/SessionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinchZoomListener"
.end annotation


# instance fields
.field private scaleFactor:F

.field final synthetic this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;


# direct methods
.method private constructor <init>(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)V
    .locals 0

    .line 1287
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$PinchZoomListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1289
    iput p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$PinchZoomListener;->scaleFactor:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/freerdp/freerdpcore/presentation/SessionActivity;Lcom/freerdp/freerdpcore/presentation/SessionActivity$1;)V
    .locals 0

    .line 1287
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$PinchZoomListener;-><init>(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .line 1301
    iget v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$PinchZoomListener;->scaleFactor:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$PinchZoomListener;->scaleFactor:F

    const/high16 v1, 0x40400000    # 3.0f

    .line 1303
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1302
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$PinchZoomListener;->scaleFactor:F

    .line 1304
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$PinchZoomListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$900(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/SessionView;

    move-result-object v0

    iget v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$PinchZoomListener;->scaleFactor:F

    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->setZoom(F)V

    .line 1306
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$PinchZoomListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$900(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/SessionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/presentation/SessionView;->isAtMinZoom()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$PinchZoomListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$900(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/SessionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/presentation/SessionView;->isAtMaxZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$PinchZoomListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1200(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/ScrollView2D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    mul-float/2addr v0, v1

    .line 1310
    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$PinchZoomListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {v1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1200(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/ScrollView2D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float/2addr v1, v2

    .line 1313
    iget-object v2, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$PinchZoomListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    .line 1314
    invoke-static {v2}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1200(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/ScrollView2D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    mul-float/2addr v2, v3

    .line 1315
    iget-object v3, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$PinchZoomListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    .line 1316
    invoke-static {v3}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1200(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/ScrollView2D;

    move-result-object v3

    invoke-virtual {v3}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v4

    mul-float/2addr v3, v4

    .line 1321
    iget-object v4, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$PinchZoomListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {v4}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1200(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/ScrollView2D;

    move-result-object v4

    sub-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    sub-float/2addr v2, v0

    float-to-int v0, v2

    sub-float/2addr v3, v1

    .line 1322
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    sub-float/2addr v3, p1

    float-to-int p1, v3

    .line 1321
    invoke-virtual {v4, v0, p1}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->scrollBy(II)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .line 1293
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$PinchZoomListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1200(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/ScrollView2D;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->setScrollEnabled(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    .line 1330
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$PinchZoomListener;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1200(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/ScrollView2D;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->setScrollEnabled(Z)V

    return-void
.end method
