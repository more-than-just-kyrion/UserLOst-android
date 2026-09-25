.class Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler$1;
.super Ljava/lang/Object;
.source "DPadMouseKeyHandler.java"

# interfaces
.implements Lcom/iiordanov/bVNC/input/Panner$VelocityUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler$1;->this$0:Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler;

    iput p2, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler$1;->val$x:I

    iput p3, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler$1;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateVelocity(Landroid/graphics/PointF;J)Z
    .locals 4

    const-wide v0, 0x3ff3333333333333L    # 1.2

    long-to-double p2, p2

    mul-double/2addr p2, v0

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    div-double/2addr p2, v0

    .line 129
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43fa0000    # 500.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 130
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler$1;->val$x:I

    int-to-double v2, v2

    mul-double/2addr v2, p2

    double-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 131
    :cond_0
    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 132
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/iiordanov/bVNC/input/DPadMouseKeyHandler$1;->val$y:I

    int-to-double v1, v1

    mul-double/2addr p2, v1

    double-to-int p2, p2

    int-to-float p2, p2

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/PointF;->y:F

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
