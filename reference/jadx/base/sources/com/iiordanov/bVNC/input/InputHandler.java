package com.iiordanov.bVNC.input;

import android.view.KeyEvent;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes2.dex */
public interface InputHandler {
    String getDescription();

    String getId();

    boolean onKeyDown(int i, KeyEvent keyEvent);

    boolean onKeyUp(int i, KeyEvent keyEvent);

    boolean onTouchEvent(MotionEvent motionEvent);
}
