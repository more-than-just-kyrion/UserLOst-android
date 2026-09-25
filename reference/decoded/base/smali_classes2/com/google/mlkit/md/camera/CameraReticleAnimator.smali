.class public final Lcom/google/mlkit/md/camera/CameraReticleAnimator;
.super Ljava/lang/Object;
.source "CameraReticleAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/md/camera/CameraReticleAnimator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0011R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001e\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u001e\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/google/mlkit/md/camera/CameraReticleAnimator;",
        "",
        "graphicOverlay",
        "Lcom/google/mlkit/md/camera/GraphicOverlay;",
        "(Lcom/google/mlkit/md/camera/GraphicOverlay;)V",
        "animatorSet",
        "Landroid/animation/AnimatorSet;",
        "<set-?>",
        "",
        "rippleAlphaScale",
        "getRippleAlphaScale",
        "()F",
        "rippleSizeScale",
        "getRippleSizeScale",
        "rippleStrokeWidthScale",
        "getRippleStrokeWidthScale",
        "cancel",
        "",
        "start",
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
.field public static final Companion:Lcom/google/mlkit/md/camera/CameraReticleAnimator$Companion;

.field private static final DURATION_RESTART_DORMANCY_MS:J = 0x535L

.field private static final DURATION_RIPPLE_EXPAND_MS:J = 0x341L

.field private static final DURATION_RIPPLE_FADE_IN_MS:J = 0x14dL

.field private static final DURATION_RIPPLE_FADE_OUT_MS:J = 0x1f4L

.field private static final DURATION_RIPPLE_STROKE_WIDTH_SHRINK_MS:J = 0x341L

.field private static final START_DELAY_RESTART_DORMANCY_MS:J = 0x48fL

.field private static final START_DELAY_RIPPLE_EXPAND_MS:J = 0x14dL

.field private static final START_DELAY_RIPPLE_FADE_OUT_MS:J = 0x29bL

.field private static final START_DELAY_RIPPLE_STROKE_WIDTH_SHRINK_MS:J = 0x14dL


# instance fields
.field private final animatorSet:Landroid/animation/AnimatorSet;

.field private rippleAlphaScale:F

.field private rippleSizeScale:F

.field private rippleStrokeWidthScale:F


