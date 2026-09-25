package com.iiordanov.bVNC.input;

import android.os.Handler;
import android.os.SystemClock;
import com.iiordanov.bVNC.RemoteCanvasActivity;

/* JADX INFO: loaded from: classes2.dex */
class MouseMover extends Panner {
    public MouseMover(RemoteCanvasActivity remoteCanvasActivity, Handler handler) {
        super(remoteCanvasActivity, handler);
    }

    @Override // com.iiordanov.bVNC.input.Panner, java.lang.Runnable
    public void run() {
        long jUptimeMillis = SystemClock.uptimeMillis() - this.lastSent;
        this.lastSent += jUptimeMillis;
        double d = jUptimeMillis / 50.0d;
        RemotePointer pointer = this.activity.getCanvas().getPointer();
        pointer.moveMouseButtonUp((int) (((double) pointer.getX()) + (((double) this.velocity.x) * d)), (int) (((double) pointer.getY()) + (((double) this.velocity.y) * d)), 0);
        if (this.updater.updateVelocity(this.velocity, jUptimeMillis)) {
            this.handler.postDelayed(this, 50L);
        } else {
            stop();
        }
    }
}
