package com.iiordanov.bVNC.input;

import android.content.Context;
import android.os.Handler;
import android.view.KeyEvent;
import com.iiordanov.bVNC.RemoteCanvas;
import com.undatech.opaque.RfbConnectable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class RemotePointer {
    public static boolean DEFAULT_ACCELERATED = true;
    public static float DEFAULT_SENSITIVITY = 2.0f;
    public static final int POINTER_DOWN_MASK = 32768;
    protected RemoteCanvas canvas;
    protected Context context;
    protected Handler handler;
    protected int pointerX;
    protected int pointerY;
    protected RfbConnectable protocomm;
    protected int pointerMask = 0;
    protected int prevPointerMask = 0;
    protected boolean relativeEvents = false;
    protected float sensitivity = DEFAULT_SENSITIVITY;
    protected boolean accelerated = DEFAULT_ACCELERATED;
    MouseScroller scroller = new MouseScroller();

    public abstract void leftButtonDown(int i, int i2, int i3);

    public abstract void middleButtonDown(int i, int i2, int i3);

    public abstract void moveMouse(int i, int i2, int i3);

    public abstract void moveMouseButtonDown(int i, int i2, int i3);

    public abstract void moveMouseButtonUp(int i, int i2, int i3);

    public abstract void releaseButton(int i, int i2, int i3);

    public abstract void rightButtonDown(int i, int i2, int i3);

    public abstract void scrollDown(int i, int i2, int i3);

    public abstract void scrollLeft(int i, int i2, int i3);

    public abstract void scrollRight(int i, int i2, int i3);

    public abstract void scrollUp(int i, int i2, int i3);

    public class MouseScroller implements Runnable {
        int delay = 100;
        public int direction = 0;

        public MouseScroller() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.direction == 0) {
                RemotePointer remotePointer = RemotePointer.this;
                remotePointer.scrollUp(remotePointer.pointerX, RemotePointer.this.pointerY, 0);
            } else {
                RemotePointer remotePointer2 = RemotePointer.this;
                remotePointer2.scrollDown(remotePointer2.pointerX, RemotePointer.this.pointerY, 0);
            }
            RemotePointer.this.handler.postDelayed(this, this.delay);
        }
    }

    public RemotePointer(RfbConnectable rfbConnectable, RemoteCanvas remoteCanvas, Handler handler) {
        this.protocomm = rfbConnectable;
        this.canvas = remoteCanvas;
        this.context = remoteCanvas.getContext();
        this.handler = handler;
    }

    protected boolean shouldBeRightClick(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 27) {
            return true;
        }
        if (keyCode == 4) {
            boolean z = keyEvent.getSource() == 8194;
            boolean z2 = this.context.getResources().getConfiguration().keyboard != 2;
            boolean z3 = (keyEvent.getFlags() & 64) != 0;
            if (z || z2 || z3) {
                return true;
            }
        }
        return false;
    }

    public int getX() {
        return this.pointerX;
    }

    public int getY() {
        return this.pointerY;
    }

    public void setX(int i) {
        this.pointerX = i;
    }

    public void setY(int i) {
        this.pointerY = i;
    }

    public void movePointer(int i, int i2) {
        this.canvas.invalidateMousePosition();
        this.pointerX = i;
        this.pointerY = i2;
        this.canvas.invalidateMousePosition();
        moveMouseButtonUp(i, i2, 0);
    }

    public void movePointerToMakeVisible() {
        int i;
        if (this.canvas.getMouseFollowPan()) {
            int absX = this.canvas.getAbsX();
            int absY = this.canvas.getAbsY();
            int visibleDesktopWidth = this.canvas.getVisibleDesktopWidth();
            int visibleDesktopHeight = this.canvas.getVisibleDesktopHeight();
            int i2 = this.pointerX;
            if (i2 < absX || i2 >= absX + visibleDesktopWidth || (i = this.pointerY) < absY || i >= absY + visibleDesktopHeight) {
                movePointer(absX + (visibleDesktopWidth / 2), absY + (visibleDesktopHeight / 2));
            }
        }
    }

    public boolean hardwareButtonsAsMouseEvents(int i, KeyEvent keyEvent, int i2) {
        if (keyEvent.getAction() == 0 || keyEvent.getAction() == 2) {
            this.pointerMask = 32768;
        } else {
            this.pointerMask = 0;
        }
        if (shouldBeRightClick(keyEvent)) {
            rightButtonDown(getX(), getY(), i2);
            releaseButton(getX(), getY(), i2);
        } else {
            if (i != 25 && i != 24) {
                return false;
            }
            if (i == 24) {
                this.scroller.direction = 0;
            } else {
                this.scroller.direction = 1;
            }
            if (keyEvent.getAction() == 0) {
                this.handler.post(this.scroller);
            } else {
                this.handler.removeCallbacks(this.scroller);
            }
            releaseButton(this.pointerX, this.pointerY, 0);
        }
        return true;
    }

    public boolean isRelativeEvents() {
        return this.relativeEvents;
    }

    public void setRelativeEvents(boolean z) {
        this.relativeEvents = z;
        if (z) {
            setSensitivity(1.0f);
            setAccelerated(false);
        } else {
            setSensitivity(DEFAULT_SENSITIVITY);
            setAccelerated(DEFAULT_ACCELERATED);
        }
    }

    public float getSensitivity() {
        return this.sensitivity;
    }

    public void setSensitivity(float f) {
        this.sensitivity = f;
    }

    public boolean isAccelerated() {
        return this.accelerated;
    }

    public void setAccelerated(boolean z) {
        this.accelerated = z;
    }
}
