.class Lcom/iiordanov/bVNC/input/MyScaleGestureDetector$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MyScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->setQuickScaleEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector$1;->this$0:Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector$1;->this$0:Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->-$$Nest$fputmAnchoredScaleStartX(Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;F)V

    .line 301
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector$1;->this$0:Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, p1}, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->-$$Nest$fputmAnchoredScaleStartY(Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;F)V

    .line 302
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector$1;->this$0:Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;->-$$Nest$fputmAnchoredScaleMode(Lcom/iiordanov/bVNC/input/MyScaleGestureDetector;I)V

    return v0
.end method
