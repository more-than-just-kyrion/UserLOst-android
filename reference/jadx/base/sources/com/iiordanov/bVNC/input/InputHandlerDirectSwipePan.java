package com.iiordanov.bVNC.input;

import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import com.iiordanov.bVNC.RemoteCanvas;
import com.iiordanov.bVNC.RemoteCanvasActivity;
import com.undatech.remoteClientUi.R;

/* JADX INFO: loaded from: classes2.dex */
public class InputHandlerDirectSwipePan extends InputHandlerGeneric {
    public static final String ID = "TOUCH_ZOOM_MODE";
    static final String TAG = "InputHandlerDirectSwipePan";

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

    public InputHandlerDirectSwipePan(RemoteCanvasActivity remoteCanvasActivity, RemoteCanvas remoteCanvas, RemotePointer remotePointer) {
        super(remoteCanvasActivity, remoteCanvas, remotePointer);
    }

    @Override // com.iiordanov.bVNC.input.InputHandler
    public String getDescription() {
        return this.canvas.getResources().getString(R.string.input_method_direct_swipe_pan_description);
    }

    @Override // com.iiordanov.bVNC.input.InputHandler
    public String getId() {
        return ID;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        this.panRepeater.stop();
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        boolean z = motionEvent != null && motionEvent.getPointerCount() > 1;
        if (motionEvent2 != null) {
            z = z || motionEvent2.getPointerCount() > 1;
        }
        if (!z && !this.disregardNextOnFling && !this.inSwiping && !this.inScaling && !this.scalingJustFinished) {
            this.activity.showToolbar();
            this.panRepeater.start(-f, -f2);
        }
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (!this.inScaling) {
            boolean z = motionEvent != null && motionEvent.getPointerCount() > 1;
            if (motionEvent2 != null) {
                z = z || motionEvent2.getPointerCount() > 1;
            }
            if (z || this.inSwiping) {
                return true;
            }
        }
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
            float zoomFactor = this.canvas.getZoomFactor();
            this.activity.showToolbar();
            this.canvas.relativePan((int) (fFloatValue * zoomFactor), (int) (fFloatValue2 * zoomFactor));
        }
        return true;
    }
}
