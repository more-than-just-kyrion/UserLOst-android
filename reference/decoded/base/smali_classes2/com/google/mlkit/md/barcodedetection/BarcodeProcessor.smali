.class public final Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;
.super Lcom/google/mlkit/md/camera/FrameProcessorBase;
.source "BarcodeProcessor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mlkit/md/camera/FrameProcessorBase<",
        "Ljava/util/List<",
        "+",
        "Lcom/google/mlkit/vision/barcode/common/Barcode;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBarcodeProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BarcodeProcessor.kt\ncom/google/mlkit/md/barcodedetection/BarcodeProcessor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,125:1\n288#2,2:126\n*S KotlinDebug\n*F\n+ 1 BarcodeProcessor.kt\ncom/google/mlkit/md/barcodedetection/BarcodeProcessor\n*L\n58#1:126,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u001e2\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001\u001eB\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0003H\u0002J\u001c\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0014J\u0014\u0010\u0014\u001a\u00020\u00152\n\u0010\u0016\u001a\u00060\u0017j\u0002`\u0018H\u0014J&\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u001b2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0015J\u0008\u0010\u001d\u001a\u00020\u0015H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;",
        "Lcom/google/mlkit/md/camera/FrameProcessorBase;",
        "",
        "Lcom/google/mlkit/vision/barcode/common/Barcode;",
        "graphicOverlay",
        "Lcom/google/mlkit/md/camera/GraphicOverlay;",
        "workflowModel",
        "Lcom/google/mlkit/md/camera/WorkflowModel;",
        "(Lcom/google/mlkit/md/camera/GraphicOverlay;Lcom/google/mlkit/md/camera/WorkflowModel;)V",
        "cameraReticleAnimator",
        "Lcom/google/mlkit/md/camera/CameraReticleAnimator;",
        "scanner",
        "Lcom/google/mlkit/vision/barcode/BarcodeScanner;",
        "createLoadingAnimator",
        "Landroid/animation/ValueAnimator;",
        "barcode",
        "detectInImage",
        "Lcom/google/android/gms/tasks/Task;",
        "image",
        "Lcom/google/mlkit/vision/common/InputImage;",
        "onFailure",
        "",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "onSuccess",
        "inputInfo",
        "Lcom/google/mlkit/md/InputInfo;",
        "results",
        "stop",
        "Companion",
        "UserLOstLibrary_UserLOstRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor$Companion;

.field private static final TAG:Ljava/lang/String; = "BarcodeProcessor"


# instance fields
.field private final cameraReticleAnimator:Lcom/google/mlkit/md/camera/CameraReticleAnimator;

.field private final scanner:Lcom/google/mlkit/vision/barcode/BarcodeScanner;

.field private final workflowModel:Lcom/google/mlkit/md/camera/WorkflowModel;


