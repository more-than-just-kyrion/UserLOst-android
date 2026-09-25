package com.iiordanov.bVNC.input;

import android.graphics.PointF;
import android.os.Handler;
import android.view.KeyEvent;
import com.iiordanov.bVNC.RemoteCanvas;
import com.iiordanov.bVNC.RemoteCanvasActivity;

/* JADX INFO: loaded from: classes2.dex */
class DPadMouseKeyHandler {
    private RemoteCanvas canvas;
    private boolean isMoving;
    com.undatech.opaque.input.RemoteKeyboard keyboard;
    private boolean mouseDown;
    private MouseMover mouseMover;
    RemotePointer pointer;
    private boolean rotateDpad;
    private boolean useDpadAsArrows;

    DPadMouseKeyHandler(RemoteCanvasActivity remoteCanvasActivity, Handler handler, boolean z, boolean z2) {
        this.useDpadAsArrows = false;
        this.rotateDpad = false;
        this.canvas = remoteCanvasActivity.getCanvas();
        this.mouseMover = new MouseMover(remoteCanvasActivity, handler);
        this.useDpadAsArrows = z;
        this.rotateDpad = z2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        boolean zKeyEvent;
        this.keyboard = this.canvas.getKeyboard();
        this.pointer = this.canvas.getPointer();
        this.keyboard.getCameraButtonDown();
        if (this.rotateDpad) {
            switch (i) {
                case 19:
                    i = 22;
                    break;
                case 20:
                    i = 21;
                    break;
                case 21:
                    i = 19;
                    break;
                case 22:
                    i = 20;
                    break;
            }
        }
        if (this.useDpadAsArrows) {
            return this.keyboard.keyEvent(i, keyEvent);
        }
        final int i2 = -1;
        final int i3 = 0;
        switch (i) {
            case 19:
                zKeyEvent = true;
                i3 = -1;
                i2 = 0;
                break;
            case 20:
                i2 = 0;
                zKeyEvent = true;
                i3 = 1;
                break;
            case 21:
                zKeyEvent = true;
                break;
            case 22:
                zKeyEvent = true;
                i2 = 1;
                break;
            case 23:
                if (!this.mouseDown) {
                    this.mouseDown = true;
                    RemotePointer remotePointer = this.pointer;
                    remotePointer.leftButtonDown(remotePointer.getX(), this.pointer.getY(), keyEvent.getMetaState());
                }
                i2 = 0;
                zKeyEvent = true;
                break;
            default:
                zKeyEvent = this.keyboard.keyEvent(i, keyEvent);
                i2 = 0;
                break;
        }
        if ((i2 != 0 || i3 != 0) && !this.isMoving) {
            this.isMoving = true;
            this.mouseMover.start(i2, i3, new Panner.VelocityUpdater() { // from class: com.iiordanov.bVNC.input.DPadMouseKeyHandler.1
                @Override // com.iiordanov.bVNC.input.Panner.VelocityUpdater
                public boolean updateVelocity(PointF pointF, long j) {
                    double d = (j * 1.2d) / 50.0d;
                    if (Math.abs(pointF.x) < 500.0f) {
                        pointF.x += (int) (((double) i2) * d);
                    }
                    if (Math.abs(pointF.y) >= 500.0f) {
                        return true;
                    }
                    pointF.y += (int) (d * ((double) i3));
                    return true;
                }
            });
            if (this.mouseDown) {
                RemotePointer remotePointer2 = this.pointer;
                remotePointer2.moveMouseButtonDown(remotePointer2.getX(), this.pointer.getY(), keyEvent.getMetaState());
            } else {
                RemotePointer remotePointer3 = this.pointer;
                remotePointer3.moveMouseButtonUp(remotePointer3.getX(), this.pointer.getY(), keyEvent.getMetaState());
            }
        }
        return zKeyEvent;
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        this.keyboard.getCameraButtonDown();
        RemotePointer pointer = this.canvas.getPointer();
        this.pointer = pointer;
        if (this.useDpadAsArrows) {
            return this.keyboard.keyEvent(i, keyEvent);
        }
        switch (i) {
            case 19:
            case 20:
            case 21:
            case 22:
                this.mouseMover.stop();
                this.isMoving = false;
                return true;
            case 23:
                if (!this.mouseDown) {
                    return true;
                }
                this.mouseDown = false;
                pointer.releaseButton(pointer.getX(), this.pointer.getY(), keyEvent.getMetaState());
                return false;
            default:
                return this.keyboard.keyEvent(i, keyEvent);
        }
    }
}
