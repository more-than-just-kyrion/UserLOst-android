package com.iiordanov.bVNC.input;

import android.os.Handler;
import com.iiordanov.bVNC.RemoteCanvas;

/* JADX INFO: loaded from: classes2.dex */
public class PanRepeater implements Runnable {
    static final float speedFactor = 0.008f;
    private RemoteCanvas canvas;
    int delay = 5;
    private Handler handler;
    private float velocityX;
    private float velocityY;

    public PanRepeater(RemoteCanvas remoteCanvas, Handler handler) {
        this.canvas = remoteCanvas;
        this.handler = handler;
    }

    public void start(float f, float f2) {
        stop();
        this.velocityX = f * speedFactor;
        this.velocityY = f2 * speedFactor;
        this.handler.post(this);
    }

    public void stop() {
        this.handler.removeCallbacks(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        float fAbs = Math.abs(this.velocityX);
        float fAbs2 = Math.abs(this.velocityY);
        if (fAbs >= 1.0f || fAbs2 >= 1.0f) {
            this.canvas.relativePan((int) this.velocityX, (int) this.velocityY);
            this.velocityX /= 1.23f;
            this.velocityY /= 1.23f;
            this.handler.postDelayed(this, this.delay);
        }
    }
}
