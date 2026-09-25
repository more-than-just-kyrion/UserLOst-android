package com.google.mlkit.md.camera;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CameraReticleAnimator.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0011R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001e\u0010\f\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u001e\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/google/mlkit/md/camera/CameraReticleAnimator;", "", "graphicOverlay", "Lcom/google/mlkit/md/camera/GraphicOverlay;", "(Lcom/google/mlkit/md/camera/GraphicOverlay;)V", "animatorSet", "Landroid/animation/AnimatorSet;", "<set-?>", "", "rippleAlphaScale", "getRippleAlphaScale", "()F", "rippleSizeScale", "getRippleSizeScale", "rippleStrokeWidthScale", "getRippleStrokeWidthScale", "cancel", "", "start", "Companion", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CameraReticleAnimator {
    private static final long DURATION_RESTART_DORMANCY_MS = 1333;
    private static final long DURATION_RIPPLE_EXPAND_MS = 833;
    private static final long DURATION_RIPPLE_FADE_IN_MS = 333;
    private static final long DURATION_RIPPLE_FADE_OUT_MS = 500;
    private static final long DURATION_RIPPLE_STROKE_WIDTH_SHRINK_MS = 833;
    private static final long START_DELAY_RESTART_DORMANCY_MS = 1167;
    private static final long START_DELAY_RIPPLE_EXPAND_MS = 333;
    private static final long START_DELAY_RIPPLE_FADE_OUT_MS = 667;
    private static final long START_DELAY_RIPPLE_STROKE_WIDTH_SHRINK_MS = 333;
    private final AnimatorSet animatorSet;
    private float rippleAlphaScale;
    private float rippleSizeScale;
    private float rippleStrokeWidthScale;

    public CameraReticleAnimator(final GraphicOverlay graphicOverlay) {
        Intrinsics.checkNotNullParameter(graphicOverlay, "graphicOverlay");
        this.rippleStrokeWidthScale = 1.0f;
        ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(333L);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.mlkit.md.camera.CameraReticleAnimator$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                CameraReticleAnimator._init_$lambda$0(this.f$0, graphicOverlay, valueAnimator);
            }
        });
        ValueAnimator duration2 = ValueAnimator.ofFloat(1.0f, 0.0f).setDuration(DURATION_RIPPLE_FADE_OUT_MS);
        duration2.setStartDelay(START_DELAY_RIPPLE_FADE_OUT_MS);
        duration2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.mlkit.md.camera.CameraReticleAnimator$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                CameraReticleAnimator._init_$lambda$1(this.f$0, graphicOverlay, valueAnimator);
            }
        });
        ValueAnimator duration3 = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(833L);
        duration3.setStartDelay(333L);
        duration3.setInterpolator(new FastOutSlowInInterpolator());
        duration3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.mlkit.md.camera.CameraReticleAnimator$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                CameraReticleAnimator._init_$lambda$2(this.f$0, graphicOverlay, valueAnimator);
            }
        });
        ValueAnimator duration4 = ValueAnimator.ofFloat(1.0f, 0.5f).setDuration(833L);
        duration4.setStartDelay(333L);
        duration4.setInterpolator(new FastOutSlowInInterpolator());
        duration4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.mlkit.md.camera.CameraReticleAnimator$$ExternalSyntheticLambda3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                CameraReticleAnimator._init_$lambda$3(this.f$0, graphicOverlay, valueAnimator);
            }
        });
        ValueAnimator duration5 = ValueAnimator.ofInt(0, 0).setDuration(DURATION_RESTART_DORMANCY_MS);
        duration5.setStartDelay(START_DELAY_RESTART_DORMANCY_MS);
        AnimatorSet animatorSet = new AnimatorSet();
        this.animatorSet = animatorSet;
        animatorSet.playTogether(duration, duration2, duration3, duration4, duration5);
    }

    public final float getRippleAlphaScale() {
        return this.rippleAlphaScale;
    }

    public final float getRippleSizeScale() {
        return this.rippleSizeScale;
    }

    public final float getRippleStrokeWidthScale() {
        return this.rippleStrokeWidthScale;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$0(CameraReticleAnimator this$0, GraphicOverlay graphicOverlay, ValueAnimator animation) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(graphicOverlay, "$graphicOverlay");
        Intrinsics.checkNotNullParameter(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        this$0.rippleAlphaScale = ((Float) animatedValue).floatValue();
        graphicOverlay.postInvalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$1(CameraReticleAnimator this$0, GraphicOverlay graphicOverlay, ValueAnimator animation) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(graphicOverlay, "$graphicOverlay");
        Intrinsics.checkNotNullParameter(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        this$0.rippleAlphaScale = ((Float) animatedValue).floatValue();
        graphicOverlay.postInvalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$2(CameraReticleAnimator this$0, GraphicOverlay graphicOverlay, ValueAnimator animation) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(graphicOverlay, "$graphicOverlay");
        Intrinsics.checkNotNullParameter(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        this$0.rippleSizeScale = ((Float) animatedValue).floatValue();
        graphicOverlay.postInvalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$3(CameraReticleAnimator this$0, GraphicOverlay graphicOverlay, ValueAnimator animation) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(graphicOverlay, "$graphicOverlay");
        Intrinsics.checkNotNullParameter(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        this$0.rippleStrokeWidthScale = ((Float) animatedValue).floatValue();
        graphicOverlay.postInvalidate();
    }

    public final void start() {
        if (this.animatorSet.isRunning()) {
            return;
        }
        this.animatorSet.start();
    }

    public final void cancel() {
        this.animatorSet.cancel();
        this.rippleAlphaScale = 0.0f;
        this.rippleSizeScale = 0.0f;
        this.rippleStrokeWidthScale = 1.0f;
    }
}
