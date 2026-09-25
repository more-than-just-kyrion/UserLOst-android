package com.google.mlkit.md.barcodedetection;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PointF;
import com.google.mlkit.md.camera.GraphicOverlay;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BarcodeLoadingGraphic.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\nR\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u000e\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/google/mlkit/md/barcodedetection/BarcodeLoadingGraphic;", "Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;", "overlay", "Lcom/google/mlkit/md/camera/GraphicOverlay;", "loadingAnimator", "Landroid/animation/ValueAnimator;", "(Lcom/google/mlkit/md/camera/GraphicOverlay;Landroid/animation/ValueAnimator;)V", "boxClockwiseCoordinates", "", "Landroid/graphics/PointF;", "[Landroid/graphics/PointF;", "coordinateOffsetBits", "Landroid/graphics/Point;", "[Landroid/graphics/Point;", "lastPathPoint", "draw", "", "canvas", "Landroid/graphics/Canvas;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BarcodeLoadingGraphic extends BarcodeGraphicBase {
    private final PointF[] boxClockwiseCoordinates;
    private final Point[] coordinateOffsetBits;
    private final PointF lastPathPoint;
    private final ValueAnimator loadingAnimator;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BarcodeLoadingGraphic(GraphicOverlay overlay, ValueAnimator loadingAnimator) {
        super(overlay);
        Intrinsics.checkNotNullParameter(overlay, "overlay");
        Intrinsics.checkNotNullParameter(loadingAnimator, "loadingAnimator");
        this.loadingAnimator = loadingAnimator;
        this.boxClockwiseCoordinates = new PointF[]{new PointF(getBoxRect().left, getBoxRect().top), new PointF(getBoxRect().right, getBoxRect().top), new PointF(getBoxRect().right, getBoxRect().bottom), new PointF(getBoxRect().left, getBoxRect().bottom)};
        this.coordinateOffsetBits = new Point[]{new Point(1, 0), new Point(0, 1), new Point(-1, 0), new Point(0, -1)};
        this.lastPathPoint = new PointF();
    }

    @Override // com.google.mlkit.md.barcodedetection.BarcodeGraphicBase, com.google.mlkit.md.camera.GraphicOverlay.Graphic
    public void draw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.draw(canvas);
        float fWidth = (getBoxRect().width() + getBoxRect().height()) * 2;
        Path path = new Path();
        Object animatedValue = this.loadingAnimator.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float fFloatValue = (((Float) animatedValue).floatValue() * fWidth) % fWidth;
        int i = 0;
        while (i < 4) {
            float fWidth2 = i % 2 == 0 ? getBoxRect().width() : getBoxRect().height();
            if (fFloatValue <= fWidth2) {
                this.lastPathPoint.x = this.boxClockwiseCoordinates[i].x + (this.coordinateOffsetBits[i].x * fFloatValue);
                this.lastPathPoint.y = this.boxClockwiseCoordinates[i].y + (this.coordinateOffsetBits[i].y * fFloatValue);
                path.moveTo(this.lastPathPoint.x, this.lastPathPoint.y);
                break;
            }
            fFloatValue -= fWidth2;
            i++;
        }
        float f = fWidth * 0.3f;
        for (int i2 = 0; i2 < 4; i2++) {
            int i3 = i + i2;
            int i4 = i3 % 4;
            int i5 = (i3 + 1) % 4;
            float fAbs = Math.abs(this.boxClockwiseCoordinates[i5].x - this.lastPathPoint.x) + Math.abs(this.boxClockwiseCoordinates[i5].y - this.lastPathPoint.y);
            if (fAbs >= f) {
                path.lineTo(this.lastPathPoint.x + (this.coordinateOffsetBits[i4].x * f), this.lastPathPoint.y + (f * this.coordinateOffsetBits[i4].y));
                break;
            }
            this.lastPathPoint.x = this.boxClockwiseCoordinates[i5].x;
            this.lastPathPoint.y = this.boxClockwiseCoordinates[i5].y;
            path.lineTo(this.lastPathPoint.x, this.lastPathPoint.y);
            f -= fAbs;
        }
        canvas.drawPath(path, getPathPaint());
    }
}
