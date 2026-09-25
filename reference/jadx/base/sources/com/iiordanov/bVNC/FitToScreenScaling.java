package com.iiordanov.bVNC;

import android.graphics.Matrix;
import android.widget.ImageView;
import com.undatech.remoteClientUi.R;

/* JADX INFO: loaded from: classes2.dex */
class FitToScreenScaling extends AbstractScaling {
    static final String TAG = "FitToScreenScaling";
    int canvasXOffset;
    int canvasYOffset;
    private Matrix matrix;
    float minimumScale;
    float scaling;

    @Override // com.iiordanov.bVNC.AbstractScaling
    boolean isAbleToPan() {
        return false;
    }

    @Override // com.iiordanov.bVNC.AbstractScaling
    boolean isValidInputMode(int i) {
        return true;
    }

    public FitToScreenScaling() {
        super(R.id.itemFitToScreen, ImageView.ScaleType.FIT_CENTER);
        this.matrix = new Matrix();
        this.scaling = 0.0f;
    }

    @Override // com.iiordanov.bVNC.AbstractScaling
    int getDefaultHandlerId() {
        return R.id.itemInputTouchPanZoomMouse;
    }

    private void resolveZoom(RemoteCanvasActivity remoteCanvasActivity) {
        remoteCanvasActivity.getCanvas().resetScroll();
    }

    @Override // com.iiordanov.bVNC.AbstractScaling
    public float getZoomFactor() {
        return this.scaling;
    }

    private void resetMatrix() {
        this.matrix.reset();
        this.matrix.preTranslate(this.canvasXOffset, this.canvasYOffset);
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
        float minimumScale = canvas.myDrawable.getMinimumScale();
        this.minimumScale = minimumScale;
        this.scaling = minimumScale;
        resetMatrix();
        Matrix matrix = this.matrix;
        float f = this.scaling;
        matrix.postScale(f, f);
        canvas.setImageMatrix(this.matrix);
        canvas.absoluteXPosition = 0;
        canvas.absoluteYPosition = 0;
        if (!canvas.myDrawable.widthRatioLessThanHeightRatio()) {
            float width = canvas.getWidth();
            float fFramebufferWidth = canvas.rfbconn.framebufferWidth();
            float f2 = this.minimumScale;
            canvas.absoluteXPosition = -((int) (((width - (fFramebufferWidth * f2)) / 2.0f) / f2));
        } else {
            float height = canvas.getHeight();
            float fFramebufferHeight = canvas.rfbconn.framebufferHeight();
            float f3 = this.minimumScale;
            canvas.absoluteYPosition = -((int) (((height - (fFramebufferHeight * f3)) / 2.0f) / f3));
        }
        resolveZoom(remoteCanvasActivity);
        canvas.relativePan(0.0f, 0.0f);
    }
}
