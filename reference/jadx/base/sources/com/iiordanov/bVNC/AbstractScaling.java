package com.iiordanov.bVNC;

import android.widget.ImageView;
import com.undatech.remoteClientUi.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractScaling {
    private static final int[] scaleModeIds = {R.id.itemOneToOne, R.id.itemZoomable, R.id.itemFitToScreen};
    private static AbstractScaling[] scalings;
    private int id;
    protected ImageView.ScaleType scaleType;

    public void changeZoom(RemoteCanvasActivity remoteCanvasActivity, float f, float f2, float f3) {
    }

    abstract int getDefaultHandlerId();

    public float getZoomFactor() {
        return 1.0f;
    }

    abstract boolean isAbleToPan();

    abstract boolean isValidInputMode(int i);

    void zoomIn(RemoteCanvasActivity remoteCanvasActivity) {
    }

    void zoomOut(RemoteCanvasActivity remoteCanvasActivity) {
    }

    static AbstractScaling getById(int i) {
        if (scalings == null) {
            scalings = new AbstractScaling[scaleModeIds.length];
        }
        int i2 = 0;
        while (true) {
            int[] iArr = scaleModeIds;
            if (i2 < iArr.length) {
                if (iArr[i2] == i) {
                    if (scalings[i2] == null) {
                        if (i == R.id.itemFitToScreen) {
                            scalings[i2] = new FitToScreenScaling();
                        } else if (i == R.id.itemOneToOne) {
                            scalings[i2] = new OneToOneScaling();
                        } else if (i == R.id.itemZoomable) {
                            scalings[i2] = new ZoomScaling();
                        }
                    }
                    return scalings[i2];
                }
                i2++;
            } else {
                throw new IllegalArgumentException("Unknown scaling id " + i);
            }
        }
    }

    static AbstractScaling getByScaleType(ImageView.ScaleType scaleType) {
        for (int i : scaleModeIds) {
            AbstractScaling byId = getById(i);
            if (byId.scaleType == scaleType) {
                return byId;
            }
        }
        throw new IllegalArgumentException("Unsupported scale type: " + scaleType.toString());
    }

    protected AbstractScaling(int i, ImageView.ScaleType scaleType) {
        this.id = i;
        this.scaleType = scaleType;
    }

    int getId() {
        return this.id;
    }

    void setScaleTypeForActivity(RemoteCanvasActivity remoteCanvasActivity) {
        RemoteCanvas canvas = remoteCanvasActivity.getCanvas();
        canvas.canvasZoomer = this;
        canvas.setScaleType(ImageView.ScaleType.MATRIX);
        remoteCanvasActivity.getConnection().setScaleMode(this.scaleType);
        if (remoteCanvasActivity.inputHandler == null || !isValidInputMode(remoteCanvasActivity.getModeIdFromHandler(remoteCanvasActivity.inputHandler))) {
            remoteCanvasActivity.inputHandler = remoteCanvasActivity.getInputHandlerById(getDefaultHandlerId());
            remoteCanvasActivity.getConnection().setInputMode(remoteCanvasActivity.inputHandler.getId());
        }
        remoteCanvasActivity.getConnection().save(remoteCanvasActivity);
        remoteCanvasActivity.updateInputMenu();
    }

    public ImageView.ScaleType getScaleType() {
        return this.scaleType;
    }
}
