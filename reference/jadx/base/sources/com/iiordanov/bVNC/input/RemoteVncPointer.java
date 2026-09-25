package com.iiordanov.bVNC.input;

import android.os.Handler;
import com.iiordanov.bVNC.RemoteCanvas;
import com.undatech.opaque.RfbConnectable;

/* JADX INFO: loaded from: classes2.dex */
public class RemoteVncPointer extends RemotePointer {
    public static final int MOUSE_BUTTON_LEFT = 1;
    public static final int MOUSE_BUTTON_MIDDLE = 2;
    public static final int MOUSE_BUTTON_NONE = 0;
    public static final int MOUSE_BUTTON_RIGHT = 4;
    public static final int MOUSE_BUTTON_SCROLL_DOWN = 16;
    public static final int MOUSE_BUTTON_SCROLL_LEFT = 32;
    public static final int MOUSE_BUTTON_SCROLL_RIGHT = 64;
    public static final int MOUSE_BUTTON_SCROLL_UP = 8;
    private static final String TAG = "RemotePointer";

    public RemoteVncPointer(RfbConnectable rfbConnectable, RemoteCanvas remoteCanvas, Handler handler) {
        super(rfbConnectable, remoteCanvas, handler);
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void leftButtonDown(int i, int i2, int i3) {
        this.pointerMask = 1;
        sendPointerEvent(i, i2, i3, false);
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void middleButtonDown(int i, int i2, int i3) {
        this.pointerMask = 2;
        sendPointerEvent(i, i2, i3, false);
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void rightButtonDown(int i, int i2, int i3) {
        this.pointerMask = 4;
        sendPointerEvent(i, i2, i3, false);
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void scrollUp(int i, int i2, int i3) {
        this.pointerMask = 32776;
        sendPointerEvent(i, i2, i3, false);
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void scrollDown(int i, int i2, int i3) {
        this.pointerMask = 32784;
        sendPointerEvent(i, i2, i3, false);
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void scrollLeft(int i, int i2, int i3) {
        this.pointerMask = 32800;
        sendPointerEvent(i, i2, i3, false);
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void scrollRight(int i, int i2, int i3) {
        this.pointerMask = 32832;
        sendPointerEvent(i, i2, i3, false);
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void moveMouse(int i, int i2, int i3) {
        this.pointerMask = this.prevPointerMask;
        sendPointerEvent(i, i2, i3, true);
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void moveMouseButtonDown(int i, int i2, int i3) {
        this.pointerMask = this.prevPointerMask | 32768;
        sendPointerEvent(i, i2, i3, true);
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void moveMouseButtonUp(int i, int i2, int i3) {
        this.pointerMask = 0;
        sendPointerEvent(i, i2, i3, true);
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void releaseButton(int i, int i2, int i3) {
        this.pointerMask = 0;
        this.prevPointerMask = 0;
        sendPointerEvent(i, i2, i3, false);
    }

    private void sendPointerEvent(int i, int i2, int i3, boolean z) {
        int metaState = i3 | this.canvas.getKeyboard().getMetaState();
        if (!z) {
            if (this.prevPointerMask != 0 && this.prevPointerMask != this.pointerMask) {
                this.protocomm.writePointerEvent(this.pointerX, this.pointerY, metaState, this.prevPointerMask & (-32769), false);
            }
            this.prevPointerMask = this.pointerMask;
        }
        this.canvas.invalidateMousePosition();
        this.pointerX = i;
        this.pointerY = i2;
        if (this.pointerX < 0) {
            this.pointerX = 0;
        } else if (this.pointerX >= this.canvas.getImageWidth()) {
            this.pointerX = this.canvas.getImageWidth() - 1;
        }
        if (this.pointerY < 0) {
            this.pointerY = 0;
        } else if (this.pointerY >= this.canvas.getImageHeight()) {
            this.pointerY = this.canvas.getImageHeight() - 1;
        }
        this.canvas.invalidateMousePosition();
        this.protocomm.writePointerEvent(this.pointerX, this.pointerY, metaState, this.pointerMask, false);
    }

    public boolean processPointerEvent(int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, boolean z4, int i5) {
        if (this.protocomm == null || !this.protocomm.isInNormalProtocol()) {
            return false;
        }
        if (z && z2) {
            this.pointerMask = 4;
        } else if (z && z3) {
            this.pointerMask = 2;
        } else if (z && z4) {
            if (i5 == 0) {
                this.pointerMask = 8;
            } else if (i5 == 1) {
                this.pointerMask = 16;
            } else if (i5 == 2) {
                this.pointerMask = 32;
            } else if (i5 == 3) {
                this.pointerMask = 64;
            }
        } else if (z && (i3 == 0 || i3 == 2)) {
            this.pointerMask = 1;
        } else {
            this.pointerMask = 0;
        }
        this.canvas.invalidateMousePosition();
        this.pointerX = i;
        this.pointerY = i2;
        if (this.pointerX < 0) {
            this.pointerX = 0;
        } else if (this.pointerX >= this.canvas.getImageWidth()) {
            this.pointerX = this.canvas.getImageWidth() - 1;
        }
        if (this.pointerY < 0) {
            this.pointerY = 0;
        } else if (this.pointerY >= this.canvas.getImageHeight()) {
            this.pointerY = this.canvas.getImageHeight() - 1;
        }
        this.canvas.invalidateMousePosition();
        this.protocomm.writePointerEvent(this.pointerX, this.pointerY, this.canvas.getKeyboard().getMetaState() | i4, this.pointerMask, false);
        return true;
    }
}