# direct methods
.method public static synthetic $r8$lambda$_JWfdL8-2g4Mwr2GEy1IwInhCAw(Landroid/animation/ValueAnimator;FLcom/google/mlkit/md/camera/GraphicOverlay;Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;Lcom/google/mlkit/vision/barcode/common/Barcode;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;->createLoadingAnimator$lambda$2$lambda$1(Landroid/animation/ValueAnimator;FLcom/google/mlkit/md/camera/GraphicOverlay;Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;Lcom/google/mlkit/vision/barcode/common/Barcode;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;->Companion:Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/google/mlkit/md/camera/GraphicOverlay;Lcom/google/mlkit/md/camera/WorkflowModel;)V
    .locals 1

    const-string v0, "graphicOverlay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workflowModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/google/mlkit/md/camera/FrameProcessorBase;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;->workflowModel:Lcom/google/mlkit/md/camera/WorkflowModel;

    .line 39
    invoke-static {}, Lcom/google/mlkit/vision/barcode/BarcodeScanning;->getClient()Lcom/google/mlkit/vision/barcode/BarcodeScanner;

    move-result-object p2

    const-string v0, "getClient(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;->scanner:Lcom/google/mlkit/vision/barcode/BarcodeScanner;

    .line 40
    new-instance p2, Lcom/google/mlkit/md/camera/CameraReticleAnimator;

    invoke-direct {p2, p1}, Lcom/google/mlkit/md/camera/CameraReticleAnimator;-><init>(Lcom/google/mlkit/md/camera/GraphicOverlay;)V

    iput-object p2, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;->cameraReticleAnimator:Lcom/google/mlkit/md/camera/CameraReticleAnimator;

    return-void
.end method

.method private final createLoadingAnimator(Lcom/google/mlkit/md/camera/GraphicOverlay;Lcom/google/mlkit/vision/barcode/common/Barcode;)Landroid/animation/ValueAnimator;
    .locals 8

    const/4 v0, 0x2

    .line 94
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 96
    new-instance v7, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor$$ExternalSyntheticLambda0;

    const v3, 0x3f8ccccd    # 1.1f

    move-object v1, v7

    move-object v2, v0

    move-object v4, p1

    move-object v5, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor$$ExternalSyntheticLambda0;-><init>(Landroid/animation/ValueAnimator;FLcom/google/mlkit/md/camera/GraphicOverlay;Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;Lcom/google/mlkit/vision/barcode/common/Barcode;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 94
    const-string p1, "apply(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f8ccccd    # 1.1f
    .end array-data
.end method

.method private static final createLoadingAnimator$lambda$2$lambda$1(Landroid/animation/ValueAnimator;FLcom/google/mlkit/md/camera/GraphicOverlay;Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;Lcom/google/mlkit/vision/barcode/common/Barcode;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "$graphicOverlay"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$barcode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    const-string p5, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-ltz p0, :cond_0

    .line 98
    invoke-virtual {p2}, Lcom/google/mlkit/md/camera/GraphicOverlay;->clear()V

    .line 99
    iget-object p0, p3, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;->workflowModel:Lcom/google/mlkit/md/camera/WorkflowModel;

    sget-object p1, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->SEARCHED:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    invoke-virtual {p0, p1}, Lcom/google/mlkit/md/camera/WorkflowModel;->setWorkflowState(Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;)V

    .line 100
    iget-object p0, p3, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;->workflowModel:Lcom/google/mlkit/md/camera/WorkflowModel;

    invoke-virtual {p0}, Lcom/google/mlkit/md/camera/WorkflowModel;->getDetectedBarcode()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p2}, Lcom/google/mlkit/md/camera/GraphicOverlay;->invalidate()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected detectInImage(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mlkit/vision/common/InputImage;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/common/Barcode;",
            ">;>;"
        }
    .end annotation

    const-string v0, "image"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;->scanner:Lcom/google/mlkit/vision/barcode/BarcodeScanner;

    invoke-interface {v0, p1}, Lcom/google/mlkit/vision/barcode/BarcodeScanner;->process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    const-string v0, "process(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected onFailure(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    const-string v0, "Barcode detection failed!"

    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "BarcodeProcessor"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/google/mlkit/md/InputInfo;Ljava/lang/Object;Lcom/google/mlkit/md/camera/GraphicOverlay;)V
    .locals 0

    .line 36
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;->onSuccess(Lcom/google/mlkit/md/InputInfo;Ljava/util/List;Lcom/google/mlkit/md/camera/GraphicOverlay;)V

    return-void
.end method

.method protected onSuccess(Lcom/google/mlkit/md/InputInfo;Ljava/util/List;Lcom/google/mlkit/md/camera/GraphicOverlay;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mlkit/md/InputInfo;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/mlkit/vision/barcode/common/Barcode;",
            ">;",
            "Lcom/google/mlkit/md/camera/GraphicOverlay;",
            ")V"
        }
    .end annotation

    const-string v0, "inputInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "results"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "graphicOverlay"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;->workflowModel:Lcom/google/mlkit/md/camera/WorkflowModel;

    invoke-virtual {p1}, Lcom/google/mlkit/md/camera/WorkflowModel;->isCameraLive()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Barcode result size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BarcodeProcessor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    check-cast p2, Ljava/lang/Iterable;

    .line 126
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/mlkit/vision/barcode/common/Barcode;

    .line 59
    invoke-virtual {v0}, Lcom/google/mlkit/vision/barcode/common/Barcode;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p3, v0}, Lcom/google/mlkit/md/camera/GraphicOverlay;->translateRect(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v0

    .line 61
    invoke-virtual {p3}, Lcom/google/mlkit/md/camera/GraphicOverlay;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p3}, Lcom/google/mlkit/md/camera/GraphicOverlay;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 58
    :goto_1
    check-cast p2, Lcom/google/mlkit/vision/barcode/common/Barcode;

    .line 64
    invoke-virtual {p3}, Lcom/google/mlkit/md/camera/GraphicOverlay;->clear()V

    if-nez p2, :cond_4

    .line 66
    iget-object p1, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;->cameraReticleAnimator:Lcom/google/mlkit/md/camera/CameraReticleAnimator;

    invoke-virtual {p1}, Lcom/google/mlkit/md/camera/CameraReticleAnimator;->start()V

    .line 67
    new-instance p1, Lcom/google/mlkit/md/barcodedetection/BarcodeReticleGraphic;

    iget-object p2, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;->cameraReticleAnimator:Lcom/google/mlkit/md/camera/CameraReticleAnimator;

    invoke-direct {p1, p3, p2}, Lcom/google/mlkit/md/barcodedetection/BarcodeReticleGraphic;-><init>(Lcom/google/mlkit/md/camera/GraphicOverlay;Lcom/google/mlkit/md/camera/CameraReticleAnimator;)V

    check-cast p1, Lcom/google/mlkit/md/camera/GraphicOverlay$Graphic;

    invoke-virtual {p3, p1}, Lcom/google/mlkit/md/camera/GraphicOverlay;->add(Lcom/google/mlkit/md/camera/GraphicOverlay$Graphic;)V

    .line 68
    iget-object p1, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;->workflowModel:Lcom/google/mlkit/md/camera/WorkflowModel;

    sget-object p2, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->DETECTING:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    invoke-virtual {p1, p2}, Lcom/google/mlkit/md/camera/WorkflowModel;->setWorkflowState(Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;)V

    goto :goto_2

    .line 70
    :cond_4
    iget-object p1, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;->cameraReticleAnimator:Lcom/google/mlkit/md/camera/CameraReticleAnimator;

    invoke-virtual {p1}, Lcom/google/mlkit/md/camera/CameraReticleAnimator;->cancel()V

    .line 71
    sget-object p1, Lcom/google/mlkit/md/settings/PreferenceUtils;->INSTANCE:Lcom/google/mlkit/md/settings/PreferenceUtils;

    invoke-virtual {p1, p3, p2}, Lcom/google/mlkit/md/settings/PreferenceUtils;->getProgressToMeetBarcodeSizeRequirement(Lcom/google/mlkit/md/camera/GraphicOverlay;Lcom/google/mlkit/vision/barcode/common/Barcode;)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    .line 74
    new-instance p1, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;

    invoke-direct {p1, p3, p2}, Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;-><init>(Lcom/google/mlkit/md/camera/GraphicOverlay;Lcom/google/mlkit/vision/barcode/common/Barcode;)V

    check-cast p1, Lcom/google/mlkit/md/camera/GraphicOverlay$Graphic;

    invoke-virtual {p3, p1}, Lcom/google/mlkit/md/camera/GraphicOverlay;->add(Lcom/google/mlkit/md/camera/GraphicOverlay$Graphic;)V

    .line 75
    iget-object p1, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;->workflowModel:Lcom/google/mlkit/md/camera/WorkflowModel;

    sget-object p2, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->CONFIRMING:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    invoke-virtual {p1, p2}, Lcom/google/mlkit/md/camera/WorkflowModel;->setWorkflowState(Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;)V

    goto :goto_2

    .line 78
    :cond_5
    sget-object p1, Lcom/google/mlkit/md/settings/PreferenceUtils;->INSTANCE:Lcom/google/mlkit/md/settings/PreferenceUtils;

    invoke-virtual {p3}, Lcom/google/mlkit/md/camera/GraphicOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/mlkit/md/settings/PreferenceUtils;->shouldDelayLoadingBarcodeResult(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 79
    invoke-direct {p0, p3, p2}, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;->createLoadingAnimator(Lcom/google/mlkit/md/camera/GraphicOverlay;Lcom/google/mlkit/vision/barcode/common/Barcode;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 81
    new-instance p2, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;

    invoke-direct {p2, p3, p1}, Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;-><init>(Lcom/google/mlkit/md/camera/GraphicOverlay;Landroid/animation/ValueAnimator;)V

    check-cast p2, Lcom/google/mlkit/md/camera/GraphicOverlay$Graphic;

    invoke-virtual {p3, p2}, Lcom/google/mlkit/md/camera/GraphicOverlay;->add(Lcom/google/mlkit/md/camera/GraphicOverlay$Graphic;)V

    .line 82
    iget-object p1, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;->workflowModel:Lcom/google/mlkit/md/camera/WorkflowModel;

    sget-object p2, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->SEARCHING:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    invoke-virtual {p1, p2}, Lcom/google/mlkit/md/camera/WorkflowModel;->setWorkflowState(Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;)V

    goto :goto_2

    .line 84
    :cond_6
    iget-object p1, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;->workflowModel:Lcom/google/mlkit/md/camera/WorkflowModel;

    sget-object v0, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->DETECTED:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    invoke-virtual {p1, v0}, Lcom/google/mlkit/md/camera/WorkflowModel;->setWorkflowState(Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;)V

    .line 85
    iget-object p1, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;->workflowModel:Lcom/google/mlkit/md/camera/WorkflowModel;

    invoke-virtual {p1}, Lcom/google/mlkit/md/camera/WorkflowModel;->getDetectedBarcode()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 89
    :goto_2
    invoke-virtual {p3}, Lcom/google/mlkit/md/camera/GraphicOverlay;->invalidate()V

    return-void
.end method

.method public stop()V
    .locals 3

    .line 113
    invoke-super {p0}, Lcom/google/mlkit/md/camera/FrameProcessorBase;->stop()V

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;->scanner:Lcom/google/mlkit/vision/barcode/BarcodeScanner;

    invoke-interface {v0}, Lcom/google/mlkit/vision/barcode/BarcodeScanner;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 117
    const-string v1, "Failed to close barcode detector!"

    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "BarcodeProcessor"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
