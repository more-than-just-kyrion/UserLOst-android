package com.iiordanov.bVNC;

import android.graphics.Matrix;
import android.widget.ImageView;
import com.undatech.remoteClientUi.R;

/* JADX INFO: loaded from: classes2.dex */
class ZoomScaling extends AbstractScaling {
    static final String TAG = "ZoomScaling";
    int canvasXOffset;
    int canvasYOffset;
    private Matrix matrix;
    float minimumScale;
    float scaling;

    @Override // com.iiordanov.bVNC.AbstractScaling
    boolean isAbleToPan() {
        return true;
    }

    @Override // com.iiordanov.bVNC.AbstractScaling
    boolean isValidInputMode(int i) {
        return true;
    }

    public ZoomScaling() {
        super(R.id.itemFitToScreen, ImageView.ScaleType.MATRIX);
        this.matrix = new Matrix();
        this.scaling = 1.0f;
    }

    @Override // com.iiordanov.bVNC.AbstractScaling
    int getDefaultHandlerId() {
        return R.id.itemInputTouchPanZoomMouse;
    }

    private void resolveZoom(RemoteCanvas remoteCanvas) {
        resetMatrix();
        Matrix matrix = this.matrix;
        float f = this.scaling;
        matrix.postScale(f, f);
        remoteCanvas.setImageMatrix(this.matrix);
        remoteCanvas.resetScroll();
        remoteCanvas.relativePan(0.0f, 0.0f);
    }

    @Override // com.iiordanov.bVNC.AbstractScaling
    void zoomIn(RemoteCanvasActivity remoteCanvasActivity) {
        resetMatrix();
        standardizeScaling();
        float f = (float) (((double) this.scaling) + 0.25d);
        this.scaling = f;
        if (f > 4.0f) {
            this.scaling = 4.0f;
        }
        Matrix matrix = this.matrix;
        float f2 = this.scaling;
        matrix.postScale(f2, f2);
        remoteCanvasActivity.getCanvas().setImageMatrix(this.matrix);
        resolveZoom(remoteCanvasActivity.getCanvas());
    }

    @Override // com.iiordanov.bVNC.AbstractScaling
    public float getZoomFactor() {
        return this.scaling;
    }

    @Override // com.iiordanov.bVNC.AbstractScaling
    void zoomOut(RemoteCanvasActivity remoteCanvasActivity) {
        resetMatrix();
        standardizeScaling();
        float f = (float) (((double) this.scaling) - 0.25d);
        this.scaling = f;
        float f2 = this.minimumScale;
        if (f < f2) {
            this.scaling = f2;
        }
        Matrix matrix = this.matrix;
        float f3 = this.scaling;
        matrix.postScale(f3, f3);
        remoteCanvasActivity.getCanvas().setImageMatrix(this.matrix);
        resolveZoom(remoteCanvasActivity.getCanvas());
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0016 A[PHI: r9
  0x0016: PHI (r9v3 float) = (r9v2 float), (r9v8 float) binds: [B:8:0x0014, B:5:0x000d] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.iiordanov.bVNC.AbstractScaling
    public void changeZoom(RemoteCanvasActivity remoteCanvasActivity, float f, float f2, float f3) {
        float f4;
        float f5 = this.scaling * f;
        float f6 = 1.0f;
        if (f < 1.0f) {
            f4 = this.minimumScale;
            if (f5 < f4) {
                f5 = f4;
            }
        } else {
            f4 = 4.0f;
            if (f5 > 4.0f) {
                f5 = f4;
            }
        }
        RemoteCanvas canvas = remoteCanvasActivity.getCanvas();
        int i = canvas.absoluteXPosition;
        float f7 = this.scaling;
        float f8 = i;
        float f9 = (f2 / f7) + f8;
        float f10 = (((f7 * f8) - (f7 * f9)) + (f9 * f5)) / f5;
        int i2 = canvas.absoluteYPosition;
        float f11 = this.scaling;
        float f12 = i2;
        float f13 = (f3 / f11) + f12;
        float f14 = (((f11 * f12) - (f11 * f13)) + (f13 * f5)) / f5;
        if ((f5 <= 0.9f || f5 >= 1.0f) && (f5 <= 1.0f || f5 >= 1.1f)) {
            f6 = f5;
        } else if (f11 < 0.9f || f11 > 1.1f) {
            canvas.displayShortToastMessage(R.string.snap_one_to_one);
        }
        resetMatrix();
        this.scaling = f6;
        this.matrix.postScale(f6, f6);
        canvas.setImageMatrix(this.matrix);
        resolveZoom(canvas);
        if (f11 != f6) {
            canvas.relativePan((int) (f10 - f8), (int) (f14 - f12));
        }
    }

    private void resetMatrix() {
        this.matrix.reset();
        this.matrix.preTranslate(this.canvasXOffset, this.canvasYOffset);
    }

    private void standardizeScaling() {
        this.scaling = ((int) (this.scaling * 4.0f)) / 4.0f;
    }

    @Override // com.iiordanov.bVNC.AbstractScaling
    void setScaleTypeForActivity(RemoteCanvasActivity remoteCanvasActivity) {
        super.setScaleTypeForActivity(remoteCanvasActivity);
        RemoteCanvas canvas = remoteCanvasActivity.getCanvas();
        if (canvas == null || canvas.myDrawable == null) {
            return;
        }
        this.canvasXOffset = -canvas.getCenteredXOffset();
        this.canvasYOffset = -canvas.getCenteredYOffset();
        canvas.computeShiftFromFullToView();
        float minimumScale = canvas.getMinimumScale();
        this.minimumScale = minimumScale;
        this.scaling = minimumScale;
        resolveZoom(canvas);
    }
}
