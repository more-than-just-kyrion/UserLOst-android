.class public final Lcom/google/mlkit/md/LiveBarcodeScanningActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LiveBarcodeScanningActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/md/LiveBarcodeScanningActivity$Companion;,
        Lcom/google/mlkit/md/LiveBarcodeScanningActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLiveBarcodeScanningActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LiveBarcodeScanningActivity.kt\ncom/google/mlkit/md/LiveBarcodeScanningActivity\n+ 2 Extensions.kt\ntech/ulo/library/utils/ExtensionsKt\n*L\n1#1,301:1\n49#2:302\n49#2:303\n*S KotlinDebug\n*F\n+ 1 LiveBarcodeScanningActivity.kt\ncom/google/mlkit/md/LiveBarcodeScanningActivity\n*L\n137#1:302\n290#1:303\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 02\u00020\u00012\u00020\u0002:\u00010B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0006\u0010\u0017\u001a\u00020\u0018J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\tH\u0016J\u0012\u0010\u001d\u001a\u00020\u001a2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0014J\u0008\u0010 \u001a\u00020\u001aH\u0014J\u0012\u0010!\u001a\u00020\u001a2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0014J\u0008\u0010$\u001a\u00020\u001aH\u0014J\u0008\u0010%\u001a\u00020\u001aH\u0014J\u000e\u0010&\u001a\u00020\u001a2\u0006\u0010\'\u001a\u00020(J\u000e\u0010)\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020#J\u0008\u0010*\u001a\u00020\u001aH\u0002J\u0008\u0010+\u001a\u00020\u001aH\u0002J\u0008\u0010,\u001a\u00020\u001aH\u0002J\u000e\u0010-\u001a\u00020\u001a2\u0006\u0010.\u001a\u00020/R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcom/google/mlkit/md/LiveBarcodeScanningActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Landroid/view/View$OnClickListener;",
        "()V",
        "cameraSource",
        "Lcom/google/mlkit/md/camera/CameraSource;",
        "currentWorkflowState",
        "Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;",
        "flashButton",
        "Landroid/view/View;",
        "graphicOverlay",
        "Lcom/google/mlkit/md/camera/GraphicOverlay;",
        "preview",
        "Lcom/google/mlkit/md/camera/CameraSourcePreview;",
        "promptChip",
        "Lcom/google/android/material/chip/Chip;",
        "promptChipAnimator",
        "Landroid/animation/AnimatorSet;",
        "settingsButton",
        "workflowModel",
        "Lcom/google/mlkit/md/camera/WorkflowModel;",
        "getCameraInstance",
        "Landroid/hardware/Camera;",
        "hasFlash",
        "",
        "onBackPressed",
        "",
        "onClick",
        "view",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onNewIntent",
        "intent",
        "Landroid/content/Intent;",
        "onPause",
        "onResume",
        "sendResult",
        "code",
        "",
        "setPending",
        "setUpWorkflowModel",
        "startCameraPreview",
        "stopCameraPreview",
        "writeBarcode",
        "barcode",
        "",
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
.field public static final Companion:Lcom/google/mlkit/md/LiveBarcodeScanningActivity$Companion;

.field private static final TAG:Ljava/lang/String; = "LiveBarcodeActivity"


# instance fields
.field private cameraSource:Lcom/google/mlkit/md/camera/CameraSource;

.field private currentWorkflowState:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

.field private flashButton:Landroid/view/View;

.field private graphicOverlay:Lcom/google/mlkit/md/camera/GraphicOverlay;

.field private preview:Lcom/google/mlkit/md/camera/CameraSourcePreview;

.field private promptChip:Lcom/google/android/material/chip/Chip;

.field private promptChipAnimator:Landroid/animation/AnimatorSet;

.field private settingsButton:Landroid/view/View;

.field private workflowModel:Lcom/google/mlkit/md/camera/WorkflowModel;


