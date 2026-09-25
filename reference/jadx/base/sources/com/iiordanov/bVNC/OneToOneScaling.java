package com.iiordanov.bVNC;

import android.graphics.Matrix;
import android.widget.ImageView;
import com.undatech.remoteClientUi.R;

/* JADX INFO: loaded from: classes2.dex */
class OneToOneScaling extends AbstractScaling {
    static final String TAG = "OneToOneScaling";
    int canvasXOffset;
    int canvasYOffset;
    private Matrix matrix;
    float scaling;

    @Override // com.iiordanov.bVNC.AbstractScaling
    boolean isAbleToPan() {
        return true;
    }

    @Override // com.iiordanov.bVNC.AbstractScaling
    boolean isValidInputMode(int i) {
        return true;
    }

    public OneToOneScaling() {
        super(R.id.itemOneToOne, ImageView.ScaleType.CENTER);
        this.matrix = new Matrix();
        this.scaling = 1.0f;
    }

    @Override // com.iiordanov.bVNC.AbstractScaling
    int getDefaultHandlerId() {
        return R.id.itemInputTouchPanZoomMouse;
    }

    private void resolveZoom(RemoteCanvas remoteCanvas) {
        remoteCanvas.resetScroll();
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
        this.scaling = 1.0f;
        resetMatrix();
        Matrix matrix = this.matrix;
        float f = this.scaling;
        matrix.postScale(f, f);
        canvas.setImageMatrix(this.matrix);
        resolveZoom(canvas);
    }
}
