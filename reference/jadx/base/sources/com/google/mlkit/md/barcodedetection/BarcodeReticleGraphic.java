package com.google.mlkit.md.barcodedetection;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.core.content.ContextCompat;
import com.google.mlkit.md.camera.CameraReticleAnimator;
import com.google.mlkit.md.camera.GraphicOverlay;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.R;

/* JADX INFO: compiled from: BarcodeReticleGraphic.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/google/mlkit/md/barcodedetection/BarcodeReticleGraphic;", "Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;", "overlay", "Lcom/google/mlkit/md/camera/GraphicOverlay;", "animator", "Lcom/google/mlkit/md/camera/CameraReticleAnimator;", "(Lcom/google/mlkit/md/camera/GraphicOverlay;Lcom/google/mlkit/md/camera/CameraReticleAnimator;)V", "rippleAlpha", "", "ripplePaint", "Landroid/graphics/Paint;", "rippleSizeOffset", "rippleStrokeWidth", "draw", "", "canvas", "Landroid/graphics/Canvas;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BarcodeReticleGraphic extends BarcodeGraphicBase {
    private final CameraReticleAnimator animator;
    private final int rippleAlpha;
    private final Paint ripplePaint;
    private final int rippleSizeOffset;
    private final int rippleStrokeWidth;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BarcodeReticleGraphic(GraphicOverlay overlay, CameraReticleAnimator animator) {
        super(overlay);
        Intrinsics.checkNotNullParameter(overlay, "overlay");
        Intrinsics.checkNotNullParameter(animator, "animator");
        this.animator = animator;
        Resources resources = overlay.getResources();
        Paint paint = new Paint();
        this.ripplePaint = paint;
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(ContextCompat.getColor(getContext(), R.color.reticle_ripple));
        this.rippleSizeOffset = resources.getDimensionPixelOffset(R.dimen.barcode_reticle_ripple_size_offset);
        this.rippleStrokeWidth = resources.getDimensionPixelOffset(R.dimen.barcode_reticle_ripple_stroke_width);
        this.rippleAlpha = paint.getAlpha();
    }

    @Override // com.google.mlkit.md.barcodedetection.BarcodeGraphicBase, com.google.mlkit.md.camera.GraphicOverlay.Graphic
    public void draw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.draw(canvas);
        this.ripplePaint.setAlpha((int) (this.rippleAlpha * this.animator.getRippleAlphaScale()));
        this.ripplePaint.setStrokeWidth(this.rippleStrokeWidth * this.animator.getRippleStrokeWidthScale());
        float rippleSizeScale = this.rippleSizeOffset * this.animator.getRippleSizeScale();
        canvas.drawRoundRect(new RectF(getBoxRect().left - rippleSizeScale, getBoxRect().top - rippleSizeScale, getBoxRect().right + rippleSizeScale, getBoxRect().bottom + rippleSizeScale), getBoxCornerRadius(), getBoxCornerRadius(), this.ripplePaint);
    }
}