# direct methods
.method public static synthetic $r8$lambda$gHbZ5CoPjnRERkFqlSeqRhdwfJw(Lcom/google/mlkit/md/LiveBarcodeScanningActivity;Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->setUpWorkflowModel$lambda$7(Lcom/google/mlkit/md/LiveBarcodeScanningActivity;Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xu0YNf8OHmohBTesslp_39AHyLI(Lcom/google/mlkit/md/LiveBarcodeScanningActivity;Lcom/google/mlkit/vision/barcode/common/Barcode;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->setUpWorkflowModel$lambda$8(Lcom/google/mlkit/md/LiveBarcodeScanningActivity;Lcom/google/mlkit/vision/barcode/common/Barcode;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->Companion:Lcom/google/mlkit/md/LiveBarcodeScanningActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private final setUpWorkflowModel()V
    .locals 3

    .line 215
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/google/mlkit/md/camera/WorkflowModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/md/camera/WorkflowModel;

    iput-object v0, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->workflowModel:Lcom/google/mlkit/md/camera/WorkflowModel;

    .line 219
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/mlkit/md/camera/WorkflowModel;->getWorkflowState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/google/mlkit/md/LiveBarcodeScanningActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity$$ExternalSyntheticLambda0;-><init>(Lcom/google/mlkit/md/LiveBarcodeScanningActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 258
    iget-object v0, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->workflowModel:Lcom/google/mlkit/md/camera/WorkflowModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/mlkit/md/camera/WorkflowModel;->getDetectedBarcode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/google/mlkit/md/LiveBarcodeScanningActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity$$ExternalSyntheticLambda1;-><init>(Lcom/google/mlkit/md/LiveBarcodeScanningActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method private static final setUpWorkflowModel$lambda$7(Lcom/google/mlkit/md/LiveBarcodeScanningActivity;Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_f

    .line 220
    iget-object v0, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->currentWorkflowState:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 224
    :cond_0
    iput-object p1, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->currentWorkflowState:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    .line 225
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current workflow state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveBarcodeActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->promptChip:Lcom/google/android/material/chip/Chip;

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 229
    :goto_0
    sget-object v4, Lcom/google/mlkit/md/LiveBarcodeScanningActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->ordinal()I

    move-result p1

    aget p1, v4, p1

    if-eq p1, v1, :cond_b

    const/4 v4, 0x2

    if-eq p1, v4, :cond_8

    const/4 v4, 0x3

    if-eq p1, v4, :cond_5

    const/4 v4, 0x4

    if-eq p1, v4, :cond_3

    const/4 v4, 0x5

    if-eq p1, v4, :cond_3

    .line 249
    iget-object p1, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->promptChip:Lcom/google/android/material/chip/Chip;

    if-nez p1, :cond_2

    goto :goto_5

    :cond_2
    invoke-virtual {p1, v2}, Lcom/google/android/material/chip/Chip;->setVisibility(I)V

    goto :goto_5

    .line 246
    :cond_3
    iget-object p1, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->promptChip:Lcom/google/android/material/chip/Chip;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v2}, Lcom/google/android/material/chip/Chip;->setVisibility(I)V

    .line 247
    :goto_1
    invoke-direct {p0}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->stopCameraPreview()V

    goto :goto_5

    .line 241
    :cond_5
    iget-object p1, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->promptChip:Lcom/google/android/material/chip/Chip;

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v3}, Lcom/google/android/material/chip/Chip;->setVisibility(I)V

    .line 242
    :goto_2
    iget-object p1, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->promptChip:Lcom/google/android/material/chip/Chip;

    if-eqz p1, :cond_7

    sget v2, Ltech/ulo/library/R$string;->prompt_searching:I

    invoke-virtual {p1, v2}, Lcom/google/android/material/chip/Chip;->setText(I)V

    .line 243
    :cond_7
    invoke-direct {p0}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->stopCameraPreview()V

    goto :goto_5

    .line 236
    :cond_8
    iget-object p1, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->promptChip:Lcom/google/android/material/chip/Chip;

    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {p1, v3}, Lcom/google/android/material/chip/Chip;->setVisibility(I)V

    .line 237
    :goto_3
    iget-object p1, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->promptChip:Lcom/google/android/material/chip/Chip;

    if-eqz p1, :cond_a

    sget v2, Ltech/ulo/library/R$string;->prompt_move_camera_closer:I

    invoke-virtual {p1, v2}, Lcom/google/android/material/chip/Chip;->setText(I)V

    .line 238
    :cond_a
    invoke-direct {p0}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->startCameraPreview()V

    goto :goto_5

    .line 231
    :cond_b
    iget-object p1, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->promptChip:Lcom/google/android/material/chip/Chip;

    if-nez p1, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {p1, v3}, Lcom/google/android/material/chip/Chip;->setVisibility(I)V

    .line 232
    :goto_4
    iget-object p1, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->promptChip:Lcom/google/android/material/chip/Chip;

    if-eqz p1, :cond_d

    sget v2, Ltech/ulo/library/R$string;->prompt_point_at_a_barcode:I

    invoke-virtual {p1, v2}, Lcom/google/android/material/chip/Chip;->setText(I)V

    .line 233
    :cond_d
    invoke-direct {p0}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->startCameraPreview()V

    :goto_5
    if-eqz v0, :cond_e

    .line 252
    iget-object p1, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->promptChip:Lcom/google/android/material/chip/Chip;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/google/android/material/chip/Chip;->getVisibility()I

    move-result p1

    if-nez p1, :cond_e

    goto :goto_6

    :cond_e
    move v1, v3

    .line 253
    :goto_6
    iget-object p0, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->promptChipAnimator:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_f

    if-eqz v1, :cond_f

    .line 254
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_f
    :goto_7
    return-void
.end method

.method private static final setUpWorkflowModel$lambda$8(Lcom/google/mlkit/md/LiveBarcodeScanningActivity;Lcom/google/mlkit/vision/barcode/common/Barcode;)V
    .locals 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 260
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    const/16 v1, 0x5d

    const/16 v2, 0xc8

    .line 261
    invoke-virtual {v0, v1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 262
    invoke-virtual {p1}, Lcom/google/mlkit/vision/barcode/common/Barcode;->getRawValue()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    if-nez v3, :cond_0

    .line 264
    invoke-virtual {p0, v0}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->sendResult(I)V

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {p1}, Lcom/google/mlkit/vision/barcode/common/Barcode;->getFormat()I

    move-result p1

    if-ne p1, v0, :cond_1

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 267
    const-string v4, "]C1"

    const-string v5, ""

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 271
    :cond_1
    invoke-virtual {p0, v3}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->writeBarcode(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 272
    invoke-virtual {p0, p1}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->sendResult(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final startCameraPreview()V
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->workflowModel:Lcom/google/mlkit/md/camera/WorkflowModel;

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->cameraSource:Lcom/google/mlkit/md/camera/CameraSource;

    if-nez v1, :cond_1

    return-void

    .line 193
    :cond_1
    invoke-virtual {v0}, Lcom/google/mlkit/md/camera/WorkflowModel;->isCameraLive()Z

    move-result v2

    if-nez v2, :cond_2

    .line 195
    :try_start_0
    invoke-virtual {v0}, Lcom/google/mlkit/md/camera/WorkflowModel;->markCameraLive()V

    .line 196
    iget-object v0, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->preview:Lcom/google/mlkit/md/camera/CameraSourcePreview;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/google/mlkit/md/camera/CameraSourcePreview;->start(Lcom/google/mlkit/md/camera/CameraSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 198
    const-string v2, "Failed to start camera preview!"

    check-cast v0, Ljava/lang/Throwable;

    const-string v3, "LiveBarcodeActivity"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    invoke-virtual {v1}, Lcom/google/mlkit/md/camera/CameraSource;->release()V

    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->cameraSource:Lcom/google/mlkit/md/camera/CameraSource;

    :cond_2
    :goto_0
    return-void
.end method

.method private final stopCameraPreview()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->workflowModel:Lcom/google/mlkit/md/camera/WorkflowModel;

    if-nez v0, :cond_0

    return-void

    .line 207
    :cond_0
    invoke-virtual {v0}, Lcom/google/mlkit/md/camera/WorkflowModel;->isCameraLive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    invoke-virtual {v0}, Lcom/google/mlkit/md/camera/WorkflowModel;->markCameraFrozen()V

    .line 209
    iget-object v0, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->flashButton:Landroid/view/View;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->preview:Lcom/google/mlkit/md/camera/CameraSourcePreview;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/mlkit/md/camera/CameraSourcePreview;->stop()V

    :cond_2
    return-void
.end method


# virtual methods
.method public final getCameraInstance()Landroid/hardware/Camera;
    .locals 1

    .line 103
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final hasFlash()Z
    .locals 5

    .line 111
    invoke-virtual {p0}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 118
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 117
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 124
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    return v1

    .line 127
    :cond_1
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 128
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "off"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    return v4

    .line 129
    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    return v1

    .line 120
    :catch_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    return v1
.end method

.method public onBackPressed()V
    .locals 1

    .line 165
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    const/4 v0, 0x1

    .line 166
    invoke-virtual {p0, v0}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->sendResult(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 171
    sget v0, Ltech/ulo/library/R$id;->close_button:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->onBackPressed()V

    goto :goto_1

    .line 172
    :cond_0
    sget v0, Ltech/ulo/library/R$id;->flash_button:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 173
    iget-object p1, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->flashButton:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 176
    iget-object p1, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->cameraSource:Lcom/google/mlkit/md/camera/CameraSource;

    if-eqz p1, :cond_4

    const-string v0, "off"

    invoke-virtual {p1, v0}, Lcom/google/mlkit/md/camera/CameraSource;->updateFlashMode(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 178
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 179
    iget-object p1, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->cameraSource:Lcom/google/mlkit/md/camera/CameraSource;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "torch"

    invoke-virtual {p1, v0}, Lcom/google/mlkit/md/camera/CameraSource;->updateFlashMode(Ljava/lang/String;)V

    goto :goto_1

    .line 183
    :cond_2
    sget v0, Ltech/ulo/library/R$id;->settings_button:I

    if-ne p1, v0, :cond_4

    .line 184
    iget-object p1, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->settingsButton:Landroid/view/View;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 185
    :goto_0
    new-instance p1, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/google/mlkit/md/settings/SettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 71
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    sget p1, Ltech/ulo/library/R$layout;->activity_live_barcode:I

    invoke-virtual {p0, p1}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->setContentView(I)V

    .line 74
    sget p1, Ltech/ulo/library/R$id;->camera_preview:I

    invoke-virtual {p0, p1}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/md/camera/CameraSourcePreview;

    iput-object p1, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->preview:Lcom/google/mlkit/md/camera/CameraSourcePreview;

    .line 75
    sget p1, Ltech/ulo/library/R$id;->camera_preview_graphic_overlay:I

    invoke-virtual {p0, p1}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/md/camera/GraphicOverlay;

    .line 76
    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/google/mlkit/md/camera/GraphicOverlay;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    new-instance v1, Lcom/google/mlkit/md/camera/CameraSource;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, p1}, Lcom/google/mlkit/md/camera/CameraSource;-><init>(Lcom/google/mlkit/md/camera/GraphicOverlay;)V

    iput-object v1, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->cameraSource:Lcom/google/mlkit/md/camera/CameraSource;

    .line 75
    iput-object p1, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->graphicOverlay:Lcom/google/mlkit/md/camera/GraphicOverlay;

    .line 80
    sget p1, Ltech/ulo/library/R$id;->bottom_prompt_chip:I

    invoke-virtual {p0, p1}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    iput-object p1, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->promptChip:Lcom/google/android/material/chip/Chip;

    .line 82
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    sget v1, Ltech/ulo/library/R$animator;->bottom_prompt_chip_enter:I

    invoke-static {p1, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.animation.AnimatorSet"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/animation/AnimatorSet;

    .line 83
    iget-object v1, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->promptChip:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 81
    iput-object p1, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->promptChipAnimator:Landroid/animation/AnimatorSet;

    .line 86
    sget p1, Ltech/ulo/library/R$id;->close_button:I

    invoke-virtual {p0, p1}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    sget p1, Ltech/ulo/library/R$id;->flash_button:I

    invoke-virtual {p0, p1}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iput-object p1, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->flashButton:Landroid/view/View;

    .line 90
    invoke-virtual {p0}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->hasFlash()Z

    move-result p1

    if-nez p1, :cond_0

    .line 91
    sget p1, Ltech/ulo/library/R$id;->flash_button:I

    invoke-virtual {p0, p1}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    :cond_0
    sget p1, Ltech/ulo/library/R$id;->settings_button:I

    invoke-virtual {p0, p1}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iput-object p1, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->settingsButton:Landroid/view/View;

    .line 97
    invoke-virtual {p0}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "getIntent(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->setPending(Landroid/content/Intent;)V

    .line 98
    invoke-direct {p0}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->setUpWorkflowModel()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 159
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 160
    iget-object v0, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->cameraSource:Lcom/google/mlkit/md/camera/CameraSource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/mlkit/md/camera/CameraSource;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->cameraSource:Lcom/google/mlkit/md/camera/CameraSource;

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->setPending(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 153
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 154
    sget-object v0, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->NOT_STARTED:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    iput-object v0, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->currentWorkflowState:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    .line 155
    invoke-direct {p0}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->stopCameraPreview()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 144
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 145
    iget-object v0, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->workflowModel:Lcom/google/mlkit/md/camera/WorkflowModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/mlkit/md/camera/WorkflowModel;->markCameraFrozen()V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->settingsButton:Landroid/view/View;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 147
    :goto_0
    sget-object v0, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->NOT_STARTED:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    iput-object v0, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->currentWorkflowState:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    .line 148
    iget-object v0, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->cameraSource:Lcom/google/mlkit/md/camera/CameraSource;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;

    iget-object v2, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->graphicOverlay:Lcom/google/mlkit/md/camera/GraphicOverlay;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->workflowModel:Lcom/google/mlkit/md/camera/WorkflowModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v3}, Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;-><init>(Lcom/google/mlkit/md/camera/GraphicOverlay;Lcom/google/mlkit/md/camera/WorkflowModel;)V

    check-cast v1, Lcom/google/mlkit/md/camera/FrameProcessor;

    invoke-virtual {v0, v1}, Lcom/google/mlkit/md/camera/CameraSource;->setFrameProcessor(Lcom/google/mlkit/md/camera/FrameProcessor;)V

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->workflowModel:Lcom/google/mlkit/md/camera/WorkflowModel;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->DETECTING:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    invoke-virtual {v0, v1}, Lcom/google/mlkit/md/camera/WorkflowModel;->setWorkflowState(Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;)V

    :cond_3
    return-void
.end method

.method public final sendResult(I)V
    .locals 5

    .line 285
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Intents"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 286
    new-instance v2, Ljava/io/File;

    const-string v3, ".cameraResponse.txt"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 287
    new-instance v3, Ljava/io/File;

    const-string v4, "cameraResponse.txt"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 288
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v2, p1, v1, v0, v1}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 289
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 290
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    .line 303
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "getSharedPreferences(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 291
    const-string v0, "photo_pending"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 292
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 294
    invoke-virtual {p0}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->finish()V

    return-void
.end method

.method public final setPending(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    .line 302
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "getSharedPreferences(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 138
    const-string v0, "photo_pending"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final writeBarcode(Ljava/lang/String;)V
    .locals 4

    const-string v0, "barcode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Intents"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 280
    new-instance v2, Ljava/io/File;

    const-string v3, "barcode.txt"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 281
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v2, p1, v1, v0, v1}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    return-void
.end method
