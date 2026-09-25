package com.iiordanov.bVNC.input;

import android.graphics.PointF;
import android.os.Handler;
import android.os.SystemClock;
import com.iiordanov.bVNC.RemoteCanvas;
import com.iiordanov.bVNC.RemoteCanvasActivity;

/* JADX INFO: loaded from: classes2.dex */
public class Panner implements Runnable {
    private static final String TAG = "PANNER";
    RemoteCanvasActivity activity;
    Handler handler;
    long lastSent;
    VelocityUpdater updater;
    final int freq = 10;
    PointF velocity = new PointF();

    interface VelocityUpdater {
        boolean updateVelocity(PointF pointF, long j);
    }

    static class DefaultUpdater implements VelocityUpdater {
        static DefaultUpdater instance = new DefaultUpdater();

        @Override // com.iiordanov.bVNC.input.Panner.VelocityUpdater
        public boolean updateVelocity(PointF pointF, long j) {
            return true;
        }

        DefaultUpdater() {
        }
    }

    public Panner(RemoteCanvasActivity remoteCanvasActivity, Handler handler) {
        this.activity = remoteCanvasActivity;
        this.handler = handler;
    }

    public void stop() {
        this.handler.removeCallbacks(this);
    }

    public void start(float f, float f2, VelocityUpdater velocityUpdater) {
        this.activity.getCanvas().myDrawable.drawable._defaultPaint.setFilterBitmap(false);
        if (velocityUpdater == null) {
            velocityUpdater = DefaultUpdater.instance;
        }
        this.updater = velocityUpdater;
        this.velocity.x = f;
        this.velocity.y = f2;
        this.lastSent = SystemClock.uptimeMillis();
        this.handler.postDelayed(this, 10L);
    }

    @Override // java.lang.Runnable
    public void run() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        long j = this.lastSent;
        long j2 = jUptimeMillis - j;
        this.lastSent = j + j2;
        double d = j2 / 50.0d;
        RemoteCanvas canvas = this.activity.getCanvas();
        if (canvas.relativePan((int) (((double) this.velocity.x) * d), (int) (((double) this.velocity.y) * d))) {
            if (this.updater.updateVelocity(this.velocity, j2)) {
                this.handler.postDelayed(this, 10L);
                return;
            }
            canvas.myDrawable.drawable._defaultPaint.setFilterBitmap(true);
            canvas.invalidate();
            stop();
            return;
        }
        canvas.myDrawable.drawable._defaultPaint.setFilterBitmap(true);
        canvas.invalidate();
        stop();
    }
}
