.class public final synthetic Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/animation/ValueAnimator;

.field public final synthetic f$1:F

.field public final synthetic f$2:Lcom/google/mlkit/md/camera/GraphicOverlay;

.field public final synthetic f$3:Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;

.field public final synthetic f$4:Lcom/google/mlkit/vision/barcode/common/Barcode;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/ValueAnimator;FLcom/google/mlkit/md/camera/GraphicOverlay;Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;Lcom/google/mlkit/vision/barcode/common/Barcode;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor$$ExternalSyntheticLambda0;->f$0:Landroid/animation/ValueAnimator;

    iput p2, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor$$ExternalSyntheticLambda0;->f$1:F

    iput-object p3, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor$$ExternalSyntheticLambda0;->f$2:Lcom/google/mlkit/md/camera/GraphicOverlay;

    iput-object p4, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor$$ExternalSyntheticLambda0;->f$3:Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;

    iput-object p5, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor$$ExternalSyntheticLambda0;->f$4:Lcom/google/mlkit/vision/barcode/common/Barcode;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor$$ExternalSyntheticLambda0;->f$0:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor$$ExternalSyntheticLambda0;->f$1:F

    iget-object v2, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor$$ExternalSyntheticLambda0;->f$2:Lcom/google/mlkit/md/camera/GraphicOverlay;

    iget-object v3, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor$$ExternalSyntheticLambda0;->f$3:Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;

    iget-object v4, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor$$ExternalSyntheticLambda0;->f$4:Lcom/google/mlkit/vision/barcode/common/Barcode;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;->$r8$lambda$_JWfdL8-2g4Mwr2GEy1IwInhCAw(Landroid/animation/ValueAnimator;FLcom/google/mlkit/md/camera/GraphicOverlay;Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;Lcom/google/mlkit/vision/barcode/common/Barcode;Landroid/animation/ValueAnimator;)V

    return-void
.end method
