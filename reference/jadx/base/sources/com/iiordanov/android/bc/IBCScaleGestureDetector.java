package com.iiordanov.android.bc;

import android.view.MotionEvent;

/* JADX INFO: loaded from: classes2.dex */
public interface IBCScaleGestureDetector {
    float getCurrentSpan();

    long getEventTime();

    float getFocusX();

    float getFocusY();

    float getPreviousSpan();

    float getScaleFactor();

    long getTimeDelta();

    boolean isInProgress();

    boolean onTouchEvent(MotionEvent motionEvent);
}
