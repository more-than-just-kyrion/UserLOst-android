package com.iiordanov.android.bc;

import android.view.MotionEvent;

/* JADX INFO: loaded from: classes2.dex */
class DummyScaleGestureDetector implements IBCScaleGestureDetector {
    @Override // com.iiordanov.android.bc.IBCScaleGestureDetector
    public float getCurrentSpan() {
        return 0.0f;
    }

    @Override // com.iiordanov.android.bc.IBCScaleGestureDetector
    public long getEventTime() {
        return 0L;
    }

    @Override // com.iiordanov.android.bc.IBCScaleGestureDetector
    public float getFocusX() {
        return 0.0f;
    }

    @Override // com.iiordanov.android.bc.IBCScaleGestureDetector
    public float getFocusY() {
        return 0.0f;
    }

    @Override // com.iiordanov.android.bc.IBCScaleGestureDetector
    public float getPreviousSpan() {
        return 0.0f;
    }

    @Override // com.iiordanov.android.bc.IBCScaleGestureDetector
    public float getScaleFactor() {
        return 0.0f;
    }

    @Override // com.iiordanov.android.bc.IBCScaleGestureDetector
    public long getTimeDelta() {
        return 0L;
    }

    @Override // com.iiordanov.android.bc.IBCScaleGestureDetector
    public boolean isInProgress() {
        return false;
    }

    @Override // com.iiordanov.android.bc.IBCScaleGestureDetector
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    DummyScaleGestureDetector() {
    }
}
