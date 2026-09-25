package com.iiordanov.bVNC.input;

import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import com.iiordanov.bVNC.RemoteCanvas;
import com.iiordanov.bVNC.RemoteCanvasActivity;
import com.undatech.remoteClientUi.R;

/* JADX INFO: loaded from: classes2.dex */
public class InputHandlerTouchpad extends InputHandlerGeneric {
    public static final String ID = "TOUCHPAD_MODE";
    static final String TAG = "InputHandlerTouchpad";

    @Override // com.iiordanov.bVNC.input.InputHandlerGeneric, android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public /* bridge */ /* synthetic */ boolean onDoubleTap(MotionEvent motionEvent) {
        return super.onDoubleTap(motionEvent);
    }

    @Override // com.iiordanov.bVNC.input.InputHandlerGeneric, com.iiordanov.bVNC.input.InputHandler
    public /* bridge */ /* synthetic */ boolean onKeyDown(int i, KeyEvent keyEvent) {
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.iiordanov.bVNC.input.InputHandlerGeneric, com.iiordanov.bVNC.input.InputHandler
    public /* bridge */ /* synthetic */ boolean onKeyUp(int i, KeyEvent keyEvent) {
        return super.onKeyUp(i, keyEvent);
    }

    @Override // com.iiordanov.bVNC.input.InputHandlerGeneric, android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public /* bridge */ /* synthetic */ void onLongPress(MotionEvent motionEvent) {
        super.onLongPress(motionEvent);
    }

    @Override // com.iiordanov.bVNC.input.InputHandlerGeneric, android.view.ScaleGestureDetector.OnScaleGestureListener
    public /* bridge */ /* synthetic */ boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        return super.onScale(scaleGestureDetector);
    }

    @Override // com.iiordanov.bVNC.input.InputHandlerGeneric, android.view.ScaleGestureDetector.OnScaleGestureListener
    public /* bridge */ /* synthetic */ boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        return super.onScaleBegin(scaleGestureDetector);
    }

    @Override // com.iiordanov.bVNC.input.InputHandlerGeneric, android.view.ScaleGestureDetector.OnScaleGestureListener
    public /* bridge */ /* synthetic */ void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        super.onScaleEnd(scaleGestureDetector);
    }

    @Override // com.iiordanov.bVNC.input.InputHandlerGeneric, android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public /* bridge */ /* synthetic */ boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        return super.onSingleTapConfirmed(motionEvent);
    }

    @Override // com.iiordanov.bVNC.input.InputHandlerGeneric, com.iiordanov.bVNC.input.InputHandler
    public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    public InputHandlerTouchpad(RemoteCanvasActivity remoteCanvasActivity, RemoteCanvas remoteCanvas, RemotePointer remotePointer) {
        super(remoteCanvasActivity, remoteCanvas, remotePointer);
    }

    @Override // com.iiordanov.bVNC.input.InputHandler
    public String getDescription() {
        return this.canvas.getResources().getString(R.string.input_method_touchpad_description);
    }

    @Override // com.iiordanov.bVNC.input.InputHandler
    public String getId() {
        return ID;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        motionEvent2.getActionMasked();
        int metaState = motionEvent2.getMetaState();
        if (this.inScaling) {
            float zoomFactor = this.canvas.getZoomFactor();
            this.activity.showToolbar();
            this.canvas.relativePan((int) (f * zoomFactor), (int) (f2 * zoomFactor));
        } else {
            boolean z = motionEvent != null && motionEvent.getPointerCount() > 1;
            if (motionEvent2 != null) {
                z = z || motionEvent2.getPointerCount() > 1;
            }
            if (!z && !this.inSwiping) {
                this.activity.showToolbar();
                if (!this.inScrolling) {
                    this.inScrolling = true;
                    f = getSign(f);
                    f2 = getSign(f2);
                    this.distXQueue.clear();
                    this.distYQueue.clear();
                }
                this.distXQueue.add(Float.valueOf(f));
                this.distYQueue.add(Float.valueOf(f2));
                if (this.distXQueue.size() > 2) {
                    float fFloatValue = this.distXQueue.poll().floatValue();
                    float fFloatValue2 = this.distYQueue.poll().floatValue();
                    float sensitivity = this.pointer.getSensitivity();
                    this.pointer.moveMouse((int) (this.pointer.getX() + getDelta(-((fFloatValue * sensitivity) / this.displayDensity))), (int) (this.pointer.getY() + getDelta(-((sensitivity * fFloatValue2) / this.displayDensity))), metaState);
                }
            }
            return true;
        }
        this.canvas.movePanToMakePointerVisible();
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        this.panRepeater.stop();
        return true;
    }

    @Override // com.iiordanov.bVNC.input.InputHandlerGeneric
    protected int getX(MotionEvent motionEvent) {
        RemotePointer pointer = this.canvas.getPointer();
        if (this.dragMode || this.rightDragMode || this.middleDragMode) {
            float x = motionEvent.getX() - this.dragX;
            this.dragX = motionEvent.getX();
            return (int) (pointer.getX() + getDelta(x));
        }
        this.dragX = motionEvent.getX();
        return pointer.getX();
    }

    @Override // com.iiordanov.bVNC.input.InputHandlerGeneric
    protected int getY(MotionEvent motionEvent) {
        RemotePointer pointer = this.canvas.getPointer();
        if (this.dragMode || this.rightDragMode || this.middleDragMode) {
            float y = motionEvent.getY() - this.dragY;
            this.dragY = motionEvent.getY();
            return (int) (pointer.getY() + getDelta(y));
        }
        this.dragY = motionEvent.getY();
        return pointer.getY();
    }

    private float getDelta(float f) {
        return computeAcceleration((float) (((double) f) * Math.cbrt(this.canvas.getZoomFactor())));
    }

    private float computeAcceleration(float f) {
        float f2;
        float sign = getSign(f);
        float fAbs = Math.abs(f);
        boolean zIsAccelerated = this.pointer.isAccelerated();
        if (fAbs > 15.0f) {
            if (!zIsAccelerated || fAbs > 70.0f) {
                f2 = zIsAccelerated ? 4.5f : 0.75f;
            } else {
                fAbs = (fAbs * fAbs) / 20.0f;
            }
            return sign * fAbs;
        }
        fAbs *= f2;
        return sign * fAbs;
    }
}
