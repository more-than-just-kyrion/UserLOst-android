package com.iiordanov.bVNC.input;

import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import com.iiordanov.bVNC.RemoteCanvas;
import com.iiordanov.bVNC.RemoteCanvasActivity;
import com.undatech.remoteClientUi.R;

/* JADX INFO: loaded from: classes2.dex */
public class InputHandlerDirectDragPan extends InputHandlerGeneric {
    public static final String ID = "TOUCH_ZOOM_MODE_DRAG_PAN";
    static final String TAG = "InputHandlerDirectDragPan";

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

    public InputHandlerDirectDragPan(RemoteCanvasActivity remoteCanvasActivity, RemoteCanvas remoteCanvas, RemotePointer remotePointer) {
        super(remoteCanvasActivity, remoteCanvas, remotePointer);
    }

    @Override // com.iiordanov.bVNC.input.InputHandler
    public String getDescription() {
        return this.canvas.getResources().getString(R.string.input_method_direct_drag_pan_description);
    }

    @Override // com.iiordanov.bVNC.input.InputHandler
    public String getId() {
        return ID;
    }

    @Override // com.iiordanov.bVNC.input.InputHandlerGeneric, android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
        if (this.secondPointerWasDown || this.thirdPointerWasDown) {
            return;
        }
        this.activity.sendShortVibration();
        this.canvas.displayShortToastMessage(this.activity.getString(R.string.panning));
        endDragModesAndScrolling();
        this.panMode = true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        RemotePointer pointer = this.canvas.getPointer();
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
                if (!this.dragMode) {
                    this.dragMode = true;
                    pointer.leftButtonDown(getX(motionEvent), getY(motionEvent), motionEvent.getMetaState());
                } else {
                    pointer.moveMouseButtonDown(getX(motionEvent2), getY(motionEvent2), motionEvent2.getMetaState());
                }
            }
            return true;
        }
        this.canvas.movePanToMakePointerVisible();
        return true;
    }
}
