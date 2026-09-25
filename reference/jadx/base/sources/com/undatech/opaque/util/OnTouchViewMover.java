package com.undatech.opaque.util;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class OnTouchViewMover implements View.OnTouchListener {
    public static String TAG = "OnTouchViewMover";
    float dX;
    float dY;
    long delay;
    Handler handler;
    Runnable runnable;
    View viewToMove;

    public OnTouchViewMover(View view, Handler handler, Runnable runnable, long j) {
        this.viewToMove = view;
        this.handler = handler;
        this.runnable = runnable;
        this.delay = j;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        Log.d(TAG, "onTouch called");
        Log.d(TAG, "Moving toolbar");
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacks(this.runnable);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            Log.d(TAG, "onTouch called ACTION_DOWN");
            this.dX = this.viewToMove.getX() - motionEvent.getRawX();
            this.dY = this.viewToMove.getY() - motionEvent.getRawY();
        } else if (action == 2) {
            Log.d(TAG, "onTouch called ACTION_MOVE");
            this.viewToMove.animate().x(motionEvent.getRawX() + this.dX).y(motionEvent.getRawY() + this.dY).setDuration(0L).start();
            Handler handler2 = this.handler;
            if (handler2 != null) {
                handler2.postAtTime(this.runnable, SystemClock.uptimeMillis() + this.delay);
            }
        } else {
            Log.d(TAG, "onTouch called default");
            if (this.handler == null) {
                return false;
            }
            Log.d(TAG, "onTouch called default, handler not null");
            this.handler.postAtTime(this.runnable, SystemClock.uptimeMillis() + this.delay);
            Message message = new Message();
            message.what = 21;
            Bundle bundle = new Bundle();
            bundle.putInt("useLastPositionToolbarX", (int) this.viewToMove.getX());
            Log.d(TAG, "onTouch called default, handler not null, x coordinate" + this.viewToMove.getX());
            bundle.putInt("useLastPositionToolbarY", (int) this.viewToMove.getY());
            bundle.putBoolean("useLastPositionToolbarMoved", true);
            Log.d(TAG, "Moving toolbar, default, handler not null, y coordinate" + this.viewToMove.getY());
            message.setData(bundle);
            this.handler.handleMessage(message);
            return false;
        }
        return true;
    }
}
