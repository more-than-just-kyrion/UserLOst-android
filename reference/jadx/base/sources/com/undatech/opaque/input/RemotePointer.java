package com.undatech.opaque.input;

import android.view.KeyEvent;

/* JADX INFO: loaded from: classes2.dex */
public abstract class RemotePointer {
    public static boolean DEFAULT_ACCELERATED = true;
    public static float DEFAULT_SENSITIVITY = 2.0f;
    public static final int POINTER_DOWN_MASK = 32768;
    protected int pointerX;
    protected int pointerY;
    protected boolean relativeEvents = false;
    protected float sensitivity = DEFAULT_SENSITIVITY;
    protected boolean accelerated = DEFAULT_ACCELERATED;

    public abstract int getX();

    public abstract int getY();

    public abstract boolean hardwareButtonsAsMouseEvents(int i, KeyEvent keyEvent, int i2);

    public abstract void leftButtonDown(int i, int i2, int i3);

    public abstract void middleButtonDown(int i, int i2, int i3);

    public abstract void moveMouse(int i, int i2, int i3);

    public abstract void moveMouseButtonDown(int i, int i2, int i3);

    public abstract void moveMouseButtonUp(int i, int i2, int i3);

    public abstract void movePointer(int i, int i2);

    public abstract void movePointerToMakeVisible();

    public abstract void releaseButton(int i, int i2, int i3);

    public abstract void rightButtonDown(int i, int i2, int i3);

    public abstract void scrollDown(int i, int i2, int i3);

    public abstract void scrollLeft(int i, int i2, int i3);

    public abstract void scrollRight(int i, int i2, int i3);

    public abstract void scrollUp(int i, int i2, int i3);

    public abstract void setX(int i);

    public abstract void setY(int i);

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
