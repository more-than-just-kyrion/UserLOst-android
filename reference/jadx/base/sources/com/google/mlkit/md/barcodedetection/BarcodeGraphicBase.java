package com.google.mlkit.md.barcodedetection;

import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import androidx.core.content.ContextCompat;
import com.google.mlkit.md.camera.GraphicOverlay;
import com.google.mlkit.md.settings.PreferenceUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.R;

/* JADX INFO: compiled from: BarcodeGraphicBase.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b \u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0010\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;", "Lcom/google/mlkit/md/camera/GraphicOverlay$Graphic;", "overlay", "Lcom/google/mlkit/md/camera/GraphicOverlay;", "(Lcom/google/mlkit/md/camera/GraphicOverlay;)V", "boxCornerRadius", "", "getBoxCornerRadius", "()F", "boxPaint", "Landroid/graphics/Paint;", "boxRect", "Landroid/graphics/RectF;", "getBoxRect", "()Landroid/graphics/RectF;", "eraserPaint", "pathPaint", "getPathPaint", "()Landroid/graphics/Paint;", "scrimPaint", "draw", "", "canvas", "Landroid/graphics/Canvas;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class BarcodeGraphicBase extends GraphicOverlay.Graphic {
    private final float boxCornerRadius;
    private final Paint boxPaint;
    private final RectF boxRect;
    private final Paint eraserPaint;
    private final Paint pathPaint;
    private final Paint scrimPaint;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BarcodeGraphicBase(GraphicOverlay overlay) {
        super(overlay);
        Intrinsics.checkNotNullParameter(overlay, "overlay");
        Paint paint = new Paint();
        paint.setColor(ContextCompat.getColor(getContext(), R.color.barcode_reticle_stroke));
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(getContext().getResources().getDimensionPixelOffset(R.dimen.barcode_reticle_stroke_width));
        this.boxPaint = paint;
        Paint paint2 = new Paint();
        paint2.setColor(ContextCompat.getColor(getContext(), R.color.barcode_reticle_background));
        this.scrimPaint = paint2;
        Paint paint3 = new Paint();
        paint3.setStrokeWidth(paint.getStrokeWidth());
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.eraserPaint = paint3;
        float dimensionPixelOffset = getContext().getResources().getDimensionPixelOffset(R.dimen.barcode_reticle_corner_radius);
        this.boxCornerRadius = dimensionPixelOffset;
        Paint paint4 = new Paint();
        paint4.setColor(-1);
        paint4.setStyle(Paint.Style.STROKE);
        paint4.setStrokeWidth(paint.getStrokeWidth());
        paint4.setPathEffect(new CornerPathEffect(dimensionPixelOffset));
        this.pathPaint = paint4;
        this.boxRect = PreferenceUtils.INSTANCE.getBarcodeReticleBox(overlay);
    }

    public final float getBoxCornerRadius() {
        return this.boxCornerRadius;
    }

    public final Paint getPathPaint() {
        return this.pathPaint;
    }

    public final RectF getBoxRect() {
        return this.boxRect;
    }

    @Override // com.google.mlkit.md.camera.GraphicOverlay.Graphic
    public void draw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        canvas.drawRect(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), this.scrimPaint);
        this.eraserPaint.setStyle(Paint.Style.FILL);
        RectF rectF = this.boxRect;
        float f = this.boxCornerRadius;
        canvas.drawRoundRect(rectF, f, f, this.eraserPaint);
        this.eraserPaint.setStyle(Paint.Style.STROKE);
        RectF rectF2 = this.boxRect;
        float f2 = this.boxCornerRadius;
        canvas.drawRoundRect(rectF2, f2, f2, this.eraserPaint);
        RectF rectF3 = this.boxRect;
        float f3 = this.boxCornerRadius;
        canvas.drawRoundRect(rectF3, f3, f3, this.boxPaint);
    }
}
