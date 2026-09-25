package com.iiordanov.android.bc;

import android.view.MotionEvent;

/* JADX INFO: loaded from: classes2.dex */
class BCMotionEvent5 implements IBCMotionEvent {
    BCMotionEvent5() {
    }

    @Override // com.iiordanov.android.bc.IBCMotionEvent
    public int getPointerCount(MotionEvent motionEvent) {
        return motionEvent.getPointerCount();
    }
}