# direct methods
.method public static synthetic $r8$lambda$6PHGLrsftsCG9T2rMDi0lr7exjQ(Lcom/google/mlkit/md/camera/CameraReticleAnimator;Lcom/google/mlkit/md/camera/GraphicOverlay;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/mlkit/md/camera/CameraReticleAnimator;->_init_$lambda$3(Lcom/google/mlkit/md/camera/CameraReticleAnimator;Lcom/google/mlkit/md/camera/GraphicOverlay;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9jaZ46DtL0jH9AQzkVq6DVKu8Ps(Lcom/google/mlkit/md/camera/CameraReticleAnimator;Lcom/google/mlkit/md/camera/GraphicOverlay;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/mlkit/md/camera/CameraReticleAnimator;->_init_$lambda$2(Lcom/google/mlkit/md/camera/CameraReticleAnimator;Lcom/google/mlkit/md/camera/GraphicOverlay;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pt5_JDrI4zmTSu88s-yhwAhDRIE(Lcom/google/mlkit/md/camera/CameraReticleAnimator;Lcom/google/mlkit/md/camera/GraphicOverlay;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/mlkit/md/camera/CameraReticleAnimator;->_init_$lambda$0(Lcom/google/mlkit/md/camera/CameraReticleAnimator;Lcom/google/mlkit/md/camera/GraphicOverlay;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xH5ODeM1E3YHeuertFeFqPYz1XQ(Lcom/google/mlkit/md/camera/CameraReticleAnimator;Lcom/google/mlkit/md/camera/GraphicOverlay;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/mlkit/md/camera/CameraReticleAnimator;->_init_$lambda$1(Lcom/google/mlkit/md/camera/CameraReticleAnimator;Lcom/google/mlkit/md/camera/GraphicOverlay;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/mlkit/md/camera/CameraReticleAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/mlkit/md/camera/CameraReticleAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/mlkit/md/camera/CameraReticleAnimator;->Companion:Lcom/google/mlkit/md/camera/CameraReticleAnimator$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/google/mlkit/md/camera/GraphicOverlay;)V
    .locals 9

    const-string v0, "graphicOverlay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 35
    iput v0, p0, Lcom/google/mlkit/md/camera/CameraReticleAnimator;->rippleStrokeWidthScale:F

    const/4 v0, 0x2

    .line 41
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x14d

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 42
    new-instance v4, Lcom/google/mlkit/md/camera/CameraReticleAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1}, Lcom/google/mlkit/md/camera/CameraReticleAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/google/mlkit/md/camera/CameraReticleAnimator;Lcom/google/mlkit/md/camera/GraphicOverlay;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 47
    new-array v4, v0, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v5, 0x29b

    .line 48
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 49
    new-instance v5, Lcom/google/mlkit/md/camera/CameraReticleAnimator$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, p1}, Lcom/google/mlkit/md/camera/CameraReticleAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/google/mlkit/md/camera/CameraReticleAnimator;Lcom/google/mlkit/md/camera/GraphicOverlay;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 54
    new-array v5, v0, [F

    fill-array-data v5, :array_2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    const-wide/16 v6, 0x341

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 55
    invoke-virtual {v5, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 56
    new-instance v8, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v8}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    check-cast v8, Landroid/animation/TimeInterpolator;

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 57
    new-instance v8, Lcom/google/mlkit/md/camera/CameraReticleAnimator$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0, p1}, Lcom/google/mlkit/md/camera/CameraReticleAnimator$$ExternalSyntheticLambda2;-><init>(Lcom/google/mlkit/md/camera/CameraReticleAnimator;Lcom/google/mlkit/md/camera/GraphicOverlay;)V

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 63
    new-array v8, v0, [F

    fill-array-data v8, :array_3

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 64
    invoke-virtual {v6, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 65
    new-instance v2, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    check-cast v2, Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 66
    new-instance v2, Lcom/google/mlkit/md/camera/CameraReticleAnimator$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/google/mlkit/md/camera/CameraReticleAnimator$$ExternalSyntheticLambda3;-><init>(Lcom/google/mlkit/md/camera/CameraReticleAnimator;Lcom/google/mlkit/md/camera/GraphicOverlay;)V

    invoke-virtual {v6, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p1, 0x0

    .line 71
    filled-new-array {p1, p1}, [I

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v7, 0x535

    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v7, 0x48f

    .line 72
    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 73
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/google/mlkit/md/camera/CameraReticleAnimator;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v7, 0x5

    .line 75
    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v1, v7, p1

    const/4 p1, 0x1

    .line 76
    aput-object v4, v7, p1

    .line 77
    aput-object v5, v7, v0

    const/4 p1, 0x3

    .line 78
    aput-object v6, v7, p1

    const/4 p1, 0x4

    .line 79
    aput-object v2, v7, p1

    .line 74
    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method private static final _init_$lambda$0(Lcom/google/mlkit/md/camera/CameraReticleAnimator;Lcom/google/mlkit/md/camera/GraphicOverlay;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$graphicOverlay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lcom/google/mlkit/md/camera/CameraReticleAnimator;->rippleAlphaScale:F

    .line 44
    invoke-virtual {p1}, Lcom/google/mlkit/md/camera/GraphicOverlay;->postInvalidate()V

    return-void
.end method

.method private static final _init_$lambda$1(Lcom/google/mlkit/md/camera/CameraReticleAnimator;Lcom/google/mlkit/md/camera/GraphicOverlay;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$graphicOverlay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lcom/google/mlkit/md/camera/CameraReticleAnimator;->rippleAlphaScale:F

    .line 51
    invoke-virtual {p1}, Lcom/google/mlkit/md/camera/GraphicOverlay;->postInvalidate()V

    return-void
.end method

.method private static final _init_$lambda$2(Lcom/google/mlkit/md/camera/CameraReticleAnimator;Lcom/google/mlkit/md/camera/GraphicOverlay;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$graphicOverlay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lcom/google/mlkit/md/camera/CameraReticleAnimator;->rippleSizeScale:F

    .line 59
    invoke-virtual {p1}, Lcom/google/mlkit/md/camera/GraphicOverlay;->postInvalidate()V

    return-void
.end method

.method private static final _init_$lambda$3(Lcom/google/mlkit/md/camera/CameraReticleAnimator;Lcom/google/mlkit/md/camera/GraphicOverlay;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$graphicOverlay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lcom/google/mlkit/md/camera/CameraReticleAnimator;->rippleStrokeWidthScale:F

    .line 68
    invoke-virtual {p1}, Lcom/google/mlkit/md/camera/GraphicOverlay;->postInvalidate()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/mlkit/md/camera/CameraReticleAnimator;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/google/mlkit/md/camera/CameraReticleAnimator;->rippleAlphaScale:F

    .line 90
    iput v0, p0, Lcom/google/mlkit/md/camera/CameraReticleAnimator;->rippleSizeScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 91
    iput v0, p0, Lcom/google/mlkit/md/camera/CameraReticleAnimator;->rippleStrokeWidthScale:F

    return-void
.end method

.method public final getRippleAlphaScale()F
    .locals 1

    .line 27
    iget v0, p0, Lcom/google/mlkit/md/camera/CameraReticleAnimator;->rippleAlphaScale:F

    return v0
.end method

.method public final getRippleSizeScale()F
    .locals 1

    .line 31
    iget v0, p0, Lcom/google/mlkit/md/camera/CameraReticleAnimator;->rippleSizeScale:F

    return v0
.end method

.method public final getRippleStrokeWidthScale()F
    .locals 1

    .line 35
    iget v0, p0, Lcom/google/mlkit/md/camera/CameraReticleAnimator;->rippleStrokeWidthScale:F

    return v0
.end method

.method public final start()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/google/mlkit/md/camera/CameraReticleAnimator;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/mlkit/md/camera/CameraReticleAnimator;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method
